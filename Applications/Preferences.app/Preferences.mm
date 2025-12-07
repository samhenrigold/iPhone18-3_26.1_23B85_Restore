int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_10000395C();
  objc_autoreleasePoolPop(v3);
  type metadata accessor for SettingsApp(0);
  sub_100003E98(&qword_10015E1E8, type metadata accessor for SettingsApp, &unk_10010F908);
  static App.main()();
  return 0;
}

uint64_t sub_10000395C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CAC();
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.userInteractive(_:), v6);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = sub_1000042B8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014FF78;
  v11 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003E98(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004DED0(&qword_10015D718, &qword_1001141C8);
  sub_100003EE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

unint64_t sub_100003CAC()
{
  result = qword_10015C9D0;
  if (!qword_10015C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C9D0);
  }

  return result;
}

uint64_t sub_100003CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100003EE0()
{
  result = qword_10015EDA0;
  if (!qword_10015EDA0)
  {
    sub_100052374(&qword_10015D718, &qword_1001141C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EDA0);
  }

  return result;
}

uint64_t type metadata accessor for SettingsApp(uint64_t a1)
{
  result = qword_10015AEE8;
  if (!qword_10015AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003F90(uint64_t a1)
{
  sub_100004168(319, &qword_10015AEF8, type metadata accessor for SettingsApplicationDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v1 <= 0x3F)
  {
    sub_100004168(319, &qword_10015AF00, type metadata accessor for SettingsAppLaunchActions, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SettingsAppSearchIndexManager();
      if (v3 <= 0x3F)
      {
        sub_100004168(319, &qword_10015AF08, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100004168(319, &unk_10015AF10, type metadata accessor for SettingsAppModel, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100004124(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100004168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SettingsApplicationDelegate(uint64_t a1)
{
  result = qword_10015D398;
  if (!qword_10015D398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004218(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000042B8()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v12 = *(v3 - 8);
  v13 = v3;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA10 != -1)
  {
    swift_once();
  }

  sub_100005430();

  sub_10004DED0(&qword_10015E1F0, &qword_1001152F8);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_1001103E0;
  static Tips.ConfigurationOption.DisplayFrequency.system.getter();
  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v7 + 8))(v9, v6);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v12 + 8))(v5, v13);
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v14 + 8))(v2, v15);
  static Tips.configure(_:)();
}

uint64_t type metadata accessor for SettingsAppLaunchActions(uint64_t a1)
{
  result = qword_10015B120;
  if (!qword_10015B120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004740(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

id sub_1000047F4()
{
  result = [objc_allocWithZone(type metadata accessor for CellularNotificationRelay()) init];
  qword_100169570 = result;
  return result;
}

char *sub_100004824()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (PSIsInEDUMode())
  {
    goto LABEL_5;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  cellularDataCapability = MobileGestalt_get_cellularDataCapability();

  if (!cellularDataCapability)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    sub_100003CAC();
    v6 = static OS_dispatch_queue.main.getter();
    v7 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v6];
  }

  *&v1[OBJC_IVAR____TtC11SettingsApp25CellularNotificationRelay_telephonyClient] = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  v9 = *&v8[OBJC_IVAR____TtC11SettingsApp25CellularNotificationRelay_telephonyClient];
  if (v9)
  {
    [v9 setDelegate:v8];
  }

  return v8;
}

uint64_t type metadata accessor for SettingsAppModel(uint64_t a1)
{
  result = qword_10015B1E0;
  if (!qword_10015B1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004984(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100004A34(uint64_t a1@<X8>)
{
  type metadata accessor for SettingsApplicationDelegate(0);
  sub_100004C44(&qword_10015AF50, type metadata accessor for SettingsApplicationDelegate, &unk_100113C58);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v2 = type metadata accessor for SettingsApp(0);
  v3 = (a1 + v2[5]);
  type metadata accessor for SettingsAppLaunchActions(0);
  swift_allocObject();
  sub_100004CF4();
  State.init(wrappedValue:)();
  *v3 = v11;
  v3[1] = v12;
  v4 = v2[6];
  type metadata accessor for SettingsAppSearchIndexManager();
  swift_allocObject();
  *(a1 + v4) = sub_10007F360();
  v5 = (a1 + v2[7]);
  type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)();
  State.init(wrappedValue:)();
  *v5 = v11;
  v5[1] = v12;
  v6 = (a1 + v2[8]);
  type metadata accessor for SettingsAppModel(0);
  v7 = swift_allocObject();
  sub_100054064(v7, v8);
  State.init(wrappedValue:)();
  *v6 = v11;
  v6[1] = v12;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 removeObjectForKey:v10];
}

uint64_t sub_100004C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004CF4()
{
  v0 = type metadata accessor for IntentDonationSettingsNavigationEventResponder();
  v1 = *(v0 - 8);
  v45 = v0;
  v46 = v1;
  __chkstk_darwin(v0);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  ObservationRegistrar.init()();
  v10 = objc_opt_self();
  v11 = [v10 appearance];
  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v11 setTextColor:v13];

  v14 = [v10 appearance];
  v15 = [v12 secondaryLabelColor];
  [v14 setAltTextColor:v15];

  v16 = [v10 appearance];
  v17 = [v12 placeholderTextColor];
  [v16 setEditablePlaceholderTextColor:v17];

  v18 = [v10 appearance];
  v19 = [v12 labelColor];
  [v18 setEditableTextColor:v19];

  v20 = [v10 appearance];
  v21 = [v12 linkColor];
  [v20 setButtonTextColor:v21];

  v22 = [v10 appearance];
  v23 = [v12 linkColor];
  [v22 setFooterHyperlinkColor:v23];

  v24 = [v10 appearance];
  v25 = [v12 systemGroupedBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = [v10 appearance];
  v27 = [v12 secondarySystemGroupedBackgroundColor];
  [v26 setForegroundColor:v27];

  v28 = [v10 appearance];
  v29 = [v12 separatorColor];
  [v28 setSeparatorColor:v29];

  type metadata accessor for PreferencesListControllerNavigationCoordinator();
  [v10 registerDefaultNavigationCoordinatorClass:swift_getObjCClassFromMetadata()];
  v30 = objc_opt_self();
  type metadata accessor for PreferencesControllerNavigationCoordinator();
  [v30 registerDefaultNavigationCoordinatorClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for PreferencesListControllerSpecifierActionCoordinator();
  [v10 registerDefaultSpecifierActionCoordinatorClass:swift_getObjCClassFromMetadata()];
  v31 = objc_opt_self();
  v32 = [v31 standardUserDefaults];
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v33 = *(v4 + 8);
  v33(v7, v3);
  URL.path.getter();
  v33(v9, v3);
  v34 = String._bridgeToObjectiveC()();

  [v32 setObject:v34 forKey:WebStorageDirectoryDefaultsKey];

  v35 = [v31 standardUserDefaults];
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v33(v7, v3);
  URL.path.getter();
  v33(v9, v3);
  v36 = String._bridgeToObjectiveC()();

  [v35 setObject:v36 forKey:WebDatabaseDirectoryDefaultsKey];

  aBlock[4] = sub_100082600;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000528E0;
  aBlock[3] = &unk_10014D538;
  v37 = _Block_copy(aBlock);
  v38 = imp_implementationWithBlock(v37);
  sub_1000066A8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  class_addMethod(ObjCClassFromMetadata, "rootController", v38, 0);
  _Block_release(v37);
  type metadata accessor for SettingsEventCenter();
  static SettingsEventCenter.default.getter();
  static IntentDonationSettingsNavigationEventResponder.defaultPlatformSettingsHostApplicationBundleIdentifier.getter();
  v40 = v44;
  IntentDonationSettingsNavigationEventResponder.init(settingsHostApplicationBundleIdentifier:)();
  v41 = v45;
  SettingsEventCenter.addResponder<A>(_:)();

  (*(v46 + 8))(v40, v41);
  return v43;
}

uint64_t sub_100005430()
{
  v0 = type metadata accessor for OSSignpostID();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignposter();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000659C(v3, qword_100169718);
  (*(v4 + 16))(v6, v7, v3);
  static OSSignpostID.exclusive.getter();
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  v11 = OSSignpostID.rawValue.getter();
  v21 = v3;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "static ManagedConfigurationStateProvider.produceManagedConfigurationStateSnapshot()", "", v8, 2u);
  sub_100005720(v24);
  v12 = static os_signpost_type_t.end.getter();
  v13 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v12, v13, "static ManagedConfigurationStateProvider.produceManagedConfigurationStateSnapshot()", "", v8, 2u);

  v14 = v24[0];
  v15 = v24[1];
  v16 = v24[2];

  (*(v22 + 8))(v2, v23);
  (*(v4 + 8))(v6, v21);
  if (v15)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v14;
  if (v16)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  return v18 | v19;
}

uint64_t sub_100005720@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = result;
  v4 = [result isMultiUser];

  v5 = objc_opt_self();
  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = result;
  v7 = [result isSupervised];

  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = result;
  v25 = v7;
  v9 = [result isPasscodeSet];

  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = result;
  v11 = [result effectiveBlockedAppBundleIDs];

  if (!v11 || (v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v11, v13 = sub_10001EC8C(v12), , !v13))
  {

    v13 = &_swiftEmptySetSingleton;
  }

  result = [v5 sharedConnection];
  if (!result)
  {
    goto LABEL_28;
  }

  v14 = result;
  v15 = [result effectiveWhitelistedAppBundleIDs];

  if (!v15 || (v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = sub_10001EC8C(v16), , !v17))
  {

    v17 = &_swiftEmptySetSingleton;
  }

  v29 = &_swiftEmptySetSingleton;
  result = [v5 sharedConnection];
  if (result)
  {
    v18 = result;
    v19 = [result effectiveUserSettings];

    if (v19)
    {
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      if (*(v20 + 16))
      {
        v21 = sub_100017DC0(v26);
        if (v22)
        {
          sub_10001EE30(*(v20 + 56) + 32 * v21, &v27);
          sub_100017E04(v26);

          if (*(&v28 + 1))
          {
            sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
            result = swift_dynamicCast();
            if (result)
            {
              v23 = sub_10001EE8C(v26[0]);

              sub_100017E58(v23);

              v24 = v29;
LABEL_23:
              *a1 = v4;
              *(a1 + 1) = v25;
              *(a1 + 2) = v9;
              *(a1 + 8) = v24;
              *(a1 + 16) = v13;
              *(a1 + 24) = v17;
              return result;
            }

LABEL_22:
            v24 = &_swiftEmptySetSingleton;
            goto LABEL_23;
          }

LABEL_21:
          result = sub_1000068B0(&v27, &qword_10015C8D0, &unk_100116750);
          goto LABEL_22;
        }
      }

      sub_100017E04(v26);
    }

    v27 = 0u;
    v28 = 0u;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_100005B08(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    sub_10001EE30(*(a3 + 56) + 32 * v13, v23);
    sub_10001EE30(v23, v21);
    sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v14 = v22[0];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (!*(v14 + 16) || (v15 = sub_100017DC0(v21), (v16 & 1) == 0))
    {

      sub_100017E04(v21);
      goto LABEL_5;
    }

    sub_10001EE30(*(v14 + 56) + 32 * v15, v22);
    sub_100017E04(v21);

    if (swift_dynamicCast())
    {
      result = sub_10000665C(v23);
      if ((v20 & 1) == 0)
      {
        *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_100005D38(v19, a2, v24, a3);
        }
      }
    }

    else
    {
LABEL_5:
      result = sub_10000665C(v23);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100005D38(v19, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100005D38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1000069D8(*(v4 + 48) + 40 * v16, v33);
    sub_10001EE30(*(v4 + 56) + 32 * v16, v32);
    v29 = v33[0];
    v30 = v33[1];
    v31 = v34;
    sub_10001EFEC(v32, v28);
    result = AnyHashable._rawHashValue(seed:)(*(v9 + 40));
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    v26 = v30;
    *v25 = v29;
    *(v25 + 16) = v26;
    *(v25 + 32) = v31;
    result = sub_10001EFEC(v28, (*(v9 + 56) + 32 * v20));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100005F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8E8, &qword_100112B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100006000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
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

unint64_t sub_10000631C()
{
  result = qword_10015EEC0;
  if (!qword_10015EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EEC0);
  }

  return result;
}

unint64_t sub_100006398()
{
  result = qword_10015D9C8;
  if (!qword_10015D9C8)
  {
    sub_100052374(&unk_10015D9A8, &qword_100114320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D9C8);
  }

  return result;
}

uint64_t sub_1000063FC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100006538(v4, qword_100169718);
  sub_10000659C(v4, qword_100169718);
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000659C(v0, qword_100169700);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t *sub_100006538(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000659C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000065D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100006538(v5, a2);
  sub_10000659C(v5, a2);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000665C(void *a1)
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

unint64_t sub_1000066A8()
{
  result = qword_10015B1A8;
  if (!qword_10015B1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015B1A8);
  }

  return result;
}

const char *sub_1000066F4()
{
  v1 = *v0;
  v2 = "DeviceOSExpert";
  v3 = "AppleMediaServices";
  v4 = "CoreTelephony";
  if (v1 != 5)
  {
    v4 = "SettingsApp";
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if ((v1 - 1) < 3)
  {
    v2 = "ForSettingsAppOnlyDoNotUseGenerallyAsASourceOfTruth";
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *sub_100006770()
{
  v1 = *v0;
  v2 = "SemanticSearch";
  v3 = "EmperorPenguin";
  if (v1 != 5)
  {
    v3 = "StrictNavigation";
  }

  v4 = "ForceInternalSettingsHidden";
  if (v1 != 3)
  {
    v4 = "Atlas";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "ForceDeveloperSettingsHidden";
  if (v1 != 1)
  {
    v5 = "ForceCarrierSettingsHidden";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100006868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000068B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10004DED0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100006910(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000069D8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100017E04(v8);
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

Swift::Int sub_100006A34(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10001F14C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100069318();
      goto LABEL_16;
    }

    sub_100006000(v8 + 1);
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

void sub_100006BD8(uint64_t a1)
{
  sub_1000074A0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SettingsAppDetailContent.ContentType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100006C5C(uint64_t a1)
{
  type metadata accessor for SettingsAnyPlatformViewControllerModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PreferencesControllerRepresentableModel();
    if (v2 <= 0x3F)
    {
      sub_100006CE4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100006CE4(uint64_t a1)
{
  if (!qword_10015E488)
  {
    type metadata accessor for SettingsPaneRecipe();
    type metadata accessor for SettingsExperienceContentCoordinator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015E488);
    }
  }
}

void sub_100006D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_100006DE8()
{
  result = qword_100161320;
  if (!qword_100161320)
  {
    result = &type metadata for PrimarySettingsListItemIdentifier;
    atomic_store(&type metadata for PrimarySettingsListItemIdentifier, &qword_100161320);
  }

  return result;
}

uint64_t type metadata accessor for EngagementLinkData(uint64_t a1)
{
  result = qword_1001614A8;
  if (!qword_1001614A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E64(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100006EE0()
{
  if (!qword_10015BFB8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015BFB8);
    }
  }
}

double sub_100006F30()
{
  v0 = type metadata accessor for SettingsAppDetailContent(0);
  sub_100006538(v0, qword_1001697A0);
  v1 = sub_10000659C(v0, qword_1001697A0);
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = -1;
  return result;
}

uint64_t sub_100006FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100007000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SettingsURLDestination.Action(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_100007108()
{
  result = qword_10015B040;
  if (!qword_10015B040)
  {
    sub_100052374(&qword_10015B038, &qword_100116910);
    sub_100004C44(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem, &unk_100113DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B040);
  }

  return result;
}

uint64_t type metadata accessor for SettingsAppNavigationModel(uint64_t a1)
{
  result = qword_10015EBD0;
  if (!qword_10015EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007208(uint64_t a1)
{
  type metadata accessor for NavigationPath();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SettingsAppDetailContent(319);
    if (v2 <= 0x3F)
    {
      sub_100006D54(319, &qword_10015EBE0, type metadata accessor for SettingsURLDestination);
      if (v3 <= 0x3F)
      {
        sub_100006D54(319, &qword_10015EBE8, &type metadata accessor for UserInterfaceSizeClass);
        if (v4 <= 0x3F)
        {
          sub_100006D54(319, &unk_10015EBF0, &type metadata accessor for ScenePhase);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100007468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000074A0()
{
  if (!qword_10015E3D8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E3D8);
    }
  }
}

void sub_100007510(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SettingsURLDestination.Action(319);
    if (v2 <= 0x3F)
    {
      sub_1000077BC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000075AC(uint64_t a1)
{
  sub_1000076C8();
  if (v1 <= 0x3F)
  {
    sub_100006DE8();
    if (v2 <= 0x3F)
    {
      sub_1000076F8(319, &qword_100161328, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_1000076F8(319, &qword_100161330, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          sub_1000076F8(319, &qword_100161338, type metadata accessor for EngagementLinkData);
          if (v5 <= 0x3F)
          {
            sub_100007744(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1000076C8()
{
  result = qword_100161318;
  if (!qword_100161318)
  {
    result = &type metadata for SettingsAppPresentableItemIdentifier;
    atomic_store(&type metadata for SettingsAppPresentableItemIdentifier, &qword_100161318);
  }

  return result;
}

void sub_1000076F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100007744(uint64_t a1)
{
  if (!qword_100161340)
  {
    sub_100052374(&qword_10015E900, &qword_100114A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100161340);
    }
  }
}

void sub_1000077BC(uint64_t a1)
{
  if (!qword_100161260)
  {
    type metadata accessor for URLQueryItem();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100161260);
    }
  }
}

uint64_t sub_100007814()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015EA50, &unk_100115F90);
  __chkstk_darwin(v2 - 8);
  v57 = v44 - v3;
  v4 = sub_10004DED0(&qword_10015ED30, &unk_100115D30);
  __chkstk_darwin(v4 - 8);
  v6 = v44 - v5;
  v54 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v50 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015ED38, &qword_100115FA0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v58 = v44 - v10;
  v11 = sub_10004DED0(&qword_10015ED40, &qword_100115FA8);
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v53 = v44 - v12;
  v13 = type metadata accessor for NavigationPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingsOmniSearchViewModel(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0xE000000000000000;
  v18 = sub_1000BA3B8(_swiftEmptyArrayStorage);
  *(v17 + 40) = _swiftEmptyArrayStorage;
  *(v17 + 48) = v18;
  ObservationRegistrar.init()();
  *(v1 + 16) = v17;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  NavigationPath.init()();
  (*(v14 + 32))(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath, v16, v13);
  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for SettingsAppDetailContent(0);
  v20 = sub_10000659C(v19, qword_1001697A0);
  sub_10000822C(v20, v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent, type metadata accessor for SettingsAppDetailContent);
  v21 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  v22 = type metadata accessor for SettingsURLDestination(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v1 + v21, 1, 1, v22);
  v23(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination, 1, 1, v22);
  v24 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject;
  sub_10004DED0(&unk_10015ED48, &qword_100115FB0);
  swift_allocObject();
  *(v1 + v24) = PassthroughSubject.init()();
  v49 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_observer;
  *(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_observer) = 0;
  v25 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  v26 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  v28 = type metadata accessor for ScenePhase();
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  ObservationRegistrar.init()();
  [objc_opt_self() registerApplicationURLStateProvider:v1];
  v60 = *(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject);

  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v48 = objc_opt_self();
  v29 = [v48 mainRunLoop];
  v59 = v29;
  v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v31 = *(v30 - 8);
  v46 = *(v31 + 56);
  v47 = v31 + 56;
  v46(v6, 1, 1, v30);
  v44[1] = sub_100008294(0, &unk_10015EA70, NSRunLoop_ptr);
  sub_1000525A0(&unk_10015ED58, &unk_10015ED48, &qword_100115FB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v44[0] = sub_1000082DC();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v6, &qword_10015ED30, &unk_100115D30);

  v32 = v50;
  v45 = *(v50 + 8);
  v33 = v54;
  v45(v8, v54);

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v34 = v57;
  (*(v32 + 56))(v57, 1, 1, v33);
  v35 = [v48 mainRunLoop];
  v60 = v35;
  v46(v6, 1, 1, v30);
  sub_1000525A0(&qword_10015ED68, &qword_10015ED38, &qword_100115FA0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v37 = v52;
  v36 = v53;
  v38 = v58;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000068B0(v6, &qword_10015ED30, &unk_100115D30);

  sub_1000068B0(v34, &qword_10015EA50, &unk_100115F90);
  v45(v8, v33);
  (*(v51 + 8))(v38, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1000BA4B4;
  *(v40 + 24) = v39;
  sub_1000525A0(&qword_10015ED70, &qword_10015ED40, &qword_100115FA8, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v41 = v56;
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v36, v41);
  *(v1 + v49) = v42;

  return v1;
}

uint64_t sub_1000080C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for SettingsOmniSearchViewModel(uint64_t a1)
{
  result = qword_100161118;
  if (!qword_100161118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008184(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10000822C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100008294(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1000082DC()
{
  result = qword_10015EA80;
  if (!qword_10015EA80)
  {
    sub_100008294(255, &unk_10015EA70, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EA80);
  }

  return result;
}

uint64_t type metadata accessor for SettingsNavigationSplitView(uint64_t a1)
{
  result = qword_10015F078;
  if (!qword_10015F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008390(uint64_t a1)
{
  sub_10000856C(319, &qword_10015F088, &qword_10015B2A0, &qword_10010FCB0);
  if (v1 <= 0x3F)
  {
    sub_10000856C(319, &qword_10015F090, &qword_10015B2A8, qword_10010FCB8);
    if (v2 <= 0x3F)
    {
      sub_1000BBDB4(319, &qword_10015F098, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000BBDB4(319, &qword_10015F0A0, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1000BBDB4(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1000BBDB4(319, &unk_10015F0A8, type metadata accessor for SettingsAppNavigationModel, &type metadata accessor for Bindable);
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

void sub_10000856C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = sub_100052374(a3, a4);
    v9 = type metadata accessor for SettingsAppDependency(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100008608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for SettingsSearchZeroKeywordListRecentItem(uint64_t a1)
{
  result = qword_10015D568;
  if (!qword_10015D568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000086AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100008700(uint64_t a1)
{
  sub_1000086AC(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel);
  if (v1 <= 0x3F)
  {
    sub_1000086AC(319, &qword_10015D578, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      sub_1000086AC(319, &unk_10015D580, &type metadata accessor for Locale);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SettingsNavigationEventRecord();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100008824()
{
  sub_100052374(&qword_10015AF60, &qword_10010F950);
  sub_100052374(&qword_10015AFC0, &qword_10010F988);
  sub_100052374(&qword_10015AF58, &qword_10010F948);
  type metadata accessor for SettingsAppModel(255);
  sub_1000525A0(&qword_10015AFB0, &qword_10015AF58, &qword_10010F948, &protocol conformance descriptor for WindowGroup<A>);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015AFC8, &qword_10015AFC0, &qword_10010F988, &protocol conformance descriptor for TupleCommandContent<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100008A30()
{
  v1 = v0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    [result registerObserver:v1];

    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    v6 = objc_opt_self();
    v7 = [v6 mainQueue];
    v23 = sub_100045888;
    v24 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100045794;
    v22 = &unk_10014F398;
    v8 = _Block_copy(&v19);
    v9 = [v5 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v7 usingBlock:v8];
    _Block_release(v8);

    v10 = OBJC_IVAR____TtC11SettingsApp27SettingsApplicationDelegate_observationTokens;
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v11 = [v4 defaultCenter];
    v12 = [v6 mainQueue];
    v23 = sub_100045DCC;
    v24 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100045794;
    v22 = &unk_10014F3C0;
    v13 = _Block_copy(&v19);
    v14 = [v11 addObserverForName:UIApplicationWillResignActiveNotification object:0 queue:v12 usingBlock:v13];
    _Block_release(v13);

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v15 = [v4 defaultCenter];
    v16 = [v6 mainQueue];
    v23 = sub_1000772C8;
    v24 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100045794;
    v22 = &unk_10014F3E8;
    v17 = _Block_copy(&v19);
    v18 = [v15 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v16 usingBlock:v17];
    _Block_release(v17);

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for SettingsApp(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10004DED0(&qword_10015AF58, &qword_10010F948);
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = sub_10004DED0(&qword_10015AF60, &qword_10010F950);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v47 = &v45 - v12;
  v13 = sub_10004DED0(&qword_10015AF68, &qword_10010F958);
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  __chkstk_darwin(v13);
  v48 = &v45 - v15;
  sub_1000095A8(v2, &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_10000960C(&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v45 = sub_10004DED0(&qword_10015AF70, &qword_10010F960);
  v18 = sub_100052374(&qword_10015AF78, &qword_10010F968);
  v19 = type metadata accessor for SettingsOmniSearchViewModel(255);
  v20 = sub_100052374(&qword_10015AF80, &qword_10010F970);
  v21 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v22 = sub_100052374(&qword_10015AF88, &qword_10010F978);
  v23 = type metadata accessor for SettingsNavigationSplitView(255);
  v24 = sub_100004C44(&qword_10015AF90, type metadata accessor for SettingsNavigationSplitView, &unk_1001163C0);
  v56 = v23;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v22;
  v57 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_100004C44(&qword_10015AF98, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  v56 = v20;
  v57 = v21;
  v58 = v26;
  v59 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  v56 = v18;
  v57 = v19;
  v58 = v28;
  v59 = v29;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v30 = v46;
  v31 = (v46 + *(v4 + 40));
  v33 = *v31;
  v32 = v31[1];
  v56 = v33;
  v57 = v32;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v34 = type metadata accessor for SettingsAppModel(0);
  v35 = sub_1000525A0(&qword_10015AFB0, &qword_10015AF58, &qword_10010F948, &protocol conformance descriptor for WindowGroup<A>);
  v36 = sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  v37 = v47;
  Scene.environment<A>(_:)();

  (*(v49 + 8))(v9, v7);
  v55 = v30;
  v38 = sub_10004DED0(&qword_10015AFC0, &qword_10010F988);
  v56 = v7;
  v57 = v34;
  v58 = v35;
  v59 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1000525A0(&qword_10015AFC8, &qword_10015AFC0, &qword_10010F988, &protocol conformance descriptor for TupleCommandContent<A>);
  v41 = v48;
  v42 = v50;
  Scene.commands<A>(content:)();
  (*(v51 + 8))(v37, v42);
  v56 = v42;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v52;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v53 + 8))(v41, v43);
}

uint64_t sub_1000095A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000960C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009680(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009690(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_1000097F8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10000992C, 0, 0);
}

uint64_t sub_10000992C()
{
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10006B0E8;
  v2 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v0 + 88, 0, 0, v2);
}

uint64_t sub_1000099F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10004DED0(&qword_10015CB48, &unk_100113070) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000ACE4;

  return sub_10001A984(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_100009B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001ABC0, 0, 0);
}

uint64_t sub_100009C48()
{
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100021CA8;
  v2 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 151, 0, 0, v2);
}

unint64_t sub_100009D50()
{
  result = qword_10015DCC8;
  if (!qword_10015DCC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10015DCC8);
  }

  return result;
}

uint64_t type metadata accessor for SettingsApplicationDebugRoot(uint64_t a1)
{
  result = qword_10015D0F0;
  if (!qword_10015D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009DEC(uint64_t a1)
{
  sub_100009EA8(319, &qword_10015DB50, &type metadata accessor for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_100009EA8(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AMSEngagementSheet(uint64_t a1)
{
  result = qword_10015DB40;
  if (!qword_10015DB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009F64()
{
  sub_100052374(&qword_10015F1C0, &qword_1001164E0);
  sub_100052374(&qword_10015F370, &qword_100116668);
  sub_100052374(&qword_10015F1B8, &qword_1001164D8);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_100052374(&qword_10015C098, &qword_100116660);
  sub_100052374(&qword_10015F1B0, &qword_1001164D0);
  sub_100052374(&qword_10015F358, &qword_100116658);
  sub_100052374(&qword_10015F1A8, &qword_1001164C8);
  sub_100052374(&qword_10015F1A0, &qword_1001164C0);
  sub_100052374(&qword_10015F330, &qword_100116640);
  sub_100052374(&qword_10015F198, &qword_1001164B8);
  sub_100052374(&qword_10015F308, &qword_100116630);
  sub_100052374(&qword_10015F190, &qword_1001164B0);
  sub_100052374(&qword_10015F2F8, &qword_100116628);
  sub_100052374(&qword_10015F188, &qword_1001164A8);
  sub_100052374(&qword_10015F2E0, &qword_100116620);
  sub_100052374(&qword_10015F180, &qword_1001164A0);
  sub_100052374(&qword_10015F2C0, &qword_100116610);
  sub_100052374(&qword_10015F178, &qword_100116498);
  sub_100052374(&qword_10015F2A0, &qword_100116600);
  sub_100052374(&qword_10015F170, &qword_100116490);
  sub_100052374(&qword_10015F168, &qword_100116488);
  sub_100052374(&qword_10015F160, &qword_100116480);
  sub_1000C329C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000A470();
  swift_getOpaqueTypeConformance2();
  sub_10000BC18();
  swift_getOpaqueTypeConformance2();
  sub_10000BCC8();
  swift_getOpaqueTypeConformance2();
  sub_10000BD7C();
  swift_getOpaqueTypeConformance2();
  sub_10000BE74();
  swift_getOpaqueTypeConformance2();
  sub_1000C3D0C();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  sub_10000C0B4();
  swift_getOpaqueTypeConformance2();
  sub_10000A5B0();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F378, &qword_10015F370, &qword_100116668, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A470()
{
  result = qword_10015F2A8;
  if (!qword_10015F2A8)
  {
    sub_100052374(&qword_10015F2A0, &qword_100116600);
    sub_1000525A0(&qword_10015F2B0, &qword_10015F2B8, &qword_100116608, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2A8);
  }

  return result;
}

uint64_t sub_10000A520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000A5B0()
{
  result = qword_10015C0A8;
  if (!qword_10015C0A8)
  {
    sub_100052374(&qword_10015C098, &qword_100116660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0A8);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10015DE58;
  if (!qword_10015DE58)
  {
    sub_100052374(&qword_10015DE38, &qword_100114968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE58);
  }

  return result;
}

uint64_t sub_10000A6C0()
{
  v1 = v0[14];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_10001AE08();
  AsyncSequence.debounce<>(for:tolerance:)();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[15] = v2;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v3 = v0;
  v3[1] = sub_1000676A0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 18, v4);
}

uint64_t sub_10000A7FC()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10001AE80;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 23, 0, 0, 0x6C50796E41736168, 0xEB00000000736E61, sub_10000AA18, v2, &type metadata for Bool);
}

uint64_t sub_10000A924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AA20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10000AB18(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10000AE28;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001AE6C;
  aBlock[3] = &unk_10014EC88;
  v10 = _Block_copy(aBlock);

  [a2 planItemsShouldUpdate:0 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10000ACEC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_100008294(0, a4, a5);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v7(v6, a3);
}

uint64_t sub_10000AD88()
{
  v1 = *(v0 + 80);

  *(v0 + 192) = *(v0 + 184);

  return _swift_task_switch(sub_10000AE34, v1, 0);
}

uint64_t sub_10000AE34()
{
  v1 = [*(v0 + 88) sharedManager];
  *(v0 + 120) = v1;
  if (!v1)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10001B1E4, 0, 0);
}

uint64_t sub_10000AEF4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004DED0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10000AF78()
{

  return _swift_task_switch(sub_10000B0BC, 0, 0);
}

uint64_t sub_10000B0BC()
{
  v1 = *(v0 + 80);

  *(v0 + 193) = *(v0 + 185);

  return _swift_task_switch(sub_10000B15C, v1, 0);
}

uint64_t sub_10000B15C()
{
  v1 = [*(v0 + 88) sharedManager];
  *(v0 + 144) = v1;
  if (!v1)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10001BEAC, 0, 0);
}

unint64_t sub_10000B20C()
{
  result = qword_10015C7F0;
  if (!qword_10015C7F0)
  {
    sub_100052374(&qword_10015C7C0, &qword_100112AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C7F0);
  }

  return result;
}

uint64_t sub_10000B270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for SettingsAppSceneDelegate(uint64_t a1)
{
  result = qword_10015D470;
  if (!qword_10015D470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B3C4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata accessor for PrimarySettingsList(uint64_t a1)
{
  result = qword_10015E548;
  if (!qword_10015E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B534(uint64_t a1)
{
  sub_10000B630();
  if (v1 <= 0x3F)
  {
    sub_10000B680(319, &qword_10015E560, type metadata accessor for SettingsOmniSearchViewModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10000B680(319, &unk_10015E568, type metadata accessor for PrimarySettingsListModel, &type metadata accessor for Bindable);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000B630()
{
  if (!qword_10015E558)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E558);
    }
  }
}

void sub_10000B680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PrimarySettingsListModel(uint64_t a1)
{
  result = qword_10015E7A0;
  if (!qword_10015E7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B730(uint64_t a1)
{
  sub_10000B86C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000B86C(uint64_t a1)
{
  if (!qword_10015E7B0)
  {
    type metadata accessor for EngagementLinkData(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10015E7B0);
    }
  }
}

uint64_t sub_10000B90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000B994(uint64_t a1)
{
  if (!qword_10015DB50)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10015DB50);
    }
  }
}

void sub_10000B9EC(uint64_t a1)
{
  sub_10000B994(319);
  if (v1 <= 0x3F)
  {
    sub_100009D50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10000BA70()
{
  result = qword_10015DB58;
  if (!qword_10015DB58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10015DB58);
  }

  return result;
}

void sub_10000BAD4(uint64_t a1)
{
  sub_10000B994(319);
  if (v1 <= 0x3F)
  {
    sub_10000BA70();
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000BB70()
{
  result = qword_10015F290;
  if (!qword_10015F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F290);
  }

  return result;
}

unint64_t sub_10000BBC4()
{
  result = qword_10015F298;
  if (!qword_10015F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F298);
  }

  return result;
}

unint64_t sub_10000BC18()
{
  result = qword_10015F2C8;
  if (!qword_10015F2C8)
  {
    sub_100052374(&qword_10015F2C0, &qword_100116610);
    sub_1000525A0(&qword_10015F2D0, &qword_10015F2D8, &qword_100116618, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2C8);
  }

  return result;
}

unint64_t sub_10000BCC8()
{
  result = qword_10015F2E8;
  if (!qword_10015F2E8)
  {
    sub_100052374(&qword_10015F2E0, &qword_100116620);
    sub_10000A568(&qword_10015F2F0, &type metadata accessor for AppleIDSignInView, &protocol conformance descriptor for AppleIDSignInView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2E8);
  }

  return result;
}

unint64_t sub_10000BD7C()
{
  result = qword_10015F300;
  if (!qword_10015F300)
  {
    sub_100052374(&qword_10015F2F8, &qword_100116628);
    type metadata accessor for AppleAccountSignInSheet(255);
    sub_10000A568(&qword_10015DCF8, type metadata accessor for AppleAccountSignInSheet, &unk_1001144E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F300);
  }

  return result;
}

unint64_t sub_10000BE74()
{
  result = qword_10015F310;
  if (!qword_10015F310)
  {
    sub_100052374(&qword_10015F308, &qword_100116630);
    sub_10000BF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F310);
  }

  return result;
}

unint64_t sub_10000BF00()
{
  result = qword_10015F318;
  if (!qword_10015F318)
  {
    sub_100052374(&qword_10015F320, &qword_100116638);
    type metadata accessor for SettingsAnyPlatformViewControllerView();
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F318);
  }

  return result;
}

unint64_t sub_10000C000()
{
  result = qword_10015F340;
  if (!qword_10015F340)
  {
    sub_100052374(&qword_10015F348, &unk_100116648);
    sub_10000A568(&qword_10015F350, type metadata accessor for SettingsApplicationDebugRoot, &unk_1001138D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F340);
  }

  return result;
}

unint64_t sub_10000C0B4()
{
  result = qword_10015F360;
  if (!qword_10015F360)
  {
    sub_100052374(&qword_10015F358, &qword_100116658);
    sub_10000A568(&qword_10015F368, type metadata accessor for AMSEngagementSheet, &unk_1001143D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F360);
  }

  return result;
}

unint64_t sub_10000C188()
{
  result = qword_10015E240;
  if (!qword_10015E240)
  {
    sub_100052374(&qword_10015E238, &unk_1001153D0);
    sub_1000525A0(&qword_10015E248, &qword_10015E230, &qword_1001153C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000525A0(&qword_10015E250, &qword_10015E258, &qword_100115400, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E240);
  }

  return result;
}

unint64_t sub_10000C26C()
{
  result = qword_10015DE50;
  if (!qword_10015DE50)
  {
    sub_100052374(&qword_10015DE40, &qword_100114970);
    sub_10000A65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE50);
  }

  return result;
}

unint64_t sub_10000C310()
{
  result = qword_10015F210;
  if (!qword_10015F210)
  {
    sub_100052374(&qword_10015F1F0, &qword_100116508);
    sub_1000525A0(&qword_10015F218, &qword_10015F220, &qword_100116520, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F210);
  }

  return result;
}

uint64_t sub_10000C3C0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C41C@<X0>(uint64_t a1@<X8>)
{
  v375 = a1;
  v2 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  v371 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v373 = &v293 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = v4;
  __chkstk_darwin(v3);
  v393 = &v293 - v5;
  v6 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v405 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v402 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v404 = &v293 - v9;
  v359 = type metadata accessor for SettingsAppPrimaryNavigationMode();
  v358 = *(v359 - 8);
  __chkstk_darwin(v359);
  v356 = &v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for PPTTestCase.Name();
  v400 = *(v352 - 8);
  __chkstk_darwin(v352);
  v351 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = type metadata accessor for BalancedNavigationSplitViewStyle();
  v325 = *(v326 - 8);
  __chkstk_darwin(v326);
  v322 = &v293 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsNavigationSplitView(0);
  v396 = *(v13 - 8);
  v14 = *(v396 + 64);
  v15 = v13 - 8;
  v293 = v13 - 8;
  v397 = v14;
  __chkstk_darwin(v13 - 8);
  v401 = &v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for ResetSettingsNavigationStateAction();
  v323 = *(v324 - 8);
  __chkstk_darwin(v324);
  v318 = &v293 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for ClearSettingsNavigationPathAction();
  v377 = *(v394 - 8);
  __chkstk_darwin(v394);
  v314 = &v293 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  appended = type metadata accessor for AppendSettingsNavigationPathAction();
  v330 = *(appended - 1);
  __chkstk_darwin(appended);
  v328 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = type metadata accessor for SettingsNavigationProxy();
  v306 = *(v308 - 8);
  __chkstk_darwin(v308);
  v303 = &v293 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for NavigationSplitViewVisibility();
  v21 = *(v294 - 8);
  __chkstk_darwin(v294);
  v23 = &v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004DED0(&qword_10015F0F0, &qword_100116410);
  __chkstk_darwin(v24 - 8);
  v297 = sub_10004DED0(&qword_10015F0F8, &qword_100116418);
  v321 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v293 - v25;
  v299 = sub_10004DED0(&qword_10015F100, &qword_100116420);
  v300 = *(v299 - 8);
  __chkstk_darwin(v299);
  v296 = &v293 - v26;
  v302 = sub_10004DED0(&qword_10015F108, &qword_100116428);
  v305 = *(v302 - 8);
  __chkstk_darwin(v302);
  v298 = &v293 - v27;
  v307 = sub_10004DED0(&qword_10015F110, &qword_100116430);
  v309 = *(v307 - 8);
  __chkstk_darwin(v307);
  v301 = &v293 - v28;
  v311 = sub_10004DED0(&qword_10015F118, &qword_100116438);
  v312 = *(v311 - 8);
  __chkstk_darwin(v311);
  v304 = &v293 - v29;
  v313 = sub_10004DED0(&qword_10015F120, &qword_100116440);
  v315 = *(v313 - 8);
  __chkstk_darwin(v313);
  v310 = &v293 - v30;
  v316 = sub_10004DED0(&qword_10015F128, &qword_100116448);
  v317 = *(v316 - 8);
  __chkstk_darwin(v316);
  v378 = (&v293 - v31);
  v319 = sub_10004DED0(&qword_10015F130, &qword_100116450);
  v320 = *(v319 - 8);
  __chkstk_darwin(v319);
  v379 = (&v293 - v32);
  v327 = sub_10004DED0(&qword_10015F138, &qword_100116458);
  __chkstk_darwin(v327);
  v398 = (&v293 - v33);
  v332 = sub_10004DED0(&qword_10015F140, &qword_100116460);
  v329 = *(v332 - 8);
  __chkstk_darwin(v332);
  v380 = (&v293 - v34);
  v335 = sub_10004DED0(&qword_10015F148, &qword_100116468);
  v333 = *(v335 - 8);
  __chkstk_darwin(v335);
  v331 = &v293 - v35;
  v337 = sub_10004DED0(&qword_10015F150, &qword_100116470);
  v336 = *(v337 - 8);
  __chkstk_darwin(v337);
  v334 = &v293 - v36;
  v339 = sub_10004DED0(&qword_10015F158, &qword_100116478);
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v399 = &v293 - v37;
  v343 = sub_10004DED0(&qword_10015F160, &qword_100116480);
  __chkstk_darwin(v343);
  v340 = &v293 - v38;
  v345 = sub_10004DED0(&qword_10015F168, &qword_100116488);
  v342 = *(v345 - 8);
  __chkstk_darwin(v345);
  v341 = &v293 - v39;
  v347 = sub_10004DED0(&qword_10015F170, &qword_100116490);
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v344 = &v293 - v40;
  v349 = sub_10004DED0(&qword_10015F178, &qword_100116498);
  v348 = *(v349 - 8);
  __chkstk_darwin(v349);
  v381 = &v293 - v41;
  v353 = sub_10004DED0(&qword_10015F180, &qword_1001164A0);
  v350 = *(v353 - 8);
  __chkstk_darwin(v353);
  v382 = (&v293 - v42);
  v355 = sub_10004DED0(&qword_10015F188, &qword_1001164A8);
  v354 = *(v355 - 8);
  __chkstk_darwin(v355);
  v383 = &v293 - v43;
  v360 = sub_10004DED0(&qword_10015F190, &qword_1001164B0);
  v357 = *(v360 - 8);
  __chkstk_darwin(v360);
  v384 = (&v293 - v44);
  v362 = sub_10004DED0(&qword_10015F198, &qword_1001164B8);
  v361 = *(v362 - 8);
  __chkstk_darwin(v362);
  v385 = (&v293 - v45);
  v364 = sub_10004DED0(&qword_10015F1A0, &qword_1001164C0);
  v363 = *(v364 - 8);
  __chkstk_darwin(v364);
  v386 = (&v293 - v46);
  v388 = sub_10004DED0(&qword_10015F1A8, &qword_1001164C8);
  v365 = *(v388 - 8);
  __chkstk_darwin(v388);
  v387 = &v293 - v47;
  v367 = sub_10004DED0(&qword_10015F1B0, &qword_1001164D0);
  v366 = *(v367 - 8);
  __chkstk_darwin(v367);
  v389 = &v293 - v48;
  v391 = sub_10004DED0(&qword_10015F1B8, &qword_1001164D8);
  v368 = *(v391 - 8);
  __chkstk_darwin(v391);
  v390 = &v293 - v49;
  v370 = sub_10004DED0(&qword_10015F1C0, &qword_1001164E0);
  v369 = *(v370 - 8);
  __chkstk_darwin(v370);
  v392 = &v293 - v50;
  v374 = v6;
  v395 = swift_allocBox();
  v52 = v51;
  v53 = v1 + *(v15 + 48);
  v54 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  type metadata accessor for PrimarySettingsListModel(0);
  sub_10000A568(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  v403 = v52;
  Bindable<A>.init(wrappedValue:)();
  static NavigationSplitViewVisibility.all.getter();
  v55 = v294;
  static Binding.constant(_:)();
  (*(v21 + 8))(v23, v55);
  v408 = v1;
  v407 = v1;
  v406 = v1;
  sub_10004DED0(&qword_10015F1C8, &qword_1001164E8);
  sub_10004DED0(&qword_10015F1D0, &qword_1001164F0);
  v56 = sub_100052374(&qword_10015F1D8, &qword_1001164F8);
  v57 = sub_1000C2E98();
  v409 = v56;
  v410 = v57;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F238, &qword_10015F1D0, &qword_1001164F0, &protocol conformance descriptor for NavigationStack<A, B>);
  v58 = v295;
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  Bindable.wrappedValue.getter();
  v59 = v409;
  swift_getKeyPath();
  v409 = v59;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = sub_1000525A0(&qword_10015F240, &qword_10015F0F8, &qword_100116418, &protocol conformance descriptor for NavigationSplitView<A, B, C>);
  v61 = v296;
  v62 = v297;
  View.selectionClearsNavigationStackPath(_:)();
  (*(v321 + 8))(v58, v62);
  Namespace.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  v321 = type metadata accessor for SettingsAppNavigationModel(0);
  v412 = v321;
  v413 = sub_10000A568(&qword_10015F248, type metadata accessor for SettingsAppNavigationModel, &unk_100115EBC);
  v63 = v303;
  SettingsNavigationProxy.init(namespace:responder:)();
  v409 = v62;
  v410 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v298;
  v66 = v299;
  View.settingsNavigationProxy(_:)();
  (*(v306 + 8))(v63, v308);
  (*(v300 + 8))(v61, v66);
  Namespace.wrappedValue.getter();
  swift_allocObject();
  Bindable.wrappedValue.getter();
  swift_weakInit();

  v67 = v328;
  AppendSettingsNavigationPathAction.init(namespace:onAppend:)();
  v409 = v66;
  v410 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v301;
  v70 = v302;
  View.appendSettingsNavigationPathAction(_:)();
  (*(v330 + 8))(v67, appended);
  (*(v305 + 8))(v65, v70);
  Namespace.wrappedValue.getter();
  swift_allocObject();
  v328 = v54;
  v330 = v53;
  Bindable.wrappedValue.getter();
  swift_weakInit();

  v71 = v314;
  ClearSettingsNavigationPathAction.init(namespace:onClear:)();
  v409 = v70;
  v410 = v68;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v304;
  v74 = v307;
  View.clearSettingsNavigationPathAction(_:)();
  v377[1](v71, v394);
  v75 = v74;
  (*(v309 + 8))(v69, v74);
  Namespace.wrappedValue.getter();
  v377 = type metadata accessor for SettingsNavigationSplitView;
  v76 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v77 = *(v396 + 80);
  v78 = (v77 + 16) & ~v77;
  v79 = swift_allocObject();
  appended = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v76, v79 + v78, type metadata accessor for SettingsNavigationSplitView);
  v80 = v318;
  ResetSettingsNavigationStateAction.init(namespace:onReset:)();
  v409 = v75;
  v410 = v72;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v310;
  v83 = v311;
  View.resetSettingsNavigationStateAction(_:)();
  (*(v323 + 8))(v80, v324);
  (*(v312 + 8))(v73, v83);
  v84 = v322;
  static NavigationSplitViewStyle<>.balanced.getter();
  v409 = v83;
  v410 = v81;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_10000A568(&qword_10015F250, &type metadata accessor for BalancedNavigationSplitViewStyle, &protocol conformance descriptor for BalancedNavigationSplitViewStyle);
  v87 = v313;
  v88 = v326;
  View.navigationSplitViewStyle<A>(_:)();
  (*(v325 + 8))(v84, v88);
  (*(v315 + 8))(v82, v87);
  swift_getKeyPath();
  v89 = v406;
  v90 = v401;
  sub_100020E44(v406, v401, v377);
  v394 = v78;
  v91 = swift_allocObject() + v78;
  v92 = v90;
  sub_100018848(v90, v91, appended);
  v409 = v87;
  v410 = v88;
  v411 = v85;
  v412 = v86;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_100020EAC();
  v95 = v316;
  v96 = v378;
  View._onEnvironmentChange<A>(_:perform:)();

  (*(v317 + 8))(v96, v95);
  swift_getKeyPath();
  v97 = v89;
  sub_100020E44(v89, v92, v377);
  v98 = v394;
  v396 = v77;
  v99 = swift_allocObject() + v98;
  v100 = v97;
  sub_100018848(v92, v99, appended);
  v101 = sub_100052374(&qword_10015EF28, &qword_100116590);
  v409 = v95;
  v410 = v101;
  v411 = v93;
  v412 = v94;
  swift_getOpaqueTypeConformance2();
  sub_10000A568(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v102 = v319;
  v103 = v379;
  View._onEnvironmentChange<A>(_:perform:)();

  (*(v320 + 8))(v103, v102);
  v104 = *(v100 + 8);
  if (qword_10015AB30 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v105 = sub_100020FC4(v104, v409);

  v379 = type metadata accessor for SettingsNavigationSplitView;
  v106 = v406;
  v107 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v108 = swift_allocObject();
  v378 = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v107, v108 + v98, type metadata accessor for SettingsNavigationSplitView);
  v109 = sub_10004DED0(&qword_10015F260, &qword_1001165C8);
  v110 = v398;
  *(v398 + *(v109 + 52)) = v105;
  v111 = (v110 + *(v109 + 56));
  *v111 = sub_1000C30C0;
  v111[1] = v108;
  v112 = *v106;
  TaskLocal.get()();
  v113 = sub_100020FD8(v112, v409);

  v114 = v379;
  sub_100020E44(v106, v107, v379);
  v115 = swift_allocObject();
  sub_100018848(v107, v115 + v98, type metadata accessor for SettingsNavigationSplitView);
  v116 = v327;
  *(v110 + *(v327 + 52)) = v113;
  v117 = (v110 + *(v116 + 56));
  *v117 = sub_1000C3130;
  v117[1] = v115;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100020E44(v106, v107, v114);
  v118 = swift_allocObject();
  sub_100018848(v107, v118 + v98, v378);
  v119 = sub_1000525A0(&qword_10015F268, &qword_10015F138, &qword_100116458, &protocol conformance descriptor for SubscriptionView<A, B>);
  View.onContinueUserActivity(_:perform:)();

  sub_1000068B0(v110, &qword_10015F138, &qword_100116458);
  if (qword_10015AB78 != -1)
  {
    swift_once();
  }

  v120 = v352;
  v121 = sub_10000659C(v352, qword_100169838);
  v122 = v400;
  v123 = (v400 + 16);
  v124 = v351;
  v398 = *(v400 + 2);
  v398(v351, v121, v120);
  v125 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v126 = v394;
  v127 = swift_allocObject();
  sub_100018848(v125, v127 + v126, type metadata accessor for SettingsNavigationSplitView);
  v409 = v116;
  v410 = v119;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = v331;
  v130 = v332;
  v379 = v128;
  v131 = v380;
  View.onTest(_:handler:)();

  v132 = *(v122 + 1);
  v400 = v122 + 8;
  v132(v124, v120);
  (*(v329 + 8))(v131, v130);
  if (qword_10015AB80 != -1)
  {
    swift_once();
  }

  v133 = sub_10000659C(v120, qword_100169850);
  v398(v124, v133, v120);
  v134 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v135 = v394;
  v136 = swift_allocObject();
  sub_100018848(v134, v136 + v135, type metadata accessor for SettingsNavigationSplitView);
  v409 = v130;
  v410 = v379;
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v334;
  v139 = v335;
  v380 = v137;
  View.onTest(_:handler:)();

  v132(v124, v120);
  (*(v333 + 8))(v129, v139);
  v140 = v138;
  v378 = v132;
  if (qword_10015AB88 != -1)
  {
    swift_once();
  }

  v141 = sub_10000659C(v120, qword_100169868);
  v142 = v398;
  v398(v124, v141, v120);
  v143 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v379 = v123;
  v144 = v394;
  v145 = swift_allocObject();
  sub_100018848(v143, v145 + v144, type metadata accessor for SettingsNavigationSplitView);
  v409 = v139;
  v410 = v380;
  v146 = swift_getOpaqueTypeConformance2();
  v147 = v337;
  View.onTest(_:handler:)();

  (v378)(v124, v120);
  (*(v336 + 8))(v140, v147);
  if (qword_10015AB90 != -1)
  {
    swift_once();
  }

  v148 = sub_10000659C(v120, qword_100169880);
  v142(v124, v148, v120);
  v379 = type metadata accessor for SettingsNavigationSplitView;
  v149 = v401;
  sub_100020E44(v406, v401, type metadata accessor for SettingsNavigationSplitView);
  v150 = swift_allocObject();
  v380 = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v149, v150 + v144, type metadata accessor for SettingsNavigationSplitView);
  v409 = v147;
  v410 = v146;
  swift_getOpaqueTypeConformance2();
  v151 = v340;
  v152 = v339;
  v153 = v399;
  View.onTest(_:handler:)();

  (v378)(v124, v120);
  (*(v338 + 8))(v153, v152);
  v154 = v149;
  v155 = v149;
  v156 = v379;
  sub_100020E44(v406, v155, v379);
  v157 = swift_allocObject();
  sub_100018848(v154, v157 + v144, type metadata accessor for SettingsNavigationSplitView);
  LOBYTE(v415) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v154) = v409;
  v158 = v410;
  v159 = v151 + *(sub_10004DED0(&qword_10015F270, &qword_1001165D0) + 36);
  *v159 = sub_10003F0BC;
  *(v159 + 8) = v157;
  *(v159 + 16) = v154;
  *(v159 + 24) = v158;
  v160 = v343;
  v161 = (v151 + *(v343 + 36));
  v162 = v395;
  *v161 = sub_1000C327C;
  v161[1] = v162;

  Bindable.wrappedValue.getter();
  v412 = v321;
  v413 = sub_10000A568(&qword_10015F278, type metadata accessor for SettingsAppNavigationModel, &unk_100115F3C);
  v163 = sub_1000C329C();
  v164 = v341;
  View.navigationPresentationAdaptor(_:)();
  sub_1000068B0(v151, &qword_10015F160, &qword_100116480);
  sub_10000665C(&v409);
  v409 = v160;
  v410 = v163;
  v165 = swift_getOpaqueTypeConformance2();
  v166 = v344;
  v167 = v345;
  View.navigationTransitionEagerRenderEnabled(_:)();
  (*(v342 + 8))(v164, v167);
  v168 = v358;
  v169 = v356;
  v170 = v359;
  (*(v358 + 104))(v356, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v359);
  v409 = v167;
  v410 = v165;
  v378 = swift_getOpaqueTypeConformance2();
  v171 = v347;
  View.settingsAppPrimaryNavigationMode(_:)();
  (*(v168 + 8))(v169, v170);
  (*(v346 + 8))(v166, v171);
  v172 = v405;
  v173 = *(v405 + 16);
  v399 = (v405 + 16);
  v400 = v173;
  v174 = v402;
  v175 = v144;
  v176 = v374;
  (v173)(v402, v403, v374);
  v177 = v404;
  Bindable.projectedValue.getter();
  v178 = *(v172 + 8);
  v178(v174, v176);
  v398 = v178;
  v405 = v172 + 8;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v178(v177, v176);
  v180 = v409;
  v179 = v410;
  LOBYTE(v172) = v411;
  v181 = v401;
  sub_100020E44(v406, v401, v156);
  v182 = v175;
  v183 = swift_allocObject();
  sub_100018848(v181, v183 + v182, v380);
  v359 = sub_100021204(0, v180, v179, v172);
  v184 = swift_allocObject();
  *(v184 + 16) = v180;
  *(v184 + 24) = v179;
  *(v184 + 32) = v172;
  *(v184 + 33) = 0;
  *(v184 + 40) = sub_1000C34F8;
  *(v184 + 48) = v183;

  appended = sub_10004DED0(&qword_10015F2A0, &qword_100116600);
  v415 = v171;
  v416 = v378;
  v377 = swift_getOpaqueTypeConformance2();
  v378 = sub_10000A470();
  v185 = v349;
  v186 = v381;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v348 + 8))(v186, v185);
  (v400)(v174, v403, v176);
  v187 = v404;
  Bindable.projectedValue.getter();
  v188 = v176;
  v189 = v398;
  (v398)(v174, v176);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v189(v187, v176);
  v190 = v415;
  v191 = v416;
  LOBYTE(v189) = v417;
  v192 = v401;
  sub_100020E44(v406, v401, v379);
  v193 = v394;
  v194 = swift_allocObject();
  sub_100018848(v192, v194 + v193, v380);
  sub_100021204(1, v190, v191, v189);
  v195 = swift_allocObject();
  *(v195 + 16) = v190;
  *(v195 + 24) = v191;
  *(v195 + 32) = v189;
  *(v195 + 33) = 1;
  *(v195 + 40) = sub_1000C3B54;
  *(v195 + 48) = v194;

  v394 = sub_10004DED0(&qword_10015F2C0, &qword_100116610);
  v409 = v185;
  v410 = appended;
  v411 = v377;
  v412 = v378;
  v401 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v396 = swift_getOpaqueTypeConformance2();
  v397 = sub_10000BC18();
  v196 = v353;
  v197 = v382;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v350 + 8))(v197, v196);
  v198 = v402;
  (v400)(v402, v403, v176);
  v199 = v404;
  Bindable.projectedValue.getter();
  v200 = v398;
  (v398)(v198, v176);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v200(v199, v176);
  v201 = v415;
  v202 = v416;
  LOBYTE(v194) = v417;
  v203 = v395;

  sub_100021204(2, v201, v202, v194);
  v204 = swift_allocObject();
  *(v204 + 16) = v201;
  *(v204 + 24) = v202;
  *(v204 + 32) = v194;
  *(v204 + 33) = 2;
  *(v204 + 40) = sub_1000C3C34;
  *(v204 + 48) = v203;

  v382 = sub_10004DED0(&qword_10015F2E0, &qword_100116620);
  v409 = v196;
  v410 = v394;
  v411 = v396;
  v412 = v397;
  v396 = swift_getOpaqueTypeConformance2();
  v397 = sub_10000BCC8();
  v205 = v355;
  v206 = v383;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v354 + 8))(v206, v205);
  v207 = v402;
  (v400)(v402, v403, v176);
  v208 = v404;
  Bindable.projectedValue.getter();
  v209 = v398;
  (v398)(v207, v176);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v209(v208, v176);
  v210 = v415;
  v211 = v416;
  LOBYTE(v202) = v417;

  sub_100021204(8, v210, v211, v202);
  v212 = swift_allocObject();
  *(v212 + 16) = v210;
  *(v212 + 24) = v211;
  *(v212 + 32) = v202;
  *(v212 + 33) = 8;
  *(v212 + 40) = sub_1000BEE38;
  *(v212 + 48) = 0;

  v394 = sub_10004DED0(&qword_10015F2F8, &qword_100116628);
  v409 = v205;
  v410 = v382;
  v411 = v396;
  v412 = v397;
  v396 = swift_getOpaqueTypeConformance2();
  v397 = sub_10000BD7C();
  v213 = v395;
  v214 = v360;
  v215 = v384;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v357 + 8))(v215, v214);
  v216 = v402;
  (v400)(v402, v403, v188);
  v217 = v404;
  Bindable.projectedValue.getter();
  v218 = v398;
  (v398)(v216, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v218(v217, v188);
  v219 = v415;
  v220 = v416;
  LOBYTE(v218) = v417;
  swift_retain_n();
  sub_100021204(6, v219, v220, v218);
  LODWORD(v383) = v221;
  v222 = swift_allocObject();
  *(v222 + 16) = v219;
  *(v222 + 24) = v220;
  *(v222 + 32) = v218;
  *(v222 + 33) = 6;
  *(v222 + 40) = sub_1000C3C8C;
  *(v222 + 48) = v213;

  v384 = sub_10004DED0(&qword_10015F308, &qword_100116630);
  v409 = v214;
  v410 = v394;
  v411 = v396;
  v412 = v397;
  v396 = swift_getOpaqueTypeConformance2();
  v397 = sub_10000BE74();
  v223 = v362;
  v224 = v385;
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  (*(v361 + 8))(v224, v223);
  v225 = v402;
  (v400)(v402, v403, v188);
  v226 = v404;
  Bindable.projectedValue.getter();
  v227 = v398;
  (v398)(v225, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v227(v226, v188);
  v228 = v415;
  v229 = v416;
  LOBYTE(v190) = v417;
  sub_100021204(3, v415, v416, v417);
  v230 = swift_allocObject();
  *(v230 + 16) = v228;
  *(v230 + 24) = v229;
  *(v230 + 32) = v190;
  *(v230 + 33) = 3;
  *(v230 + 40) = sub_1000BF6B8;
  *(v230 + 48) = 0;

  v385 = sub_10004DED0(&qword_10015F330, &qword_100116640);
  v409 = v223;
  v410 = v384;
  v411 = v396;
  v412 = v397;
  v394 = swift_getOpaqueTypeConformance2();
  v397 = sub_1000C3D0C();
  v231 = v364;
  v232 = v386;
  View.formSheet<A>(isPresented:content:)();

  (*(v363 + 8))(v232, v231);
  v233 = v402;
  (v400)(v402, v403, v188);
  v234 = v404;
  Bindable.projectedValue.getter();
  v235 = v398;
  (v398)(v233, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v235(v234, v188);
  v236 = v415;
  v237 = v416;
  v386 = v415;
  v384 = v416;
  LOBYTE(v227) = v417;
  v238 = sub_100021380();
  v240 = v239;
  LOBYTE(v213) = v241;
  v383 = v242;
  sub_100021204(4, v236, v237, v227);
  LODWORD(v382) = v243;
  v396 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v409 = v231;
  v410 = v385;
  v411 = v394;
  v412 = v397;
  v394 = swift_getOpaqueTypeConformance2();
  v397 = sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  v244 = v388;
  v245 = v387;
  View.alert<A>(_:isPresented:actions:)();

  sub_100009680(v238, v240, v213 & 1);

  (*(v365 + 8))(v245, v244);
  v246 = v402;
  v247 = v403;
  v248 = v400;
  (v400)(v402, v403, v188);
  v249 = v404;
  Bindable.projectedValue.getter();
  v250 = v398;
  (v398)(v246, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v251 = v250;
  v250(v249, v188);
  v252 = v418;
  v382 = v419;
  LOBYTE(v250) = v420;
  v248(v246, v247, v188);
  Bindable.wrappedValue.getter();
  v251(v246, v188);
  v253 = v409;
  v254 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  swift_beginAccess();
  v255 = v253 + v254;
  v256 = v393;
  sub_100059CA0(v255, v393, &qword_10015EB40, &qword_1001161A0);

  v257 = v382;
  v385 = sub_100021204(7, v252, v382, v250);
  v384 = v258;
  LODWORD(v383) = v259;
  v260 = v256;
  v261 = v373;
  sub_100059CA0(v260, v373, &qword_10015EB40, &qword_1001161A0);
  v262 = (*(v371 + 80) + 16) & ~*(v371 + 80);
  v263 = (v372 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
  v264 = swift_allocObject();
  sub_1000A4CB8(v261, v264 + v262, &qword_10015EB40, &qword_1001161A0);
  v265 = v264 + v263;
  *v265 = v252;
  *(v265 + 8) = v257;
  *(v265 + 16) = v250;
  *(v265 + 17) = 7;
  v266 = (v264 + ((v263 + 25) & 0xFFFFFFFFFFFFFFF8));
  *v266 = sub_1000BFAB4;
  v266[1] = 0;

  v386 = sub_10004DED0(&qword_10015F358, &qword_100116658);
  v409 = v388;
  v410 = v396;
  v411 = v394;
  v412 = v397;
  v387 = swift_getOpaqueTypeConformance2();
  v388 = sub_10000C0B4();
  v267 = v367;
  v268 = v389;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000068B0(v393, &qword_10015EB40, &qword_1001161A0);
  (*(v366 + 8))(v268, v267);
  v269 = v402;
  (v400)(v402, v403, v188);
  v270 = v404;
  Bindable.projectedValue.getter();
  v271 = v398;
  (v398)(v269, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v271(v270, v188);
  v272 = v418;
  v273 = v419;
  v393 = v418;
  v389 = v419;
  LOBYTE(v271) = v420;
  v274 = sub_100018B00();
  v276 = v275;
  LOBYTE(v250) = v277;
  sub_100021204(5, v272, v273, v271);
  v394 = sub_10004DED0(&qword_10015C098, &qword_100116660);
  v409 = v267;
  v410 = v386;
  v411 = v387;
  v412 = v388;
  v401 = swift_getOpaqueTypeConformance2();
  v406 = sub_10000A5B0();
  v278 = v391;
  v279 = v390;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_100009680(v274, v276, v250 & 1);

  (*(v368 + 8))(v279, v278);
  v280 = v402;
  (v400)(v402, v403, v188);
  v281 = v404;
  Bindable.projectedValue.getter();
  v282 = v398;
  (v398)(v280, v188);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v282(v281, v188);
  v283 = v418;
  v284 = v419;
  v405 = v418;
  v404 = v419;
  LOBYTE(v280) = v420;
  LocalizedStringKey.init(stringLiteral:)();
  v285 = Text.init(_:tableName:bundle:comment:)();
  v287 = v286;
  LOBYTE(v188) = v288;
  sub_100021204(9, v283, v284, v280);
  LODWORD(v403) = v289;
  sub_10004DED0(&qword_10015F370, &qword_100116668);
  v409 = v391;
  v410 = v396;
  v411 = v394;
  v412 = v401;
  v413 = v397;
  v414 = v406;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F378, &qword_10015F370, &qword_100116668, &protocol conformance descriptor for TupleView<A>);
  v290 = v370;
  v291 = v392;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_100009680(v285, v287, v188 & 1);

  (*(v369 + 8))(v291, v290);
}

uint64_t sub_100010A7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010B10()
{
  v1 = *(sub_10004DED0(&qword_10015EB40, &qword_1001161A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for EngagementLinkData(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void *sub_100010CD0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for PrimarySettingsListModel(0);
    swift_allocObject();

    v1 = sub_100010D6C(v3, &off_100150510, v0, &off_100150500);

    *(v2 + 24) = v1;
  }

  return v1;
}

void *sub_100010D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v121 = a4;
  v7 = sub_10004DED0(&qword_10015D9A0, &qword_100114318);
  __chkstk_darwin(v7 - 8);
  v99 = v90 - v8;
  v100 = sub_10004DED0(&qword_10015EA28, &qword_100115D10);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = v90 - v9;
  v104 = sub_10004DED0(&qword_10015EA30, &qword_100115D18);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = v90 - v10;
  v106 = sub_10004DED0(&qword_10015EA38, &qword_100115D20);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = v90 - v11;
  v96 = sub_10004DED0(&unk_10015EA40, &qword_100115D28);
  v123 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = v90 - v12;
  v13 = sub_10004DED0(&qword_10015ED30, &unk_100115D30);
  __chkstk_darwin(v13 - 8);
  v92 = v90 - v14;
  v15 = sub_10004DED0(&qword_10015EA50, &unk_100115F90);
  __chkstk_darwin(v15 - 8);
  v91 = v90 - v16;
  v111 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for NSNotificationCenter.Publisher();
  v122 = *(v94 - 8);
  __chkstk_darwin(v94);
  v19 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004DED0(&qword_10015EA58, &qword_100115D40);
  v108 = *(v20 - 8);
  v109 = v20;
  __chkstk_darwin(v20);
  v107 = v90 - v21;
  v4[16] = 0;
  v22 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  v23 = type metadata accessor for EngagementLinkData(0);
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = -1;
  v25 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = -1;
  v26 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = -1;
  v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier] = 10;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController] = 0;
  v27 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[32] = -1;
  type metadata accessor for TopLevelListManager();
  v28 = swift_allocObject();
  v28[2] = [objc_opt_self() defaultManager];
  v28[3] = &_swiftEmptySetSingleton;
  sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
  v28[4] = NSArray.init(arrayLiteral:)();
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager] = v28;
  v29 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel];
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables] = &_swiftEmptySetSingleton;
  v30 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject;
  v93 = sub_10004DED0(&qword_10015EA68, &qword_100115D48);
  swift_allocObject();
  *&v5[v30] = PassthroughSubject.init()();
  v31 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_systemStateSnapshotProvider;
  type metadata accessor for PrimarySettingsListDataModelSystemStateSnapshotProvider(0);
  swift_allocObject();
  *&v5[v31] = sub_10006D87C();
  v32 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate];
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate];
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  swift_unknownObjectRetain();
  sub_1000122B4(v32);
  *(v32 + 8) = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1000122B4(v33);
  *(v33 + 8) = v121;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  LODWORD(v32) = sub_100005430();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = sub_100017FDC();
  v41 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot];
  *v41 = v32 & 1;
  v41[1] = BYTE1(v32) & 1;
  v41[2] = BYTE2(v32) & 1;
  *(v41 + 1) = v35;
  *(v41 + 2) = v37;
  *(v41 + 3) = v39;
  *(v41 + 8) = 0;
  *(v41 + 18) = 1;
  v41[38] = 0;
  *(v41 + 5) = &_swiftEmptySetSingleton;
  *(v41 + 6) = v40;
  *(v41 + 7) = v42;
  v41[64] = v43;
  *(v41 + 9) = _swiftEmptyArrayStorage;
  v44 = [objc_opt_self() currentDevice];
  LODWORD(v35) = [v44 sf_isInternalInstall];

  if (v35)
  {
    if (qword_10015AB10 != -1)
    {
      swift_once();
    }

    v45 = qword_100169798;
    v46 = String._bridgeToObjectiveC()();
    LODWORD(v45) = [v45 BOOLForKey:v46];

    if (v45)
    {
      swift_getKeyPath();
      v125 = v5;
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_100108F60();
    }
  }

  v114 = objc_opt_self();
  v47 = [v114 defaultCenter];
  v90[0] = v19;
  NSNotificationCenter.publisher(for:object:)();

  v48 = v110;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v49 = v118;
  v50 = v91;
  v51 = v111;
  (*(v118 + 56))(v91, 1, 1, v111);
  v117 = objc_opt_self();
  v52 = [v117 mainRunLoop];
  v125 = v52;
  v116 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v53 = *(v116 - 8);
  v120 = *(v53 + 56);
  v112 = v53 + 56;
  v54 = v92;
  v120(v92, 1, 1, v116);
  v115 = v5;
  v121 = sub_100008294(0, &unk_10015EA70, NSRunLoop_ptr);
  v113 = sub_10000A520(&qword_10015D9B8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v119 = sub_10001F6B8(&qword_10015EA80, &unk_10015EA70, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v55 = v107;
  v56 = v94;
  v57 = v90[0];
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000068B0(v54, &qword_10015ED30, &unk_100115D30);

  sub_1000068B0(v50, &qword_10015EA50, &unk_100115F90);
  v58 = *(v49 + 8);
  v118 = v49 + 8;
  v91 = v58;
  (v58)(v48, v51);
  v59 = v122 + 8;
  v60 = *(v122 + 8);
  v60(v57, v56);
  sub_1000525A0(&qword_10015EA88, &qword_10015EA58, &qword_100115D40, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v61 = v109;
  Publisher<>.sink(receiveValue:)();
  (*(v108 + 1))(v55, v61);
  v62 = &v115[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables];
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v63 = [v114 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v64 = [v117 mainRunLoop];
  v125 = v64;
  v120(v54, 1, 1, v116);
  v65 = v95;
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v54, &qword_10015ED30, &unk_100115D30);

  v66 = v57;
  v122 = v59;
  v108 = v60;
  v60(v57, v56);
  swift_allocObject();
  swift_weakInit();
  v67 = sub_1000525A0(&qword_10015EA90, &unk_10015EA40, &qword_100115D28, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v68 = v96;
  v69 = v67;
  Publisher<>.sink(receiveValue:)();

  v107 = *(v123 + 8);
  v123 += 8;
  (v107)(v65, v68);
  swift_beginAccess();
  v109 = v62;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v70 = [v114 defaultCenter];
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  v71 = v117;
  v72 = [v117 mainRunLoop];
  v125 = v72;
  v120(v54, 1, 1, v116);
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v54, &qword_10015ED30, &unk_100115D30);

  v108(v66, v56);
  swift_allocObject();
  swift_weakInit();
  v90[1] = v69;
  Publisher<>.sink(receiveValue:)();

  (v107)(v65, v68);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73 = [v114 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v74 = [v71 mainRunLoop];
  v125 = v74;
  v75 = v116;
  v120(v54, 1, 1, v116);
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v54, &qword_10015ED30, &unk_100115D30);

  v108(v66, v56);
  swift_allocObject();
  v76 = v115;
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v107)(v65, v68);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v77 = v76;
  v125 = *&v76[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject];

  v78 = v110;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v79 = [v117 mainRunLoop];
  v124 = v79;
  v120(v54, 1, 1, v75);
  sub_1000525A0(&unk_10015EA98, &qword_10015EA68, &qword_100115D48, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v80 = v97;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v54, &qword_10015ED30, &unk_100115D30);

  (v91)(v78, v111);

  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v81 = static OS_dispatch_queue.main.getter();
  v125 = v81;
  v82 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v83 = v99;
  (*(*(v82 - 8) + 56))(v99, 1, 1, v82);
  sub_1000525A0(&unk_10015EAA8, &qword_10015EA28, &qword_100115D10, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  sub_10001F6B8(&qword_10015D9C0, &qword_10015C9D0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v84 = v101;
  v85 = v100;
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v83, &qword_10015D9A0, &qword_100114318);

  (*(v98 + 8))(v80, v85);
  swift_allocObject();
  swift_weakInit();

  sub_10004DED0(&qword_10015EAB8, &qword_100115D50);
  sub_1000525A0(&qword_10015EAC0, &qword_10015EA30, &qword_100115D18, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v86 = v103;
  v87 = v104;
  Publisher.compactMap<A>(_:)();

  (*(v102 + 8))(v84, v87);
  swift_getKeyPath();
  v125 = v77;
  sub_1000525A0(&qword_10015EAC8, &qword_10015EA38, &qword_100115D20, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v88 = v106;
  Publisher<>.assign<A>(to:on:)();

  (*(v105 + 8))(v86, v88);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v77;
}

uint64_t sub_1000122DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ManagedConfigurationStateProvider(uint64_t a1)
{
  result = qword_10015C850;
  if (!qword_10015C850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001244C(uint64_t a1)
{
  sub_10001261C(319, &qword_10015C860, &type metadata for ManagedConfigurationStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001261C(319, &qword_10015C868, &type metadata for ManagedConfigurationStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10001261C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10001266C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CellularTelephonyStateSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1000126C0()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v0 - 8);
  v72 = &v64 - v1;
  v2 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v73 = &v64 - v3;
  v4 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v64 - v5;
  v6 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = __chkstk_darwin(v6);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v9;
  __chkstk_darwin(v8);
  v81 = &v64 - v10;
  v11 = sub_10004DED0(&qword_10015C908, &qword_100112B70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v64 - v13);
  v15 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v66 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v18;
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v21 = sub_10004DED0(&qword_10015C918, &qword_100112B80);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  *v14 = 1;
  v25 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v12 + 104))(v14, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v11);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v12 + 8))(v14, v11);
  v68 = v24;
  v69 = v22;
  v26 = *(v22 + 16);
  v27 = v76;
  v70 = v21;
  v26(&v76[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshots], v24, v21);
  v71 = v16;
  v28 = v16 + 16;
  v29 = *(v16 + 16);
  v30 = v27;
  v80 = v20;
  v31 = v15;
  v77 = v29;
  v78 = v28;
  v29(&v27[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshotsContinuation], v20, v15);
  v33 = v73;
  v32 = v74;
  *v73 = 1;
  v34 = v75;
  (*(v32 + 104))(v33, v25, v75);
  v35 = v81;
  v36 = v84;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v32 + 8))(v33, v34);
  v37 = *(v83 + 16);
  v38 = v35;
  v39 = v35;
  v40 = v82;
  v37(&v30[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEvent], v39);
  (*(v85 + 16))(&v30[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEventContinuation], v36, v86);
  v41 = type metadata accessor for ManagedConfigurationStateProvider(0);
  v87.receiver = v30;
  v87.super_class = v41;
  v42 = objc_msgSendSuper2(&v87, "init");
  v43 = objc_opt_self();
  v44 = v42;
  result = [v43 sharedConnection];
  if (result)
  {
    v46 = result;
    [result registerObserver:v44];

    v74 = type metadata accessor for TaskPriority();
    v47 = *(v74 - 8);
    v73 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v72;
    (v73)(v72, 1, 1, v74);
    v49 = v67;
    v50 = v40;
    (v37)(v67, v38, v40);
    v51 = v66;
    v64 = v31;
    v77(v66, v80, v31);
    v52 = v83;
    v53 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v54 = v71;
    v76 = v44;
    v55 = *(v71 + 80);
    v56 = (v65 + v55 + v53) & ~v55;
    v65 = v55 | 7;
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    (*(v52 + 32))(v57 + v53, v49, v50);
    v58 = *(v54 + 32);
    v59 = v64;
    v58(v57 + v56, v51, v64);
    sub_100094AF4(0, 0, v48, &unk_100112B90, v57);

    (v73)(v48, 1, 1, v74);
    v60 = v80;
    v61 = v59;
    v77(v51, v80, v59);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v58(v62 + ((v55 + 32) & ~v55), v51, v61);
    sub_100094AF4(0, 0, v48, &unk_100112BA0, v62);
    v63 = v76;

    (*(v85 + 8))(v84, v86);
    (*(v52 + 8))(v81, v82);
    (*(v54 + 8))(v60, v61);
    (*(v69 + 8))(v68, v70);
    return v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100012F5C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000130C4()
{
  v1 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for CellularTelephonyStateProvider(uint64_t a1)
{
  result = qword_10015CA50;
  if (!qword_10015CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013214(uint64_t a1)
{
  sub_10001261C(319, &qword_10015CA60, &type metadata for CellularTelephonyStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001261C(319, &unk_10015CA68, &type metadata for CellularTelephonyStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100013424(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C910, &qword_100112B78) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_100015230(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001358C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = __chkstk_darwin(v2 - 8);
  v155 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v159 = &v130 - v6;
  __chkstk_darwin(v5);
  v171 = &v130 - v7;
  v162 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - v8;
  v170 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v165 = *(v170 - 8);
  v9 = __chkstk_darwin(v170);
  v164 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v10;
  __chkstk_darwin(v9);
  v169 = &v130 - v11;
  v154 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v153 = *(v154 - 8);
  v12 = __chkstk_darwin(v154);
  v140 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v138 = &v130 - v15;
  v139 = v16;
  __chkstk_darwin(v14);
  v152 = &v130 - v17;
  v158 = sub_10004DED0(&qword_10015CB40, &unk_100112D90);
  v157 = *(v158 - 1);
  __chkstk_darwin(v158);
  v143 = (&v130 - v18);
  v151 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v149 = *(v151 - 8);
  v19 = __chkstk_darwin(v151);
  v145 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v20;
  __chkstk_darwin(v19);
  v150 = &v130 - v21;
  v148 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v130 - v22;
  v167 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v168 = *(v167 - 1);
  __chkstk_darwin(v167);
  v24 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v25);
  v26 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v26 - 8);
  v137 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v28 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyQueue;
  v141 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyQueue;
  v142 = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v172 = "coreTelephonyServerConnection";
  static DispatchQoS.unspecified.getter();
  v186 = _swiftEmptyArrayStorage;
  v166 = sub_100015348(&qword_10015FA10, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v29 = sub_10004DED0(&unk_10015FD30, &unk_100117260);
  v136 = sub_100015390();
  v133 = v29;
  v134 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v131 = *(v168 + 104);
  v168 += 104;
  v130 = v24;
  v132 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v31 = v167;
  v131(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v167);
  v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v156 = v0;
  *(v0 + v28) = v32;
  v33 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnectionQueue;
  v135 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnectionQueue;
  v172 = "r.coreTelephonyQueue";
  static DispatchQoS.unspecified.getter();
  v186 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v130;
  v35 = v30;
  v36 = v131;
  v131(v130, v35, v31);
  *(v1 + v33) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_netRBClientConnectionQueue;
  static DispatchQoS.unspecified.getter();
  v172 = _swiftEmptyArrayStorage;
  v186 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36(v34, v132, v167);
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v156;
  *(v156 + v37) = v38;
  v40 = v143;
  *v143 = 1;
  v41 = v157;
  v42 = v158;
  (*(v157 + 104))(v40, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v158);
  v43 = v146;
  v44 = v150;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v41 + 8))(v40, v42);
  (*(v147 + 16))(v39 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots, v43, v148);
  v45 = *(v149 + 16);
  v46 = v39;
  v143 = (v149 + 16);
  v142 = v45;
  v45((v39 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation), v44, v151);
  v47 = v161;
  v48 = v160;
  v49 = v162;
  v161[13](v160, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v162);
  v50 = v152;
  v51 = v169;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (v47[1])(v48, v49);
  v52 = *(v153 + 16);
  v137 = (v153 + 16);
  v136 = v52;
  v52((v46 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEvent), v50, v154);
  v53 = v165;
  v54 = *(v165 + 16);
  v162 = v165 + 16;
  v161 = v54;
  (v54)(v46 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation, v51, v170);
  v55 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*(v46 + v141)];
  *(v46 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyClient) = v55;
  v56 = String._bridgeToObjectiveC()();
  v57 = _CTServerConnectionCreateOnTargetQueue();

  *(v46 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnection) = v57;
  v58 = CTCellularPlanInfoDidChangeNotification;
  v59 = CTCarrierInfoDidChangeNotification;
  v178 = CTCellularPlanInfoDidChangeNotification;
  v179 = CTCarrierInfoDidChangeNotification;
  v60 = CTCellularPlanPendingTransferDidChangeNotification;
  v61 = CTCellularPlanLocalInfoDidChangeNotification;
  v180 = CTCellularPlanPendingTransferDidChangeNotification;
  v181 = CTCellularPlanLocalInfoDidChangeNotification;
  v62 = MCEffectiveSettingsChangedNotification;
  v63 = MCProfileListChangedNotification;
  v182 = MCEffectiveSettingsChangedNotification;
  v183 = MCProfileListChangedNotification;
  v64 = PSNETRBChangedNotification;
  v184 = PSNETRBChangedNotification;
  v185 = UIApplicationWillEnterForegroundNotification;
  v168 = type metadata accessor for TaskPriority();
  v65 = *(v168 - 8);
  v66 = *(v65 + 56);
  v65 += 56;
  v167 = v66;
  v160 = (v53 + 32);
  v158 = (v65 - 8);
  v166 = v65;
  v157 = v65 - 48;
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v70 = v61;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = UIApplicationWillEnterForegroundNotification;
  v75 = 32;
  v76 = v168;
  do
  {
    v77 = *&v177[v75];
    v78 = v171;
    (v167)(v171, 1, 1, v76);
    v79 = v164;
    v80 = v170;
    (v161)(v164, v169, v170);
    v81 = v165;
    v82 = *(v165 + 80);
    v83 = swift_allocObject();
    *(v83 + 2) = 0;
    *(v83 + 3) = 0;
    *(v83 + 4) = v77;
    v84 = *(v81 + 32);
    v84(&v83[(v82 + 40) & ~v82], v79, v80);
    v85 = v159;
    sub_10006B97C(v78, v159);
    v86 = (*v158)(v85, 1, v76);
    v87 = v77;

    if (v86 == 1)
    {
      sub_1000068B0(v85, &unk_10015D490, &qword_100112150);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v157)(v85, v76);
    }

    v88 = *(v83 + 2);
    swift_unknownObjectRetain();

    if (v88)
    {
      swift_getObjectType();
      v89 = dispatch thunk of Actor.unownedExecutor.getter();
      v91 = v90;
      swift_unknownObjectRelease();
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    sub_1000068B0(v171, &unk_10015D490, &qword_100112150);
    v92 = swift_allocObject();
    *(v92 + 16) = &unk_100112DB8;
    *(v92 + 24) = v83;
    if (v91 | v89)
    {
      v173 = 0;
      v174 = 0;
      v175 = v89;
      v176 = v91;
    }

    v93 = v172;
    v94 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_100015698(0, *(v93 + 2) + 1, 1, v93);
    }

    v96 = *(v93 + 2);
    v95 = *(v93 + 3);
    if (v96 >= v95 >> 1)
    {
      v93 = sub_100015698((v95 > 1), v96 + 1, 1, v93);
    }

    *(v93 + 2) = v96 + 1;
    v172 = v93;
    *&v93[8 * v96 + 32] = v94;
    v75 += 8;
  }

  while (v75 != 96);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v97 = *(v156 + v141);
  v98 = v138;
  sub_100015934(0xD000000000000034, 0x8000000100122130, v97, v138);

  v99 = v155;
  (v167)(v155, 1, 1, v168);
  v100 = v140;
  v101 = v154;
  v136(v140, v98, v154);
  v102 = v164;
  v103 = v170;
  (v161)(v164, v169, v170);
  v104 = v153;
  v105 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v106 = (v139 + v82 + v105) & ~v82;
  v107 = v99;
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  *(v108 + 24) = 0;
  (*(v104 + 32))(v108 + v105, v100, v101);
  v84((v108 + v106), v102, v103);
  v109 = sub_100094AF4(0, 0, v107, &unk_100112DF8, v108);
  v110 = v172;
  v112 = *(v172 + 2);
  v111 = *(v172 + 3);
  if (v112 >= v111 >> 1)
  {
    v110 = sub_100015698((v111 > 1), v112 + 1, 1, v172);
  }

  (*(v104 + 8))(v138, v101);
  *(v110 + 2) = v112 + 1;
  *&v110[8 * v112 + 32] = v109;
  v113 = v168;
  *(v156 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks) = v110;
  (v167)(v107, 1, 1, v113);
  v114 = swift_allocObject();
  swift_weakInit();
  v115 = v140;
  v136(v140, v152, v101);
  v142(v145, v150, v151);
  v116 = v101;
  v117 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v118 = (v139 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = v149;
  v120 = *(v149 + 80);
  v172 = (v120 | 7);
  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = 0;
  (*(v104 + 32))(v121 + v117, v115, v116);
  *(v121 + v118) = v114;
  v122 = *(v119 + 32);
  v123 = v145;
  v124 = v151;
  v122(v121 + ((v120 + v118 + 8) & ~v120), v145, v151);

  v125 = v155;
  sub_100094AF4(0, 0, v155, &unk_100112DD0, v121);

  (v167)(v125, 1, 1, v168);
  v126 = swift_allocObject();
  swift_weakInit();

  v127 = v150;
  v142(v123, v150, v124);
  v128 = swift_allocObject();
  v128[2] = 0;
  v128[3] = 0;
  v128[4] = v126;
  v122(v128 + ((v120 + 40) & ~v120), v123, v124);
  sub_100094AF4(0, 0, v155, &unk_100112DE0, v128);

  (*(v165 + 8))(v169, v170);
  (*(v153 + 8))(v152, v154);
  (*(v119 + 8))(v127, v124);
  (*(v147 + 8))(v146, v148);
  return v156;
}

uint64_t sub_100014C34()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014D0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014D44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014D7C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100014EF8()
{
  v1 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014FD0()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100015138(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000AA20;

  return v6(a1);
}

uint64_t sub_100015230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015C920, &qword_100112BA8);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000A6C0, 0, 0);
}

uint64_t sub_100015348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100015390()
{
  result = qword_10015FA20;
  if (!qword_10015FA20)
  {
    sub_100052374(&unk_10015FD30, &unk_100117260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FA20);
  }

  return result;
}

uint64_t sub_1000153F4(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C910, &qword_100112B78) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000154F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000154F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10004DED0(&unk_10015C920, &qword_100112BA8);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000155BC, 0, 0);
}

uint64_t sub_1000155BC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_100005430();
  *(v0 + 16) = v4 & 1;
  *(v0 + 17) = BYTE1(v4) & 1;
  *(v0 + 18) = BYTE2(v4) & 1;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  sub_10004DED0(&qword_10015C910, &qword_100112B78);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

void *sub_100015698(void *result, int64_t a2, char a3, void *a4)
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
    sub_10004DED0(&qword_10015F508, &qword_100116A60);
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
    sub_10004DED0(&qword_10015F510, &qword_100116A68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000157D0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10001581C(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_100015FE4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100015934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a3;
  v42 = a4;
  v5 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v40 - v7);
  v9 = sub_10004DED0(&qword_100161618, &unk_100119018);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v41 = v14;
  *v8 = 1;
  (*(v6 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v8, v5);
  out_token = 0;
  sub_100016144(v16, v13);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v19 = v18 + v17;
  v20 = v43;
  sub_1000161B4(v13, v19);
  v51 = sub_10010893C;
  v52 = v18;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1001089B8;
  v50 = &unk_1001525E8;
  v21 = _Block_copy(&aBlock);

  v22 = String.utf8CString.getter();
  v23 = notify_register_dispatch((v22 + 32), &out_token, v44, v21);

  _Block_release(v21);
  if (v23)
  {
    aBlock = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD00000000000001ELL;
    v48 = 0x8000000100126990;
    v45 = v20;
    v46 = a2;

    v24._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x746C75736572202CLL;
    v25._object = 0xE900000000000020;
    String.append(_:)(v25);
    LODWORD(v45) = v23;
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27 = aBlock;
    v28 = v48;
    sub_100108A0C();
    swift_allocError();
    *v29 = v27;
    v29[1] = v28;
    swift_willThrow();
    return sub_100108A60(v16);
  }

  else
  {
    sub_100016144(v16, v13);
    v31 = v41;
    v32 = *(v41 + 48);
    v33 = out_token;
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v20;
    *(v34 + 32) = a2;

    v35 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
    AsyncStream.Continuation.onTermination.setter();
    v36 = *(*(v35 - 8) + 8);
    v36(&v13[v32], v35);
    v37 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
    v38 = *(v37 - 8);
    (*(v38 + 8))(v13, v37);
    sub_1000161B4(v16, v13);
    v39 = *(v31 + 48);
    (*(v38 + 32))(v42, v13, v37);
    return (v36)(&v13[v39], v35);
  }
}

uint64_t sub_100015E70()
{
  v1 = (sub_10004DED0(&qword_100161618, &unk_100119018) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100015FAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000164FC, 0, 0);
}

uint64_t sub_100016144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SpringBoardApplicationStateProvider(uint64_t a1)
{
  result = qword_10015C5F0;
  if (!qword_10015C5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016274(uint64_t a1)
{
  sub_10001643C(319, &qword_10015C600, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001643C(319, &qword_10015C608, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_100016490(319, &unk_10015C610, &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_100016490(319, &unk_10015C620, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10001643C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LaunchableApplicationsSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100052374(&unk_10015FC00, &qword_100111C00);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000164FC()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100015348(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100021998;
  v4 = v0[8];
  v5 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100016628()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v75 = *(v2 - 8);
  v76 = v2;
  __chkstk_darwin(v2);
  v74 = &v56 - v3;
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v4 - 8);
  v73 = &v56 - v5;
  v6 = sub_10004DED0(&unk_10015C7B0, &unk_100112AA0);
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v63 = (&v56 - v7);
  v8 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v9 = *(v8 - 8);
  v80 = v8;
  v81 = v9;
  __chkstk_darwin(v8);
  v78 = &v56 - v10;
  v64 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v62 = *(v64 - 8);
  v72 = *(v62 + 64);
  v11 = __chkstk_darwin(v64);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v56 - v13;
  v14 = sub_10004DED0(&qword_10015C7C8, &qword_100112AB8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v56 - v16);
  v79 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v60 = *(v79 - 8);
  v18 = v60;
  v65 = *(v60 + 64);
  v19 = __chkstk_darwin(v79);
  v61 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  v69 = v23;
  v71 = *(v23 - 8);
  v24 = v71;
  __chkstk_darwin(v23);
  v26 = &v56 - v25;
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable) = 0;
  *v17 = 1;
  v27 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v15 + 104))(v17, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v14);
  v68 = v26;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v15 + 8))(v17, v14);
  (*(v24 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshots, v26, v23);
  v59 = *(v18 + 16);
  v28 = v22;
  v58 = v22;
  v59(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation, v22, v79);
  v29 = [objc_allocWithZone(SBSHomeScreenService) init];
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService) = v29;
  v30 = v63;
  *v63 = 1;
  v32 = v66;
  v31 = v67;
  (*(v66 + 104))(v30, v27, v67);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  v34 = v77;
  v33 = v78;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v32 + 8))(v30, v31);
  v35 = v62;
  v36 = *(v62 + 16);
  v37 = v64;
  v36(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEvent, v34, v64);
  (*(v81 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation, v33, v80);
  v67 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService;
  v38 = [*(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService) addHomeScreenApplicationsObserver:v1];
  v57 = v1;
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable) = v38;
  swift_unknownObjectRelease();
  v39 = type metadata accessor for TaskPriority();
  v40 = v73;
  (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
  v41 = v70;
  v36(v70, v34, v37);
  v42 = v61;
  v43 = v79;
  v59(v61, v28, v79);
  v44 = v35;
  v45 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v46 = v60;
  v47 = (v72 + *(v60 + 80) + v45) & ~*(v60 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  (*(v44 + 32))(v48 + v45, v41, v37);
  (*(v46 + 32))(v48 + v47, v42, v43);
  sub_100094AF4(0, 0, v40, &unk_100112AD8, v48);

  v49 = v57;
  v50 = [*(v57 + v67) allHomeScreenApplicationBundleIdentifiers];
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = v51;
  v52 = v74;
  v53 = v80;
  v54 = v78;
  AsyncStream.Continuation.yield(_:)();
  (*(v75 + 8))(v52, v76);
  (*(v81 + 8))(v54, v53);
  (*(v44 + 8))(v77, v37);
  (*(v46 + 8))(v58, v43);
  (*(v71 + 8))(v68, v69);
  return v49;
}

uint64_t sub_100016EF4()
{
  v1 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_100017078(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100017104(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_10004DED0(&qword_10015CB88, &qword_100112E18);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      sub_10006B9EC();
      swift_allocError();
      *v4 = 0xD00000000000003BLL;
      v4[1] = 0x80000001001222B0;
    }

    swift_errorRetain();
    sub_10004DED0(&qword_10015CB88, &qword_100112E18);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000171E0(void *a1, uint64_t a2)
{
  sub_10004DED0(&qword_10015CB88, &qword_100112E18);

  return sub_100017104(a1, a2);
}

uint64_t sub_10001726C()
{
  v1 = v0[4];
  v0[9] = v1;
  v2 = [v1 subscriptions];
  if (v2)
  {
    v9 = v2;
    sub_100008294(0, &qword_10015CB70, CTXPCServiceSubscriptionContext_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v0[10] = v10;
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v0[11] = v11;
    if (v11)
    {
LABEL_6:
      v0[12] = kCTSIMSupportSIMStatusNotInserted;
      v12 = v0[10];
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v12, v3, v4, v5, v6, v7, v8);
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;
      v0[13] = v13;
      v0[14] = 1;
      v15 = v0[5];
      v16 = swift_task_alloc();
      v0[15] = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      v17[1] = sub_10001E2A8;
      v8 = &type metadata for String;
      v6 = sub_10001E2A0;
      v11 = (v0 + 2);
      v5 = 0x80000001001221F0;
      v12 = 0;
      v3 = 0;
      v4 = 0xD000000000000011;
      v7 = v16;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v12, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[11] = v11;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_100017488()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10006B6D8;
  }

  else
  {

    v2 = sub_10001726C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000175A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_10004DED0(&qword_10015CB78, &qword_100112E10);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_10006B9EC();
      swift_allocError();
      *v4 = 0xD000000000000030;
      v4[1] = 0x8000000100122230;
    }

    swift_errorRetain();
    sub_10004DED0(&qword_10015CB78, &qword_100112E10);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100017680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004DED0(&qword_10015CB78, &qword_100112E10);

  return sub_1000175A4(a1, a2, a3);
}

uint64_t sub_100017724(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, void *a8)
{
  v9 = v8[2];
  v10 = v8[12];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v8[3];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v8[13];
  if (v9 == v12 && v11 == v13)
  {

LABEL_9:
    v18 = v8[14];
    a2 = v8[10];
    if (v18 == v8[11])
    {
      v17 = 1;
      goto LABEL_11;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
      }

      v10 = *(a2 + 8 * v18 + 32);
    }

    v22 = v10;
    v8[13] = v10;
    v8[14] = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      v23 = v8[5];
      v24 = swift_task_alloc();
      v8[15] = v24;
      *(v24 + 16) = v23;
      *(v24 + 24) = v22;
      v25 = swift_task_alloc();
      v8[16] = v25;
      *v25 = v8;
      v25[1] = sub_10001E2A8;
      a8 = &type metadata for String;
      a6 = sub_10001E2A0;
      a5 = 0x80000001001221F0;
      v10 = v8 + 2;
      a2 = 0;
      a3 = 0;
      a4 = 0xD000000000000011;
      a7 = v24;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_9;
  }

  v17 = 0;
LABEL_11:
  v19 = v8[9];

  v20 = v8[1];

  return v20(v17);
}

uint64_t sub_100017950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000179C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&unk_10015F9E0, &unk_100112BB0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_100017B28(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100017B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001E788, 0, 0);
}

uint64_t sub_100017BF4()
{
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10001F438;
  v2 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 152, 0, 0, v2);
}

uint64_t sub_100017CC0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10001EAFC, 0, 0);
}

unint64_t sub_100017DC0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100006910(a1, v4);
}

uint64_t sub_100017E58(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1000069D8(*(a1 + 48) + 40 * v10, v15);
    sub_10001EE30(*(a1 + 56) + 32 * v10, &v16);
    sub_100005F90(v15, v13);
    if (swift_dynamicCast())
    {
      sub_10000665C(v14);
      sub_10001EFFC(v13, v11, v12);
    }

    else
    {
      sub_10000665C(v14);
    }

    v5 &= v5 - 1;
    result = sub_1000068B0(v15, &qword_10015C8E8, &qword_100112B50);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017FDC()
{
  v0 = [objc_allocWithZone(AAAppleAccountInformationCache) init];
  v1 = objc_opt_self();
  v2 = [v1 sharedManager];
  v3 = [v2 isAgeAttestationPhase1Enabled];

  v4 = [v1 sharedManager];
  v5 = [v4 isAgeBasedAccountSupportEnabled];

  [objc_opt_self() isCloudSubscriber];
  v6 = [v0 primaryAccountSignInState];
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v12 = [v0 accountFullName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v14;
      }
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    if (v3)
    {
      v16 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
      v17 = [v16 ageRangeSettings];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 u13Limit];

        return v19 - 1;
      }

      else
      {

        return 12;
      }
    }

LABEL_13:

    return 0;
  }

  if (v6 != 4 || !v5)
  {
    goto LABEL_13;
  }

  v7 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v8 = [v7 ageRangeSettings];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 u18Limit];

    v11 = v10 - 1;
  }

  else
  {
    v11 = 17;
  }

  v20 = [v7 ageRangeSettings];
  if (v20)
  {
    v21 = v20;
    [v20 u13Limit];
  }

  return v11;
}

uint64_t sub_100018274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100018308();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_100018308()
{
  result = qword_10015C450;
  if (!qword_10015C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C450);
  }

  return result;
}

uint64_t sub_100018354()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100018420()
{
  if (*(v0 + 152) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_1000197CC;

    return sub_100018518();
  }
}

void *sub_100018544(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100018588@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 32);
  *a3 = *(v4 + 24);
  a3[1] = v5;
}

uint64_t sub_100018638(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000EE9F4(v1, v2);
}

uint64_t sub_100018684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000186CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001878C()
{
  result = qword_10015F480;
  if (!qword_10015F480)
  {
    sub_100052374(&qword_10015F488, &qword_1001167F0);
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F480);
  }

  return result;
}

uint64_t sub_100018848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000188C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16) || (v7 = sub_1000B89A8(a1), (v8 & 1) == 0) || (sub_10001EE30(*(a2 + 56) + 32 * v7, v10), sub_10004DED0(a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11) == 0)
  {
    if (qword_10015AB28 != -1)
    {
      swift_once();
    }

    v11 = qword_1001697D8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_1000189B8()
{
  type metadata accessor for SettingsAppDependencyStore();
  v0 = swift_allocObject();
  sub_10004DED0(&qword_10015B2A0, &qword_10010FCB0);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_10004DED0(&qword_10015B2A8, qword_10010FCB8);
  swift_allocObject();
  result = PassthroughSubject.init()();
  *(v0 + 24) = result;
  qword_1001697D8 = v0;
  return result;
}

uint64_t sub_100018A48()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169838);
  sub_10000659C(v0, qword_100169838);
  return PPTTestCase.Name.init(_:)();
}

id sub_100018B00()
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if (![qword_100169810 airplaneMode])
  {
    goto LABEL_6;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    MobileGestalt_get_wapiCapability();

LABEL_6:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  __break(1u);
  return result;
}

__n128 sub_100018C1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100018C28()
{
  result = qword_10015E268;
  if (!qword_10015E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E268);
  }

  return result;
}

id sub_100018C7C()
{
  v1 = *(v0 + 144);

  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  if (v1)
  {
    goto LABEL_4;
  }

  result = [*(v0 + 152) defaultStore];
  if (!result)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:result];

  v1 = [v5 accountForService:AIDAServiceTypeStore];
  if (v1)
  {
LABEL_4:
    v6 = v1;
    v7 = [v6 userFullName];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v6 aa_isCloudSubscriber];
      goto LABEL_21;
    }

    v9 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = [v14 protoAccount];

  if (!v15)
  {
LABEL_13:
    v20 = [v13 sharedInstance];
    v21 = [v20 protoAccount];

    if (v21)
    {
      if ([v21 proto_ageRange] == 2)
      {
        v22 = [objc_opt_self() sharedManager];
        v23 = [v22 isAgeBasedAccountSupportEnabled];

        if (v23)
        {
          v24 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v25 = [v24 ageRangeSettings];

          if (v25)
          {
            v26 = [v25 u18Limit];

            v9 = v26 - 1;
          }

          else
          {
            v9 = 17;
          }

          v60 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v1 = [v60 ageRangeSettings];

          if (v1)
          {
            v61 = [v1 u13Limit];

            v1 = 0;
            v11 = v61;
            v12 = 128;
          }

          else
          {

            v12 = 128;
            v11 = 13;
          }

          goto LABEL_21;
        }
      }
    }

    v9 = 0;
    v11 = 0;
    v1 = 0;
LABEL_20:
    v12 = 192;
    goto LABEL_21;
  }

  if ([v15 proto_ageRange] != 1 || (v16 = objc_msgSend(objc_opt_self(), "sharedManager"), v17 = objc_msgSend(v16, "isAgeAttestationPhase1Enabled"), v16, !v17))
  {

    goto LABEL_13;
  }

  v18 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v1 = [v18 ageRangeSettings];

  if (v1)
  {
    v19 = [v1 u13Limit];

    v11 = 0;
    v1 = 0;
    v9 = v19 - 1;
    v12 = 64;
  }

  else
  {
LABEL_51:

    v11 = 0;
    v12 = 64;
    v9 = 12;
  }

LABEL_21:
  result = [*(v0 + 152) p_base_meths[475]];
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = result;
  v28 = [result dmc_visibleSecondaryRemoteManagementAccounts];

  sub_100018308();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v12;
  v63 = v11;
  v64 = v1;
  v65 = v9;
  v66 = v0;
  if (v29)
  {
    v30 = 0;
    v70 = v15 & 0xC000000000000001;
    v69 = v15 & 0xFFFFFFFFFFFFFF8;
    v31 = _swiftEmptyArrayStorage;
    v67 = v15;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v69 + 16))
        {
          goto LABEL_50;
        }

        v32 = *(v15 + 8 * v30 + 32);
      }

      v1 = v32;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      result = [v32 identifier];
      if (!result)
      {
        break;
      }

      v33 = result;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      p_base_meths = v35;
      result = [v1 accountDescription];
      if (!result)
      {
        goto LABEL_58;
      }

      v36 = result;
      v71 = v30 + 1;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      result = [v1 username];
      if (!result)
      {
        goto LABEL_59;
      }

      v40 = result;

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1000C50C0(0, *(v31 + 2) + 1, 1, v31);
      }

      v43 = v31;
      v44 = *(v31 + 2);
      v45 = v43;
      v46 = *(v43 + 3);
      if (v44 >= v46 >> 1)
      {
        v45 = sub_1000C50C0((v46 > 1), v44 + 1, 1, v45);
      }

      *(v45 + 2) = v44 + 1;
      v47 = &v45[56 * v44];
      v31 = v45;
      *(v47 + 4) = v34;
      *(v47 + 5) = p_base_meths;
      *(v47 + 6) = v37;
      *(v47 + 7) = v39;
      *(v47 + 8) = v41;
      *(v47 + 9) = v0;
      v47[80] = 0;
      v48 = [v1 dmc_bearerReauthURL];
      if (v48)
      {

        result = [v1 identifier];
        if (!result)
        {
          goto LABEL_60;
        }

        v49 = result;

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v0 = v51;

        v52 = [objc_opt_self() mainBundle];
        v73._object = 0x800000010011EB70;
        v53._countAndFlagsBits = 0x6150207265746E45;
        v53._object = 0xEE0064726F777373;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v73._countAndFlagsBits = 0xD000000000000014;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v73);
        p_base_meths = v55._object;

        v57 = *(v31 + 2);
        v56 = *(v31 + 3);
        if (v57 >= v56 >> 1)
        {
          v31 = sub_1000C50C0((v56 > 1), v57 + 1, 1, v31);
        }

        *(v31 + 2) = v57 + 1;
        v58 = &v31[56 * v57];
        *(v58 + 4) = v50;
        *(v58 + 5) = v0;
        *(v58 + 3) = v55;
        *(v58 + 4) = xmmword_100110E00;
        v58[80] = 1;
      }

      else
      {
      }

      v15 = v67;
      ++v30;
      if (v71 == v68)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_46:

  v59 = *(v66 + 8);

  return v59(v65, v63, v62, v31);
}

uint64_t sub_10001947C()
{
  v1 = v0[16];
  if (!v1)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = sub_10001FA58(v1);

  v0[5] = v7;
  sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v4, v6);
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = sub_10004DED0(&qword_10015C7F8, &qword_100112AF0);
  *v8 = v0;
  v8[1] = sub_10001F93C;

  return AsyncDebounceSequence.Iterator.next()(v0 + 3, v9);
}

int *sub_10001960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = static Alignment.center.getter();
  v9 = v8;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    if (appleInternalInstallCapability)
    {
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = sub_10004DED0(&qword_10015E230, &qword_1001153C8);
    (*(*(v13 - 8) + 16))(a2, a1, v13);
    result = sub_10004DED0(&qword_10015E238, &unk_1001153D0);
    v14 = (a2 + result[9]);
    *v14 = v6;
    v14[1] = v5;
    v14[2] = v7;
    v14[3] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018C28();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100019768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018C28();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000197CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *v4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 153) = a3;
  *(v5 + 144) = a4;

  return _swift_task_switch(sub_1000198D4, 0, 0);
}

uint64_t sub_1000198D4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 153);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v5);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_10001F438;
  v7 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 152, 0, 0, v7);
}

uint64_t storeEnumTagSinglePayload for SettingsAppQuickAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100019ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019B0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100019B54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100019CAC(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100019D14(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a2 + *(sub_10004DED0(&qword_10015E5A0, &qword_100115688) + 36);
  sub_100019D78(v2);
  result = sub_10004DED0(&qword_10015E5A8, &qword_100115690);
  v13 = &v11[*(result + 36)];
  *v13 = v8;
  v13[1] = v10;
  *a2 = sub_1000943E4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100019CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019D78(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015E5B0, &qword_100115698);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_100093E94((&v12 - v7));
  v9 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v9 = v13;
  }

  swift_getKeyPath();
  v13 = v9;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100094464();
  View.accessibilityHidden(_:)();
  return sub_1000068B0(v8, &qword_10015E5B0, &qword_100115698);
}

unint64_t sub_100019FDC()
{
  result = qword_10015E5C0;
  if (!qword_10015E5C0)
  {
    sub_100052374(&qword_10015E5C8, &qword_1001156C8);
    sub_10001A068();
    sub_10001A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5C0);
  }

  return result;
}

unint64_t sub_10001A068()
{
  result = qword_10015E5D0;
  if (!qword_10015E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5D0);
  }

  return result;
}

unint64_t sub_10001A0BC()
{
  result = qword_10015E5D8;
  if (!qword_10015E5D8)
  {
    sub_100052374(&qword_10015E5E0, &qword_1001156D0);
    sub_1000525A0(&qword_10015E5E8, &qword_10015E5F0, &qword_1001156D8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1000525A0(&qword_10015E5F8, &qword_10015E600, &qword_1001156E0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5D8);
  }

  return result;
}

uint64_t sub_10001A1A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v4 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_1001696D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No cached data model found, requesting new snapshot.", v8, 2u);
  }

  v9 = sub_10001A468();
  sub_1000308BC(v9, v10, v11);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *v3;
  if (*v3)
  {
LABEL_7:

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001A38C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_100030A7C(*a1, v2, v3);
  sub_1000308BC(v1, v2, v3);
}

uint64_t sub_10001A3DC()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_1001696D0);
  sub_10000659C(v0, qword_1001696D0);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001A468()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000659C(v6, qword_100169718);
  v40 = v7;
  (*(v7 + 16))(v9, v10, v6);
  static OSSignpostID.exclusive.getter();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v39 = v9;
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  v14 = OSSignpostID.rawValue.getter();
  v37 = v12;
  v38 = v11;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v14, "PrimarySettingsList Data Model Snapshot", "", v11, 2u);
  v15 = sub_10001A920();
  v45 = _swiftEmptyArrayStorage;
  v16 = v15[2];
  if (v16)
  {
    v32 = v6;
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v17 = (v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v36 = v15;
    v18 = (v15 + 4);
    do
    {
      sub_10000B270(v18, v42);
      v19 = v43;
      v20 = v44;
      sub_100018544(v42, v43);
      swift_getKeyPath();
      v41[0] = v1;
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = v17[3];
      v46[2] = v17[2];
      v46[3] = v21;
      v46[4] = v17[4];
      v22 = v17[1];
      v46[0] = *v17;
      v46[1] = v22;
      sub_100063D94(v46, v41);
      v23 = sub_10005F86C(v46, v19, v20);
      sub_100063DF0(v46);
      sub_10000665C(v42);
      sub_100026108(v23);
      v18 += 40;
      --v16;
    }

    while (v16);

    v24 = v45;
    v2 = v35;
    v3 = v34;
    v5 = v33;
    v6 = v32;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v25 = sub_10002ED3C(v24);
  v26 = static os_signpost_type_t.end.getter();
  v27 = OSSignpostID.rawValue.getter();
  v28 = v26;
  v29 = v37;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v28, v27, "PrimarySettingsList Data Model Snapshot", "", v38, 2u);

  (*(v3 + 8))(v5, v2);
  (*(v40 + 8))(v39, v6);
  return v25;
}

uint64_t sub_10001A8CC(_OWORD *a1)
{
  v1 = a1[3];
  v5[2] = a1[2];
  v5[3] = v1;
  v5[4] = a1[4];
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  sub_100063D94(v5, &v4);
  return sub_10009AB30(v5);
}

void *sub_10001A920()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders);
  }

  else
  {
    v2 = sub_1000999C4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10001A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100009C48, 0, 0);
}

uint64_t sub_10001AABC(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015CB48, &unk_100113070) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_100009B7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10001ABC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100017CC0;

    return sub_10001ACB0();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10001ACB0()
{
  *(v1 + 80) = v0;

  return _swift_task_switch(sub_10001AD40, v0, 0);
}

uint64_t sub_10001AD40()
{
  v1 = objc_opt_self();
  *(v0 + 88) = v1;
  v2 = [v1 sharedManager];
  *(v0 + 96) = v2;
  if (!v2)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10000A7FC, 0, 0);
}

__n128 sub_10001ADFC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001AE08()
{
  result = qword_10015C930;
  if (!qword_10015C930)
  {
    sub_100052374(&qword_10015C900, &qword_1001123C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C930);
  }

  return result;
}

uint64_t sub_10001AE80()
{

  return _swift_task_switch(sub_10000AD88, 0, 0);
}

uint64_t sub_10001AFC4(unint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000659C(v5, qword_100169628);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, a4, v8, 0xCu);
      sub_1000068B0(v9, &unk_10015F9C0, &unk_100115230);
    }

    sub_10004DED0(&qword_10015CB90, &qword_100112E20);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    if (v12 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    sub_10004DED0(&qword_10015CB90, &qword_100112E20);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10001B1E4()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_10000AF78;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 185, 0, 0, 0xD000000000000013, 0x8000000100122170, sub_10000AEE8, v2, &type metadata for Bool);
}

void sub_10001B390(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10001B8F4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B8E0;
  aBlock[3] = &unk_10014EC38;
  v10 = _Block_copy(aBlock);

  [a2 danglingPlanItemsShouldUpdate:0 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10001B548(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C7C0, &qword_100112AB0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C7D0, &unk_100112AC0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_10001B6B0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004DED0(&qword_10015C7E0, &qword_100112AE0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_10004DED0(&qword_10015C7E8, &qword_100112AE8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001BFD0, 0, 0);
}

void sub_10001B7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10001B830(char a1)
{
  sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001B908()
{

  return _swift_task_switch(sub_10001BA4C, 0, 0);
}

uint64_t sub_10001BA4C()
{
  v1 = *(v0 + 80);

  *(v0 + 194) = *(v0 + 186);

  return _swift_task_switch(sub_10001BAEC, v1, 0);
}

uint64_t sub_10001BAEC()
{
  *(v0 + 187) = 0;
  *(v0 + 189) = 0;
  CellularDataSettings = _CTServerConnectionGetCellularDataSettings();
  if (CellularDataSettings)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000659C(v2, qword_100169628);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240448;
      *(v5 + 4) = CellularDataSettings;
      *(v5 + 8) = 1026;
      *(v5 + 10) = HIDWORD(CellularDataSettings);
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get cellular data settings: { domain: %{public}d, errorCode: %{public}d }", v5, 0xEu);
    }
  }

  *(v0 + 190) = 0;
  IsDead = _CTServerConnectionGetRadioModuleIsDead();
  if (IsDead)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000659C(v7, qword_100169628);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240448;
      *(v10 + 4) = IsDead;
      *(v10 + 8) = 1026;
      *(v10 + 10) = HIDWORD(IsDead);
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to get radio module state: { domain: %{public}d, errorCode: %{public}d }", v10, 0xEu);
    }
  }

  *(v0 + 191) = 0;
  IsUserIdentityModuleRequired = _CTServerConnectionIsUserIdentityModuleRequired();
  if (IsUserIdentityModuleRequired)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000659C(v12, qword_100169628);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240448;
      *(v15 + 4) = IsUserIdentityModuleRequired;
      *(v15 + 8) = 1026;
      *(v15 + 10) = HIDWORD(IsUserIdentityModuleRequired);
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get if SIM is required: { domain: %{public}d, errorCode: %{public}d }", v15, 0xEu);
    }
  }

  if (!*(*(v0 + 80) + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyClient))
  {
    __break(1u);
  }

  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  *v16 = v0;
  v16[1] = sub_10001E3C8;

  return sub_10001DBE0();
}

uint64_t sub_10001BEAC()
{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_10001B908;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 186, 0, 0, 0xD000000000000016, 0x8000000100122190, sub_10001C2AC, v2, &type metadata for Bool);
}

uint64_t sub_10001BFD0()
{
  v1 = v0[12];
  sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  sub_10000B20C();
  AsyncSequence.debounce<>(for:tolerance:)();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[13] = v2;
  sub_10001C304(v1);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_10004DED0(&qword_10015C7F8, &qword_100112AF0);
  *v3 = v0;
  v3[1] = sub_10001F93C;

  return AsyncDebounceSequence.Iterator.next()(v0 + 3, v4);
}

void sub_10001C0FC(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10001B830;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B7B8;
  aBlock[3] = &unk_10014EBE8;
  v10 = _Block_copy(aBlock);

  [a2 getSupportedFlowTypes:v10];
  _Block_release(v10);
}

uint64_t type metadata accessor for AccountsStateProvider(uint64_t a1)
{
  result = qword_10015C338;
  if (!qword_10015C338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C304(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015C7E8, &qword_100112AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001C36C(uint64_t a1)
{
  sub_10001261C(319, &qword_10015C348, &type metadata for AccountsStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001261C(319, &qword_10015C350, &type metadata for AccountsStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10001C570()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v104 = &v89 - v2;
  v3 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v100 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v102 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v5;
  __chkstk_darwin(v4);
  v120 = &v89 - v6;
  v121 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v112 = *(v121 - 1);
  __chkstk_darwin(v121);
  v111 = (&v89 - v7);
  v8 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v9 = *(v8 - 8);
  v118 = v8;
  v119 = v9;
  v10 = __chkstk_darwin(v8);
  v123 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v11;
  __chkstk_darwin(v10);
  v125 = &v89 - v12;
  v124 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v117 = *(v124 - 8);
  v13 = __chkstk_darwin(v124);
  v103 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v14;
  __chkstk_darwin(v13);
  v122 = &v89 - v15;
  v16 = sub_10004DED0(&qword_10015C438, &qword_1001123C8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v89 - v18);
  v20 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v116 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v98 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v22;
  __chkstk_darwin(v21);
  v24 = &v89 - v23;
  v25 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v89 - v27;
  swift_defaultActor_initialize();
  v114 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken;
  *(v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken) = 0;
  *v19 = 1;
  v29 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v17 + 104))(v19, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v16);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v17 + 8))(v19, v16);
  v30 = v118;
  v106 = v26;
  v31 = *(v26 + 16);
  v105 = v28;
  v107 = v25;
  v31(v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshots, v28, v25);
  v32 = *(v116 + 16);
  v115 = v24;
  v108 = v20;
  v96 = v116 + 16;
  v95 = v32;
  v32((v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation), v24, v20);
  v34 = v111;
  v33 = v112;
  *v111 = 1;
  v35 = v119;
  v36 = v29;
  v37 = v125;
  v38 = v0;
  v39 = v121;
  (*(v33 + 104))(v34, v36, v121);
  v40 = v122;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v33 + 8))(v34, v39);
  v41 = *(v117 + 16);
  v94 = v117 + 16;
  v93 = v41;
  v41((v38 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEvent), v40, v124);
  v42 = v30;
  v121 = *(v35 + 16);
  (v121)(v38 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation, v37, v30);
  v43 = [objc_allocWithZone(type metadata accessor for MonitoredAccountStoreDelegateAdaptor(0)) init];
  *(v38 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStoreDelegateAdaptor) = v43;
  v44 = qword_10015AA00;
  v45 = v43;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = objc_allocWithZone(ACMonitoredAccountStore);
  v47 = v45;
  v111 = v47;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v49 = [v46 initWithAccountTypes:isa delegate:v47];

  *(v38 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStore) = v49;
  v50 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  aBlock[0] = v50;
  swift_getKeyPath();
  v51 = v123;
  v112 = v35 + 16;
  (v121)(v123, v37, v42);
  v52 = *(v35 + 80);
  v53 = (v52 + 16) & ~v52;
  v110 = v52 | 7;
  v91 = v53 + v113;
  v54 = swift_allocObject();
  v55 = v35 + 32;
  v109 = *(v35 + 32);
  v92 = v53;
  v109(v54 + v53, v51, v42);
  v56 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v57 = *(v38 + v114);
  *(v38 + v114) = v56;

  v114 = v38;
  *(v38 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_ageRangeCache) = v50;
  sub_10001AE08();
  v90 = v50;
  v58 = v120;
  AsyncSequence.debounce<>(for:tolerance:)();
  v59 = type metadata accessor for TaskPriority();
  v60 = v104;
  v89 = *(*(v59 - 8) + 56);
  v89(v104, 1, 1, v59);
  v61 = v58;
  v62 = v102;
  sub_100017950(v61, v102);
  v63 = v123;
  (v121)(v123, v125, v42);
  v64 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v65 = (v99 + v52 + v64) & ~v52;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  sub_10001E718(v62, v66 + v64);
  v113 = v55;
  v109(v66 + v65, v63, v42);
  v67 = sub_100094AF4(0, 0, v60, &unk_100112428, v66);

  v68 = sub_100015698(0, 1, 1, _swiftEmptyArrayStorage);
  v70 = v68[2];
  v69 = v68[3];
  if (v70 >= v69 >> 1)
  {
    v68 = sub_100015698((v69 > 1), v70 + 1, 1, v68);
  }

  v68[2] = v70 + 1;
  v68[v70 + 4] = v67;
  *(v114 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks) = v68;
  v71 = v60;
  v89(v60, 1, 1, v59);
  v72 = v103;
  v73 = v124;
  v93(v103, v122, v124);
  v102 = v67;
  v74 = v98;
  v75 = v108;
  v95(v98, v115, v108);
  v76 = v116;
  v77 = v117;
  v78 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v79 = (v101 + *(v116 + 80) + v78) & ~*(v116 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  (*(v77 + 32))(v80 + v78, v72, v73);
  (*(v76 + 32))(v80 + v79, v74, v75);
  sub_100094AF4(0, 0, v71, &unk_100112438, v80);

  v81 = v114;
  v82 = *(v114 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStore);
  v83 = v123;
  v84 = v125;
  v85 = v118;
  (v121)(v123, v125, v118);
  v86 = swift_allocObject();
  v109(v86 + v92, v83, v85);
  aBlock[4] = sub_10001F3AC;
  aBlock[5] = v86;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018274;
  aBlock[3] = &unk_10014E5C8;
  v87 = _Block_copy(aBlock);

  [v82 registerWithCompletion:v87];
  _Block_release(v87);

  sub_10001EC24(v120);
  (*(v119 + 8))(v84, v85);
  (*(v77 + 8))(v122, v73);
  (*(v76 + 8))(v115, v75);
  (*(v106 + 8))(v105, v107);
  return v81;
}

id sub_10001D334@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ageRangeSettings];
  *a2 = result;
  return result;
}

uint64_t sub_10001D374()
{
  v1 = (sub_10004DED0(&unk_10015F9E0, &unk_100112BB0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();
  v11 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = v1[15];
  v13 = type metadata accessor for ContinuousClock();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10001D544()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t type metadata accessor for MonitoredAccountStoreDelegateAdaptor(uint64_t a1)
{
  result = qword_10015C4F0;
  if (!qword_10015C4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D70C(uint64_t a1)
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001D810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001DB00()
{
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  v5 = sub_10001DD0C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10015C2C8 = v5;
  return result;
}

uint64_t sub_10001DC00()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = sub_100008294(0, &qword_10015CB68, CTXPCServiceSubscriptionInfo_ptr);
  *v3 = v0;
  v3[1] = sub_100017488;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000016, 0x80000001001221D0, sub_10001706C, v2, v4);
}

Swift::Int sub_10001DD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C8E0, &qword_100112488);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10001DE74(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB88, &qword_100112E18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000171E0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017078;
  aBlock[3] = &unk_10014EB98;
  v10 = _Block_copy(aBlock);

  [a2 getSubscriptionInfo:v10];
  _Block_release(v10);
}

void sub_10001E038(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015CB78, &qword_100112E10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_100017680;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E208;
  aBlock[3] = &unk_10014EB48;
  v12 = _Block_copy(aBlock);

  [a2 getSIMStatus:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_10001E208(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_10001E2A8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10006B748;
  }

  else
  {

    v2 = sub_100017724;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001E3C8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10001E50C, v4, 0);
}

uint64_t sub_10001E50C()
{
  v0[22] = 1022;
  v0[6] = sub_10006B8FC;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10006B904;
  v0[5] = &unk_10014EAF8;
  v1 = _Block_copy(v0 + 2);
  v2 = _NETRBClientCreate();
  _Block_release(v1);
  if (v2)
  {
    _NETRBClientGetGlobalServiceState();
    _NETRBClientDestroy();
    v3 = *(v0 + 44);
    v4 = *(v0 + 45) != 4;
  }

  else
  {
    v3 = 1022;
    v4 = 1;
  }

  v5 = 0x10000000000;
  if (((*(v0 + 192) | *(v0 + 193)) | *(v0 + 194)))
  {
    v5 = 0;
  }

  v6 = v3 > 0x3FD && v4;
  if (!*(v0 + 187))
  {
    v6 = 0;
  }

  v7 = *(v0 + 188) != 0;
  if (v3 == 1023)
  {
    v8 = 0x3000000000000;
  }

  else
  {
    v8 = 0x2000000000000;
  }

  v9 = 256;
  if (!*(v0 + 72))
  {
    v9 = 0;
  }

  v10 = v5 | v9 | (v7 << 32);
  if (*(v0 + 189))
  {
    ++v10;
  }

  v11 = 0x1000000000000;
  if ((v6 & v7 & (*(v0 + 189) == 0)) != 0)
  {
    v11 = v8;
  }

  v12 = v0[1];
  v13 = v10 | v11 | ((*(v0 + 191) != 0) << 16) | ((*(v0 + 190) != 0) << 24);

  return v12(v13);
}

uint64_t sub_10001E718(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E788()
{
  sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v1 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[9] = v1;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v2 = v0;
  v2[1] = sub_100063E88;

  return AsyncDebounceSequence.Iterator.next()(v0 + 12, v3);
}

uint64_t sub_10001E860(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C440, &qword_1001123D0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_10001E9C8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004DED0(&qword_10015C458, &qword_100112448);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100017BF4, 0, 0);
}

uint64_t sub_10001EAFC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 104) = v1 & 1;
  v5 = vdupq_n_s64(v1);
  *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_100112CF0), vshlq_u64(v5, xmmword_100112CE0))), 0x1000100010001);
  *(v0 + 105) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
  *(v0 + 109) = BYTE5(v1) & 1;
  *(v0 + 110) = BYTE6(v1);
  sub_10004DED0(&qword_10015CB48, &unk_100113070);
  AsyncStream.Continuation.yield(_:)();

  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

_DWORD *initializeBufferWithCopyOfBuffer for CellularTelephonyStateSnapshot(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10001EC24(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10001EC8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004DED0(&qword_10015C8E0, &qword_100112488);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1000069D8(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1000697D8(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001EE30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t *sub_10001EE8C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100005B08(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100069930(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

_OWORD *sub_10001EFEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001EFFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100006A34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10001F14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001F3AC()
{
  sub_10004DED0(&unk_10015FAA0, qword_100112870);

  return sub_100018354();
}

uint64_t sub_10001F438()
{

  return _swift_task_switch(sub_100018420, 0, 0);
}

uint64_t sub_10001F534()
{
  v1 = objc_opt_self();
  v0[19] = v1;
  v2 = [v1 defaultStore];
  v0[20] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10001F82C;
    v4 = swift_continuation_init();
    v0[17] = sub_10004DED0(&qword_10015C468, &unk_100112460);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10001F6FC;
    v0[13] = &unk_10014E5F0;
    v0[14] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 10];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v2);
}

id sub_10001F67C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100169798 = result;
  return result;
}

uint64_t sub_10001F6B8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008294(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F6FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100018544((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_10001F7D4()
{
  result = qword_10015FA10;
  if (!qword_10015FA10)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FA10);
  }

  return result;
}

uint64_t sub_10001F82C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100064874;
  }

  else
  {
    v2 = sub_100018C7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F93C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10006717C;
  }

  else
  {
    *(v2 + 128) = *(v2 + 24);
    v3 = sub_100019460;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001FA58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001EFFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001FAF0@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v101 = type metadata accessor for SearchSuggestionsPlacement();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SearchFieldPlacement();
  v97 = *(v98 - 8);
  v4 = __chkstk_darwin(v98);
  v90 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = &v73 - v6;
  v7 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v111 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v109 = &v73 - v11;
  __chkstk_darwin(v10);
  v82 = &v73 - v12;
  v13 = sub_10004DED0(&qword_10015F4C8, &qword_100116850);
  __chkstk_darwin(v13 - 8);
  v79 = &v73 - v14;
  v15 = type metadata accessor for PrimarySettingsList(0);
  __chkstk_darwin(v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10004DED0(&qword_10015F200, &qword_100116518);
  v81 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v73 - v18;
  v85 = sub_10004DED0(&qword_10015F1F8, &qword_100116510);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v104 = &v73 - v19;
  v88 = sub_10004DED0(&qword_10015F1E8, &qword_100116500);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v108 = &v73 - v20;
  v95 = sub_10004DED0(&qword_10015F4D8, &qword_100116860);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v73 - v21;
  v89 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  __chkstk_darwin(v89);
  v92 = &v73 - v22;
  v107 = v7;
  v91 = swift_allocBox();
  v24 = v23;
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  v110 = v1;
  Bindable.wrappedValue.getter();

  type metadata accessor for SettingsOmniSearchViewModel(0);
  v25 = sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  v106 = v24;
  Bindable<A>.init(wrappedValue:)();
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v84 = v25;
  *(v17 + 2) = Environment.init<A>(_:)();
  v17[24] = v26 & 1;
  type metadata accessor for PrimarySettingsListModel(0);
  sub_10000A568(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  Bindable<A>.init(wrappedValue:)();
  LocalizedStringKey.init(stringLiteral:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  LOBYTE(v24) = v30;
  v31 = sub_10000A568(&qword_10015F208, type metadata accessor for PrimarySettingsList, &unk_100115634);
  v80 = v15;
  View.navigationTitle(_:)();
  sub_100009680(v27, v29, v24 & 1);

  sub_1000186CC(v17, type metadata accessor for PrimarySettingsList);
  Bindable.wrappedValue.getter();
  LOBYTE(v24) = sub_1000A9BB8();

  if (v24)
  {
    v32 = v79;
    static ToolbarDefaultItemKind.title.getter();
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v79;
  }

  v34 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
  v114 = v80;
  v115 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v105;
  v80 = OpaqueTypeConformance2;
  v37 = v103;
  View.toolbar(removing:)();
  sub_1000068B0(v32, &qword_10015F4C8, &qword_100116850);
  (*(v81 + 8))(v37, v36);
  v38 = v111;
  v40 = (v111 + 16);
  v39 = *(v111 + 16);
  v41 = v109;
  v43 = v106;
  v42 = v107;
  v39(v109, v106, v107);
  v44 = v82;
  Bindable.projectedValue.getter();
  v45 = *(v38 + 8);
  v45(v41, v42);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v45(v44, v42);
  v81 = v114;
  v79 = v115;
  v77 = v116;
  v78 = v117;
  v103 = v40;
  v82 = v39;
  v39(v41, v43, v42);
  v46 = v83;
  Bindable.projectedValue.getter();
  v45(v41, v42);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v111 = v38 + 8;
  v83 = v45;
  v45(v46, v42);
  v47 = [objc_opt_self() currentDevice];
  v48 = [v47 userInterfaceIdiom];

  if (v48 == 1)
  {
    v49 = v74;
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    v50 = v90;
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v75 + 8))(v49, v76);
  }

  else
  {
    v50 = v90;
    static SearchFieldPlacement.automatic.getter();
  }

  v51 = v97;
  v52 = v96;
  v53 = v50;
  v54 = v98;
  (*(v97 + 32))(v96, v53, v98);
  v112 = v105;
  v113 = v80;
  v105 = swift_getOpaqueTypeConformance2();
  v55 = v85;
  v56 = v104;
  View.searchable(text:isPresented:placement:prompt:)();

  (*(v51 + 8))(v52, v54);
  (*(v86 + 8))(v56, v55);
  v57 = v99;
  v58 = static SearchSuggestionsPlacement.menu.getter();
  __chkstk_darwin(v58);
  v59 = v91;
  sub_10004DED0(&qword_10015F1F0, &qword_100116508);
  v114 = v55;
  v115 = v105;
  swift_getOpaqueTypeConformance2();
  sub_10000C310();
  v60 = v93;
  v61 = v88;
  v62 = v108;
  View.searchSuggestions<A>(placement:_:)();
  (*(v100 + 8))(v57, v101);
  (*(v87 + 8))(v62, v61);
  v63 = v109;
  v64 = v107;
  (v82)(v109, v106, v107);
  Bindable.wrappedValue.getter();
  (v83)(v63, v64);
  v65 = v114;
  swift_getKeyPath();
  v114 = v65;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v67 = *(v65 + 24);
  v66 = *(v65 + 32);

  v68 = v92;
  v69 = &v92[*(v89 + 36)];
  v70 = sub_10004DED0(&qword_10015F230, &qword_100116528);

  static TaskPriority.userInitiated.getter();
  v71 = &v69[*(v70 + 40)];
  *v71 = v67;
  *(v71 + 1) = v66;
  *v69 = &unk_1001168F0;
  *(v69 + 1) = v59;
  (*(v94 + 32))(v68, v60, v95);
  sub_100020A4C(v68, v102);
}

uint64_t sub_100020A0C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSearching.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100020A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_100020ABC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16) != 0;
}

BOOL sub_100020BB0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100020ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100020BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020C70@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 16);
  return result;
}

uint64_t sub_100020D44@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v6 = type metadata accessor for NavigationPath();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_100020E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100020EAC()
{
  result = qword_10015F258;
  if (!qword_10015F258)
  {
    sub_100052374(&qword_10015EF28, &qword_100116590);
    sub_10000A568(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F258);
  }

  return result;
}

uint64_t sub_100020F60()
{
  sub_10004DED0(&qword_10015F668, &qword_100116B40);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1001697E0 = result;
  return result;
}

uint64_t sub_100020FEC()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169850);
  sub_10000659C(v0, qword_100169850);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100021050()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169868);
  sub_10000659C(v0, qword_100169868);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_1000210B4()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169880);
  sub_10000659C(v0, qword_100169880);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100021128@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
  return result;
}

uint64_t sub_100021204(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 49) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 49) = a1;
  swift_retain_n();
  swift_retain_n();
  Binding.init(get:set:)();
  return v11;
}

void *sub_100021300@<X0>(unsigned __int8 *a2@<X3>, BOOL *a3@<X8>)
{
  v4 = *a2;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  result = Binding.wrappedValue.getter();
  v7 = v8 != 10 && v8 == v4;
  *a3 = v7;
  return result;
}

id sub_100021380()
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if (![qword_100169810 airplaneMode])
  {
    goto LABEL_6;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    MobileGestalt_get_wapiCapability();

LABEL_6:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  __break(1u);
  return result;
}

id sub_10002149C()
{
  result = [objc_allocWithZone(RadiosPreferences) init];
  qword_100169810 = result;
  return result;
}

uint64_t sub_100021500(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000215AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if ([qword_100169810 airplaneMode])
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v3 = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_10002168C(uint64_t *a1, int a2)
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

uint64_t sub_1000216DC(uint64_t result, int a2, int a3)
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

unint64_t sub_100021718()
{
  result = qword_10015E260;
  if (!qword_10015E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E260);
  }

  return result;
}

void sub_10002180C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch;
  v6 = *(v2 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004573C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100077A3C();
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void sub_100021968(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002180C(v1, v3);
}

uint64_t sub_100021998()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10006B05C;
  }

  else
  {
    v2 = sub_100021AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100021AC8()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v5, v7);
    sub_1000068B0(v1, &unk_10015FCF0, &unk_100117B60);
    v8 = sub_100015348(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100021998;
    v10 = v0[8];
    v11 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v8);
  }
}

uint64_t sub_100021CA8()
{

  return _swift_task_switch(sub_100021DA4, 0, 0);
}

uint64_t sub_100021DA4()
{
  if ((*(v0 + 151) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 120) = Strong) == 0))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_100021EAC;

    return sub_10001ACB0();
  }
}

uint64_t sub_100021EAC(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100021FAC, 0, 0);
}

uint64_t sub_100021FAC()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  *(v0 + 144) = v1 & 1;
  v5 = vdupq_n_s64(v1);
  *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_100112CF0), vshlq_u64(v5, xmmword_100112CE0))), 0x1000100010001);
  *(v0 + 145) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
  *(v0 + 149) = BYTE5(v1) & 1;
  *(v0 + 150) = BYTE6(v1);
  sub_10004DED0(&qword_10015CB48, &unk_100113070);
  AsyncStream.Continuation.yield(_:)();

  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_100021CA8;
  v7 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 151, 0, 0, v7);
}

uint64_t type metadata accessor for PrimarySettingsListSectionModel(uint64_t a1)
{
  result = qword_10015BFA8;
  if (!qword_10015BFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022168(uint64_t a1)
{
  sub_100006EE0();
  if (v1 <= 0x3F)
  {
    sub_100022274(319, &qword_10015BFC0, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100022274(319, &unk_10015BFC8, type metadata accessor for PrimarySettingsListItemModel, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PrimarySettingsListItemModel(uint64_t a1)
{
  result = qword_10015B3F8;
  if (!qword_10015B3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListItemViewType(uint64_t a1)
{
  result = qword_10015B4B8;
  if (!qword_10015B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022370(uint64_t a1)
{
  result = type metadata accessor for PrimarySettingsListItemViewType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000223F4(uint64_t a1)
{
  sub_10002251C();
  if (v1 <= 0x3F)
  {
    sub_100022598();
    if (v2 <= 0x3F)
    {
      sub_100022654();
      if (v3 <= 0x3F)
      {
        sub_100022714();
        if (v4 <= 0x3F)
        {
          sub_1000226B4();
          if (v5 <= 0x3F)
          {
            sub_100022774();
            if (v6 <= 0x3F)
            {
              sub_1000227A4();
              if (v7 <= 0x3F)
              {
                sub_100022744();
                if (v8 <= 0x3F)
                {
                  sub_1000227D4();
                  if (v9 <= 0x3F)
                  {
                    sub_100022684();
                    if (v10 <= 0x3F)
                    {
                      sub_1000226E4();
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

ValueMetadata *sub_10002251C()
{
  result = qword_10015B4C8;
  if (!qword_10015B4C8)
  {
    result = &type metadata for PrimarySettingsListAppleAccountLinkModel;
    atomic_store(&type metadata for PrimarySettingsListAppleAccountLinkModel, &qword_10015B4C8);
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListFamilyLinkModel(uint64_t a1)
{
  result = qword_10015B308;
  if (!qword_10015B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022598()
{
  if (!qword_10015B4D0)
  {
    v0 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10015B4D0);
    }
  }
}

uint64_t sub_1000225E0(uint64_t a1)
{
  result = type metadata accessor for FamilyRowStatus();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

ValueMetadata *sub_100022654()
{
  result = qword_10015B4D8;
  if (!qword_10015B4D8)
  {
    result = &type metadata for PrimarySettingsListToggleModel;
    atomic_store(&type metadata for PrimarySettingsListToggleModel, &qword_10015B4D8);
  }

  return result;
}

ValueMetadata *sub_100022684()
{
  result = qword_10015B510;
  if (!qword_10015B510)
  {
    result = &type metadata for PrimarySettingsListFollowUpHeaderModel;
    atomic_store(&type metadata for PrimarySettingsListFollowUpHeaderModel, &qword_10015B510);
  }

  return result;
}

ValueMetadata *sub_1000226B4()
{
  result = qword_10015B4E8;
  if (!qword_10015B4E8)
  {
    result = &type metadata for PrimarySettingsListBadgedImagelessLinkModel;
    atomic_store(&type metadata for PrimarySettingsListBadgedImagelessLinkModel, &qword_10015B4E8);
  }

  return result;
}

ValueMetadata *sub_1000226E4()
{
  result = qword_10015B518;
  if (!qword_10015B518)
  {
    result = &type metadata for PrimarySettingsListFollowUpActionModel;
    atomic_store(&type metadata for PrimarySettingsListFollowUpActionModel, &qword_10015B518);
  }

  return result;
}

ValueMetadata *sub_100022714()
{
  result = qword_10015B4E0;
  if (!qword_10015B4E0)
  {
    result = &type metadata for PrimarySettingsListImagelessLinkModel;
    atomic_store(&type metadata for PrimarySettingsListImagelessLinkModel, &qword_10015B4E0);
  }

  return result;
}