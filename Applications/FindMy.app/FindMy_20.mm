uint64_t sub_10021F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPPlaySoundChannels() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001F150C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + v12), *(v4 + v13), *(v4 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10021F7D0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021F86C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021F918()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10021F964(char a1)
{
  v3 = *(type metadata accessor for FMDeviceDetailViewModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001ED71C(a1, v1 + v4, v5);
}

uint64_t sub_10021FA00(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10021FB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021FBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1001E7284(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_10021FC6C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1001E8904(v3, v0 + v2, v5, v6);
}

void sub_10021FD0C()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1001E79B0(v0 + v2, v6, v0 + v5, v8, v9);
}

uint64_t sub_10021FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPlatterIcon(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10021FF68()
{
  v1 = *(type metadata accessor for FMDeviceDetailViewModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10020DCF8(v2, v3);
}

uint64_t sub_10021FFCC(uint64_t a1)
{
  v4 = *(type metadata accessor for FMDeviceDetailViewModel(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_10020DF08(a1, v6, v7, v1 + v5, v8);
}

double sub_1002200EC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask) = 0;

  return result;
}

void sub_100220130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken) = v2;
  v3 = v2;
}

uint64_t sub_10022017C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002201E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100220264()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100210F88(v0 + v2, v4, v5);
}

id sub_1002206C8()
{
  type metadata accessor for FMAccessoryPairingAccountProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedInstance];
  result = [objc_allocWithZone(ACAccountStore) init];
  *(v0 + 24) = result;
  qword_1006D4128 = v0;
  return result;
}

uint64_t sub_100220740(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100005B4C(0xD00000000000001CLL, 0x8000000100587510, &v19);
    _os_log_impl(&_mh_execute_header, v5, v3, "FMAccessoryPairingAccountProvider: %s", v6, 0xCu);
    sub_100006060(v7);
  }

  result = sub_1002211C4(v8);
  if (result)
  {
    v10 = result;
    if ([*(v2 + 16) securityLevelForAccount:result] == 4)
    {
      v11 = static os_log_type_t.default.getter();
      v12 = Logger.logObject.getter();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_100005B4C(0x616E452032415348, 0xEC00000064656C62, &v19);
        _os_log_impl(&_mh_execute_header, v12, v11, "FMAccessoryPairingAccountProvider: %s", v13, 0xCu);
        sub_100006060(v14);
      }

      return 2;
    }

    else
    {
      v15 = static os_log_type_t.error.getter();
      v16 = Logger.logObject.getter();
      if (os_log_type_enabled(v16, v15))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100005B4C(0x7369442032415348, 0xED000064656C6261, &v19);
        _os_log_impl(&_mh_execute_header, v16, v15, "FMAccessoryPairingAccountProvider: %s", v17, 0xCu);
        sub_100006060(v18);
      }

      return 1;
    }
  }

  return result;
}

id sub_100220A58(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0xD000000000000018, 0x80000001005874F0, &v18);
    _os_log_impl(&_mh_execute_header, v4, v2, "FMAccessoryPairingAccountProvider: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v7 = *(v1 + 24);
  v8 = [v7 aa_primaryAppleAccount];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v8 grandSlamAccount:0 accountStore:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 profilePictureForAccountOwner];

      return v12;
    }
  }

  v14 = static os_log_type_t.error.getter();
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100005B4C(0xD000000000000029, 0x80000001005874C0, &v18);
    _os_log_impl(&_mh_execute_header, v15, v14, "FMAccessoryPairingAccountProvider: %s", v16, 0xCu);
    sub_100006060(v17);
  }

  return 0;
}

void sub_100220CDC(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005B4C(0xD000000000000018, 0x80000001005874A0, v40);
    _os_log_impl(&_mh_execute_header, v7, v5, "FMAccessoryPairingAccountProvider: %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v11 = sub_1002211C4(v10);
  if (!v11)
  {
    v15 = 0;
    v17 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
LABEL_25:
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    return;
  }

  v12 = v11;
  v13 = [v11 aa_formattedUsername];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = *(v3 + 16);
    if ([v18 phoneAsAppleIDForAccount:v12])
    {
      v19 = static os_log_type_t.default.getter();
      v20 = Logger.logObject.getter();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100005B4C(0x20746E756F636341, 0xEF4F4B414D207369, v40);
        _os_log_impl(&_mh_execute_header, v20, v19, "FMAccessoryPairingAccountProvider: %s", v21, 0xCu);
        sub_100006060(v22);
      }

      v23 = 0;
      v24 = 0;
      v25 = 1;
      goto LABEL_25;
    }

    v26 = [v18 additionalInfoForAccount:v12];
    if (v26)
    {
      v27 = v26;
      v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v28 + 16))
      {
        goto LABEL_21;
      }

      v29 = sub_10000726C(0x6D754E656E6F6870, 0xEC00000073726562);
      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_100006004(*(v28 + 56) + 32 * v29, v40);

      sub_10007EBC0(&qword_1006B6A78, &qword_100558C08);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      if (!*(v38 + 16) || (v31 = *(v38 + 32), , , !*(v31 + 16)) || (v32 = sub_10000726C(0x6D754E656E6F6870, 0xEB00000000726562), (v33 & 1) == 0))
      {
LABEL_21:

        goto LABEL_22;
      }

      sub_100006004(*(v31 + 56) + 32 * v32, v40);

      if (swift_dynamicCast())
      {

        v23 = v38;
        v24 = v39;
        v25 = 2;
        goto LABEL_25;
      }
    }

LABEL_22:
    v34 = static os_log_type_t.default.getter();
    v35 = Logger.logObject.getter();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100005B4C(0xD000000000000026, 0x8000000100587470, v40);
      _os_log_impl(&_mh_execute_header, v35, v34, "FMAccessoryPairingAccountProvider: %s", v36, 0xCu);
      sub_100006060(v37);
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

id sub_1002211C4(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0xD000000000000018, 0x8000000100587450, &v17);
    _os_log_impl(&_mh_execute_header, v4, v2, "FMAccessoryPairingAccountProvider: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v7 = [*(v1 + 24) aa_primaryAppleAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 aa_altDSID];
    if (v9)
    {
      v10 = v9;
      v11 = [*(v1 + 16) authKitAccountWithAltDSID:v9];

      result = v11;
      if (v11)
      {
        return result;
      }
    }

    else
    {
    }
  }

  v13 = static os_log_type_t.error.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005B4C(0xD00000000000001ALL, 0x8000000100587430, &v17);
    _os_log_impl(&_mh_execute_header, v14, v13, "FMAccessoryPairingAccountProvider: %s", v15, 0xCu);
    sub_100006060(v16);
  }

  return 0;
}

uint64_t sub_100221440()
{

  return swift_deallocClassInstance();
}

__n128 sub_1002214B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002214C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10022150C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id sub_10022156C()
{
  v1 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1002215E4(void *a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription] = 0;
  v2 = &v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v80._object = 0x8000000100587640;
  v6._countAndFlagsBits = 0x545F454C504F4550;
  v80._countAndFlagsBits = 0xD00000000000001CLL;
  v6._object = 0xEA00000000004241;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v80);

  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 _systemImageNamed:v8];

  v11 = objc_allocWithZone(UITabBarItem);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithTitle:v12 image:v10 selectedImage:0];

  *&v1[v3] = v13;
  v14 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab;
  v15 = [v4 mainBundle];
  v81._object = 0x8000000100587660;
  v16._countAndFlagsBits = 0x5F53454349564544;
  v16._object = 0xEB00000000424154;
  v81._countAndFlagsBits = 0xD00000000000001DLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v81);

  v18 = String._bridgeToObjectiveC()();
  v19 = [v9 _systemImageNamed:v18];

  v20 = objc_allocWithZone(UITabBarItem);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 initWithTitle:v21 image:v19 selectedImage:0];

  *&v1[v14] = v22;
  v23 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab;
  v24 = [v4 mainBundle];
  v82._object = 0x80000001005876A0;
  v25._countAndFlagsBits = 0x4241545F454DLL;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v82);

  v27 = String._bridgeToObjectiveC()();
  v28 = [v9 _systemImageNamed:v27];

  v29 = objc_allocWithZone(UITabBarItem);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithTitle:v30 image:v28 selectedImage:0];

  *&v1[v23] = v31;
  v32 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab;
  v33 = [v4 mainBundle];
  v34.value._countAndFlagsBits = 0xD000000000000013;
  v83._object = 0x8000000100579A00;
  v35._countAndFlagsBits = 0x41545F534D455449;
  v34.value._object = 0x80000001005799E0;
  v35._object = 0xE900000000000042;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v83);

  v37 = String._bridgeToObjectiveC()();
  v38 = [v9 _systemImageNamed:v37];

  v39 = objc_allocWithZone(UITabBarItem);
  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 initWithTitle:v40 image:v38 selectedImage:0];

  *&v1[v32] = v41;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] = a1;
  v79.receiver = v1;
  v79.super_class = type metadata accessor for FMLegacyTabBar();

  v42 = objc_msgSendSuper2(&v79, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100222058();
  v43 = a1[6];
  type metadata accessor for FMPeopleSubscription(0);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v45 = v42;

  UUID.init()();
  *(v44 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10062FDB0;
  swift_unknownObjectWeakAssign();
  v46 = *(v43 + 32);

  os_unfair_lock_lock((v46 + 24));
  sub_10000E7C0((v46 + 16));
  os_unfair_lock_unlock((v46 + 24));

  *(v45 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription) = v44;

  v47 = a1[7];
  v48 = v45;

  v49 = sub_1003CD44C(v48, v47);

  v50 = &v48[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription];
  *v50 = v49;
  v50[1] = &off_100637420;
  swift_unknownObjectRelease();
  v51 = a1[3];
  type metadata accessor for FMDevicesSubscription(0);
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v53 = v48;

  UUID.init()();
  *(v52 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062FD10;
  swift_unknownObjectWeakAssign();
  v54 = *(v51 + 16);

  os_unfair_lock_lock((v54 + 24));
  sub_10000E7C0((v54 + 16));
  os_unfair_lock_unlock((v54 + 24));

  *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription] = v52;

  v55 = String._bridgeToObjectiveC()();
  [v53 setAccessibilityIdentifier:v55];

  v56 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab];
  v57 = [v4 mainBundle];
  v84._object = 0x8000000100587640;
  v84._countAndFlagsBits = 0xD00000000000001CLL;
  v58._countAndFlagsBits = 0x545F454C504F4550;
  v58._object = 0xEA00000000004241;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v84);

  v60 = String._bridgeToObjectiveC()();

  [v56 setAccessibilityIdentifier:v60];

  v61 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab];
  v62 = [v4 mainBundle];
  v85._object = 0x8000000100587660;
  v85._countAndFlagsBits = 0xD00000000000001DLL;
  v63._countAndFlagsBits = 0x5F53454349564544;
  v63._object = 0xEB00000000424154;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v85);

  v65 = String._bridgeToObjectiveC()();

  [v61 setAccessibilityIdentifier:v65];

  v66 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab];
  v67 = [v4 mainBundle];
  v86._object = 0x80000001005876A0;
  v68._countAndFlagsBits = 0x4241545F454DLL;
  v68._object = 0xE600000000000000;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v86);

  v70 = String._bridgeToObjectiveC()();

  [v66 setAccessibilityIdentifier:v70];

  v71 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
  v72 = [v4 mainBundle];
  v87._object = 0x8000000100579A00;
  v73.value._object = 0x80000001005799E0;
  v74._countAndFlagsBits = 0x41545F534D455449;
  v74._object = 0xE900000000000042;
  v73.value._countAndFlagsBits = 0xD000000000000013;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v73, v72, v75, v87);

  v76 = String._bridgeToObjectiveC()();

  [v71 setAccessibilityIdentifier:v76];

  return v53;
}

void sub_100222058()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v18 - v4;
  [v0 setShowsLargeContentViewer:{1, v3}];
  v6 = sub_10022156C();
  [v1 addInteraction:v6];

  v7 = [objc_opt_self() effectWithStyle:1100];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005528C0;
  *(v8 + 32) = v7;
  sub_10000905C(0, &unk_1006B6BE8, UIVisualEffect_ptr);
  v9 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setBackgroundEffects:isa];

  v11 = String._bridgeToObjectiveC()();
  [v1 _setBackdropGroupName:v11];

  v12 = [objc_opt_self() systemBlueColor];
  [v1 setTintColor:v12];

  sub_10022252C();
  v13 = [v1 items];
  if (!v13)
  {
    goto LABEL_11;
  }

  sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
LABEL_7:
    v13 = v15;
LABEL_10:

LABEL_11:
    [v1 setSelectedItem:v13];

    [v1 setDelegate:v1];

    dispatch thunk of FMFManager.preferences.getter();

    sub_1002228DC(v5);
    sub_100012DF0(v5, &qword_1006AF750, &qword_100552340);

    v16 = dispatch thunk of FMFManager.friends.getter();

    sub_100222A68(v16);

    sub_100222EAC(v17);

    return;
  }

  __break(1u);
}

id sub_100222414(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMLegacyTabBar();
  v2 = objc_msgSendSuper2(&v9, "traitCollection");
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EE0;
  *(v3 + 32) = v2;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 40) = [v4 traitCollectionWithHorizontalSizeClass:1];
  sub_10000905C(0, &qword_1006B6BF8, UITraitCollection_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 traitCollectionWithTraitsFromCollections:isa];

  return v7;
}

void sub_10022252C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v3 = qword_1006AECC0;
  v4 = *(*&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] + 16);
  if (v3 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  if (byte_1006D4AD1 == 1)
  {
    v5 = v4[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    v6 = v5 ^ 1;
  }

  else
  {

    v6 = 0;
  }

  v7 = *(*(*&v1[v2] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted);
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005528C0;
  v9 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab];
  *(v8 + 32) = v9;
  v10 = v9;
  if (FMIPItemsTabEnabled.getter())
  {
    v11 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
    sub_1003CECA8(0, 0, v11);
  }

  if ((v7 & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab];
    if (v8 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v13 = v12;
    sub_1003CECA8(0, 0, v13);
  }

  if (v6)
  {
    v12 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab];
    if (!(v8 >> 62))
    {
LABEL_13:
      v14 = v12;
      sub_1003CECA8(0, 0, v14);

      goto LABEL_14;
    }

LABEL_19:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setItems:isa animated:1];
}

void sub_10022277C()
{
  v1 = [v0 selectedItem];
  if (v1)
  {
    goto LABEL_14;
  }

  v2 = [v0 items];
  if (v2)
  {
    sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v4 = *(v3 + 32);
      }

      v2 = v4;
      goto LABEL_11;
    }

    v2 = 0;
LABEL_11:
  }

  [v0 setSelectedItem:v2];

  v5 = [v0 selectedItem];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_100225F18(v5);
  v1 = v6;
LABEL_14:
}

void sub_1002228DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10022598C(a1, &v12 - v5);
  v7 = type metadata accessor for FMFPreferences();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &qword_1006AF750, &qword_100552340);
  }

  else
  {
    v9 = FMFPreferences.hideLocation.getter();
    (*(v8 + 8))(v6, v7);
    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab);
      v11 = String._bridgeToObjectiveC()();
      [v10 setBadgeValue:v11];

      return;
    }
  }

  [*(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab) setBadgeValue:0];
}

void sub_100222A68(uint64_t a1)
{
  v49 = type metadata accessor for FMFRelationshipType();
  v2 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v37 - v5;
  v6 = type metadata accessor for FMFFriend();
  __chkstk_darwin(v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = *(v9 + 16);
    v14 = v9 + 16;
    v43 = v15;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v38 = (v14 - 8);
    v40 = (v14 + 16);
    v41 = (v2 + 8);
    v50 = _swiftEmptyArrayStorage;
    v44 = v6;
    v45 = v14;
    v42 = v17;
    v18 = v47;
    v15(v12, v16, v6, v10);
    while (1)
    {
      v22 = FMFFriend.optedNotToShare.getter();
      v51 = v22 != 2;
      v23 = v12;
      FMFFriend.relationshipType.getter();
      v24 = v48;
      static FMFRelationshipType.willFollowMyLocation.getter();
      sub_10000A108(&qword_1006B4070, &type metadata accessor for FMFRelationshipType, &protocol conformance descriptor for FMFRelationshipType);
      v25 = v49;
      v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v27 = *v41;
      (*v41)(v24, v25);
      v27(v18, v25);
      if (v26 & 1) != 0 || ((v51 ^ v22))
      {
        v28 = *v40;
        v12 = v23;
        v19 = v44;
        (*v40)(v46, v23, v44);
        v29 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v29;
        v52 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001671C0(0, v29[2] + 1, 1);
          v31 = v52;
        }

        v21 = v42;
        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          sub_1001671C0((v32 > 1), v33 + 1, 1);
          v31 = v52;
        }

        v31[2] = v33 + 1;
        v50 = v31;
        v28(v31 + v39 + v33 * v21, v46, v19);
      }

      else
      {
        v12 = v23;
        v19 = v44;
        (*v38)(v23, v44);
        v21 = v42;
      }

      v16 += v21;
      if (!--v13)
      {
        break;
      }

      v43(v12, v16, v19, v20);
    }
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  v34 = v50[2];
  v35 = *(v37 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab);

  if (v34)
  {
    v52 = v34;
    sub_100091894();
    BinaryInteger.formatted()();
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  [v35 setBadgeValue:v36];
}

void sub_100222EAC(uint64_t a1)
{
  v97 = type metadata accessor for UUID();
  v83 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v98 = type metadata accessor for FMIPItem();
  v89 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v75 - v8;
  v9 = type metadata accessor for FMIPBeaconShare();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v95 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v75 - v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v75 - v16;
  v18 = *(a1 + 16);
  v92 = v19;
  v80 = v10;
  if (v18)
  {
    v22 = *(v10 + 16);
    v21 = v10 + 16;
    v20 = v22;
    v91 = ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v23 = v91 + a1;
    v24 = *(v21 + 56);
    v90 = (v21 - 8);
    v94 = (v21 + 16);
    v25 = _swiftEmptyArrayStorage;
    v93 = v22;
    (v22)(v17, v91 + a1, v9, v15);
    while (1)
    {
      if (FMIPBeaconShare.requiresResponse.getter())
      {
        v27 = *v94;
        (*v94)(v95, v17, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016717C(0, *(v25 + 2) + 1, 1);
          v25 = v101;
        }

        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        v31 = v25;
        if (v30 >= v29 >> 1)
        {
          sub_10016717C((v29 > 1), v30 + 1, 1);
          v31 = v101;
        }

        *(v31 + 2) = v30 + 1;
        v32 = v91 + v31 + v30 * v24;
        v9 = v92;
        v27(v32, v95, v92);
        v25 = v31;
        v20 = v93;
      }

      else
      {
        (*v90)(v17, v9);
      }

      v23 += v24;
      if (!--v18)
      {
        break;
      }

      v20(v17, v23, v9, v26);
    }
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v33 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v34 = v25;
  v35 = v77;

  v36 = FMIPManager.items.getter();

  v87 = *(v34 + 2);
  if (v87)
  {
    v76 = v33;
    v37 = 0;
    v86 = *(v80 + 16);
    v38 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v75 = v34;
    v85 = v34 + v38;
    v39 = *(v80 + 72);
    v95 = (v89 + 16);
    v40 = (v83 + 1);
    v94 = (v89 + 8);
    v91 = (v89 + 32);
    v83 = (v89 + 56);
    v84 = v39;
    v81 = (v89 + 48);
    v82 = (v80 + 8);
    v41 = _swiftEmptyArrayStorage;
    v43 = v98;
    v42 = v99;
    v44 = v36;
    v79 = v5;
    v80 += 16;
    v78 = v36;
    do
    {
      v93 = v37;
      v86(v100, &v85[v84 * v37], v9);
      v45 = *(v44 + 16);
      if (v45)
      {
        v90 = v41;
        v46 = v44 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v47 = *(v89 + 72);
        v48 = *(v89 + 16);
        while (1)
        {
          v48(v42, v46, v43);
          v49 = FMIPItem.identifier.getter();
          v51 = v50;
          v52 = v96;
          FMIPBeaconShare.beaconIdentifier.getter();
          v53 = UUID.uuidString.getter();
          v55 = v54;
          (*v40)(v52, v97);
          if (v49 == v53 && v51 == v55)
          {
            break;
          }

          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v56)
          {
            goto LABEL_26;
          }

          v43 = v98;
          v42 = v99;
          (*v94)(v99, v98);
          v46 += v47;
          if (!--v45)
          {
            v57 = 1;
            v41 = v90;
            v5 = v79;
            goto LABEL_27;
          }
        }

LABEL_26:
        v5 = v79;
        v43 = v98;
        v42 = v99;
        (*v91)(v79, v99, v98);
        v57 = 0;
        v41 = v90;
LABEL_27:
        v44 = v78;
      }

      else
      {
        v57 = 1;
      }

      (*v83)(v5, v57, 1, v43);
      v9 = v92;
      (*v82)(v100, v92);
      if ((*v81)(v5, 1, v43) == 1)
      {
        sub_100012DF0(v5, &qword_1006B07D0, qword_100552820);
      }

      else
      {
        v58 = *v91;
        (*v91)(v88, v5, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_10008BE38(0, v41[2] + 1, 1, v41);
        }

        v60 = v41[2];
        v59 = v41[3];
        if (v60 >= v59 >> 1)
        {
          v41 = sub_10008BE38((v59 > 1), v60 + 1, 1, v41);
        }

        v41[2] = (v60 + 1);
        v58(v41 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v60, v88, v43);
        v42 = v99;
      }

      v37 = v93 + 1;
    }

    while (v93 + 1 != v87);

    v35 = v77;
    v33 = v76;
    v61 = v41[2];
    if (!v61)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage[2];
    if (!v61)
    {
LABEL_38:
      [*&v35[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab] setBadgeValue:{0, v75}];
      v62 = [objc_opt_self() sharedApplication];
      v63 = v62;
      v64 = *(*(*&v35[v33] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
      goto LABEL_41;
    }
  }

  if (*(*(*&v35[v33] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) == 1)
  {
    goto LABEL_38;
  }

  v65 = *&v35[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
  v101 = v61;
  sub_100091894();
  v66 = v65;
  BinaryInteger.formatted()();
  v67 = String._bridgeToObjectiveC()();

  [v66 setBadgeValue:v67];

  v62 = [objc_opt_self() sharedApplication];
  v68 = *(*(*&v35[v33] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
  v64 = v61 + v68;
  if (__OFADD__(v68, v61))
  {
    __break(1u);
    return;
  }

  v63 = v62;
LABEL_41:
  [v62 setApplicationIconBadgeNumber:{v64, v75}];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_100005B14(v69, qword_1006D4630);
  v70 = v35;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134218240;
    *(v73 + 4) = *(*(*&v35[v33] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);

    *(v73 + 12) = 2048;
    v74 = v41[2];

    *(v73 + 14) = v74;

    _os_log_impl(&_mh_execute_header, v71, v72, "FMLegacyTabBar: update items tab badge: pushInfo number %ld, invites number: %ld", v73, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1002238E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for FMFPreferences();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1002228DC(v5);
  return sub_100012DF0(v5, &qword_1006AF750, &qword_100552340);
}

void sub_100223A00(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v8 = qword_1006AECC0;
  v9 = *(*&a1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] + 16);
  if (v8 != -1)
  {
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  if (byte_1006D4AD1 == 1)
  {
    v10 = v9[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    v11 = v10 ^ 1;
  }

  else
  {

    v11 = 0;
  }

  v12 = *(*(*&a1[v7] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted);
  v13 = (v11 & 1) - 1;
  v14 = FMIPItemsTabEnabled.getter();
  if (v12)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  v17 = [a1 selectedItem];
  sub_100062074(a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_10005D4E4(v6);
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_33:
      v26 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
      sub_100012DF0(v6 + *(v26 + 48), &qword_1006B07D0, qword_100552820);
      v27 = type metadata accessor for FMIPDevice();
      (*(*(v27 - 8) + 8))(v6, v27);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_39:
      sub_10005D4E4(v6);
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 12)
    {
LABEL_34:
      v28 = [a1 items];
      v6 = v28;
      if ((v12 & 1) == 0)
      {
LABEL_45:
        if (!v6)
        {
          goto LABEL_65;
        }

        sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v11 & 1;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_49;
        }

        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) > v34)
        {
          v35 = *(v33 + 8 * v34 + 32);
LABEL_49:
          v36 = v35;

          v17 = v36;
          goto LABEL_66;
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (!v28)
      {
        goto LABEL_65;
      }

      sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v16 + v13;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_69;
      }

      if (v30 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_23:
    sub_10005D4E4(v6);
LABEL_66:
    [a1 setSelectedItem:v17];

    return;
  }

  if ((EnumCaseMultiPayload - 13) < 2)
  {
    v23 = [a1 items];
    if (!v23)
    {
      goto LABEL_65;
    }

    v24 = v23;
    sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v16 + v13;
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_67;
    }

    if (v25 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload == 17)
    {
LABEL_40:
      v31 = [a1 items];
      v32 = v31;
      if (v12)
      {
        if (!v31)
        {
          goto LABEL_65;
        }

        sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = v11 & 1;
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v25)
          {
            __break(1u);
            goto LABEL_45;
          }

          goto LABEL_56;
        }

LABEL_67:
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

      if (!v31)
      {
        goto LABEL_65;
      }

      sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_67;
      }

      if (v25 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

LABEL_56:
      v37 = *(v6 + 8 * v25 + 32);
LABEL_57:
      v38 = v37;
LABEL_64:

      v17 = v38;
      goto LABEL_66;
    }

    goto LABEL_23;
  }

LABEL_24:
  v19 = [a1 items];
  v20 = v19;
  if (v11)
  {
    if (v19)
    {
      sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v21 & 0xC000000000000001) == 0)
      {
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v21 + 32);
LABEL_62:
          v39 = v22;
LABEL_63:
          v38 = v39;
          goto LABEL_64;
        }

        goto LABEL_72;
      }

LABEL_69:
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_63;
    }

LABEL_65:

    v17 = 0;
    goto LABEL_66;
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v16 + v13;
  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (v30 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    v22 = *(v29 + 8 * v30 + 32);
    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
}

void sub_100224024(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for FMLegacyTabBar();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v23[3] = &type metadata for SolariumFeatureFlag;
  v23[4] = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v23);
  if ((v2 & 1) == 0)
  {
    v3 = [v1 superview];
    if (v3 && (v4 = v3, v5 = [v3 traitCollection], v4, v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 == 2))
    {
      [v1 bounds];
      v8 = v7;
      [v1 bounds];
      v10 = v9 + -1.0;
      [v1 bounds];
      v12 = v11;
      [v1 bounds];
      v14 = v13 + 2.0;
      v15 = [objc_opt_self() bezierPathWithRoundedRect:12 byRoundingCorners:v8 cornerRadii:{v10, v12, v13 + 2.0, 12.0, 12.0}];
      v16 = [objc_allocWithZone(CAShapeLayer) init];
      [v16 setFrame:{v8, v10, v12, v14}];
      v17 = [v15 CGPath];
      [v16 setPath:v17];

      v18 = [v1 layer];
      [v18 setMask:v16];
    }

    else
    {
      v16 = [v1 layer];
      [v16 setMask:0];
    }

    v19 = [v1 traitCollection];
    v20 = [v19 userInterfaceStyle];

    if (v20 == 2)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0;
    }

    v22 = [objc_allocWithZone(UIColor) initWithWhite:v21 alpha:0.7];
    [v1 setBackgroundColor:v22];
  }
}

void *sub_10022433C()
{
  v14 = [v0 hitTest:0 withEvent:?];
  if (v14)
  {
    v1 = [v0 items];
    if (v1)
    {
      v2 = v1;
      sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v3 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
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
              goto LABEL_16;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v9 = [v6 view];
          if (v9)
          {
            v10 = v9;
            sub_10000905C(0, &qword_1006BA410, UIView_ptr);
            v11 = v14;
            v12 = static NSObject.== infix(_:_:)();

            if (v12)
            {

              return v7;
            }
          }

          ++v5;
          if (v8 == i)
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
    }
  }

  return 0;
}

id sub_100224624(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMLegacyTabBar();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100224748(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100224834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMSelectedSection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  sub_100062074(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v21;
  sub_10005B574(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_1002258E0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062FFD0;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v22);
}

uint64_t sub_100224B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFPreferences();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v21;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_100224F2C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062FE90;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v6, v4);
  return (*(v22 + 8))(v9, v23);
}

void sub_100224F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPConfigValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v7 + 16))(v12, v41, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v3;
    v18 = v17;
    aBlock = v17;
    *v16 = 136315138;
    v19 = FMIPConfigValue.rawValue.getter();
    v33 = v9;
    v21 = v20;
    v22 = *(v7 + 8);
    v22(v12, v6);
    v23 = sub_100005B4C(v19, v21, &aBlock);
    v9 = v33;

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMLegacyTabBar: didReceive serverConfiguration %s", v16, 0xCu);
    sub_100006060(v18);
    v3 = v34;
  }

  else
  {

    v22 = *(v7 + 8);
    v22(v12, v6);
  }

  (*(v7 + 104))(v9, enum case for FMIPConfigValue.itemsTabEnabled(_:), v6);
  sub_10000A108(&unk_1006B6BC0, &type metadata accessor for FMIPConfigValue, &protocol conformance descriptor for FMIPConfigValue);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v48 && v43 == v49)
  {
    v22(v9, v6);
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22(v9, v6);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v35;
  v46 = sub_1002258BC;
  v47 = v26;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100004AE4;
  v45 = &unk_10062FF80;
  v28 = _Block_copy(&aBlock);
  v29 = v27;

  v30 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  v31 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v40 + 8))(v31, v3);
  (*(v37 + 8))(v30, v39);
}

uint64_t sub_100225590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_100225854()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022590C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10022598C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002259FC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription) = 0;
  v1 = (v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab;
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v41._object = 0x8000000100587640;
  v5._countAndFlagsBits = 0x545F454C504F4550;
  v41._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0xEA00000000004241;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v41);

  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 _systemImageNamed:v7];

  v10 = objc_allocWithZone(UITabBarItem);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithTitle:v11 image:v9 selectedImage:0];

  *(v0 + v2) = v12;
  v13 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab;
  v14 = [v3 mainBundle];
  v42._object = 0x8000000100587660;
  v15._countAndFlagsBits = 0x5F53454349564544;
  v15._object = 0xEB00000000424154;
  v42._countAndFlagsBits = 0xD00000000000001DLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v42);

  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 _systemImageNamed:v17];

  v19 = objc_allocWithZone(UITabBarItem);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithTitle:v20 image:v18 selectedImage:0];

  *(v0 + v13) = v21;
  v22 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab;
  v23 = [v3 mainBundle];
  v43._object = 0x80000001005876A0;
  v24._countAndFlagsBits = 0x4241545F454DLL;
  v24._object = 0xE600000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v43);

  v26 = String._bridgeToObjectiveC()();
  v27 = [v8 _systemImageNamed:v26];

  v28 = objc_allocWithZone(UITabBarItem);
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 initWithTitle:v29 image:v27 selectedImage:0];

  *(v0 + v22) = v30;
  v31 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab;
  v32 = [v3 mainBundle];
  v33.value._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x8000000100579A00;
  v34._countAndFlagsBits = 0x41545F534D455449;
  v33.value._object = 0x80000001005799E0;
  v34._object = 0xE900000000000042;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, v44);

  v36 = String._bridgeToObjectiveC()();
  v37 = [v8 _systemImageNamed:v36];

  v38 = objc_allocWithZone(UITabBarItem);
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 initWithTitle:v39 image:v37 selectedImage:0];

  *(v0 + v31) = v40;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100225F18(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab);
  sub_10000905C(0, &qword_1006B6BD8, UITabBarItem_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v9 = *(v1 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v11 = *(v1 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v13 = *(v1 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab);
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_100352650(v4);
    swift_unknownObjectRelease();
    return sub_10005D4E4(v4);
  }

  return result;
}

id sub_10022616C(void *a1, void *a2, double a3)
{
  v6 = OBJC_IVAR____TtC6FindMy7FMBadge_color;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_color] = 0;
  v7 = OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor] = 0;
  v8 = &v3[OBJC_IVAR____TtC6FindMy7FMBadge_insets];
  *v8 = xmmword_100558D70;
  *(v8 + 1) = xmmword_100558D70;
  *&v3[v6] = a1;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_lineWidth] = a3;
  *&v3[v7] = a2;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for FMBadge();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setTextAlignment:1];
  return v13;
}

double sub_1002263BC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FMBadge();
  objc_msgSendSuper2(&v4, "intrinsicContentSize");
  if ((result != 0.0 || v2 != 0.0) && result != UIViewNoIntrinsicMetric && v2 != UIViewNoIntrinsicMetric)
  {
    return result + *&v0[OBJC_IVAR____TtC6FindMy7FMBadge_insets + 8] + *&v0[OBJC_IVAR____TtC6FindMy7FMBadge_insets + 24];
  }

  return result;
}

id sub_10022646C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100226510()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() bezierPathWithRoundedRect:v1 cornerRadius:{v3, v5, v7, v7 * 0.5}];
  [v9 setLineWidth:*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_lineWidth]];
  [v9 setLineCapStyle:1];
  [*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_color] set];
  [*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor] setStroke];
  [v9 fill];
  [v9 stroke];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMBadge();
  objc_msgSendSuper2(&v10, "drawRect:", v2, v4, v6, v8);
}

void sub_10022667C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceState();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin(v2);
  v101 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v97 - v5;
  v6 = sub_10007EBC0(&qword_1006B64E0, &qword_100554B80);
  __chkstk_darwin(v6 - 8);
  v105 = &v97 - v7;
  v8 = sub_10007EBC0(&qword_1006B3B08, &unk_100558790);
  v107 = *(v8 - 8);
  v108 = v8;
  __chkstk_darwin(v8);
  v106 = &v97 - v9;
  v109 = type metadata accessor for FMIPDevice();
  v10 = *(v109 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v109);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMContactDetailsWelcomeScreenViewController(0);
  v112.receiver = v0;
  v112.super_class = v12;
  objc_msgSendSuper2(&v112, "viewDidLoad");
  v13 = [v0 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  v18 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView];
  v19 = [v15 secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  v21 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView];
  v98 = v15;
  v22 = [v15 secondarySystemBackgroundColor];
  [v21 setBackgroundColor:v22];

  v99 = v17;
  [*&v1[v17] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v17] setContentInsetAdjustmentBehavior:3];
  [*&v1[v20] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v20] setAxis:1];
  v23 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v10 + 16);
  v97 = v23;
  v26 = &v1[v23];
  v27 = v104;
  v28 = v109;
  v25(v104, v26, v109);
  v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v30 = v29 + v11;
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  (*(v10 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = 1;
  sub_10007EBC0(&unk_1006B3B20, &unk_100557F50);
  swift_allocObject();

  v111 = Future.init(_:)();
  sub_100004098(&qword_1006C39C0, &unk_1006B3B20, &unk_100557F50, &protocol conformance descriptor for Future<A, B>);
  v32 = Publisher.eraseToAnyPublisher()();

  v104 = v32;
  v111 = v32;
  v33 = [objc_opt_self() mainRunLoop];
  v110 = v33;
  v34 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v35 = v105;
  (*(*(v34 - 8) + 56))(v105, 1, 1, v34);
  sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
  sub_10000905C(0, &qword_1006B2918, NSRunLoop_ptr);
  v36 = v99;
  sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100110658();
  v37 = v106;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v35, &qword_1006B64E0, &qword_100554B80);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08, &unk_100558790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v38 = v108;
  v39 = Publisher.sink(receiveCompletion:receiveValue:)();

  (v107)[1](v37, v38);
  *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable] = v39;

  v40 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  [*&v1[v20] addArrangedSubview:*&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView]];
  v41 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  [*&v1[v20] addArrangedSubview:v41];
  v42 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  [*&v1[v20] addArrangedSubview:v42];
  v43 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection];
  v44 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch];
  [*(v43 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:v44];
  [*&v1[v20] addArrangedSubview:v43];
  v45 = *&v1[v20];
  v107 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel];
  [v45 addArrangedSubview:?];
  [*&v1[v36] addSubview:*&v1[v20]];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v47 = v46;
  [v46 addSubview:*&v1[v36]];

  v48 = [v1 navigationItem];
  v109 = objc_opt_self();
  v49 = [v109 mainBundle];
  v108 = 0x8000000100587910;
  v113._object = 0x8000000100587910;
  v50._countAndFlagsBits = 0xD000000000000024;
  v50._object = 0x80000001005879D0;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEC00000031656C62;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v113);

  v53 = String._bridgeToObjectiveC()();

  [v48 setTitle:v53];

  [*&v1[v40] setContentMode:4];
  [v41 setNumberOfLines:0];
  v54 = objc_opt_self();
  v55 = [v54 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightSemibold;
  v57 = UIFontWeightTrait;
  v58 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
  v59 = sub_10002ACDC(v58);

  v60 = sub_100039388(0x8000);

  [v41 setFont:v60];
  v61 = v98;
  v62 = [v98 labelColor];
  [v41 setTextColor:v62];

  [v41 setTextAlignment:1];
  [v42 setNumberOfLines:0];
  v63 = [v54 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = sub_100039388(0x8000);

  [v42 setFont:v64];
  v65 = [v61 secondaryLabelColor];
  [v42 setTextColor:v65];

  [v42 setTextAlignment:1];
  v66 = v100;
  FMIPDevice.state.getter();
  v67 = v101;
  static FMIPDeviceState.isDeviceWithYou.getter();
  sub_100228CD8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v68 = v103;
  v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v70 = *(v102 + 8);
  v70(v67, v68);
  v70(v66, v68);
  if (v69)
  {
    v71 = [v109 mainBundle];
    v114._object = v108;
    v72._countAndFlagsBits = 0xD00000000000002ALL;
    v72._object = 0x80000001005879A0;
    v73.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v73.value._object = 0xEC00000031656C62;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v114._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, v114);
  }

  else
  {
    sub_10022EDD4(0xD000000000000033, 0x8000000100587960);
  }

  v75 = String._bridgeToObjectiveC()();

  v76 = v107;
  [v107 setText:v75];

  [v76 setNumberOfLines:0];
  v77 = [v54 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v76 setFont:v77];

  v78 = [v61 secondaryLabelColor];
  [v76 setTextColor:v78];

  [v76 setLineBreakMode:0];
  [v76 sizeToFit];
  sub_1002279FC();
  v79 = [v109 mainBundle];
  v115._object = v108;
  v80._countAndFlagsBits = 0xD000000000000025;
  v80._object = 0x8000000100587A00;
  v81.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v81.value._object = 0xEC00000031656C62;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v115._countAndFlagsBits = 0xD000000000000017;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v115);

  *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v83;

  v84 = *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v85 = v84;
  v86 = String._bridgeToObjectiveC()();

  [v85 setText:v86];

  *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100630000;
  swift_unknownObjectWeakAssign();
  v87 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityIdentifier:v87];

  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState];
  [*&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:?];
  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled] = v69 & 1;
  sub_10014B454();
  v88 = objc_allocWithZone(UIBarButtonItem);
  v89 = v1;
  v90 = [v88 initWithBarButtonSystemItem:1 target:v89 action:"cancelActionWithSender:"];
  v91 = [v89 navigationItem];
  [v91 setLeftBarButtonItem:v90];

  v92 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v89 action:"doneAction"];
  v93 = [v89 navigationItem];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1005528C0;
  *(v94 + 32) = v92;
  sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
  v95 = v92;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v93 setRightBarButtonItems:isa animated:0];
}

void sub_1002276D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView) setImage:v2];
  }
}

id sub_10022778C(char a1, char a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMContactDetailsWelcomeScreenViewController : update called", v9, 2u);
  }

  *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState) = a2 & 1;
  if (a1)
  {
    v10 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel);
    v11 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100587910;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEC00000031656C62;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x80000001005879A0;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v18);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState) = a2 & 1;
    v15 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch);
    *(v15 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = a2 & 1;
    [*(v15 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
    v10 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel);
    sub_10022EDD4(0xD000000000000033, 0x8000000100587960);
  }

  v16 = String._bridgeToObjectiveC()();

  [v10 setText:v16];

  *(*(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch) + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = a1 & 1;
  return sub_10014B454();
}

void sub_1002279FC()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555120;
  v74 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView];
  *(inited + 32) = v2;
  v71 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection];
  *(inited + 72) = v7;
  v72 = v0;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel];
  *(inited + 80) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  v17 = v72;
  v18 = v74;
  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v19 = v10;
  while (1)
  {
    [v19 setTranslatesAutoresizingMaskIntoConstraints:{0, v71}];

    if (v9)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v20 = *(inited + 40);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_27;
      }

      v22 = *(inited + 48);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_27;
      }

      v24 = *(inited + 56);
    }

    v25 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_27;
      }

      v26 = *(inited + 64);
    }

    v27 = v26;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_27;
      }

      v28 = *(inited + 72);
    }

    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v30 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v72;
    v18 = v74;
  }

  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1005521F0;
  v33 = [*&v17[v18] topAnchor];
  v34 = [v17 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_36;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 topAnchor];
  v38 = [v33 constraintEqualToAnchor:v37];

  *(v32 + 32) = v38;
  v39 = [*&v17[v18] bottomAnchor];
  v40 = [v17 view];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v32 + 40) = v43;
  v44 = [*&v17[v18] leadingAnchor];
  v45 = [v17 view];
  if (!v45)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v32 + 48) = v48;
  v49 = [*&v17[v18] trailingAnchor];
  v50 = [v17 view];
  if (v50)
  {
    v51 = v50;
    v73 = objc_opt_self();
    v52 = [v51 trailingAnchor];

    v53 = [v49 constraintEqualToAnchor:v52];
    *(v32 + 56) = v53;
    sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:isa];

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1005521F0;
    v56 = [*&v17[v71] topAnchor];
    v57 = [*&v17[v18] topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v55 + 32) = v58;
    v59 = [*&v17[v71] bottomAnchor];
    v60 = [*&v17[v18] bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v55 + 40) = v61;
    v62 = [*&v17[v71] leadingAnchor];
    v63 = [*&v17[v18] layoutMarginsGuide];
    v64 = [v63 leadingAnchor];

    v65 = [v62 constraintEqualToAnchor:v64];
    *(v55 + 48) = v65;
    v66 = [*&v17[v71] trailingAnchor];
    v67 = [*&v17[v18] layoutMarginsGuide];
    v68 = [v67 trailingAnchor];

    v69 = [v66 constraintEqualToAnchor:v68];
    *(v55 + 56) = v69;
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v70];

    return;
  }

LABEL_38:
  __break(1u);
}

id sub_100228190()
{
  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState;
  if (v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState] == v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState])
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100437A74();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = v0[v1];
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      sub_10020850C(v3, sub_100228CC8, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10022829C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPActionStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003EB538();
  v8 = *(v5 + 104);
  v8(v7, enum case for FMIPActionStatus.success(_:), v4);
  sub_100228CD8(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v44 == v43)
  {
    [a2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v39 = v9;
    v42 = a2;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = v8;
    v41 = a1;
    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMContactDetailsWelcomeScreenViewController: Error occurred", v13, 2u);
    }

    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v45._object = 0x800000010057FF90;
    v16._countAndFlagsBits = 0xD000000000000019;
    v16._object = 0x800000010057FF70;
    v45._countAndFlagsBits = 0xD00000000000002BLL;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v38[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v45)._countAndFlagsBits;

    v18 = [v14 mainBundle];
    v46._object = 0x800000010057FFE0;
    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x800000010057FFC0;
    v46._countAndFlagsBits = 0xD00000000000002ALL;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v46);

    v40(v7, enum case for FMIPActionStatus.error(_:), v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39(v7, v4);
    if (v44 == v43)
    {

      v21 = [v14 mainBundle];
      v47._object = 0x8000000100587910;
      v22._countAndFlagsBits = 0xD00000000000002BLL;
      v22._object = 0x80000001005878E0;
      v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v23.value._object = 0xEC00000031656C62;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v47);

      v25 = [v14 mainBundle];
      v48._object = 0x8000000100587910;
      v26._countAndFlagsBits = 0xD00000000000002DLL;
      v26._object = 0x8000000100587930;
      v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v27.value._object = 0xEC00000031656C62;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v48._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v48);

      v29 = &selRef__enter3DMode;
    }

    else
    {
      v29 = &selRef__enter3DMode;
    }

    v30 = String._bridgeToObjectiveC()();

    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    v33 = [v14 v29[272]];
    v49._object = 0x8000000100579B60;
    v34._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v34._object = 0xEF454C5449545F4ELL;
    v49._countAndFlagsBits = 0xD000000000000021;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v49);

    v36 = String._bridgeToObjectiveC()();

    v37 = [objc_opt_self() actionWithTitle:v36 style:1 handler:0];

    [v32 addAction:v37];
    [v42 presentViewController:v32 animated:1 completion:0];
  }
}

uint64_t sub_10022894C()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate);

  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100228A54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMContactDetailsWelcomeScreenViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMContactDetailsWelcomeScreenViewController(uint64_t a1)
{
  result = qword_1006B6CD8;
  if (!qword_1006B6CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100228BEC(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice();
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

uint64_t sub_100228CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100228D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v35 = a1;
  v7 = type metadata accessor for FMIPDeviceState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  *&v5[v14] = [objc_allocWithZone(UIScrollView) init];
  v15 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  *&v5[v15] = [objc_allocWithZone(UIStackView) init];
  *&v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  *&v5[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel;
  *&v5[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel;
  *&v5[v18] = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel;
  *&v5[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v21 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch;
  *&v5[v21] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *&v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable] = 0;
  v22 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v23 = type metadata accessor for FMIPDevice();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v5[v22], a2, v23);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isShowContactDetailsEnabled.getter();
  sub_100228CD8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  LOBYTE(v22) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = *(v8 + 8);
  v25(v10, v7);
  v25(v13, v7);
  v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState] = v22 & 1;
  v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState] = v22 & 1;
  *&v5[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v35;
  v26 = type metadata accessor for FMMediatedViewController();
  v38.receiver = v5;
  v38.super_class = v26;

  v27 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v28 = a2;
  FMIPDevice.name.getter();
  v29 = *&v27[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  v30 = String._bridgeToObjectiveC()();

  [v29 setText:v30];

  sub_100123238(v36, v37);

  v31 = *&v27[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  v32 = String._bridgeToObjectiveC()();

  [v31 setText:v32];

  sub_1002279FC();
  (*(v24 + 8))(v28, v23);
  return v27;
}

void sub_100229140()
{
  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  *(v0 + v1) = [objc_allocWithZone(UIScrollView) init];
  v2 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v8 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1002292C4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a6;
  LODWORD(v75) = a4;
  v76 = a3;
  v72 = a2;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&qword_1006B6D60, &qword_10055B380);
  __chkstk_darwin(v13 - 8);
  v15 = v65 - v14;
  v16 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate];
  *&v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  *&v7[v18] = [objc_allocWithZone(UIButton) init];
  v19 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView;
  *&v7[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel;
  *&v7[v20] = [objc_allocWithZone(UILabel) init];
  v21 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue];
  *v21 = 0;
  v21[1] = 0;
  v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = 0;
  *(v16 + 1) = v74;
  v74 = a5;
  swift_unknownObjectWeakAssign();
  v22 = v76;
  v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_itemType] = v75;
  if (v22)
  {
    [v22 size];
  }

  else
  {
    v23 = 25.0;
    v24 = 25.0;
  }

  v25 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_imageSize];
  *v25 = v23;
  v25[1] = v24;
  v26 = type metadata accessor for FMEmbeddedTabBarItem();
  v78.receiver = v7;
  v78.super_class = v26;
  v27 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  v29 = *&v27[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button];
  v70 = v27;
  v30 = v29;
  static UIButton.Configuration.plain()();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v9);
  UIButton.Configuration.cornerStyle.setter();
  v31 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v31(v77, 0);
  v32 = objc_opt_self();
  v33 = [v32 clearColor];
  v34 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v34(v77, 0);
  UIButton.Configuration.imagePlacement.setter();
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.imagePadding.setter();
  v35 = [v32 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v36 = type metadata accessor for UIButton.Configuration();
  (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
  UIButton.configuration.setter();

  [*&v27[v28] setImage:v76 forState:0];
  v37 = *&v27[v28];
  v68 = sub_10007EBC0(&qword_1006B0C40, &unk_100558F30);
  inited = swift_initStackObject();
  v75 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSFontAttributeName;
  v39 = objc_opt_self();
  v67 = v39;
  v66 = NSFontAttributeName;
  v40 = v37;
  v41 = [v39 systemFontOfSize:10.0 weight:UIFontWeightRegular];
  v69 = v32;
  v42 = v41;
  v43 = sub_10000905C(0, &qword_1006B4DD0, UIFont_ptr);
  *(inited + 64) = v43;
  *(inited + 40) = v42;
  sub_10001AC8C(inited);
  swift_setDeallocating();
  sub_1000D6084(inited + 32);
  v44 = objc_allocWithZone(NSAttributedString);
  v45 = v27;
  v46 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v65[2] = v47;
  v65[1] = sub_1000D60EC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = [v44 initWithString:v46 attributes:isa];

  [v40 setAttributedTitle:v49 forState:0];
  v50 = *&v45[v28];
  v51 = swift_initStackObject();
  *(v51 + 16) = v75;
  *(v51 + 32) = v66;
  v52 = v50;
  v53 = [v67 systemFontOfSize:10.0 weight:UIFontWeightBold];
  *(v51 + 64) = v43;
  *(v51 + 40) = v53;
  sub_10001AC8C(v51);
  swift_setDeallocating();
  sub_1000D6084(v51 + 32);
  v54 = objc_allocWithZone(NSAttributedString);
  v55 = String._bridgeToObjectiveC()();

  v56 = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v54 initWithString:v55 attributes:v56];

  [v52 setAttributedTitle:v57 forState:4];
  [*&v45[v28] setSelected:0];
  v58 = *&v45[v28];
  v59 = v70;
  [v58 addTarget:v70 action:"onButtonTapped" forControlEvents:64];

  v60 = *&v45[v28];
  if (v59[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected])
  {
    v61 = &selRef_systemBlueColor;
  }

  else
  {
    v61 = &selRef_labelColor;
  }

  v62 = [v69 *v61];
  [v60 setTintColor:v62];

  sub_10007EBC0(&qword_1006B6D68, &qword_100558F40);
  v63 = swift_allocObject();
  *(v63 + 16) = v75;
  *(v63 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v63 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100229B6C();
  sub_100229D80();

  swift_unknownObjectRelease();
  return v59;
}

id sub_100229B6C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea];
  [v0 addSubview:v1];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button]];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView];
  v3 = objc_opt_self();
  v4 = [v3 systemRedColor];
  [v2 setBackgroundColor:v4];

  [v2 setHidden:1];
  [v2 setUserInteractionEnabled:0];
  v5 = [v2 layer];
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  [v5 setCornerRadius:*(&xmmword_1006D43A0 + 1) * 0.5];

  [v0 addSubview:v2];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel];
  v7 = [v3 whiteColor];
  [v6 setTextColor:v7];

  [v6 setTextAlignment:1];
  v8 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightRegular];
  [v6 setFont:v8];

  return [v2 addSubview:v6];
}

void sub_100229D80()
{
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_1006D43A0 + 1);
  v2 = unk_1006D43B0;
  v3 = *&qword_1006D43B8;
  v4 = *(&xmmword_1006D43E0 + 1);
  v5 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea];
  v64 = qword_1006D4398;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [v5 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v5 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v5 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:isa];

  v20 = [v5 widthAnchor];
  v21 = [v20 constraintEqualToConstant:v4];

  [v21 setActive:1];
  v22 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1005521F0;
  v24 = [v22 topAnchor];
  v25 = [v5 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v23 + 32) = v26;
  v27 = [v22 bottomAnchor];
  v28 = [v5 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  v30 = [v22 centerXAnchor];
  v31 = [v5 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v23 + 48) = v32;
  v33 = [v22 centerYAnchor];
  v34 = [v5 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v23 + 56) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v36];

  v37 = [v22 widthAnchor];
  v38 = [v37 constraintGreaterThanOrEqualToConstant:v4];

  [v38 setActive:1];
  v39 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100552200;
  v42 = [v39 leadingAnchor];
  v43 = [v0 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:*&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_imageSize] * 0.5 - v3];

  *(v41 + 32) = v44;
  v45 = [v39 bottomAnchor];
  v46 = [v0 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-v2];

  *(v41 + 40) = v47;
  v48 = [v39 widthAnchor];
  v49 = [v48 constraintGreaterThanOrEqualToConstant:v1];

  *(v41 + 48) = v49;
  v50 = [v39 heightAnchor];
  v51 = [v50 constraintEqualToConstant:v1];

  *(v41 + 56) = v51;
  v52 = [v40 leadingAnchor];
  v53 = [v39 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:4.0];

  *(v41 + 64) = v54;
  v55 = [v40 trailingAnchor];
  v56 = [v39 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-4.0];

  *(v41 + 72) = v57;
  v58 = [v40 topAnchor];
  v59 = [v39 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:1.0];

  *(v41 + 80) = v60;
  v61 = [v40 bottomAnchor];
  v62 = [v39 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-1.0];

  *(v41 + 88) = v63;
  v66 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v66];
}

id sub_10022A658(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue);
  *v4 = a1;
  v4[1] = a2;

  v5 = *(v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = *(v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView);
  v8 = v4[1] == 0;

  return [v7 setHidden:v8];
}

id sub_10022A7F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMEmbeddedTabBarItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10022A8F4()
{
  result = qword_1006B6D58;
  if (!qword_1006B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6D58);
  }

  return result;
}

void sub_10022A94C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected);
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button);
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (!v1)
  {
    v4 = &selRef_labelColor;
  }

  v5 = [v3 *v4];
  [v2 setTintColor:v5];
}

void sub_10022A9E8()
{
  *(v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  *(v0 + v2) = [objc_allocWithZone(UIButton) init];
  v3 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = (v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10022AB00()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  v9(v3, v0);
  v12 = v8 - v11;
  if (v8 - v11 < 0.0 || v12 > 30.0)
  {
    v14 = 60.0;
    if (v12 < 30.0 || v12 > 60.0)
    {
      v14 = 3600.0;
      if (v12 >= 60.0 && v12 <= 3600.0)
      {
        v14 = 60.0;
      }
    }

    fmod(v12, v14);
  }
}

void sub_10022AC8C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMItemCellViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022ADE0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMDeviceCellViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022AF34()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMDeviceDetailViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B088()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMPersonDetailViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B1DC(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  a1(0);
  Date.timeIntervalSince1970.getter();
  v9 = v7 - v8;
  if (v9 < 0.0 || v9 > 30.0)
  {
    v11 = 60.0;
    if (v9 < 30.0 || v9 > 60.0)
    {
      v11 = 3600.0;
      if (v9 >= 60.0 && v9 <= 3600.0)
      {
        v11 = 60.0;
      }
    }

    fmod(v9, v11);
  }
}

void sub_10022B340()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMAllowLocationAlertCellViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v10, v4);
  (*(a2 + 8))(a1, a2);
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  v13(v7, v4);
  v16 = v12 - v15;
  if (v12 - v15 < 0.0 || v16 > 30.0)
  {
    v18 = 60.0;
    if (v16 < 30.0 || v16 > 60.0)
    {
      v18 = 3600.0;
      if (v16 >= 60.0 && v16 <= 3600.0)
      {
        v18 = 60.0;
      }
    }

    fmod(v16, v18);
  }
}

double sub_10022B6AC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMItemAger: refresh timer fired %@", v11, 0xCu);
      sub_10022CA58(v12);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      sub_10007EBC0(&unk_1006B40B0, &unk_100555D60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100552220;
      sub_100037840(a3, v16 + 32);
      (*(v14 + 8))(v6, v16, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMItemAger: refresh timer cannot be fired because self has been deallocated", v21, 2u);
    }
  }

  return result;
}

uint64_t sub_10022B968()
{
  sub_10005CD20(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_10022B9F0(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  __chkstk_darwin(v123);
  v122 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v109 - v12;
  v13 = a3[1];
  v114 = a3;
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
    }

    else
    {
LABEL_127:
      v103 = sub_10025EFD4(a4);
    }

    v130 = v103;
    v104 = *(v103 + 2);
    if (v104 >= 2)
    {
      a4 = 40;
      do
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *&v103[16 * v104];
        v107 = v103;
        a3 = *&v103[16 * v104 + 24];
        sub_10022C394((v105 + 40 * v106), (v105 + 40 * *&v103[16 * v104 + 16]), (v105 + 40 * a3), v5);
        if (v6)
        {
          break;
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_10025EFD4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        v108[1] = a3;
        v130 = v107;
        sub_10025EF48(v104 - 1);
        v103 = v130;
        v104 = *(v130 + 2);
        a3 = v114;
      }

      while (v104 > 1);
    }

LABEL_105:

    return;
  }

  v14 = 0;
  v120 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v15;
    if (v14 + 1 >= v13)
    {
      v35 = v14 + 1;
    }

    else
    {
      v118 = v13;
      v110 = v6;
      v16 = *a3;
      sub_100037840(*a3 + 40 * (v14 + 1), &v127);
      v5 = 40 * v14;
      v17 = v16 + 40 * v14;
      sub_100037840(v17, v124);
      v18 = v128;
      v19 = v129;
      sub_1000244BC(&v127, v128);
      v20 = v121;
      (*(v19 + 8))(v18, v19);
      v22 = v125;
      v21 = v126;
      sub_1000244BC(v124, v125);
      v23 = v122;
      (*(v21 + 8))(v22, v21);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v24 = v14;
      v25 = *v120;
      a4 = v123;
      (*v120)(v23, v123);
      v25(v20, a4);
      sub_100006060(v124);
      sub_100006060(&v127);
      v109 = v24;
      v26 = v24 + 2;
      v27 = v17 + 80;
      while (v118 != v26)
      {
        sub_100037840(v27, &v127);
        sub_100037840(v27 - 40, v124);
        v29 = v128;
        v28 = v129;
        sub_1000244BC(&v127, v128);
        v30 = v121;
        (*(v28 + 8))(v29, v28);
        v31 = v125;
        v32 = v126;
        sub_1000244BC(v124, v125);
        v33 = v122;
        (*(v32 + 8))(v31, v32);
        a4 = static Date.< infix(_:_:)() & 1;
        v34 = v123;
        v25(v33, v123);
        v25(v30, v34);
        sub_100006060(v124);
        sub_100006060(&v127);
        ++v26;
        v27 += 40;
        if ((v119 & 1) != a4)
        {
          v35 = v26 - 1;
          goto LABEL_11;
        }
      }

      v35 = v118;
      v6 = v110;
      a3 = v114;
      v14 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v35 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v35)
      {
        v36 = 40 * v35 - 40;
        v118 = v35;
        v37 = v35;
        v38 = v109;
        do
        {
          if (v38 != --v37)
          {
            v43 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v39 = v43 + v5;
            v40 = v43 + v36;
            sub_100006A54((v43 + v5), &v127);
            v41 = *(v40 + 32);
            v42 = *(v40 + 16);
            *v39 = *v40;
            *(v39 + 16) = v42;
            *(v39 + 32) = v41;
            sub_100006A54(&v127, v40);
          }

          ++v38;
          v36 -= 40;
          v5 += 40;
        }

        while (v38 < v37);
        a3 = v114;
        a4 = v111;
        v35 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v44 = a3[1];
    if (v35 < v44)
    {
      if (__OFSUB__(v35, v14))
      {
        goto LABEL_123;
      }

      if (v35 - v14 < a4)
      {
        if (__OFADD__(v14, a4))
        {
          goto LABEL_125;
        }

        if (v14 + a4 >= v44)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v14 + a4;
        }

        if (v45 < v14)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v35 != v45)
        {
          break;
        }
      }
    }

    v46 = v35;
    if (v35 < v14)
    {
      goto LABEL_122;
    }

LABEL_32:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v113;
    }

    else
    {
      v15 = sub_10008B8B8(0, *(v113 + 2) + 1, 1, v113);
    }

    a4 = *(v15 + 2);
    v47 = *(v15 + 3);
    v48 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      v15 = sub_10008B8B8((v47 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v48;
    v49 = &v15[16 * a4];
    *(v49 + 4) = v14;
    *(v49 + 5) = v46;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v46;
    if (a4)
    {
      while (1)
      {
        v5 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v15 + 4);
          v52 = *(v15 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_51:
          if (v54)
          {
            goto LABEL_111;
          }

          v67 = &v15[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_114;
          }

          v73 = &v15[16 * v5 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_118;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v5 = v48 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v77 = &v15[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_65:
        if (v72)
        {
          goto LABEL_113;
        }

        v80 = &v15[16 * v5];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_116;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v48)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = v15;
        v89 = *&v15[16 * a4 + 32];
        v90 = *&v15[16 * v5 + 40];
        sub_10022C394((*a3 + 40 * v89), (*a3 + 40 * *&v15[16 * v5 + 32]), (*a3 + 40 * v90), v50);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v90 < v89)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_10025EFD4(v88);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_108;
        }

        v91 = &v88[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v130 = v88;
        sub_10025EF48(v5);
        v15 = v130;
        v48 = *(v130 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v15[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_109;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_110;
      }

      v62 = &v15[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_112;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_115;
      }

      if (v66 >= v58)
      {
        v84 = &v15[16 * v5 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v53 < v87)
        {
          v5 = v48 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v115;
    a4 = v111;
    if (v115 >= v13)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v35;
  v109 = v14;
  v92 = v14 - v35;
  v115 = v45;
LABEL_83:
  v117 = v5;
  v118 = v35;
  v116 = v92;
  while (1)
  {
    sub_100037840(v5, &v127);
    sub_100037840(v5 - 40, v124);
    v93 = v128;
    v94 = v129;
    sub_1000244BC(&v127, v128);
    v95 = v121;
    (*(v94 + 8))(v93, v94);
    v96 = v125;
    v97 = v126;
    sub_1000244BC(v124, v125);
    v98 = v122;
    (*(v97 + 8))(v96, v97);
    a4 = static Date.< infix(_:_:)();
    v99 = *v120;
    v100 = v123;
    (*v120)(v98, v123);
    v99(v95, v100);
    sub_100006060(v124);
    sub_100006060(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v35 = v118 + 1;
      v5 = v117 + 40;
      v46 = v115;
      v92 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v14 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_100006A54(v5, &v127);
    v101 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v101;
    *(v5 + 32) = *(v5 - 8);
    sub_100006A54(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_82;
    }
  }

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
}

uint64_t sub_10022C394(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  __chkstk_darwin(v74);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100037840(v37, v71);
        sub_100037840(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000244BC(v71, v72);
        v44 = v66;
        (*(v43 + 8))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000244BC(v68, v69);
        v47 = v67;
        (*(v46 + 8))(v45, v46);
        v48 = static Date.< infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100006060(v68);
        sub_100006060(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 4) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 4) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100037840(v18, v71);
    sub_100037840(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000244BC(v71, v72);
    v22 = v66;
    (*(v21 + 8))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000244BC(v68, v69);
    v25 = v67;
    (*(v24 + 8))(v23, v24);
    LOBYTE(v23) = static Date.< infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100006060(v68);
    sub_100006060(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

void sub_10022C8BC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  v9(v3, v0);
  v12 = v8 - v11;
  if (v8 - v11 < 0.0 || v12 > 30.0)
  {
    v14 = 60.0;
    if (v12 < 30.0 || v12 > 60.0)
    {
      v14 = 3600.0;
      if (v12 >= 60.0 && v12 <= 3600.0)
      {
        v14 = 60.0;
      }
    }

    fmod(v12, v14);
  }
}

uint64_t sub_10022CA58(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006AF760, &qword_100552DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMB389VideoAsset.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x64726143786F7250;
    v4 = 0xD000000000000012;
    if (a1 != 3)
    {
      v4 = 0x5F656C6261736944;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (!a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v6 = 0xD000000000000012;
    if (a1 != 9)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 == 8)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 6)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10022CC54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FMB389VideoAsset.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FMB389VideoAsset.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10022CCDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FMB389VideoAsset.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10022CD40(uint64_t a1)
{
  FMB389VideoAsset.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10022CD94(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  FMB389VideoAsset.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022CDF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s6FindMy16FMB389VideoAssetO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10022CE24@<X0>(unint64_t *a1@<X8>)
{
  result = FMB389VideoAsset.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s6FindMy16FMB389VideoAssetO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1006223F0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10022CEA0()
{
  result = qword_1006B6E50;
  if (!qword_1006B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMSoundPlatterViewLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMSoundPlatterViewLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_10022D044()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  __asm { FMOV            V1.2D, #12.0 }

  xmmword_1006D4130 = _Q1;
  *&qword_1006D4140 = *&qword_1006D4798 + 8.0;
  result = 28.0;
  *algn_1006D4148 = xmmword_100559080;
  *(&xmmword_1006D4150 + 1) = 0x3FE4CCCCCCCCCCCDLL;
  return result;
}

char *sub_10022D0C8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel;
  *&v3[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy11FMAddButton_iconView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint] = 0;
  v3[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled] = 1;
  v7 = &v3[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v8 = a3[2];
  v7[1] = a3[1];
  v7[2] = v8;
  *v7 = *a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for FMAddButton();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  v11 = v9;
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  sub_10022D310();
  sub_10022D410();
  sub_10022D884();

  return v11;
}

id sub_10022D310()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v4 = sub_100039388(2);

  v5 = sub_100039388(0x8000);
  [v2 setFont:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setNumberOfLines:0];
  [v1 addSubview:v2];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];

  return [v1 addSubview:v6];
}

void sub_10022D410()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 leadingAnchor];
  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];
  v35 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100552EE0;
  v8 = [v1 topAnchor];
  v9 = [v0 topAnchor];
  v10 = &v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v11 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v12 = [v8 constraintEqualToAnchor:v9 constant:v11];

  *(v7 + 32) = v12;
  *(v7 + 40) = v6;
  sub_10002B27C();
  v36 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];

  v14 = [v2 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-v10[1]];

  LODWORD(v17) = 1144750080;
  [v16 setPriority:v17];
  v18 = [v2 bottomAnchor];
  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:-2.0 - v11];

  LODWORD(v21) = 1144750080;
  [v20 setPriority:v21];
  v22 = [v2 leadingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v10[3]];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [v2 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v25 + 32) = v28;
  *(v25 + 40) = v24;
  *(v25 + 48) = v20;
  *(v25 + 56) = v16;
  v29 = v24;
  v30 = v20;
  v31 = v16;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:v32];

  v33 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint] = v29;

  v34 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint] = v36;
}

void sub_10022D884()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  if (v0[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.5;
  }

  v5 = &selRef_systemBlueColor;
  if (!v0[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled])
  {
    v5 = &selRef_secondaryLabelColor;
  }

  v6 = [v1 *v5];
  [v3 setTextColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];
  [v7 setAlpha:v4];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v9 = [objc_opt_self() configurationWithFont:v8 scale:2];
  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_10000BD04();
  isFeatureEnabled(_:)();
  sub_100006060(v13);
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  [v7 setImage:v12];
}

void sub_10022DB0C(uint64_t a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for FMAddButton();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  [v1 frame];
  v3 = &v1[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  [v2 setPreferredMaxLayoutWidth:v4 * *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_style + 40]];
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v8 = v3[4];
LABEL_18:
    v9 = 1.0;
    goto LABEL_19;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v11 = v3[4];
    v12 = -0.05;
    goto LABEL_17;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory() || !_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v11 = v3[4];
    v12 = -0.1;
LABEL_17:
    v8 = v11 + v12;
    goto LABEL_18;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v11 = v3[4];
    v12 = -0.15;
    goto LABEL_17;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v17 = v3[4];
    v18 = -0.2;
LABEL_27:
    v8 = v17 + v18;
    v10 = 0x3FEE666666666666;
    goto LABEL_28;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v17 = v3[4];
    v18 = -0.25;
    goto LABEL_27;
  }

  if (_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    if (_UIContentSizeCategoryCompareToContentSizeCategory())
    {
      if (_UIContentSizeCategoryCompareToContentSizeCategory())
      {
        if (!_UIContentSizeCategoryCompareToContentSizeCategory() || (v7 = _UIContentSizeCategoryCompareToContentSizeCategory(), v8 = 1.0, v9 = 1.0, !v7))
        {
          v8 = v3[4] + -0.8;
          v10 = 0x3FD6666666666666;
LABEL_28:
          v9 = *&v10;
        }
      }

      else
      {
        v8 = v3[4] + -0.6;
        v9 = 0.5;
      }
    }

    else
    {
      v8 = v3[4] + -0.45;
      v9 = 0.55;
    }
  }

  else
  {
    v8 = v3[4] + -0.35;
    v9 = 0.75;
  }

LABEL_19:
  v13 = *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint];
  if (v13)
  {
    [v13 setConstant:v9 * v3[3]];
  }

  v14 = *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint];
  if (v14)
  {
    v15 = v8 * v3[2];
    v16 = v14;
    [v16 setConstant:v15];
  }
}

id sub_10022DEAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMAddButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10022DF70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022DF90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_10022DFD8()
{
  v1 = OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy11FMAddButton_iconView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10022E0A8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  _StringGuts.grow(_:)(20);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v27._object = 0x800000010057A180;
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  v15.value._countAndFlagsBits = a5;
  v15.value._object = a6;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000012;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v27);

  v18 = v17._countAndFlagsBits == a1 && v17._object == a2;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !a4)
  {
    return v17._countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);
  v20 = [v12 mainBundle];
  v28._object = 0x800000010057A180;
  v21._countAndFlagsBits = a3;
  v21._object = a4;
  v22.value._countAndFlagsBits = a5;
  v22.value._object = a6;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v28)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022E294(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  _StringGuts.grow(_:)(20);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010057A180;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022E3F4(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a1;
  v5 = type metadata accessor for FMIPProductType();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B77D0, &unk_100559AB0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v40 - v11);
  sub_100007204(a3, &v40 - v11, &unk_1006B77D0, &unk_100559AB0);
  v13 = type metadata accessor for FMIPUnknownItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v16 = &unk_1006B77D0;
    v17 = &unk_100559AB0;
    v18 = v12;
  }

  else
  {
    v40 = v5;
    v19 = FMIPUnknownItem.isAppleAudioAccessory.getter();
    v20 = *(v14 + 8);
    v20(v12, v13);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_100007204(a3, v9, &unk_1006B77D0, &unk_100559AB0);
    if (v15(v9, 1, v13) == 1)
    {
      v16 = &unk_1006B77D0;
      v17 = &unk_100559AB0;
      v18 = v9;
    }

    else
    {
      v27 = v41;
      FMIPUnknownItem.productType.getter();
      v20(v9, v13);
      FMIPProductType.productInformation.getter();
      (*(v42 + 8))(v27, v40);
      if (v47)
      {
        sub_1000244BC(&v45, v47);
        v28 = dispatch thunk of FMIPAnyProductInformation.productIdentifier.getter();
        sub_100006060(&v45);
        v29 = v43;
        v45 = v43;
        v46 = a2;

        v30._countAndFlagsBits = 24415;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x53444F50524941;
        v31._object = 0xE700000000000000;
        String.append(_:)(v31);

        v33 = v45;
        v32 = v46;
        v45 = v29;
        v46 = a2;

        v34._countAndFlagsBits = 24415;
        v34._object = 0xE200000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 0x53444F50524941;
        v35._object = 0xE700000000000000;
        String.append(_:)(v35);
        v36._countAndFlagsBits = 95;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        v44 = v28;
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38 = v45;
        v39 = v46;

        v25 = sub_1002304E0(v38, v39, v33, v32, v29, a2);

        goto LABEL_8;
      }

      v16 = &qword_1006B1328;
      v17 = &qword_100557F30;
      v18 = &v45;
    }
  }

  sub_100012DF0(v18, v16, v17);
LABEL_7:
  v21 = v43;
  v45 = v43;
  v46 = a2;

  v22._countAndFlagsBits = 0x4C55414645445F5FLL;
  v22._object = 0xE900000000000054;
  String.append(_:)(v22);
  v23 = v45;
  v24 = v46;

  v25 = sub_1002304E0(v21, a2, v23, v24, v21, a2);
LABEL_8:

  return v25;
}

uint64_t sub_10022E84C(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a1;
  v5 = type metadata accessor for FMIPProductType();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v7 - 8);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v40 - v11);
  sub_100007204(a3, &v40 - v11, &qword_1006B07D0, qword_100552820);
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v16 = &qword_1006B07D0;
    v17 = qword_100552820;
    v18 = v12;
  }

  else
  {
    v40 = v5;
    v19 = FMIPItem.isAppleAudioAccessory.getter();
    v20 = *(v14 + 8);
    v20(v12, v13);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_100007204(a3, v9, &qword_1006B07D0, qword_100552820);
    if (v15(v9, 1, v13) == 1)
    {
      v16 = &qword_1006B07D0;
      v17 = qword_100552820;
      v18 = v9;
    }

    else
    {
      v27 = v41;
      FMIPItem.productType.getter();
      v20(v9, v13);
      FMIPProductType.productInformation.getter();
      (*(v42 + 8))(v27, v40);
      if (v47)
      {
        sub_1000244BC(&v45, v47);
        v28 = dispatch thunk of FMIPAnyProductInformation.productIdentifier.getter();
        sub_100006060(&v45);
        v29 = v43;
        v45 = v43;
        v46 = a2;

        v30._countAndFlagsBits = 24415;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x53444F50524941;
        v31._object = 0xE700000000000000;
        String.append(_:)(v31);

        v33 = v45;
        v32 = v46;
        v45 = v29;
        v46 = a2;

        v34._countAndFlagsBits = 24415;
        v34._object = 0xE200000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 0x53444F50524941;
        v35._object = 0xE700000000000000;
        String.append(_:)(v35);
        v36._countAndFlagsBits = 95;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        v44 = v28;
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38 = v45;
        v39 = v46;

        v25 = sub_1002304E0(v38, v39, v33, v32, v29, a2);

        goto LABEL_8;
      }

      v16 = &qword_1006B1328;
      v17 = &qword_100557F30;
      v18 = &v45;
    }
  }

  sub_100012DF0(v18, v16, v17);
LABEL_7:
  v21 = v43;
  v45 = v43;
  v46 = a2;

  v22._countAndFlagsBits = 0x4C55414645445F5FLL;
  v22._object = 0xE900000000000054;
  String.append(_:)(v22);
  v23 = v45;
  v24 = v46;

  v25 = sub_1002304E0(v21, a2, v23, v24, v21, a2);
LABEL_8:

  return v25;
}

uint64_t sub_10022ECA4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100582000;
  v9.value._object = 0x8000000100581FE0;
  v14._countAndFlagsBits = 0xD000000000000015;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v9.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022EDD4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100587910;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEC00000031656C62;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000017;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_10022EF00()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_1006B6EB0 = v1;
}

uint64_t sub_10022EF6C(uint64_t a1, void *a2)
{
  if (qword_1006AEB30 != -1)
  {
    swift_once();
  }

  if (byte_1006B6EB0)
  {
    v4 = 1312902231;
  }

  else
  {
    v4 = 1229343063;
  }

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6._countAndFlagsBits = v4;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);

  v7 = a1;
  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100587D20;
  v10._countAndFlagsBits = v7;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000016;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  sub_100007204(a3, &v19 - v11, &unk_1006BBCE0, &unk_1005534C0);
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_10022F3BC();
    (*(v7 + 8))(v9, v6);
  }

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552210;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_10008EE84();
  *(v13 + 64) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v15 = String.uppercased()();

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  v16 = String.init(format:_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552220;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v14;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  String.init(format:_:)();
  return v16;
}

uint64_t sub_10022F3BC()
{
  v0 = type metadata accessor for FMIPDeviceState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isMacOS.getter();
  sub_100230874();
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return 4407629;
  }

  v9 = 0x4843544157;
  if (FMIPDevice.category.getter() == 0x6863746157 && v10 == 0xE500000000000000)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v9 = 0x53444F50524941;
      FMIPDevice.rawModel.getter();
      v12 = String.uppercased()();

      v19 = v12;
      v17 = 0x53444F50524941;
      v18 = 0xE700000000000000;
      sub_100035F3C();
      v13 = StringProtocol.contains<A>(_:)();

      if ((v13 & 1) == 0)
      {
        v9 = 0x54454C4C4157;
        FMIPDevice.rawModel.getter();
        v14 = String.uppercased()();

        v19 = v14;
        v17 = 0x54454C4C4157;
        v18 = 0xE600000000000000;
        v15 = StringProtocol.contains<A>(_:)();

        if ((v15 & 1) == 0)
        {
          if (FMIPDevice.isLocalFindable.getter())
          {
            return 0x4C49434E4550;
          }

          else
          {
            return FMIPDevice.modelDisplayName.getter();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_10022F6A4(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100582000;
  v5.value._object = 0x8000000100581FE0;
  v10._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F788(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100579A00;
  v5.value._object = 0x80000001005799E0;
  v10._countAndFlagsBits = 0xD000000000000018;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F844(uint64_t a1, void *a2)
{
  if (qword_1006AEB30 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (byte_1006B6EB0)
  {
    v3 = 1312902231;
  }

  else
  {
    v3 = 1229343063;
  }

  v13 = a1;

  v4._countAndFlagsBits = 95;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = v3;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);

  v6 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010057FD20;
  v7.value._object = 0x800000010057FD00;
  v14._countAndFlagsBits = 0xD000000000000017;
  v8._countAndFlagsBits = v13;
  v8._object = a2;
  v7.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F9D8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x80000001005797A0;
  v5.value._object = 0x8000000100579780;
  v10._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022FABC(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x80000001005800E0;
  v5.value._object = 0x80000001005800C0;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000019;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022FB78(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = 0x54454C4C4157;
    v10 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
    (*(v3 + 32))(v5, v8, v2);
    FMIPDevice.rawModel.getter();
    v11 = String.uppercased()();

    v19 = v11;
    v17 = 0x54454C4C4157;
    v18 = 0xE600000000000000;
    sub_100035F3C();
    v12 = StringProtocol.contains<A>(_:)();

    if (v12 & 1) != 0 || (v9 = 0x53444F50524941, FMIPDevice.rawModel.getter(), v14 = String.uppercased()(), , v19 = v14, v17 = 0x53444F50524941, v18 = 0xE700000000000000, v15 = StringProtocol.contains<A>(_:)(), , (v15))
    {
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0, qword_100552820);
    }

    else if (FMIPDevice.isConsideredAccessory.getter())
    {
      v16 = FMIPDevice.isLocalFindable.getter();
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0, qword_100552820);
      if (v16)
      {
        return 0x4C49434E4550;
      }

      else
      {
        return 1296389193;
      }
    }

    else
    {
      v9 = sub_10022F3BC();
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0, qword_100552820);
    }
  }

  else
  {
    v9 = 1296389193;
    sub_10009715C(v8);
  }

  return v9;
}

uint64_t sub_10022FEFC(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100552210;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10008EE84();
  *(v4 + 64) = v5;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v6 = String.uppercased()();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 72) = v6;

  v7 = String.init(format:_:)();
  v9 = v8;
  v26 = objc_opt_self();
  v10 = [v26 mainBundle];
  v27._object = 0x8000000100579A00;
  v11.value._object = 0x80000001005799E0;
  v27._countAndFlagsBits = 0xD000000000000018;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v27);

  if (v14._countAndFlagsBits == v7 && v14._object == v9)
  {

LABEL_5:

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v5;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    v17 = String.init(format:_:)();
    v19 = v18;
    v20 = [v26 mainBundle];
    v28._object = 0x8000000100579A00;
    v21.value._object = 0x80000001005799E0;
    v28._countAndFlagsBits = 0xD000000000000018;
    v22._countAndFlagsBits = v17;
    v22._object = v19;
    v21.value._countAndFlagsBits = 0xD000000000000013;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v28)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_5;
  }

  return v14._countAndFlagsBits;
}

uint64_t sub_100230194@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a3, v10, &unk_1006BBCE0, &unk_1005534C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &unk_1006BBCE0, &unk_1005534C0);
LABEL_6:
    v32._countAndFlagsBits = a1;
    v32._object = a2;

    v25._countAndFlagsBits = 0x4C55414645445F5FLL;
    v25._object = 0xE900000000000054;
    String.append(_:)(v25);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;
    v32._countAndFlagsBits = a1;
    v32._object = a2;

    v26._countAndFlagsBits = 0x4C55414645445F5FLL;
    v26._object = 0xE900000000000054;
    String.append(_:)(v26);
    v23 = v32._countAndFlagsBits;
    v24 = v32._object;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  FMIPDevice.rawModel.getter();
  v15 = String.uppercased()();

  v32 = v15;
  v30 = 0x53444F50524941;
  v31 = 0xE700000000000000;
  sub_100035F3C();
  v16 = StringProtocol.contains<A>(_:)();

  if ((v16 & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  v32._countAndFlagsBits = a1;
  v32._object = a2;

  v17._countAndFlagsBits = 24415;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v32._object;
  v29 = v32._countAndFlagsBits;
  FMIPDevice.rawModel.getter();
  v19 = String.uppercased()();

  v32._countAndFlagsBits = v29;
  v32._object = v18;

  String.append(_:)(v19);

  countAndFlagsBits = v32._countAndFlagsBits;
  object = v32._object;
  v32._countAndFlagsBits = a1;
  v32._object = a2;

  v22._object = 0xE900000000000053;
  v22._countAndFlagsBits = 0x444F505249415F5FLL;
  String.append(_:)(v22);
  v23 = v32._countAndFlagsBits;
  v24 = v32._object;
  (*(v12 + 8))(v14, v11);
LABEL_7:

  *a4 = countAndFlagsBits;
  a4[1] = object;
  a4[2] = v23;
  a4[3] = v24;
  a4[4] = a1;
  a4[5] = a2;
  return result;
}

uint64_t sub_1002304E0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v27._countAndFlagsBits = a5;
  v27._object = a6;
  _StringGuts.grow(_:)(20);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v28._object = 0x800000010057A180;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000012;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v28);
  countAndFlagsBits = v15._countAndFlagsBits;

  v17 = v15._countAndFlagsBits == a1 && v15._object == a2;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  v18._countAndFlagsBits = a3;
  v18._object = a4;
  String.append(_:)(v18);
  v19 = [v11 mainBundle];
  v29._object = 0x800000010057A180;
  v20._countAndFlagsBits = a3;
  v20._object = a4;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000012;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v29);
  countAndFlagsBits = v22._countAndFlagsBits;

  if ((v22._countAndFlagsBits != a3 || v22._object != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  String.append(_:)(v27);
  v23 = [v11 mainBundle];
  v30._object = 0x800000010057A180;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD000000000000012;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v23, v24, v30)._countAndFlagsBits;

  return v25;
}

uint64_t sub_100230784(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(20);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5 = [objc_opt_self() mainBundle];
  v10._object = 0x800000010057A180;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100230874()
{
  result = qword_1006BBCF0;
  if (!qword_1006BBCF0)
  {
    type metadata accessor for FMIPDeviceState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BBCF0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMMapMode(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMMapMode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FMMapMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100230A00(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v9 = 0x800000010057EE70;
    v3 = 0xD00000000000001ALL;
    v4 = 0x800000010057EE50;
    v5 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = 0x8000000100587E20;
    v4 = 0x8000000100587E00;
    v5 = 0xD00000000000002ALL;
    v3 = 0xD000000000000018;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v6, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_100230AEC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587D80;
  v1._object = 0x8000000100587D60;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4160 = v3;
}

void sub_100230BA4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587DD0;
  v1._object = 0x8000000100587DB0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4170 = v3;
}

void sub_100230C5C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587EC0;
  v1._object = 0x8000000100587EA0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4180 = v3;
}

void sub_100230D14()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587E70;
  v1._object = 0x8000000100587E50;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4190 = v3;
}

uint64_t sub_100230DCC(void *a1, char a2)
{
  v5 = sub_10007EBC0(&qword_1006B7210, &qword_1005593C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000244BC(a1, a1[3]);
  sub_100232AE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2 & 1;
  v10[14] = 0;
  sub_1002322C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[12] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100230F84()
{
  v1 = 0x61725473776F6873;
  if (*v0 != 1)
  {
    v1 = 0x62614C73776F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_100230FE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002327CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10023101C(uint64_t a1)
{
  v2 = sub_100232AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231058(uint64_t a1)
{
  v2 = sub_100232AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100231094@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002328EC(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_100231118(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100232370(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t sub_10023116C()
{
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  word_1006D41A0 = 1;
  byte_1006D41A2 = result & 1;
  return result;
}

uint64_t sub_1002311CC(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B7218, &qword_1005593D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  if ((a1 - 1) > 3)
  {
    return 0x6C6C69662E70616DLL;
  }

  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v5, v2);
  v12 = type metadata accessor for Locale.Region();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
LABEL_5:
    sub_100012DF0(v8, &qword_1006B7218, &qword_1005593D0);
    return 0xD000000000000013;
  }

  Locale.Region.continent.getter();
  v15 = *(v13 + 8);
  v15(v8, v12);
  if (v14(v11, 1, v12) == 1)
  {
    v8 = v11;
    goto LABEL_5;
  }

  v17 = Locale.Region.identifier.getter();
  v19 = v18;
  v15(v11, v12);
  v22._countAndFlagsBits = v17;
  v22._object = v19;
  v20 = sub_100232B90(v22);
  if (v20 > 2)
  {
    if (v20 != 3)
    {
      if (v20 != 4)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000019;
    }

    return 0xD000000000000018;
  }

  if (!v20)
  {
    return 0xD000000000000018;
  }

  if (v20 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_1002314C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74696C6C65746173;
  }

  else
  {
    v3 = 0x65726F6C707865;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_100231574()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1002315FC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100231670(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002316F4(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1006225B0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100231754(uint64_t *a1@<X8>)
{
  v2 = 0x65726F6C707865;
  if (*v1)
  {
    v2 = 0x74696C6C65746173;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10023184C()
{
  result = qword_1006B71D0;
  if (!qword_1006B71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71D0);
  }

  return result;
}

uint64_t sub_1002318A0(int a1)
{
  v12[8] = 0;
  _StringGuts.grow(_:)(31);
  v2._countAndFlagsBits = 0x203A65646F4DLL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  *v12 = a1 & 1;
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x6369666661725420;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x3A736C6562614C20;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  if ((a1 & 0x10000) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  return *&v12[1];
}

uint64_t sub_1002319E0()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002318A0(v2 | *v0 | v1);
}

uint64_t sub_100231A10(void *a1, unsigned int a2)
{
  v4 = sub_10007EBC0(&qword_1006B7238, &qword_100559560);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000244BC(a1, a1[3]);
  sub_100232E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100231B90()
{
  if (*v0)
  {
    return 0x62614C73776F6873;
  }

  else
  {
    return 0x61725473776F6873;
  }
}

void sub_100231BDC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100231CCC(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231D08(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100231D44@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100232EB8(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100231D7C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100231A10(a1, v2 | *v1);
}

void sub_100231DAC(void *a1, char a2, int a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    v11 = sub_1002318A0(a3 & 0x10101);
    v13 = sub_100005B4C(v11, v12, &v29);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMapMode: Save to UserDefaults (%{public}s)", v9, 0xCu);
    sub_100006060(v10);
  }

  if (a2)
  {
    LOBYTE(v29) = a3 & 1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1002322C8();
    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = String._bridgeToObjectiveC()();
    [a1 setValue:isa forKey:v19];

    sub_10000A858(v15, v17);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v29 = 0xD000000000000012;
    v30 = 0x8000000100587D40;
    if (a3)
    {
      v20 = 0x74696C6C65746173;
    }

    else
    {
      v20 = 0x65726F6C707865;
    }

    if (a3)
    {
      v21 = 0xE900000000000065;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = v21;
    String.append(_:)(*&v20);

    LOBYTE(v29) = BYTE1(a3) & 1;
    BYTE1(v29) = BYTE2(a3) & 1;
    swift_allocObject();
    JSONEncoder.init()();
    sub_10023231C();
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v25 = v24;

    v26 = Data._bridgeToObjectiveC()().super.isa;
    v27 = String._bridgeToObjectiveC()();

    [a1 setValue:v26 forKey:v27];

    sub_10000A858(v23, v25);
  }

  else
  {
    v14 = UInt._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [a1 setObject:v14 forKey:v28];
  }
}

void sub_1002321C8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100232724();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000A858(v3, v5);
  }
}

unint64_t sub_1002322C8()
{
  result = qword_1006B71D8;
  if (!qword_1006B71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71D8);
  }

  return result;
}

unint64_t sub_10023231C()
{
  result = qword_1006B71E0;
  if (!qword_1006B71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71E0);
  }

  return result;
}

uint64_t sub_100232370(int a1, int a2)
{
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v7 = 0x74696C6C65746173;
  }

  else
  {
    v7 = 0x65726F6C707865;
  }

  if (a2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {

    if (((a1 ^ a2) & 0x100) != 0)
    {
      return 0;
    }

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((a1 ^ a2) & 0x100) == 0 && (v10)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return result;
}

uint64_t sub_10023245C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = 0x65726F6C707865;
  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    if (a1)
    {
      v2 = 0x74696C6C65746173;
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = sub_100005B4C(v2, v8, &v17);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMMapMode: Load with Mode (%{public}s) from UserDefaults", v6, 0xCu);
    sub_100006060(v7);
  }

  else
  {

    if (a1)
    {
      v2 = 0x74696C6C65746173;
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v17 = 0xD000000000000012;
  v18 = 0x8000000100587D40;
  v10._countAndFlagsBits = v2;
  v10._object = v8;
  String.append(_:)(v10);

  sub_1002321C8();
  v12 = v11;

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    if ((v12 & 0x100) == 0)
    {
      if (a1)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          v13 = 0;
          v15 = 0;
          return v13 | a1 & 1 | v15;
        }

        LOBYTE(v12) = v14 & v12;
      }

      else
      {
      }
    }

    if (v12)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = 0x10000;
  return v13 | a1 & 1 | v15;
}

unint64_t sub_100232724()
{
  result = qword_1006B71E8;
  if (!qword_1006B71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71E8);
  }

  return result;
}

unint64_t sub_100232778()
{
  result = qword_1006B71F0;
  if (!qword_1006B71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71F0);
  }

  return result;
}

uint64_t sub_1002327CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1002328EC(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B71F8, &qword_1005593C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  sub_1000244BC(a1, a1[3]);
  sub_100232AE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006060(a1);
  }

  v13[14] = 0;
  sub_100232B3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v13[15];
  v13[13] = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[12] = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006060(a1);
  if (v10)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v7 | v11;
}

unint64_t sub_100232AE8()
{
  result = qword_1006B7200;
  if (!qword_1006B7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7200);
  }

  return result;
}

unint64_t sub_100232B3C()
{
  result = qword_1006B7208;
  if (!qword_1006B7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7208);
  }

  return result;
}

unint64_t sub_100232B90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622518, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FMMapMode.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for FMMapMode.Options(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_100232D60()
{
  result = qword_1006B7220;
  if (!qword_1006B7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7220);
  }

  return result;
}

unint64_t sub_100232DB8()
{
  result = qword_1006B7228;
  if (!qword_1006B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7228);
  }

  return result;
}

unint64_t sub_100232E10()
{
  result = qword_1006B7230;
  if (!qword_1006B7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7230);
  }

  return result;
}

unint64_t sub_100232E64()
{
  result = qword_1006B7240;
  if (!qword_1006B7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7240);
  }

  return result;
}

uint64_t sub_100232EB8(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B7248, &qword_100559568);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_1000244BC(a1, a1[3]);
  sub_100232E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006060(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006060(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_10023307C()
{
  result = qword_1006B7250;
  if (!qword_1006B7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7250);
  }

  return result;
}

unint64_t sub_1002330D4()
{
  result = qword_1006B7258;
  if (!qword_1006B7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7258);
  }

  return result;
}

unint64_t sub_10023312C()
{
  result = qword_1006B7260;
  if (!qword_1006B7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7260);
  }

  return result;
}

id sub_1002331B0(char a1)
{
  *(v1 + qword_1006B72D0) = a1;
  [*(v1 + qword_1006B72B8) setHidden:*(v1 + qword_1006B72D0)];

  return sub_100044E98();
}

id sub_100233230(char a1)
{
  *(v1 + qword_1006B72E0) = a1;
  if (*(v1 + qword_1006B72D0) == 1)
  {
    v2 = *(v1 + qword_1006B72E0) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + qword_1006B72C8))
  {
    v3 = v2;
  }

  else
  {
    v3 = *(v1 + qword_1006B72D0);
  }

  return [*(v1 + qword_1006B72B8) setHidden:v3 & 1];
}

uint64_t sub_1002332BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = sub_10007EBC0(&unk_1006B77C0, &qword_100559790);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-1] - v7;
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26[-1] - v14;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v18 = type metadata accessor for FMListTableViewCell(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v17);
  v27.receiver = v2;
  v27.super_class = v18;
  objc_msgSendSuper2(&v27, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIBackgroundConfiguration.listCell()();
  v19 = type metadata accessor for UICellConfigurationState();
  v26[3] = v19;
  v26[4] = &protocol witness table for UICellConfigurationState;
  v20 = sub_100008FC0(v26);
  (*(*(v19 - 8) + 16))(v20, a1, v19);
  UIBackgroundConfiguration.updated(for:)();
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_100006060(v26);
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  UIBackgroundConfiguration.cornerRadius.setter();
  UIBackgroundConfiguration.backgroundInsets.setter();
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v22 = qword_1006D4208;
  }

  else
  {
    v23 = [objc_opt_self() clearColor];
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v10 + 16))(v8, v15, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  UITableViewCell.backgroundConfiguration.setter();
  return (v21)(v15, v9);
}

uint64_t sub_1002335DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  sub_1002332BC(v7);

  return (*(v5 + 8))(v7, v4);
}

id sub_1002336C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FMListTableViewCell(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_100233734()
{
  v0 = sub_10023376C();

  return v0;
}

void sub_10023377C()
{
  v1 = qword_1006B7268;
  *(v0 + v1) = [objc_allocWithZone(NUIContainerStackView) init];
  v2 = qword_1006B7270;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v3 = qword_1006B7278;
  *(v0 + v3) = [objc_allocWithZone(NUIContainerStackView) init];
  v4 = qword_1006B7280;
  *(v0 + v4) = [objc_allocWithZone(NUIContainerStackView) init];
  v5 = qword_1006B7288;
  *(v0 + v5) = [objc_allocWithZone(NUIContainerStackView) init];
  v6 = qword_1006B7290;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = qword_1006B7298;
  type metadata accessor for FMSubtitleLabel();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = qword_1006B72A0;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = qword_1006B72A8;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  v10 = qword_1006B72B0;
  *(v0 + v10) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11 = qword_1006B72B8;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v12 = qword_1006B72C0;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  *(v0 + v12) = v15;
  *(v0 + qword_1006B72C8) = 0;
  *(v0 + qword_1006B72D0) = 0;
  *(v0 + qword_1006B72D8) = 0;
  *(v0 + qword_1006B72E0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002339F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  memset(v17, 0, sizeof(v17));
  v10 = *(v4 + 24);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v5;
  v11[7] = v17;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100235884;
  *(v12 + 24) = v11;
  v16[4] = sub_10000964C;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000095FC;
  v16[3] = &unk_100630868;
  v13 = _Block_copy(v16);
  v14 = a1;
  v15 = a2;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_100233BA4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  [a1 distanceFromLocation:a2];
  if (v12 >= 1000000.0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v28, "FMETACache: cannot calculate ETA for distances over 1000KM", v29, 2u);
    }
  }

  else
  {
    v35 = a3;
    v36 = a4;

    v13 = a1;
    v14 = a2;
    [v13 coordinate];
    [v13 coordinate];
    Double.write<A>(to:)();
    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    Double.write<A>(to:)();
    [v14 coordinate];
    [v14 coordinate];
    Double.write<A>(to:)();
    v16._countAndFlagsBits = 45;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    Double.write<A>(to:)();

    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    String.append(_:)(v17);

    swift_beginAccess();
    v18 = *(a5 + 40);
    if (*(v18 + 16))
    {

      v19 = sub_10000726C(0, 0xE000000000000000);
      v21 = v20;

      if (v21)
      {
        v22 = (*(v18 + 56) + 32 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];

        *a6 = v23;
        a6[1] = v24;
        a6[2] = v25;
        a6[3] = v26;
      }
    }

    if (a6[1])
    {
    }

    else
    {
      [v13 coordinate];
      [v13 coordinate];
      Double.write<A>(to:)();
      v30._countAndFlagsBits = 45;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      Double.write<A>(to:)();
      [v14 coordinate];
      [v14 coordinate];
      Double.write<A>(to:)();
      v31._countAndFlagsBits = 45;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      Double.write<A>(to:)();

      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      String.append(_:)(v32);

      swift_beginAccess();
      if (*(*(a5 + 32) + 16) && (, sub_10000726C(0, 0xE000000000000000), v34 = v33, , (v34 & 1) != 0))
      {
      }

      else
      {

        sub_1002340E4(v35, v36, v13, v14);
      }
    }
  }
}

double sub_1002340E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100235854;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006307F0;
  v18 = _Block_copy(aBlock);

  v19 = a3;
  v20 = a4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);

  return result;
}

void sub_1002343C8(uint64_t a1, void *a2, id a3, void *a4)
{
  v5 = v4;
  [a3 coordinate];
  [a3 coordinate];
  Double.write<A>(to:)();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  [a4 coordinate];
  [a4 coordinate];
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  Double.write<A>(to:)();
  v51 = 0;
  v52 = 0xE000000000000000;

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  swift_beginAccess();
  if (*(*(v4 + 32) + 16))
  {

    sub_10000726C(0, 0xE000000000000000);
    v12 = v11;

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [a3 coordinate];
  [a3 coordinate];
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 45;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  Double.write<A>(to:)();
  [a4 coordinate];
  [a4 coordinate];
  Double.write<A>(to:)();
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  Double.write<A>(to:)();
  v49 = 0;
  v50 = 0xE000000000000000;

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.append(_:)(v15);

  swift_beginAccess();
  if (!*(*(v5 + 40) + 16))
  {

    goto LABEL_13;
  }

  sub_10000726C(0, 0xE000000000000000);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v28 = swift_allocObject();
    *(v28 + 2) = v5;
    *(v28 + 3) = a1;
    *(v28 + 4) = a2;
    *(v28 + 5) = a3;
    *(v28 + 6) = a4;
    v29 = type metadata accessor for FMETAOperation();
    v30 = objc_allocWithZone(v29);
    v30[OBJC_IVAR____TtC6FindMy14FMETAOperation__isFinished] = 0;
    v31 = &v30[OBJC_IVAR____TtC6FindMy14FMETAOperation_request];
    *v31 = a1;
    v31[1] = a2;
    v31[2] = a3;
    v31[3] = a4;
    v32 = &v30[OBJC_IVAR____TtC6FindMy14FMETAOperation_completion];
    *v32 = sub_10023579C;
    v32[1] = v28;
    v48.receiver = v30;
    v48.super_class = v29;
    swift_bridgeObjectRetain_n();
    v33 = a3;
    v34 = a4;
    v35 = v33;
    v36 = v34;

    v43 = objc_msgSendSuper2(&v48, "init");
    [*(v5 + 48) addOperation:v43];
    [v35 coordinate];
    [v35 coordinate];
    Double.write<A>(to:)();
    v37._countAndFlagsBits = 45;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    Double.write<A>(to:)();
    [v36 coordinate];
    [v36 coordinate];
    Double.write<A>(to:)();
    v38._countAndFlagsBits = 45;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    Double.write<A>(to:)();
    v47[0] = 0;
    v47[1] = 0xE000000000000000;

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    String.append(_:)(v39);

    swift_beginAccess();

    v40 = v35;
    v41 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v5 + 32);
    *(v5 + 32) = 0x8000000000000000;
    sub_1001BC22C(a1, a2, v40, v41, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(v5 + 32) = v46;
    swift_endAccess();

    return;
  }

LABEL_7:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = a3;
  v20 = a4;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 136315138;
    v25 = sub_1001A8700(a1, a2, v19, v20);
    v27 = sub_100005B4C(v25, v26, v47);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMETACache: Loading declined, we are already processing similar eta: %s", v23, 0xCu);
    sub_100006060(v24);
  }
}

double sub_100234B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v33 = *(v18 - 8);
  v34 = v18;
  __chkstk_darwin(v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 + 24);
  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = a5;
  v21[3] = v22;
  v21[4] = a8;
  v21[5] = a9;
  v21[6] = a10;
  v21[7] = a6;
  v21[8] = a1;
  v21[9] = a2;
  v24 = v31;
  v21[10] = v23;
  v21[11] = v24;
  aBlock[4] = sub_1002357CC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006307A0;
  v25 = _Block_copy(aBlock);
  swift_errorRetain();

  v26 = a9;
  v27 = a10;

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v17, v15);
  (*(v33 + 8))(v20, v34);

  return result;
}

void sub_100234E44(uint64_t a1, uint64_t a2, void *a3, id a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);

    v14 = a4;
    v15 = a5;
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = sub_1001A8700(a2, a3, v14, v15);
      v21 = sub_100005B4C(v19, v20, &v68);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_100005B4C(v22, v23, &v68);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMETACache: ETA calculation error: %s for request: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    [v14 coordinate];
    [v14 coordinate];
    v68 = 0;
    v69 = 0xE000000000000000;
    Double.write<A>(to:)();
    v25._countAndFlagsBits = 45;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    Double.write<A>(to:)();
    v27 = v68;
    v26 = v69;
    [v15 coordinate];
    [v15 coordinate];
    v68 = 0;
    v69 = 0xE000000000000000;
    Double.write<A>(to:)();
    v28._countAndFlagsBits = 45;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    Double.write<A>(to:)();
    v29 = v68;
    v30 = v69;
    v68 = v27;
    v69 = v26;

    v31._countAndFlagsBits = v29;
    v31._object = v30;
    String.append(_:)(v31);

    v32 = v68;
    v33 = v69;
    swift_beginAccess();
    sub_1001AF014(0, 0, 0, 0, v32, v33);
    swift_endAccess();
  }

  else
  {
    [a4 coordinate];
    [a4 coordinate];
    Double.write<A>(to:)();
    v35._countAndFlagsBits = 45;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    Double.write<A>(to:)();
    [a5 coordinate];
    [a5 coordinate];
    Double.write<A>(to:)();
    v36._countAndFlagsBits = 45;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    Double.write<A>(to:)();
    v68 = 0;
    v69 = 0xE000000000000000;

    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    String.append(_:)(v37);

    swift_beginAccess();
    sub_1001AF014(0, 0, 0, 0, 0, 0xE000000000000000);
    swift_endAccess();
    if (!a8)
    {
      return;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68 = v42;
      *v41 = 136315138;
      v43 = sub_1003C3CCC(a7, a8, *&a9);
      v45 = sub_100005B4C(v43, v44, &v68);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "FMETACache: ETA calculation received: %s", v41, 0xCu);
      sub_100006060(v42);
    }

    [a4 coordinate];
    [a4 coordinate];
    v68 = 0;
    v69 = 0xE000000000000000;
    Double.write<A>(to:)();
    v46._countAndFlagsBits = 45;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    Double.write<A>(to:)();
    v47 = v68;
    v48 = v69;
    [a5 coordinate];
    [a5 coordinate];
    v68 = 0;
    v69 = 0xE000000000000000;
    Double.write<A>(to:)();
    v49._countAndFlagsBits = 45;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    Double.write<A>(to:)();
    v50 = v68;
    v51 = v69;
    v68 = v47;
    v69 = v48;

    v52._countAndFlagsBits = v50;
    v52._object = v51;
    String.append(_:)(v52);

    v53 = v68;
    v54 = v69;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(a6 + 40);
    *(a6 + 40) = 0x8000000000000000;
    sub_1001BC3DC(a7, a8, v53, v54, isUniquelyReferenced_nonNull_native, *&a9, *&a10);

    *(a6 + 40) = v67;
    swift_endAccess();
    swift_beginAccess();
    v56 = *(a6 + 16);
    if (v56 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
      if (!v57)
      {
        return;
      }
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        return;
      }
    }

    if (v57 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v57; ++i)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v59 = *(v56 + 8 * i + 32);
        }

        v60 = v59 + OBJC_IVAR____TtC6FindMy17FMETASubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v61 = *(v60 + 8);
          ObjectType = swift_getObjectType();
          (*(v61 + 8))(a6, a7, a8, a2, a3, ObjectType, v61, *&a9, *&a10);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100235744()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100235804()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002358A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4D08);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    sub_10023EF54(&unk_1006B7890, &type metadata accessor for UICellConfigurationState, &protocol conformance descriptor for UICellConfigurationState);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_100005B4C(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMUnknownItemListCellView: updateConfiguration(using: %s)", v13, 0xCu);
    sub_100006060(v14);

    v3 = v22;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v20 = type metadata accessor for FMUnknownItemListCellView();
  v24.receiver = v3;
  v24.super_class = v20;
  objc_msgSendSuper2(&v24, "_bridgedUpdateConfigurationUsingState:", isa);

  sub_100235C3C();
  return sub_100236350(a1);
}

void sub_100235C3C()
{
  v1 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B7878, &qword_100559B18);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted;
  if ((v0[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] & 1) == 0)
  {
    v58 = [v0 contentView];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v57 = v4;
      UITableViewCell.contentConfiguration.getter();
      if (!v60)
      {

        sub_100012DF0(v59, &qword_1006B7880, &qword_100559B20);
        (*(v9 + 56))(v7, 1, 1, v8);
        goto LABEL_10;
      }

      sub_10007EBC0(&qword_1006B7888, &qword_100559B28);
      v16 = swift_dynamicCast();
      (*(v9 + 56))(v7, v16 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

LABEL_10:
        sub_100012DF0(v7, &qword_1006B7878, &qword_100559B18);
        return;
      }

      (*(v9 + 32))(v12, v7, v8);
      v18 = [v15 imageLayoutGuide];
      if (v18)
      {
        v56 = v18;
        v52 = v2;
        v53 = v12;
        v49 = v0;
        v19 = *&v0[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer];
        [v15 addSubview:v19];
        v20 = [v19 constraints];
        v50 = sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = v1;
        v55 = v9;
        v51 = v13;
        if (v21 >> 62)
        {
          goto LABEL_28;
        }

        for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v19 = v19;
          if (!i)
          {
            break;
          }

          v23 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v25 = v24;
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            [v19 removeConstraint:v24];

            ++v23;
            if (v26 == i)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          ;
        }

LABEL_23:

        [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        v48 = objc_opt_self();
        sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1005521F0;
        v28 = [v19 centerXAnchor];
        v29 = v56;
        v30 = [v56 centerXAnchor];
        v31 = [v28 constraintEqualToAnchor:v30];

        *(v27 + 32) = v31;
        v32 = [v19 centerYAnchor];
        v33 = [v29 centerYAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v27 + 40) = v34;
        v35 = [v19 widthAnchor];
        v36 = v57;
        v37 = v53;
        UIListContentConfiguration.imageProperties.getter();
        UIListContentConfiguration.ImageProperties.reservedLayoutSize.getter();
        v39 = v38;
        v40 = *(v52 + 8);
        v41 = v54;
        v40(v36, v54);
        v42 = [v35 constraintEqualToConstant:v39];

        *(v27 + 48) = v42;
        v43 = [v19 heightAnchor];
        UIListContentConfiguration.imageProperties.getter();
        UIListContentConfiguration.ImageProperties.reservedLayoutSize.getter();
        v45 = v44;
        v40(v36, v41);
        v46 = [v43 constraintEqualToConstant:v45];

        *(v27 + 56) = v46;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v48 activateConstraints:isa];

        (*(v55 + 8))(v37, v8);
        v49[v51] = 1;
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }

    else
    {
      v17 = v58;
    }
  }
}

uint64_t sub_100236350(uint64_t a1)
{
  v3 = sub_10007EBC0(&unk_1006B77C0, &qword_100559790);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  UITableViewCell.backgroundConfiguration.getter();
  if ((*(v10 + 48))(v8, 1, v9))
  {
    return sub_100012DF0(v8, &unk_1006B77C0, &qword_100559790);
  }

  v23 = *(v10 + 16);
  v32 = v10 + 16;
  v33 = v1;
  v31 = v23;
  v23(v12, v8, v9);
  sub_100012DF0(v8, &unk_1006B77C0, &qword_100559790);
  v24 = type metadata accessor for UICellConfigurationState();
  v34[3] = v24;
  v34[4] = &protocol witness table for UICellConfigurationState;
  v25 = sub_100008FC0(v34);
  (*(*(v24 - 8) + 16))(v25, a1, v24);
  UIBackgroundConfiguration.updated(for:)();
  v30 = *(v10 + 8);
  v30(v12, v9);
  sub_100006060(v34);
  v26 = *(v10 + 32);
  v26(v18, v15, v9);
  v26(v21, v18, v9);
  v27 = &selRef_separatorColor;
  if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0)
  {
    v27 = &selRef_clearColor;
  }

  v28 = [objc_opt_self() *v27];
  UIBackgroundConfiguration.backgroundColor.setter();
  v31(v5, v21, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  UITableViewCell.backgroundConfiguration.setter();
  return (v30)(v21, v9);
}

double sub_1002366DC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for FMUnknownItemCellViewModel(0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10007EBC0(&qword_1006BF780, &qword_100559B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = sub_10007EBC0(&qword_1006B7850, &qword_100559B08);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - v9;
  v25 = a2;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v24 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_10007EBC0(&qword_1006B7858, &qword_100559B10);
  sub_100004098(&unk_1006B7860, &qword_1006B7858, &qword_100559B10, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10018B6D4();
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v7, &qword_1006BF780, &qword_100559B00);

  sub_10023EE8C(v22, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMUnknownItemCellViewModel);
  v13 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v14 = swift_allocObject();
  sub_10023F8F0(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FMUnknownItemCellViewModel);
  v15 = v23;
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_100004098(&qword_1006B7870, &qword_1006B7850, &qword_100559B08, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v16 = v15;
  v17 = v21;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v17);
  *&v16[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = v18;

  return result;
}

uint64_t sub_100236A80(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for FMUnknownItemCellViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  sub_10023EE8C(a2, v6, type metadata accessor for FMUnknownItemCellViewModel);
  v8 = *v6;
  v9 = v7;

  *v6 = v7;
  sub_10052B9C8(v6);
  return sub_10023EEF4(v6, type metadata accessor for FMUnknownItemCellViewModel);
}

id sub_100236B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = 0;
  v6 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v3[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FMUnknownItemListCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100236C70(void *a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = 0;
  v3 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v1[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMUnknownItemListCellView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100236D3C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMUnknownItemListCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100236EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMUnknownItemCellViewModel(0);
  v63 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v49 - v8;
  v64 = type metadata accessor for UUID();
  v56 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v49 - v11;
  v12 = sub_10007EBC0(&qword_1006B77A0, &qword_100559A98);
  __chkstk_darwin(v12 - 8);
  v16 = __chkstk_darwin(v13);
  v17 = &v49 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v58 = v15;
    v54 = v6;
    v18 = 0;
    v52 = a1;
    v19 = *(a1 + 64);
    v49 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v50 = v23;
    v51 = v56 + 16;
    v59 = &v49 - v14;
    v60 = (v56 + 32);
    v53 = (v56 + 8);
    while (v22)
    {
      v61 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
      v30 = v52;
      v32 = v55;
      v31 = v56;
      v33 = v64;
      (*(v56 + 16))(v55, *(v52 + 48) + *(v56 + 72) * v24, v64, v16);
      v34 = v62;
      sub_10023EE8C(*(v30 + 56) + *(v63 + 72) * v24, v62, type metadata accessor for FMUnknownItemCellViewModel);
      v35 = sub_10007EBC0(&qword_1006B77A8, &qword_100559AA0);
      v36 = *(v35 + 48);
      v37 = *(v31 + 32);
      v27 = v58;
      v37(v58, v32, v33);
      sub_10023F8F0(v34, v27 + v36, type metadata accessor for FMUnknownItemCellViewModel);
      (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
      v17 = v59;
      v23 = v50;
LABEL_17:
      sub_10023EE1C(v27, v17);
      v38 = sub_10007EBC0(&qword_1006B77A8, &qword_100559AA0);
      if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
      {
        return;
      }

      v39 = *(v38 + 48);
      v40 = v57;
      v41 = v64;
      (*v60)(v57, v17, v64);
      v42 = &v17[v39];
      v43 = v54;
      sub_10023F8F0(v42, v54, type metadata accessor for FMUnknownItemCellViewModel);
      v44 = sub_1001B3964(v40);
      LOBYTE(v39) = v45;
      (*v53)(v40, v41);
      if ((v39 & 1) == 0)
      {
        sub_10023EEF4(v43, type metadata accessor for FMUnknownItemCellViewModel);
        return;
      }

      v46 = v62;
      sub_10023EE8C(*(a2 + 56) + *(v63 + 72) * v44, v62, type metadata accessor for FMUnknownItemCellViewModel);
      v47 = sub_10010BF14(v46, v43);
      sub_10023EEF4(v46, type metadata accessor for FMUnknownItemCellViewModel);
      sub_10023EEF4(v43, type metadata accessor for FMUnknownItemCellViewModel);
      v17 = v59;
      v22 = v61;
      if ((v47 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v18 + 1)
    {
      v25 = v18 + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 - 1;
    v27 = v58;
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        v48 = sub_10007EBC0(&qword_1006B77A8, &qword_100559AA0);
        (*(*(v48 - 8) + 56))(v27, 1, 1, v48);
        v61 = 0;
        v18 = v26;
        goto LABEL_17;
      }

      v29 = *(v49 + 8 * v28);
      ++v18;
      if (v29)
      {
        v61 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v18 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_100237460(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = *(*(a1 + 56) + 8 * (v8 | (v3 << 6)));
      sub_1001C2758();
      if (v12)
      {

        v14 = sub_100244134(v13, v11);

        if (v14)
        {
          continue;
        }
      }

      return;
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

double sub_1002375E8(void *a1)
{
  swift_beginAccess();
  v3 = a1[3];
  swift_beginAccess();
  v1[3] = v3;

  swift_beginAccess();
  v4 = a1[2];
  swift_beginAccess();
  v1[2] = v4;

  swift_beginAccess();
  v5 = a1[4];
  swift_beginAccess();
  v1[4] = v5;

  return result;
}

uint64_t sub_1002376E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100237738(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = "Unknown section!";
    v2 = 0xD000000000000032;
  }

  else
  {
    v2 = 0xD000000000000038;
    v1 = "_DETECTED_NEAR_YOU";
  }

  v3 = [objc_opt_self() mainBundle];
  v9._object = 0x8000000100579A00;
  v4._object = (v1 | 0x8000000000000000);
  v5.value._object = 0x80000001005799E0;
  v9._countAndFlagsBits = 0xD000000000000018;
  v4._countAndFlagsBits = v2;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t *sub_100237834@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_100237868()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10023EE8C(v1, v8, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v9 = sub_10007EBC0(&qword_1006B76D0, &qword_100559900);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_100237A90(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023EE8C(v1, v8, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v9 = sub_10007EBC0(&qword_1006B76D0, &qword_100559900);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int sub_100237C90(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10023EE8C(v2, v9, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v10 = sub_10007EBC0(&qword_1006B76D0, &qword_100559900);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    Hasher._combine(_:)(v12);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  return Hasher._finalize()();
}

void sub_100237EB8()
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4D08);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v2 + qword_1006B7568))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v2 + qword_1006B7568))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_100005B4C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "FMUnknownItemsListDataSource: isUpdating: %s", v4, 0xCu);
    sub_100006060(v5);
  }
}

id sub_100238044(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v49) = a3;
  v45 = a2;
  v46 = a1;
  v52 = type metadata accessor for FMIPUnknownItem();
  v40 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v41 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = qword_1006B7520;
  type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  swift_allocObject();
  *(v3 + v11) = FMIPUnknownAccessoryDiscoveryController.init()();
  v44 = qword_1006B7528;
  v43 = sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_10023EF54(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0, &unk_100550420);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0, &unk_100550420, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
  v12 = v46;
  *(v3 + v44) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + qword_1006B7548) = 0;
  swift_unknownObjectWeakInit();
  v13 = v3 + qword_1006B7558;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v3 + qword_1006B7560) = 0;
  *(v3 + qword_1006B7568) = 0;
  v14 = (v3 + qword_1006B7570);
  type metadata accessor for FMUnknownItemsListDataSource.ViewModel();
  *v14 = 0;
  v14[1] = 0;
  v15 = swift_allocObject();
  v15[2] = sub_100153C5C(_swiftEmptyArrayStorage);
  v15[3] = sub_100153E78(_swiftEmptyArrayStorage);
  v16 = sub_100153FB4(_swiftEmptyArrayStorage);
  *(v3 + qword_1006B7540) = v49 & 1;
  *(v3 + qword_1006B7510) = v12;
  v15[4] = v16;
  *(v3 + qword_1006B7530) = v15;
  *(v3 + qword_1006B7518) = *(v12 + 64);

  v17 = FMIPManager.unknownItems.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = v15;
    v44 = v3;
    v53 = _swiftEmptyArrayStorage;
    sub_10016748C(0, v18, 0);
    v19 = v41;
    v20 = v53;
    v21 = v40 + 16;
    v22 = *(v40 + 16);
    v23 = *(v40 + 80);
    v40 = v17;
    v24 = v17 + ((v23 + 32) & ~v23);
    v48 = *(v21 + 56);
    v49 = v22;
    v25 = (v21 - 8);
    v47 = (v41 + 32);
    v26 = v21;
    v27 = v42;
    do
    {
      v28 = v51;
      v29 = v52;
      v30 = v26;
      v49(v51, v24, v52);
      FMIPUnknownItem.identifier.getter();
      (*v25)(v28, v29);
      v53 = v20;
      v32 = v20[2];
      v31 = v20[3];
      if (v32 >= v31 >> 1)
      {
        sub_10016748C((v31 > 1), v32 + 1, 1);
        v20 = v53;
      }

      v20[2] = v32 + 1;
      (*(v19 + 32))(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v32, v27, v50);
      v24 += v48;
      --v18;
      v26 = v30;
    }

    while (v18);

    v33 = v45;
    v4 = v44;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v33 = v45;
  }

  *(v4 + qword_1006B7538) = v20;

  v34 = v33;
  v35 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  sub_100239AEC();
  sub_100239920(v34);
  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  [v37 addObserver:v35 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v38 = [v36 defaultCenter];
  [v38 addObserver:v35 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  return v35;
}