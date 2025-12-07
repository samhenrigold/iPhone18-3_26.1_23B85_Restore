uint64_t specialized MOAngelDefaultsManager.notificationReporterIdentification.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized MOAngelDefaultsManager.chosenDefaultAppBundleID()()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo23MOEventBundleSourceTypea_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MOEventBundleSourceType(0);
  lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType, &protocol conformance descriptor for MOEventBundleSourceType);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
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

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo33BMMomentsEngagementSuggestionTypeV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for BMMomentsEngagementSuggestionType(0);
  lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability(&lazy protocol witness table cache variable for type BMMomentsEngagementSuggestionType and conformance BMMomentsEngagementSuggestionType, type metadata accessor for BMMomentsEngagementSuggestionType, &protocol conformance descriptor for BMMomentsEngagementSuggestionType);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CloudDevice.Capability();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Any?(&v6);
    return 2;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t specialized static MOAngelDefaultsManager.dictionaryValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVyXlGMd, &_sSDys11AnyHashableVyXlGMR);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MOAppDelegate.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC16MomentsUIService13MOAppDelegate_notificationManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static SuggestionNotificationManager.shared;
  *&v1[v19] = static SuggestionNotificationManager.shared;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v21 = v20;
  v22 = objc_msgSendSuper2(&v34, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultManager];
  v26 = [v25 URLsForDirectory:14 inDomains:1];

  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v27 + 16))
  {

    if (*(v27 + 16))
    {
      v29 = v24;
      (*(v10 + 16))(v16, v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

      (*(v10 + 32))(v18, v16, v9);
      URL.appendingPathComponent(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMR);
      type metadata accessor for Tips.ConfigurationOption();
      *(swift_allocObject() + 16) = xmmword_1002A4A00;
      static Tips.ConfigurationOption.DatastoreLocation.url(_:)();
      static Tips.ConfigurationOption.datastoreLocation(_:)();
      (*(v30 + 8))(v8, v31);
      static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
      static Tips.ConfigurationOption.analyticsEngine(_:)();
      (*(v32 + 8))(v5, v33);
      static Tips.configure(_:)();

      v28 = *(v10 + 8);
      v28(v13, v9);
      v28(v18, v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

id MOSceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized MOAppDelegate.application(_:configurationForConnecting:options:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Scene session", v5, 2u);
  }

  v6 = [a1 role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v6];
  type metadata accessor for MOSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

id WorkoutStartLocationAnnotation.init()(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id @objc WorkoutStartLocationAnnotation.init()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

void *WorkoutLocationAnnotationView.__allocating_init(annotation:type:tileSize:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();

  return specialized WorkoutLocationAnnotationView.__allocating_init(annotation:type:tileSize:)(a1, a2 & 1, ObjectType);
}

void *WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(a1, a2 & 1, v2);
}

uint64_t WorkoutLocationAnnotationView.init(coder:)(void *a1)
{
  type metadata accessor for WorkoutLocationAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall WorkoutLocationAnnotationView.setTintColor(_:)(MomentsUIService::WorkoutLocationAnnotationView::RouteAnnotationViewType a1)
{
  if (a1)
  {
    v2 = HKUIStandardMapRedColor();
  }

  else
  {
    v2 = HKUIStandardMapGreenColor();
  }

  v3 = v2;
  [v1 setTintColor:v3];
}

void WorkoutLocationAnnotationView.draw(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    c = v9;
    CGContextSetLineWidth(v9, 2.0);
    v10 = [v4 tintColor];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 CGColor];

      CGContextSetFillColorWithColor(c, v12);
      v13 = [objc_opt_self() whiteColor];
      v14 = [v13 CGColor];

      CGContextSetStrokeColorWithColor(c, v14);
      v17.origin.x = a1;
      v17.origin.y = a2;
      v17.size.width = a3;
      v17.size.height = a4;
      v18 = CGRectInset(v17, 2.0, 2.0);
      CGContextAddEllipseInRect(c, v18);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id WorkoutLocationAnnotationView.__allocating_init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithAnnotation:a1 reuseIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id WorkoutStartLocationAnnotation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v18.receiver = a3;
  v18.super_class = type metadata accessor for WorkoutLocationAnnotationView();
  v5 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, 0);
  swift_unknownObjectRelease();
  v6 = v5;
  [v6 setFrame:{0.0, 0.0, 15.0, 15.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setCanShowCallout:1];
  (*((swift_isaMask & *v8) + 0x58))(v3 & 1);
  [v8 setIsAccessibilityElement:1];
  v10 = UIAccessibilityTraitImage;
  v11 = [v8 accessibilityTraits];
  if ((v10 & ~v11) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits:v12 | v11];
  v13 = [objc_opt_self() mainBundle];
  v19._object = 0x80000001002B3520;
  v14._countAndFlagsBits = 0x6E73206574756F52;
  v14._object = 0xEE00746F68737061;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000033;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v19);

  v16 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v16];

  return v8;
}

void *specialized WorkoutLocationAnnotationView.__allocating_init(annotation:type:tileSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());

  return specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(a1, v3 & 1, v5);
}

unint64_t lazy protocol witness table accessor for type WorkoutLocationAnnotationView.RouteAnnotationViewType and conformance WorkoutLocationAnnotationView.RouteAnnotationViewType()
{
  result = lazy protocol witness table cache variable for type WorkoutLocationAnnotationView.RouteAnnotationViewType and conformance WorkoutLocationAnnotationView.RouteAnnotationViewType;
  if (!lazy protocol witness table cache variable for type WorkoutLocationAnnotationView.RouteAnnotationViewType and conformance WorkoutLocationAnnotationView.RouteAnnotationViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutLocationAnnotationView.RouteAnnotationViewType and conformance WorkoutLocationAnnotationView.RouteAnnotationViewType);
  }

  return result;
}

id PrivacyViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id PrivacyViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id PrivacyViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized PrivacyViewController.init(clientName:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x80000001002B37B0;
  v5._countAndFlagsBits = 0xD000000000000137;
  v5._object = 0x80000001002B3670;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v23);

  static String.localizedStringWithFormat(_:_:)();

  v7 = [v3 mainBundle];
  v24._object = 0x80000001002B37F0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v8._object = 0x80000001002B37D0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v24);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v22.receiver = v0;
  v22.super_class = type metadata accessor for PrivacyViewController();
  v12 = objc_msgSendSuper2(&v22, "initWithTitle:detailText:icon:contentLayout:", v10, v11, v2, 2);

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 boldButton];
  [v15 addTarget:v14 action:"doneTapped:" forControlEvents:64];
  v16 = [v3 mainBundle];
  v25._object = 0x80000001002B3810;
  v17._countAndFlagsBits = 1701736260;
  v17._object = 0xE400000000000000;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v25);

  v19 = String._bridgeToObjectiveC()();

  [v15 setTitle:v19 forState:0];

  v20 = [v14 buttonTray];
  [v20 addButton:v15];

  return v14;
}

id one-time initialization function for healthStore()
{
  result = [objc_allocWithZone(HKHealthStore) init];
  static MOSuggestionAssetActivityRingsProvider.healthStore = result;
  return result;
}

uint64_t MOSuggestionAssetActivityRingsProvider.getAsset(workoutStartDate:workoutEndDate:index:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a4;
  v85 = a5;
  v89 = a2;
  v79 = a1;
  v90 = type metadata accessor for Date();
  v88 = *(v90 - 8);
  v7 = __chkstk_darwin(v90);
  v92 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v80 = &v76 - v10;
  __chkstk_darwin(v9);
  v76 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v12 - 8);
  v91 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  __chkstk_darwin(v14 - 8);
  v87 = &v76 - v15;
  v16 = type metadata accessor for DateComponents();
  v82 = *(v16 - 8);
  v83 = v16;
  __chkstk_darwin(v16);
  v93 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Calendar();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v76 - v22;
  v78 = v5;
  *&v5[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_idx] = a3;
  static Calendar.autoupdatingCurrent.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v24 = type metadata accessor for Calendar.Component();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002A55C0;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for Calendar.Component.year(_:), v24);
  v30(v29 + v26, enum case for Calendar.Component.month(_:), v24);
  v31 = v89;
  v30(v29 + 2 * v26, enum case for Calendar.Component.day(_:), v24);
  v32 = v88;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v28);
  swift_setDeallocating();
  v33 = v90;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v34 = *(v19 + 16);
  v35 = v87;
  v81 = v23;
  v34(v87, v23, v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  DateComponents.calendar.setter();
  v36 = v86;
  static Calendar.autoupdatingCurrent.getter();
  v37 = v91;
  Calendar.date(from:)();
  v38 = *(v19 + 8);
  v86 = (v19 + 8);
  v87 = v18;
  v77 = v38;
  v38(v36, v18);
  result = (*(v32 + 48))(v37, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v76;
    (*(v32 + 32))(v76, v37, v33);
    v41 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
    v42 = v78;
    swift_beginAccess();
    (*(v32 + 40))(&v42[v41], v40, v33);
    swift_endAccess();
    v43 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate;
    swift_beginAccess();
    (*(v32 + 24))(&v42[v43], v31, v33);
    swift_endAccess();
    v44 = [objc_allocWithZone(HKActivitySummary) init];
    v45 = *(v42 + 2);
    *(v42 + 2) = v44;

    v46 = objc_opt_self();
    v47 = *(v32 + 16);
    v47(v40, &v42[v41], v33);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v91 = *(v32 + 8);
    (v91)(v40, v33);
    v49 = Date._bridgeToObjectiveC()().super.isa;
    v50 = [v46 predicateForSamplesWithStartDate:isa endDate:v49 options:1];

    v51 = *&v42[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate];
    *&v42[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate] = v50;

    v52 = DateComponents._bridgeToObjectiveC()().super.isa;
    v53 = [v46 predicateForActivitySummaryWithDateComponents:v52];

    v54 = *&v42[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_activitySummaryPredicate];
    *&v42[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_activitySummaryPredicate] = v53;

    v55 = v31;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static MOAngelLogger.shared);
    v57 = v80;
    v47(v80, v79, v33);
    v58 = v92;
    v47(v92, v55, v33);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v94[0] = v89;
      *v61 = 136315394;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v33;
      v65 = v64;
      v66 = v91;
      (v91)(v57, v63);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v65, v94);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      v68 = v92;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v66(v68, v63);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v94);

      *(v61 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v59, v60, "[Assets] Packing rings for workout startTime=%s endTime=%s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v73 = v91;
      (v91)(v58, v33);
      v73(v57, v33);
    }

    v74 = swift_allocObject();
    v74[2] = v84;
    v74[3] = v85;
    v74[4] = v42;
    v75 = *(*v42 + 312);

    v75(partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getAsset(workoutStartDate:workoutEndDate:index:completion:), v74);

    (*(v82 + 8))(v93, v83);
    return v77(v81, v87);
  }

  return result;
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getAsset(workoutStartDate:workoutEndDate:index:completion:)(void *a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(a4 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_idx);
    v12 = a1;
    a2(v6, a1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static MOAngelLogger.shared);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to generate rings", v11, 2u);
    }

    a2(*(a4 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_idx), 0);
  }
}

void MOSuggestionAssetActivityRingsProvider.getUserDefaults(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_activitySummaryPredicate);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = objc_allocWithZone(HKActivitySummaryQuery);
  v10[4] = partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getUserDefaults(completion:);
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_8;
  v8 = _Block_copy(v10);

  v9 = [v7 initWithPredicate:v5 resultsHandler:v8];
  _Block_release(v8);

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  [static MOSuggestionAssetActivityRingsProvider.healthStore executeQuery:v9];
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getUserDefaults(completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, id *a6)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_11:
    (a4)(0, a2, a3, a4, a5, a6);
    return;
  }

  v17 = a2;
  v18 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v17;
  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(a2 + 32);
  }

  v19 = v10;
  v11 = a6[2];
  v12 = [v19 appleStandHoursGoal];
  [v11 setAppleStandHoursGoal:v12];

  v13 = a6[2];
  v14 = [v19 exerciseTimeGoal];
  [v13 setExerciseTimeGoal:v14];

  v15 = a6[2];
  v16 = [v19 activeEnergyBurnedGoal];
  [v15 setActiveEnergyBurnedGoal:v16];

  (*(*a6 + 40))(a4, a5);
}

id MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v35 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for DateComponents();
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
  if (result)
  {
    v18 = result;
    v19 = type metadata accessor for Calendar();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = type metadata accessor for TimeZone();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.hour.setter();
    v21 = *(v3 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate);
    v22 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
    swift_beginAccess();
    (*(v5 + 16))(v7, v3 + v22, v4);
    v23 = objc_allocWithZone(HKStatisticsCollectionQuery);
    v24 = v21;
    v25 = v18;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v34 = v16;
    v28 = v4;
    v29 = v27.super.isa;
    v30 = [v23 initWithQuantityType:v25 quantitySamplePredicate:v24 options:0 anchorDate:isa intervalComponents:v27.super.isa];

    (*(v5 + 8))(v7, v28);
    v31 = swift_allocObject();
    v32 = v35;
    v31[2] = v3;
    v31[3] = v32;
    v31[4] = v38;
    aBlock[4] = partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_9;
    v33 = _Block_copy(aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:));

    [v30 setInitialResultsHandler:v33];
    _Block_release(v33);

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    [static MOSuggestionAssetActivityRingsProvider.healthStore executeQuery:v30];

    return (*(v36 + 8))(v34, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  if (a2)
  {
    v29 = a5;
    v15 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
    swift_beginAccess();
    v16 = a6;
    v17 = *(v11 + 16);
    v17(v13, a4 + v15, v10);
    v28 = a2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = *(v11 + 8);
    v18(v13, v10);
    v19 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate;
    swift_beginAccess();
    v17(v13, a4 + v19, v10);
    a6 = v16;
    v20 = Date._bridgeToObjectiveC()().super.isa;
    v18(v13, v10);
    a5 = v29;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:);
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_52;
    v22 = _Block_copy(aBlock);

    v24 = isa;
    v23 = v28;
    [v28 enumerateStatisticsFromDate:isa toDate:v20 withBlock:v22];
    _Block_release(v22);
  }

  (*(*a4 + 328))(a5, a6);

  return result;
}

void closure #1 in closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 sumQuantity];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 minuteUnit];
    [v7 doubleValueForUnit:v9];
    v11 = v10;

    if (v11 > 0.0)
    {
      swift_beginAccess();
      *(a3 + 16) = *(a3 + 16) + 1.0;
    }

    v12 = *(a4 + 16);
    v13 = [v8 countUnit];
    swift_beginAccess();
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:*(a3 + 16)];

    [v12 setAppleStandHours:v14];
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getExerciseMinutes(completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, id *a6)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = [v9 sumQuantity];
  if (!v10)
  {

LABEL_7:
    a4(0);
    return;
  }

  v11 = v10;
  [a6[2] setAppleExerciseTime:?];
  (*(*a6 + 42))(a4, a5);
}

void MOSuggestionAssetActivityRingsProvider.getExerciseMinutes(completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
  v12 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier:*a3];
  if (v12)
  {
    v13 = v12;
    v14 = *(v6 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate);
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v6;
    v16 = objc_allocWithZone(HKStatisticsQuery);
    v19[4] = a5;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    v19[3] = a6;
    v17 = _Block_copy(v19);

    v18 = [v16 initWithQuantityType:v13 quantitySamplePredicate:v14 options:0 completionHandler:v17];
    _Block_release(v17);

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    [static MOSuggestionAssetActivityRingsProvider.healthStore executeQuery:v18];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getMoveCalories(completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = a2;
    v9 = [v8 sumQuantity];
    if (v9)
    {
      v10 = v9;
      [*(a6 + 16) setActiveEnergyBurned:v9];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static MOAngelLogger.shared);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "[Assets] Packed rings asset", v14, 2u);
      }

      v15 = *(a6 + 16);
      v20 = v15;
      a4(v15);

      return;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static MOAngelLogger.shared);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Assets] Unable to obtain user move calories", v19, 2u);
  }

  a4(0);
}

uint64_t MOSuggestionAssetActivityRingsProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate, v2);

  return v0;
}

double MOSuggestionAssetActivityRingsProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t MOSuggestionAssetActivityRingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MOSuggestionAssetActivityRingsProvider.init()();
  return v0;
}

uint64_t MOSuggestionAssetActivityRingsProvider.init()()
{
  *(v0 + 16) = [objc_allocWithZone(HKActivitySummary) init];
  Date.init()();
  Date.init()();
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate;
  *(v0 + v1) = [objc_allocWithZone(NSPredicate) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_activitySummaryPredicate;
  *(v0 + v2) = [objc_allocWithZone(NSPredicate) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_workout) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_idx) = -1;
  return v0;
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKActivitySummary, HKActivitySummary_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A170()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for MOSuggestionAssetActivityRingsProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionAssetActivityRingsProvider;
  if (!type metadata singleton initialization cache for MOSuggestionAssetActivityRingsProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MOSuggestionAssetActivityRingsProvider(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8NSNumberC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
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

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        type metadata accessor for UIApplication(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        type metadata accessor for UIApplication(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

uint64_t sub_10009A7F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id MOResource.motionActivitySteps.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v55 - v6;
  result = [v0 data];
  if (result)
  {
    v9 = result;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:0 error:v57];

    if (!v15)
    {
      v37 = v57[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v10, v12);

      return 0;
    }

    v16 = v57[0];
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v10, v12);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      v17 = v56;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v17 + 16))
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        v22 = v21;

        if (v22)
        {
          v23 = *(*(v17 + 56) + 8 * v20);
          swift_unknownObjectRetain();

          v56 = v23;
          if (swift_dynamicCast())
          {
            static CharacterSet.decimalDigits.getter();
            CharacterSet.inverted.getter();
            v24 = *(v2 + 8);
            v24(v7, v1);
            lazy protocol witness table accessor for type String and conformance String();
            v25 = StringProtocol.trimmingCharacters(in:)();
            v27 = v26;
            v24(v5, v1);

            v28 = HIBYTE(v27) & 0xF;
            v29 = v25 & 0xFFFFFFFFFFFFLL;
            if ((v27 & 0x2000000000000000) != 0)
            {
              v30 = HIBYTE(v27) & 0xF;
            }

            else
            {
              v30 = v25 & 0xFFFFFFFFFFFFLL;
            }

            if (v30)
            {
              if ((v27 & 0x1000000000000000) != 0)
              {
                LOBYTE(v56) = 0;
                specialized _parseInteger<A, B>(ascii:radix:)(v25, v27, 10);
                v33 = v53;
                v52 = v54;
LABEL_74:

                if (v52)
                {
                  return 0;
                }

                else
                {
                  return v33;
                }
              }

              if ((v27 & 0x2000000000000000) != 0)
              {
                v57[0] = v25;
                v57[1] = (v27 & 0xFFFFFFFFFFFFFFLL);
                if (v25 == 43)
                {
                  if (v28)
                  {
                    if (--v28)
                    {
                      v33 = 0;
                      v44 = v57 + 1;
                      while (1)
                      {
                        v45 = *v44 - 48;
                        if (v45 > 9)
                        {
                          break;
                        }

                        v46 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          break;
                        }

                        v33 = v46 + v45;
                        if (__OFADD__(v46, v45))
                        {
                          break;
                        }

                        ++v44;
                        if (!--v28)
                        {
                          goto LABEL_73;
                        }
                      }
                    }

                    goto LABEL_72;
                  }

LABEL_83:
                  __break(1u);
                }

                if (v25 != 45)
                {
                  if (v28)
                  {
                    v33 = 0;
                    v49 = v57;
                    while (1)
                    {
                      v50 = *v49 - 48;
                      if (v50 > 9)
                      {
                        break;
                      }

                      v51 = 10 * v33;
                      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                      {
                        break;
                      }

                      v33 = v51 + v50;
                      if (__OFADD__(v51, v50))
                      {
                        break;
                      }

                      v49 = (v49 + 1);
                      if (!--v28)
                      {
                        goto LABEL_73;
                      }
                    }
                  }

                  goto LABEL_72;
                }

                if (v28)
                {
                  if (--v28)
                  {
                    v33 = 0;
                    v38 = v57 + 1;
                    while (1)
                    {
                      v39 = *v38 - 48;
                      if (v39 > 9)
                      {
                        break;
                      }

                      v40 = 10 * v33;
                      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                      {
                        break;
                      }

                      v33 = v40 - v39;
                      if (__OFSUB__(v40, v39))
                      {
                        break;
                      }

                      ++v38;
                      if (!--v28)
                      {
                        goto LABEL_73;
                      }
                    }
                  }

                  goto LABEL_72;
                }
              }

              else
              {
                if ((v25 & 0x1000000000000000) != 0)
                {
                  v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v31 = _StringObject.sharedUTF8.getter();
                }

                v32 = *v31;
                if (v32 == 43)
                {
                  if (v29 >= 1)
                  {
                    v28 = v29 - 1;
                    if (v29 != 1)
                    {
                      v33 = 0;
                      if (v31)
                      {
                        v41 = v31 + 1;
                        while (1)
                        {
                          v42 = *v41 - 48;
                          if (v42 > 9)
                          {
                            goto LABEL_72;
                          }

                          v43 = 10 * v33;
                          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                          {
                            goto LABEL_72;
                          }

                          v33 = v43 + v42;
                          if (__OFADD__(v43, v42))
                          {
                            goto LABEL_72;
                          }

                          ++v41;
                          if (!--v28)
                          {
                            goto LABEL_73;
                          }
                        }
                      }

                      goto LABEL_64;
                    }

                    goto LABEL_72;
                  }

                  goto LABEL_82;
                }

                if (v32 != 45)
                {
                  if (v29)
                  {
                    v33 = 0;
                    if (v31)
                    {
                      while (1)
                      {
                        v47 = *v31 - 48;
                        if (v47 > 9)
                        {
                          goto LABEL_72;
                        }

                        v48 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          goto LABEL_72;
                        }

                        v33 = v48 + v47;
                        if (__OFADD__(v48, v47))
                        {
                          goto LABEL_72;
                        }

                        ++v31;
                        if (!--v29)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    goto LABEL_64;
                  }

LABEL_72:
                  v33 = 0;
                  LOBYTE(v28) = 1;
                  goto LABEL_73;
                }

                if (v29 >= 1)
                {
                  v28 = v29 - 1;
                  if (v29 != 1)
                  {
                    v33 = 0;
                    if (v31)
                    {
                      v34 = v31 + 1;
                      while (1)
                      {
                        v35 = *v34 - 48;
                        if (v35 > 9)
                        {
                          goto LABEL_72;
                        }

                        v36 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          goto LABEL_72;
                        }

                        v33 = v36 - v35;
                        if (__OFSUB__(v36, v35))
                        {
                          goto LABEL_72;
                        }

                        ++v34;
                        if (!--v28)
                        {
                          goto LABEL_73;
                        }
                      }
                    }

LABEL_64:
                    LOBYTE(v28) = 0;
LABEL_73:
                    LOBYTE(v56) = v28;
                    v52 = v28;
                    goto LABEL_74;
                  }

                  goto LABEL_72;
                }

                __break(1u);
              }

              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            goto LABEL_28;
          }

          return 0;
        }
      }

      else
      {
      }

LABEL_28:
    }

    return 0;
  }

  return result;
}

uint64_t MOResource.motionActivityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 data];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v49[0] = 0;
  v14 = [v12 JSONObjectWithData:isa options:0 error:v49];

  if (!v14)
  {
    v28 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v9, v11);

    goto LABEL_13;
  }

  v15 = v49[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v9, v11);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if (swift_dynamicCast())
  {
    v16 = v48;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v16[2].isa)
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = *(v16[7].isa + v19);
        swift_unknownObjectRetain();

        v49[0] = v22;
        type metadata accessor for MOWorkoutMotionActivityAction(0);
        if (swift_dynamicCast())
        {
          v23 = v48;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
          {

LABEL_16:
            static MotionActivity.walk.getter();
LABEL_17:

            v29 = 0;
            goto LABEL_14;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_16;
          }

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
          if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
          {

LABEL_22:
            static MotionActivity.runAndWalk.getter();
            goto LABEL_17;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_22;
          }

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;
          if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
          {

LABEL_27:
            static MotionActivity.run.getter();
            goto LABEL_17;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_27;
          }

          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v43, v44, "[motionActivityType] unknown MOWorkoutMotionActivityAction", v45, 2u);

            v46 = v23;
          }

          else
          {
            v46 = v43;
            v43 = v23;
          }

          (*(v4 + 8))(v6, v3);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v29 = 1;
LABEL_14:
  v30 = type metadata accessor for MotionActivity();
  return (*(*(v30 - 8) + 56))(a1, v29, 1, v30);
}

uint64_t MOResource.motionActivityDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  v5 = [v1 data];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:v30];

  if (!v12)
  {
    v26 = v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v7, v9);

    goto LABEL_14;
  }

  v13 = v30[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v7, v9);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v25 = 1;
    goto LABEL_15;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {
    goto LABEL_12;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v30[0] = *(*(v29 + 56) + 8 * v16);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = *(*(v29 + 56) + 8 * v21);
  swift_unknownObjectRetain();

  v30[0] = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  Date.init(timeIntervalSince1970:)();
  Date.init(timeIntervalSince1970:)();
  DateInterval.init(start:end:)();
  v25 = 0;
LABEL_15:
  v27 = type metadata accessor for DateInterval();
  return (*(*(v27 - 8) + 56))(a1, v25, 1, v27);
}

double outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void MOSuggestionInterstitialListAssetViewModel.__allocating_init(multiPinMapAsset:)(unint64_t a1)
{
  v151 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v141 = *(v151 - 8);
  v2 = __chkstk_darwin(v151);
  v139 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v144 = &v119 - v5;
  __chkstk_darwin(v4);
  v143 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v119 - v8;
  v150 = type metadata accessor for Date();
  v10 = *(v150 - 8);
  __chkstk_darwin(v150);
  v142 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v140 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v119 - v15;
  v17 = [a1 assetType];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_90:
      if (one-time initialization token for shared != -1)
      {
LABEL_110:
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static MOAngelLogger.shared);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "[MOSuggestionInterstitialListAssetViewModel.multiPinMapAsset] Mismatched init for asset type", v93, 2u);
      }

      return;
    }
  }

  [a1 contentClassType];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (ObjCClassMetadata == type metadata accessor for MOSuggestionGenericFallBackInfo())
  {
    goto LABEL_90;
  }

  v137 = [a1 assetType];
  v158 = _swiftEmptyArrayStorage;
  v159 = _swiftEmptyArrayStorage;
  v24 = [a1 metadata];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  v152 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v27 = v26;
  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(&v154), (v29 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v154);
    goto LABEL_95;
  }

  outlined init with copy of Any(*(v25 + 56) + 32 * v28, &v156);
  outlined destroy of AnyHashable(&v154);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo28MOSuggestionAssetMetadataKeyaypGGMd, &_sSaySDySo28MOSuggestionAssetMetadataKeyaypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_95:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static MOAngelLogger.shared);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "[MOSuggestionInterstitialListAssetViewModel.multiPinMapAsset] Failed to unwrap metadata", v97, 2u);
    }

    return;
  }

  v30 = v152;
  v31 = *(v152 + 16);
  if (!v31)
  {

    goto LABEL_95;
  }

  v129 = a1;
  v32 = 0;
  v149 = (v141 + 56);
  v147 = (v152 + 32);
  v148 = (v10 + 56);
  v133 = (v10 + 32);
  v134 = (v10 + 48);
  v131 = (v10 + 8);
  v132 = (v10 + 16);
  v136 = (v141 + 48);
  v145 = v31;
  v124 = v31 - 1;
  v125 = xmmword_1002A48B0;
  v126 = xmmword_1002A4A70;
  v130 = _swiftEmptyArrayStorage;
  v127 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v135 = _swiftEmptyArrayStorage;
  v33 = v140;
  v146 = v152;
  do
  {
    a1 = v32;
    p_align = (&stru_100327FE8 + 24);
    while (1)
    {
      if (a1 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_110;
      }

      v35 = *&v147[8 * a1];
      v36 = *v149;
      (*v149)(v16, 1, 1, v151);
      if (!*(v35 + 16))
      {

LABEL_25:
        (*v148)(v9, 1, 1, v150);
LABEL_26:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (!*(v35 + 16))
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v37 = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v38, &v154);
      v40 = v150;
      v41 = swift_dynamicCast();
      v42 = *v148;
      (*v148)(v9, v41 ^ 1u, 1, v40);
      v43 = v40;
      p_align = (&stru_100327FE8 + 24);
      if ((*v134)(v9, 1, v43) == 1)
      {
        goto LABEL_26;
      }

      v44 = v142;
      v45 = v150;
      (*v133)(v142, v9, v150);
      v46 = v143;
      (*v132)(v143, v44, v45);
      v42((v46 + *(v151 + 20)), 1, 1, v45);
      outlined init with copy of MOSuggestionSheetAssetDateRange(v46, v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v135 + 2) + 1, 1, v135);
      }

      v48 = *(v135 + 2);
      v47 = *(v135 + 3);
      v33 = v140;
      if (v48 >= v47 >> 1)
      {
        v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v135);
      }

      (*v131)(v142, v150);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
      v49 = v135;
      *(v135 + 2) = v48 + 1;
      outlined init with take of MOSuggestionSheetAssetDateRange(v144, v49 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v48);
      outlined init with take of MOSuggestionSheetAssetDateRange(v143, v16);
      v36(v16, 0, 1, v151);
      p_align = &stru_100327FE8.align;
      if (!*(v35 + 16))
      {
LABEL_32:
        v156 = 0;
        v157 = 0;
        goto LABEL_33;
      }

LABEL_27:
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewPlaceName);
      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v50, &v154);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v157)
      {
        if (!*(v35 + 16))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

LABEL_33:
      v52 = *(v35 + 16);
      if (!v52)
      {
        goto LABEL_38;
      }

      v53 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
      if ((v54 & 1) == 0)
      {
        v52 = 0;
LABEL_38:
        v56 = 0;
        goto LABEL_39;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v53, &v154);
      v55 = swift_dynamicCast();
      v52 = v152;
      v56 = v153;
      if (!v55)
      {
        v52 = 0;
        v56 = 0;
      }

LABEL_39:
      v156 = v52;
      v157 = v56;

      if (!*(v35 + 16))
      {
        goto LABEL_46;
      }

LABEL_40:
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem);
      if ((v58 & 1) == 0 || (outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v154), type metadata accessor for MKMapItem(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_46:
        if (*(v35 + 16))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace);
          if (v65)
          {
            outlined init with copy of Any(*(v35 + 56) + 32 * v64, &v154);
            if ((swift_dynamicCast() & 1) != 0 && v152 == 2)
            {

              v66 = [objc_opt_self() workStyleAttributes];
              if (!v66)
              {
                goto LABEL_115;
              }

              v67 = v66;
              v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v66);

              if (!v63)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
                goto LABEL_13;
              }

              goto LABEL_64;
            }
          }
        }

        if (*(v35 + 16))
        {
          v68 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
          if (v69)
          {
            outlined init with copy of Any(*(v35 + 56) + 32 * v68, &v154);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_61;
            }

            if (v157)
            {
              if (v156 == v152 && v157 == v153)
              {

                goto LABEL_74;
              }

              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v72)
              {
LABEL_74:
                if (one-time initialization token for cityStyleAttributes != -1)
                {
                  swift_once();
                }

                if (static MOPOIAnnotationView.cityStyleAttributes)
                {
                  v73 = static MOPOIAnnotationView.cityStyleAttributes;
                  v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v73);

                  if (v63)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_61:
              if (one-time initialization token for genericIconWithColor != -1)
              {
                swift_once();
              }

              v63 = static MOPOIAnnotationView.genericIconWithColor;

LABEL_64:
              v59 = 0;
LABEL_65:
              v70 = v157;
              if (v157)
              {
                break;
              }

              goto LABEL_12;
            }
          }
        }

        goto LABEL_61;
      }

      v59 = v152;
      v60 = [v59 *(p_align + 300)];
      if (v60)
      {

        v61 = [v59 *(p_align + 300)];
        if (!v61)
        {
          goto LABEL_114;
        }

        v62 = v61;
        v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v61);

        if (v63)
        {
          goto LABEL_65;
        }
      }

      else
      {
      }

      if (one-time initialization token for genericIconWithColor != -1)
      {
        swift_once();
      }

      v63 = static MOPOIAnnotationView.genericIconWithColor;

      v70 = v157;
      if (v157)
      {
        break;
      }

LABEL_12:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);

LABEL_13:
      ++a1;

      v30 = v146;
      if (v145 == a1)
      {
        goto LABEL_100;
      }
    }

    v71 = v156;
    outlined init with copy of MOSuggestionSheetAssetDateRange?(v16, v33);
    if ((*v136)(v33, 1, v151) == 1)
    {

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
      p_align = (&stru_100327FE8 + 24);
      goto LABEL_13;
    }

    outlined init with take of MOSuggestionSheetAssetDateRange(v33, v139);

    v74 = [v129 identifier];
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v154 = v128;
    v155 = v76;
    v152 = 35;
    v153 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v77 = StringProtocol.components<A>(separatedBy:)();

    if (!v77[2])
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);

      __break(1u);
      return;
    }

    v78 = v77[4];
    v127 = v77[5];
    v128 = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
    v79 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v80 = swift_allocObject();
    v123 = v80;
    *(v80 + 16) = v125;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v139, v80 + v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v81 = swift_allocObject();
    v122 = v81;
    *(v81 + 16) = v125;
    *(v81 + 32) = v71;
    *(v81 + 40) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v82 = swift_allocObject();
    v121 = v82;
    *(v82 + 16) = v126;
    *(v82 + 32) = v63;
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
    v83 = swift_allocObject();
    *(v83 + 32) = 0u;
    *(v83 + 48) = 0u;
    v120 = (v83 + 48);
    *(v83 + 64) = 0;
    *(v83 + 16) = 0u;
    *(v83 + 90) = 1;
    v119 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

    UUID.init()();
    swift_beginAccess();
    *(v83 + 16) = 0;

    swift_beginAccess();
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;

    swift_beginAccess();
    *(v83 + 40) = v123;

    v84 = v120;
    swift_beginAccess();
    *v84 = v122;

    swift_beginAccess();
    *(v83 + 56) = v121;

    *(v83 + 65) = 15;
    v85 = v127;
    *(v83 + 72) = v128;
    *(v83 + 80) = v85;
    *(v83 + 88) = 0;
    *(v83 + 90) = 0;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v128 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v127 = v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
    }

    v87 = *(v130 + 2);
    v86 = *(v130 + 3);
    if (v87 >= v86 >> 1)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v130);
    }

    v88 = v130;
    *(v130 + 2) = v87 + 1;
    v89 = &v88[2 * v87];
    *(v89 + 4) = v71;
    *(v89 + 5) = v70;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v32 = a1 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of MOSuggestionSheetAssetDateRange(v139);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
    v128 = v158;

    v33 = v140;
    v30 = v146;
  }

  while (v124 != a1);
LABEL_100:

  v98 = v129;
  v99 = [v129 content];
  objc_opt_self();
  v100 = swift_dynamicCastObjCClass();
  if (!v100)
  {

    swift_unknownObjectRelease();
    return;
  }

  v101 = v100;
  v102 = [v98 identifier];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  v154 = v103;
  v155 = v105;
  v156 = 35;
  v157 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v106 = StringProtocol.components<A>(separatedBy:)();

  if (v106[2])
  {
    v107 = v106[4];
    v108 = v106[5];

    v106 = (*(v138 + 344))(v107, v108, 0, 0, 0, 0, 0, 0, 271);
    if (!(v127 >> 62))
    {
      v109 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_104;
    }
  }

  else
  {
    __break(1u);
  }

  v109 = _CocoaArrayWrapper.endIndex.getter();
LABEL_104:
  v150 = v101;
  v151 = v99;
  if (v109 >= 2)
  {

    v154 = specialized Array._copyToContiguousArray()(v111, v110);
    specialized MutableCollection<>.sort(by:)(&v154);

    v112 = v154;
    swift_beginAccess();
    v106[2] = v112;
  }

  v113 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
  v115 = v114;
  swift_beginAccess();
  v106[3] = v113;
  v106[4] = v115;

  swift_beginAccess();
  v106[6] = v130;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v116 = swift_allocObject();
  *(v116 + 16) = v126;
  type metadata accessor for MOSuggestionSheetImage();
  v117 = swift_allocObject();
  *(v117 + 40) = 0;
  *(v117 + 32) = 0;
  *(v117 + 24) = 0;
  *(v117 + 72) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 88) = 1;
  *(v117 + 96) = 0;
  *(v117 + 104) = 1;
  *(v117 + 16) = v150;
  swift_beginAccess();
  *(v117 + 24) = 0;
  swift_beginAccess();
  *(v117 + 32) = 0;
  swift_beginAccess();
  v118 = *(v117 + 40);
  *(v117 + 40) = 0;
  swift_unknownObjectRetain();

  *(v117 + 48) = 0;
  swift_beginAccess();
  *(v117 + 72) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 88) = 1;
  swift_beginAccess();
  *(v117 + 96) = 0;
  *(v117 + 104) = 1;
  *(v116 + 32) = v117;

  swift_unknownObjectRelease();
  swift_beginAccess();
  v106[7] = v116;

  swift_beginAccess();
  v106[5] = v135;
}

id static MOPOIAnnotationView.iconWithColor(type:mapItem:)(unsigned __int8 a1, void *a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (one-time initialization token for cityStyleAttributes != -1)
      {
        swift_once();
      }

      if (static MOPOIAnnotationView.cityStyleAttributes)
      {
        v7 = static MOPOIAnnotationView.cityStyleAttributes;
        v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v7);

        if (v6)
        {
          return v6;
        }
      }
    }

    goto LABEL_17;
  }

  if (!a1)
  {
    if (a2)
    {
      v2 = a2;
      v3 = [v2 _styleAttributes];
      if (v3)
      {

        result = [v2 _styleAttributes];
        if (result)
        {
          v5 = result;
          v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(result);

          if (!v6)
          {
            goto LABEL_17;
          }

          return v6;
        }

        goto LABEL_22;
      }
    }

LABEL_17:
    if (one-time initialization token for genericIconWithColor != -1)
    {
      swift_once();
    }

    v6 = static MOPOIAnnotationView.genericIconWithColor;

    return v6;
  }

  result = [objc_opt_self() workStyleAttributes];
  if (result)
  {
    v8 = result;
    v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(result);

    return v6;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void one-time initialization function for genericIconWithColor()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 whiteColor];
    v4 = [v2 systemIndigoColor];
    type metadata accessor for MOSuggestionSheetImage();
    v5 = swift_allocObject();
    *(v5 + 40) = 0;
    *(v5 + 32) = 0;
    *(v5 + 24) = 0;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 88) = 1;
    *(v5 + 96) = 0;
    *(v5 + 104) = 1;
    *(v5 + 16) = v1;
    swift_beginAccess();
    *(v5 + 24) = v3;
    swift_beginAccess();
    *(v5 + 32) = v4;
    swift_beginAccess();
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    *(v5 + 48) = 0;
    swift_beginAccess();
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 88) = 1;
    swift_beginAccess();
    *(v5 + 96) = 0x4010000000000000;
    *(v5 + 104) = 0;
    static MOPOIAnnotationView.genericIconWithColor = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey)
  {
    type metadata accessor for MOSuggestionAssetMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey);
  }

  return result;
}

uint64_t outlined init with copy of MOSuggestionSheetAssetDateRange?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static MOPOIAnnotationView.poiWithStyle(_:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v2 newFillColorForStyleAttributes:a1 forScale:v6];
  v8 = v2;
  if (!v7)
  {
    return 0;
  }

  v9 = [v3 mainScreen];
  [v9 scale];
  v11 = v10;

  result = [v2 imageForStyle:a1 size:3 forScale:0 format:v11];
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(UIColor) initWithCGColor:v7];

    v15 = [objc_opt_self() whiteColor];
    type metadata accessor for MOSuggestionSheetImage();
    v16 = swift_allocObject();
    *(v16 + 40) = 0;
    *(v16 + 32) = 0;
    *(v16 + 24) = 0;
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 88) = 1;
    *(v16 + 96) = 0;
    *(v16 + 104) = 1;
    *(v16 + 16) = v13;
    swift_beginAccess();
    *(v16 + 24) = v14;
    swift_beginAccess();
    *(v16 + 32) = v15;
    swift_beginAccess();
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    swift_beginAccess();
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 88) = 1;
    swift_beginAccess();
    result = v16;
    *(v16 + 96) = 0xC000000000000000;
    *(v16 + 104) = 0;
  }

  return result;
}

unint64_t type metadata accessor for MKMapItem()
{
  result = lazy cache variable for type metadata for MKMapItem;
  if (!lazy cache variable for type metadata for MKMapItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MKMapItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType()
{
  result = lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType;
  if (!lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType);
  }

  return result;
}

uint64_t *MODateFormatter.dayNameFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dayNameFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.dayNameFormatter;
}

void **MODateFormatter.monthNameFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for monthNameFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.monthNameFormatter;
}

void **MODateFormatter.monthDayNumberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for monthDayNumberFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.monthDayNumberFormatter;
}

uint64_t *MODateFormatter.fullDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.fullDateFormatter;
}

id one-time initialization function for yearDateTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.yearDateTimeFormatter();
  static MODateFormatter.yearDateTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.yearDateTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setFormattingContext:2];
  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  return v4;
}

uint64_t *MODateFormatter.yearDateTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for yearDateTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.yearDateTimeFormatter;
}

uint64_t *MODateFormatter.yearDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.yearDateFormatter;
}

id one-time initialization function for fullDateWithTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.fullDateWithTimeFormatter();
  static MODateFormatter.fullDateWithTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.fullDateWithTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setFormattingContext:2];
  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  return v4;
}

uint64_t *MODateFormatter.fullDateWithTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for fullDateWithTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.fullDateWithTimeFormatter;
}

void **MODateFormatter.shortDateWithTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortDateWithTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortDateWithTimeFormatter;
}

void **MODateFormatter.shortDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortDateFormatter;
}

void one-time initialization function for dayNameFormatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v9 setLocale:isa];

  [v9 setFormattingContext:2];
  v11 = String._bridgeToObjectiveC()();
  [v9 setLocalizedDateFormatFromTemplate:v11];

  *a4 = v9;
}

uint64_t *MODateFormatter.shortTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortTimeFormatter;
}

id one-time initialization function for relativeDateFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.relativeDateFormatter();
  static MODateFormatter.relativeDateFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.relativeDateFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setUnitsStyle:0];
  [v4 setDateTimeStyle:1];
  [v4 setFormattingContext:4];
  return v4;
}

uint64_t *MODateFormatter.relativeDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for relativeDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.relativeDateFormatter;
}

uint64_t *MODateFormatter.durationWithHourMinuteSecondFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for durationWithHourMinuteSecondFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.durationWithHourMinuteSecondFormatter;
}

id one-time initialization function for durationWithHourMinuteSecondFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setUnitsStyle:0];
  [v5 setAllowedUnits:a2];
  result = [v5 setZeroFormattingBehavior:0x10000];
  *a3 = v5;
  return result;
}

uint64_t *MODateFormatter.durationWithMinuteSecondFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for durationWithMinuteSecondFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.durationWithMinuteSecondFormatter;
}

const char *MOMomentsFeatureFlags.feature.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = "MOAngelEnabled";
    v6 = "MODevEnabled";
    if (a1 != 2)
    {
      v6 = "MOLinkPreviewEnabled";
    }

    if (a1)
    {
      v5 = "MOInternalEnabled";
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
    v1 = "MOAngelMomentsUIPresentationUpdate";
    v2 = "MOEmbeddedHostingDisabled";
    if (a1 != 7)
    {
      v2 = "MOEmbeddedHosting3PNonModalEnabled";
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = "MOAngelPullToRefreshEnabled";
    if (a1 != 4)
    {
      v3 = "MOAngelMomentsUIEnabled";
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

Swift::Int PresenterServerViewController.SyncOnboardingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOAppProtectionFeatureFlags(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOMomentsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MOMomentsFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MOAppProtectionFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MOAppProtectionFeatureFlags(_WORD *result, int a2, int a3)
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

void MOSuggestionAssetMediaCoverArtQueryInput.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

id MOProtectedAppSource.protectionSubject.getter()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 applicationWithBundleIdentifier:v1];

  return v2;
}

double static MOProtectedAppSource.allFixedApps.getter()
{
  swift_beginAccess();

  return result;
}

double static MOProtectedAppSource.allFixedApps.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MOProtectedAppSource.allFixedApps = a1;

  return result;
}

double key path setter for static MOProtectedAppSource.allFixedApps : MOProtectedAppSource.Type(void *a1)
{
  v1 = *a1;

  swift_beginAccess();
  static MOProtectedAppSource.allFixedApps = v1;

  return result;
}

uint64_t static MOProtectedAppSource.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int MOProtectedAppSource.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOProtectedAppSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOProtectedAppSource(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOProtectedAppSource(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t MOProtectedAppSource.init(fixedAppSource:)(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD000000000000012;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C7070612E6D6F63;
    v2 = 0xD000000000000013;
    if (a1 == 3)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOProtectedFixedAppSource(MomentsUIService::MOProtectedFixedAppSource *a1, MomentsUIService::MOProtectedFixedAppSource *a2)
{
  v2 = *a2;
  v3 = MOProtectedAppSource.init(fixedAppSource:)(*a1);
  v4 = MOProtectedAppSource.init(fixedAppSource:)(v2);
  if (v3.bundleIdentifier._countAndFlagsBits == v4.bundleIdentifier._countAndFlagsBits && v3.bundleIdentifier._object == v4.bundleIdentifier._object)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MOProtectedFixedAppSource(uint64_t a1)
{
  MOProtectedAppSource.init(fixedAppSource:)(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOProtectedFixedAppSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MOProtectedAppSource.init(fixedAppSource:)(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOProtectedFixedAppSource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOProtectedFixedAppSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MOProtectedFixedAppSource@<X0>(MomentsUIService::MOProtectedAppSource *a1@<X8>)
{
  v4 = MOProtectedAppSource.init(fixedAppSource:)(*v1);
  result = v4.bundleIdentifier._countAndFlagsBits;
  *a1 = v4;
  return result;
}

id one-time initialization function for accessGuard()
{
  result = [objc_opt_self() sharedGuard];
  static MOProtectedAppsManager.accessGuard = result;
  return result;
}

uint64_t *MOProtectedAppsManager.accessGuard.unsafeMutableAddressor()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  return &static MOProtectedAppsManager.accessGuard;
}

id static MOProtectedAppsManager.accessGuard.getter()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  v1 = static MOProtectedAppsManager.accessGuard;

  return v1;
}

uint64_t MOProtectedAppsManager.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate;
  swift_beginAccess();
  return outlined init with copy of MOProtectedAppsManagerDelegate?(v1 + v3, a1);
}

uint64_t MOProtectedAppsManager.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate;
  swift_beginAccess();
  outlined assign with take of MOProtectedAppsManagerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MOProtectedAppsManager.monitoring.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOProtectedAppsManager.monitoring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double MOProtectedAppsManager.monitoringSubjects.getter()
{
  swift_beginAccess();

  return result;
}

double MOProtectedAppsManager.monitoringSubjects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoringSubjects;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id MOProtectedAppsManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoringSubjects] = &_swiftEmptySetSingleton;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOProtectedAppsManager();
  return objc_msgSendSuper2(&v3, "init");
}

id MOProtectedAppsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOProtectedAppsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOProtectedAppsManager.subscribeToChanges(apps:)(Swift::OpaquePointer apps)
{
  v2 = v1;
  v23[3] = &type metadata for MOAppProtectionFeatureFlags;
  v23[4] = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (v4)
  {
    (*((swift_isaMask & *v2) + 0xA0))(&_swiftEmptySetSingleton);
    v5 = *(apps._rawValue + 2);
    if (v5)
    {
      v6 = *((swift_isaMask & *v2) + 0xA8);
      v7 = (apps._rawValue + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10 = v6(v23);
        specialized Set._Variant.insert(_:)(&v22, v8, v9);

        v10(v23, 0);
        v7 += 2;
        --v5;
      }

      while (v5);
    }

    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static MOAngelLogger.filtering);
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      (*((swift_isaMask & *v12) + 0x98))();
      lazy protocol witness table accessor for type MOProtectedAppSource and conformance MOProtectedAppSource();
      v17 = Set.debugDescription.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "[subscribeToChanges] monitoring status for sources:%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    if (((*((swift_isaMask & *v12) + 0x80))() & 1) == 0)
    {
      v21 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];
      swift_unknownObjectRelease();
      (*((swift_isaMask & *v12) + 0x88))(1);
      swift_unknownObjectRelease();
    }
  }
}

id static MOProtectedAppsManager.shouldDropContentFrom(bundleIdentifier:)()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 applicationWithBundleIdentifier:v1];

  v3 = [v2 isHidden];
  return v3;
}

void static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v22 = &type metadata for MOAppProtectionFeatureFlags;
  v23 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = 1;
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = a1;
    v9[4] = v8;
    v9[5] = a2;
    v9[6] = a3;
    v10 = *(a1 + 16);
    if (v10)
    {
      v20 = objc_opt_self();

      v11 = (a1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = one-time initialization token for accessGuard;

        if (v14 != -1)
        {
          swift_once();
        }

        v15 = static MOProtectedAppsManager.accessGuard;
        v16 = String._bridgeToObjectiveC()();
        v17 = [v20 applicationWithBundleIdentifier:v16];

        v18 = swift_allocObject();
        v18[2] = v8;
        v18[3] = v12;
        v18[4] = v13;
        v18[5] = partial apply for closure #1 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:);
        v18[6] = v9;
        v23 = partial apply for closure #2 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:);
        v24 = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
        v22 = &block_descriptor_9;
        v19 = _Block_copy(aBlock);

        [v15 getIsChallengeCurrentlyRequiredForSubject:v17 completion:v19];
        _Block_release(v19);

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    else
    {
    }
  }

  else
  {
    a2(1);
  }
}

uint64_t closure #1 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4((*(a3 + 16) & 1) == 0);
    }
  }

  return result;
}

uint64_t closure #2 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if ([a1 BOOLValue])
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      if (one-time initialization token for filtering != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static MOAngelLogger.filtering);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v29);
      v15 = "protected apps requires authentication, appSource=%s";
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 0;
      if (one-time initialization token for filtering != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static MOAngelLogger.filtering);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v29);
      v15 = "protected apps requires no authentication, appSource=%s";
    }

    _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

LABEL_17:

    return a6();
  }

  if (one-time initialization token for filtering != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.filtering);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v28 = a6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = v21;
    v29[1] = a4;
    *v20 = 134218242;
    v29[2] = a5;
    lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 4) = StringProtocol.hash.getter();

    *(v20 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = v23;
    }

    else
    {
      v24 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v29);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "protected apps unlock, appSource=%ld, error=%s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);

    a6 = v28;
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return a6();
}

void static MOProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v22 = &type metadata for MOAppProtectionFeatureFlags;
  v23 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = a1;
    v9[4] = v8;
    v9[5] = a2;
    v9[6] = a3;
    v10 = *(a1 + 16);
    if (v10)
    {
      v20 = objc_opt_self();

      v11 = (a1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = one-time initialization token for accessGuard;

        if (v14 != -1)
        {
          swift_once();
        }

        v15 = static MOProtectedAppsManager.accessGuard;
        v16 = String._bridgeToObjectiveC()();
        v17 = [v20 applicationWithBundleIdentifier:v16];

        v18 = swift_allocObject();
        v18[2] = v12;
        v18[3] = v13;
        v18[4] = v8;
        v18[5] = partial apply for closure #1 in static MOProtectedAppsManager.requestAccess(appSources:completion:);
        v18[6] = v9;
        v23 = partial apply for closure #2 in static MOProtectedAppsManager.requestAccess(appSources:completion:);
        v24 = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
        v22 = &block_descriptor_20;
        v19 = _Block_copy(aBlock);

        [v15 authenticateForSubject:v17 completion:v19];
        _Block_release(v19);

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

uint64_t closure #1 in static MOProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4(*(a3 + 16));
    }
  }

  return result;
}

uint64_t closure #2 in static MOProtectedAppsManager.requestAccess(appSources:completion:)(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.filtering);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v26);
      *(v12 + 12) = 1024;
      *(v12 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "protected apps unlock, appSource=%s, success=%{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }
  }

  else
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static MOAngelLogger.filtering);

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v25 = a6;
      v19 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v26);
      *(v19 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = v21;
      }

      else
      {
        v22 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v26);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "protected apps unlock, appSource=%s, error=%s", v19, 0x16u);
      swift_arrayDestroy();

      a6 = v25;
    }

    else
    {
    }

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  return a6();
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t specialized MOProtectedFixedAppSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOProtectedFixedAppSource.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of MOProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd, &_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MOProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd, &_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppSource and conformance MOProtectedAppSource()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource);
  }

  return result;
}

void specialized MOProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v47 = &type metadata for MOAppProtectionFeatureFlags;
  v48 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v46);
  if (v3)
  {
    if (a1 >> 62)
    {
LABEL_41:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v34 = a1 + 32;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1;
    v39 = v1;
    v36 = a1 & 0xC000000000000001;
    v37 = v4;
    while (1)
    {
      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v34 + 8 * v5);
      }

      v7 = v8;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_39;
      }

      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        break;
      }

LABEL_6:

      if (v5 == v4)
      {
        return;
      }
    }

    v40 = v7;
    v10 = (*((swift_isaMask & *v1) + 0x98))();
    v11 = 0;
    v13 = v10 + 56;
    v12 = *(v10 + 56);
    v42 = v10;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v12;
    a1 = (v14 + 63) >> 6;
    if ((v15 & v12) == 0)
    {
LABEL_18:
      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v17 >= a1)
        {

          v1 = v39;
          v7 = v40;
          v4 = v37;
          a1 = v38;
          v6 = v36;
          goto LABEL_6;
        }

        v16 = *(v13 + 8 * v17);
        ++v11;
        if (v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    while (1)
    {
      v17 = v11;
LABEL_21:
      v18 = (*(v42 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v18;
      v19 = v18[1];

      v21 = [v41 bundleIdentifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v23;

      if (v22 == v20 && v1 == v19)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_29;
      }

      v16 &= v16 - 1;

      v11 = v17;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

LABEL_29:
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static MOAngelLogger.filtering);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136315138;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v46);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "[subscribeToChanges] App status changed, validating conditions, appBundleId=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
    }

    (*((swift_isaMask & *v39) + 0x68))(v46);
    if (v47)
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v46, v43);
      outlined destroy of MOProtectedAppsManagerDelegate?(v46);
      v32 = v44;
      v33 = v45;
      __swift_project_boxed_opaque_existential_0(v43, v44);
      (*(v33 + 8))(v32, v33);

      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    else
    {

      outlined destroy of MOProtectedAppsManagerDelegate?(v46);
    }
  }
}

uint64_t sub_1000A1764()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1858()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource()
{
  result = lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult;
  if (!lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult;
  if (!lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult);
  }

  return result;
}

double sub_1000A1A10@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MOProtectedAppSource.allFixedApps;

  return result;
}

uint64_t sub_1000A1B24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000A1BDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1000A1C38(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA0);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for MOProtectedAppSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for MOProtectedAppSource(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MOProtectedFixedAppSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOProtectedFixedAppSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of MOProtectedAppsManagerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd, &_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MOProtectedAppsManagerDelegate(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t key path setter for PresenterServerViewController.currentClient : PresenterServerViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Date?)(a1, &v8 - v5, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  return (*((swift_isaMask & **a2) + 0x90))(v6);
}

uint64_t PresenterServerViewController.currentClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  swift_beginAccess();
  return outlined init with copy of (String, Date?)(v1 + v3, a1, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
}

uint64_t PresenterServerViewController.currentClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  swift_beginAccess();
  outlined assign with take of Client?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Client?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *PresenterServerViewController.currentOptions.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenterServerViewController.currentOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *PresenterServerViewController.pendingNavControllerToPresent.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenterServerViewController.pendingNavControllerToPresent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void PresenterServerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  v2 = type metadata accessor for Client();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id PresenterServerViewController.init()()
{
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  v2 = type metadata accessor for Client();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PresenterServerViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for MomentsUIManager();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  static MomentsUIManager.dismissWithoutCleanup.setter();
  return v3;
}

uint64_t type metadata accessor for PresenterServerViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for PresenterServerViewController;
  if (!type metadata singleton initialization cache for PresenterServerViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A277C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PresenterServerViewController.init()(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v8[4] = partial apply for closure #1 in closure #1 in PresenterServerViewController.init();
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_162;
    v7 = _Block_copy(v8);

    [v4 dismissViewControllerAnimated:a1 & 1 completion:v7];
    _Block_release(v7);
  }
}

NSObject *closure #1 in closure #1 in PresenterServerViewController.init()(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(&result->isa + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController);
    *(&result->isa + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController) = 0;

    (*((swift_isaMask & v6->isa) + 0xC0))(0);
    type metadata accessor for CommonLogger();
    static CommonLogger.viewModel.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[dismissAndCleanup] set VC as nil", v10, 2u);

      v11 = v6;
    }

    else
    {
      v11 = v8;
      v8 = v6;
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

id PresenterServerViewController.__deallocating_deinit()
{
  type metadata accessor for MomentsUIManager();
  static MomentsUIManager.dismissWithoutCleanup.setter();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenterServerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall PresenterServerViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PresenterServerViewController(0);
  objc_msgSendSuper2(&v1, "viewDidLoad");
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 208) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 209) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 210) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)()
{
  v43 = v0;
  v1 = objc_opt_self();
  v0[16] = v1;
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    if (v3)
    {
      __break(1u);
      return CloudManager.getDeviceDB()();
    }

    v4 = 0;
  }

  v5 = OnboardingType.needsOnboarding.getter(v4);
  v0[17] = type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[3];
  v10 = v0[4];
  v41 = v4;
  if (v8)
  {
    v40 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136315138;
    v14 = OnboardingType.statusDescription.getter(v4);
    v39 = v9;
    v16 = v5;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v42);

    *(v12 + 4) = v17;
    v5 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[PresenterServerViewController] Onboarding status: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v18 = *(v10 + 8);
    v18(v39, v40);
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v0[18] = v18;
  if (v5)
  {
    static CommonLogger.onboarding.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[PresenterServerViewController] Sheet needs to present Onboarding", v21, 2u);
    }

    v22 = v0[11];
    v23 = v0[3];

    v18(v22, v23);
    if (v41)
    {
      type metadata accessor for MomentsUIManager();
      v24 = static MomentsUIManager.shared.getter();
      v0[19] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v25 = swift_task_alloc();
      v0[20] = v25;
      *v25 = v0;
      v25[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

      return CloudManager.getDeviceDB()();
    }

    v33 = v0[2];

    type metadata accessor for MOSettingsOptions();
    static MOSettingsOptions.setDefaultSettings()();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController, &protocol conformance descriptor for PresenterServerViewController);
    objc_allocWithZone(type metadata accessor for SuggestionsOnboardingViewController());
    v34 = v33;
    v35 = SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v36 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v35];

    v32 = v36;
    [v32 setModalInPresentation:1];
    [v32 setModalPresentationStyle:2];
  }

  else
  {

    static CommonLogger.onboarding.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[5];
    v30 = v0[3];
    if (v28)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[PresenterServerViewController] Sheet doesn't need to present Onboarding", v31, 2u);
    }

    v18(v29, v30);
    v32 = 0;
  }

  v37 = v0[1];

  return v37(v32);
}

{
  if (v0[21])
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

    return CloudDevicesDB.isEligibleForSyncOnboarding.getter();
  }

  else
  {

    static CommonLogger.onboarding.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[PresenterServerViewController] Unable to determine if device is eligible for Sync Onboarding; cloudManager or deviceDB is nil", v4, 2u);
    }

    v5 = v0[18];
    v6 = v0[6];
    v7 = v0[3];

    v5(v6, v7);
    lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

{
  if (*(v0 + 209))
  {

    static CommonLogger.onboarding.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] Device eligible for Sync Onboarding", v3, 2u);
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);

    v4(v5, v6);
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController, &protocol conformance descriptor for PresenterServerViewController);
    v8 = objc_allocWithZone(type metadata accessor for SuggestionsSyncOnboardingViewController());
    v9 = v7;
    v10 = SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v11 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v10];

    v12 = v11;
    [v12 setModalInPresentation:1];
    [v12 setModalPresentationStyle:2];

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v15 = [*(v0 + 128) currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 == 1 && (static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
    {
      static CommonLogger.onboarding.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[PresenterServerViewController] Skipping blocking refresh on iPad (feature flag enabled)", v19, 2u);
      }

      v20 = *(v0 + 144);
      v21 = *(v0 + 80);
      v22 = *(v0 + 24);

      v20(v21, v22);
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);
      v24 = 0;
      v25 = 98;
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 192) = v26;
      *v26 = v0;
      v26[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);
      v24 = 1;
      v25 = 104;
    }

    return CloudManager.refresh(force:wait:_:_:)(1, v24, 0xD000000000000043, 0x80000001002B4620, v25);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v3, v2);
}

{

  static CommonLogger.onboarding.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] Device not eligible for Sync Onboarding", v3, 2u);
  }

  v4 = v0[18];
  v5 = v0[9];
  v6 = v0[3];

  v4(v5, v6);
  lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
  swift_allocError();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 200) = v2;
  *v2 = v4;
  v2[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

  return CloudDevicesDB.isEligibleForSyncOnboarding.getter();
}

{
  v1 = *(v0 + 210);

  if (v1)
  {
    static CommonLogger.onboarding.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[PresenterServerViewController] Device eligible for Sync Onboarding", v4, 2u);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    v5(v6, v7);
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController, &protocol conformance descriptor for PresenterServerViewController);
    v9 = objc_allocWithZone(type metadata accessor for SuggestionsSyncOnboardingViewController());
    v10 = v8;
    v11 = SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v12 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v11];

    v13 = v12;
    [v13 setModalInPresentation:1];
    [v13 setModalPresentationStyle:2];

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    static CommonLogger.onboarding.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[PresenterServerViewController] Device not eligible for Sync Onboarding", v18, 2u);
    }

    v19 = *(v0 + 144);
    v20 = *(v0 + 64);
    v21 = *(v0 + 24);

    v19(v20, v21);
    lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
    swift_allocError();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

double PresenterServerViewController.didReceivePresentationRequest(with:client:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Client();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MainActor();
  v13 = v2;
  v14 = a1;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  (*(v6 + 32))(&v17[v16], v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v17);

  return result;
}

uint64_t closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v9, v8);
}

uint64_t closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 40);
  UUID.init()();
  *(v1 + 88) = type metadata accessor for MomentsUIManager();
  v5 = static MomentsUIManager.shared.getter();
  *(v1 + 96) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  *(v1 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  *(v1 + 112) = *(v3 + 72);
  v6 = *(v3 + 80);
  *(v1 + 184) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v1 + 120) = v8;
  *(v8 + 16) = xmmword_1002A48B0;
  v9 = *(v3 + 16);
  *(v1 + 128) = v9;
  *(v1 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v8 + v7, v2, v4);
  v10 = swift_task_alloc();
  *(v1 + 144) = v10;
  *v10 = v1;
  v10[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);

  return CloudManager.retainUIActive(_:_:_:)(v8, "didReceivePresentationRequest(with:client:)", 43, 2, 126);
}

{
  v2 = *(v1 + 128);
  v3 = *(v1 + 56);
  v4 = *(v1 + 40);
  v5 = (*(v1 + 184) + 32) & ~*(v1 + 184);
  v6 = static MomentsUIManager.shared.getter();
  *(v1 + 160) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v7 = swift_allocObject();
  *(v1 + 168) = v7;
  *(v7 + 16) = xmmword_1002A48B0;
  v2(v7 + v5, v3, v4);
  v8 = swift_task_alloc();
  *(v1 + 176) = v8;
  *v8 = v1;
  v8[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);

  return CloudManager.releaseUIActive(_:_:_:)(v7, "didReceivePresentationRequest(with:client:)", 43, 2, 128);
}

uint64_t closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v2;
  v3[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);
  v4 = v1[4];
  v5 = v1[3];

  return PresenterServerViewController._didReceivePresentationRequest(with:client:)(v5, v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Client() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Client();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[27] = v8;
  v3[28] = v7;

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v8, v7);
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)()
{
  v128 = v0;
  v1 = v0;
  v3 = v0[11];
  v2 = v0 + 11;
  v4 = v2[14];
  v123 = v2[3];
  v5 = *(v2 - 1);
  v121 = v2 - 1;
  v7 = *(v2 - 6);
  v6 = *(v2 - 5);
  v8 = *(v3 + 16);
  v2[18] = v8;
  v2[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  (*(v3 + 56))(v4, 0, 1, v5);
  (*((swift_isaMask & *v6) + 0x90))(v4);
  v2[20] = type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  v8(v123, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v124 = v1[23];
    v119 = v1[16];
    v120 = v1[15];
    v11 = v1[14];
    v12 = v1[11];
    v117 = v1[10];
    v13 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v127[0] = v118;
    *v13 = 136315138;
    v1[2] = Client.sharedServer.getter();
    v1[3] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12SharedServer_pSgMd, &_s9MomentsUI12SharedServer_pSgMR);
    v15 = Optional.debugDescription.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v117);
    swift_unknownObjectRelease();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v127);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[PresenterServerViewController] client %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);

    v20 = *(v119 + 8);
    v21 = v20(v124, v120);
  }

  else
  {
    v22 = v1[23];
    v23 = v1[15];
    v24 = v1[16];
    v25 = v1[14];
    v26 = v1[10];
    v27 = v1[11];

    v18 = *(v27 + 8);
    v18(v25, v26);
    v20 = *(v24 + 8);
    v21 = v20(v22, v23);
  }

  v28 = v1;
  v1[32] = v18;
  v1[33] = v20;
  v29 = v1[24];
  v30 = v1[11];
  v31 = v28[10];
  (*((swift_isaMask & *v28[6]) + 0x88))(v21);
  if ((*(v30 + 48))(v29, 1, v31) == 1)
  {
    v32 = v28 + 17;
    v33 = v28[24];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
    static CommonLogger.views.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v125 = v20;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "[PresenterServerViewController] failed to update currentClient", v36, 2u);
    }

    v37 = v28 + 15;
LABEL_23:
    v125(*v32, *v37);

    v72 = v28[1];

    return v72();
  }

  v32 = v28 + 13;
  (*(v28[11] + 32))(v28[13], v28[24], v28[10]);
  if ((dispatch thunk of SuggestionSheetPresenterOptions.onboardingOnlyPresentation.getter() & 1) == 0)
  {
    v46 = v28[4];
    static CommonLogger.views.getter();
    v47 = v46;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v28[33];
    v52 = v28[20];
    v53 = v28[15];
    if (v50)
    {
      v54 = v28[4];
      v126 = v28[15];
      v55 = swift_slowAlloc();
      v122 = v52;
      v56 = swift_slowAlloc();
      v127[0] = v56;
      *v55 = 136315138;
      v57 = [v54 debugDescription];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v127);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "[PresenterServerViewController] didReceivePresentationRequest with options: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);

      v62 = v126;
      v63 = v122;
    }

    else
    {

      v63 = v52;
      v62 = v53;
    }

    v51(v63, v62);
    v64 = [v28[6] presentedViewController];
    if (v64)
    {
    }

    else
    {
      v73 = [v28[6] presentationController];
      if (v73)
      {
        v74 = v28[29];
        v76 = v28[12];
        v75 = v28[13];
        v77 = v28[10];
        v78 = v28[6];
        v79 = v28[4];

        v74(v76, v75, v77);
        type metadata accessor for MomentsUIManager();
        v80 = static MomentsUIManager.shared.getter();
        dispatch thunk of MomentsUIManager.cloudManager.getter();

        v81 = objc_allocWithZone(type metadata accessor for SuggestionCollectionViewController());
        v82 = v79;
        v83 = SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)();
        v28[35] = v83;
        [v83 setModalInPresentation:1];
        v127[3] = type metadata accessor for PresenterServerViewController(0);
        v127[4] = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController, &protocol conformance descriptor for PresenterServerViewController);
        v127[0] = v78;
        v84 = v78;
        dispatch thunk of SuggestionCollectionViewController.delegate.setter();
        v85 = *&v84[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController];
        *&v84[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = v83;
        v86 = v83;

        v87 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v86];
        v28[36] = v87;
        v88 = [v87 sheetPresentationController];
        v28[37] = v88;
        if (v88)
        {
          v127[0] = _swiftEmptyArrayStorage;
          v89 = one-time initialization token for full;
          v90 = v88;
          if (v89 != -1)
          {
            swift_once();
          }

          v91 = v28[6];
          v92 = static SuggestionSheetDetents.full;
          v93 = [static SuggestionSheetDetents.full identifier];
          [v90 setSelectedDetentIdentifier:v93];

          [v90 _setShouldScaleDownBehindDescendantSheets:0];
          v94 = [v91 traitCollection];
          v95 = [v94 horizontalSizeClass];

          if (v95 == 1)
          {
            dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
            if (v96 >= 0.2 && v96 <= 0.8)
            {
              v98 = v28[8];
              v97 = v28[9];
              v99 = v28[7];
              UUID.init()();
              UUID.uuidString.getter();
              (*(v98 + 8))(v97, v99);
              v100 = String._bridgeToObjectiveC()();

              dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
              v102 = v101;
              type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, UISheetPresentationControllerDetent_ptr);
              *(swift_allocObject() + 16) = v102;
              v103 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

              if ((dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter() & 1) == 0)
              {
                v104 = [v103 identifier];
                [v90 setSelectedDetentIdentifier:v104];
              }

              v105 = v103;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              [v90 setPrefersGrabberVisible:1];
              v106 = [v105 identifier];
              [v90 setLargestUndimmedDetentIdentifier:v106];
            }
          }

          [v90 setPrefersEdgeAttachedInCompactHeight:1];
          [v90 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
          [v90 setPrefersPageSizing:0];
          v107 = v92;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v108 = v28[6];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, UISheetPresentationControllerDetent_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v90 setDetents:isa];

          [v90 setDelegate:v108];
        }

        v110 = v28[6];
        v111 = v28[4];
        v112 = *((swift_isaMask & *v110) + 0xC0);
        v113 = v87;
        v112(v87);
        v114 = *((swift_isaMask & *v110) + 0xA8);
        v115 = v111;
        v114(v79);
        v116 = swift_task_alloc();
        v28[38] = v116;
        *v116 = v28;
        v116[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);
        v44 = 0;
        goto LABEL_12;
      }
    }

    static CommonLogger.views.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v28[33];
    v69 = v28[18];
    v70 = v28[15];
    if (v67)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "[PresenterServerViewController] Received an update request while a sheet is already presented. Ignoring!", v71, 2u);
    }

    v68(v69, v70);
    v125 = v28[32];
    v37 = v121;
    goto LABEL_23;
  }

  static CommonLogger.views.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "[PresenterServerViewController] Onboarding only presentation", v40, 2u);
  }

  v41 = v28[22];
  v42 = v28[15];

  v20(v41, v42);
  v43 = swift_task_alloc();
  v28[34] = v43;
  *v43 = v28;
  v43[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);
  v44 = 1;
LABEL_12:

  return PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(v44);
}

{
  if (*(v0 + 321))
  {

    static CommonLogger.views.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 264);
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    if (v3)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] queueing nav controller to present post onboarding", v10, 2u);
    }

    v7(v8, v9);
    (*(v0 + 256))(*(v0 + 104), *(v0 + 80));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 312) = v13;
    *v13 = v0;
    v13[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);

    return PresenterServerViewController.presentPendingSheetContentViewController()();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v0 + 256))(*(v0 + 104), *(v0 + 80));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)(char a1)
{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 321) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v4, v3);
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)(__n128 a1)
{
  v77 = v1;
  if (*(v1 + 320) == 1)
  {

    static CommonLogger.views.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 264);
    v6 = *(v1 + 168);
    v7 = *(v1 + 120);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "[PresenterServerViewController] onboarding presented";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v2, v3, v9, v8, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v10 = *(v1 + 32);
  static CommonLogger.views.getter();
  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 264);
  v16 = *(v1 + 160);
  v17 = *(v1 + 120);
  if (v14)
  {
    v18 = *(v1 + 32);
    v75 = *(v1 + 264);
    v19 = swift_slowAlloc();
    v74 = v16;
    v20 = swift_slowAlloc();
    v76[0] = v20;
    *v19 = 136315138;
    v21 = [v18 debugDescription];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v76);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "[PresenterServerViewController] didReceivePresentationRequest with options: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);

    v75(v74, v17);
  }

  else
  {

    v15(v16, v17);
  }

  v26 = [*(v1 + 48) presentedViewController];
  if (v26)
  {

    goto LABEL_9;
  }

  v30 = [*(v1 + 48) presentationController];
  if (!v30)
  {
LABEL_9:

    static CommonLogger.views.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 264);
    v6 = *(v1 + 144);
    v7 = *(v1 + 120);
    if (v27)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "[PresenterServerViewController] Received an update request while a sheet is already presented. Ignoring!";
      goto LABEL_11;
    }

LABEL_12:

    v5(v6, v7);
    (*(v1 + 256))(*(v1 + 104), *(v1 + 80));

    v28 = *(v1 + 8);

    return v28();
  }

  v31 = *(v1 + 232);
  v33 = *(v1 + 96);
  v32 = *(v1 + 104);
  v34 = *(v1 + 80);
  v35 = *(v1 + 48);
  v36 = *(v1 + 32);

  v31(v33, v32, v34);
  type metadata accessor for MomentsUIManager();
  v37 = static MomentsUIManager.shared.getter();
  dispatch thunk of MomentsUIManager.cloudManager.getter();

  v38 = objc_allocWithZone(type metadata accessor for SuggestionCollectionViewController());
  v39 = v36;
  v40 = SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)();
  *(v1 + 280) = v40;
  [v40 setModalInPresentation:1];
  v76[3] = type metadata accessor for PresenterServerViewController(0);
  v76[4] = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController, &protocol conformance descriptor for PresenterServerViewController);
  v76[0] = v35;
  v41 = v35;
  dispatch thunk of SuggestionCollectionViewController.delegate.setter();
  v42 = *&v41[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController];
  *&v41[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = v40;
  v43 = v40;

  v44 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v43];
  *(v1 + 288) = v44;
  v45 = [v44 sheetPresentationController];
  *(v1 + 296) = v45;
  if (v45)
  {
    v76[0] = _swiftEmptyArrayStorage;
    v46 = one-time initialization token for full;
    v47 = v45;
    if (v46 != -1)
    {
      swift_once();
    }

    v48 = *(v1 + 48);
    v49 = static SuggestionSheetDetents.full;
    v50 = [static SuggestionSheetDetents.full identifier];
    [v47 setSelectedDetentIdentifier:v50];

    [v47 _setShouldScaleDownBehindDescendantSheets:0];
    v51 = [v48 traitCollection];
    v52 = [v51 horizontalSizeClass];

    if (v52 == 1)
    {
      dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
      if (v53 >= 0.2 && v53 <= 0.8)
      {
        v55 = *(v1 + 64);
        v54 = *(v1 + 72);
        v56 = *(v1 + 56);
        UUID.init()();
        UUID.uuidString.getter();
        (*(v55 + 8))(v54, v56);
        v57 = String._bridgeToObjectiveC()();

        dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
        v59 = v58;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, UISheetPresentationControllerDetent_ptr);
        *(swift_allocObject() + 16) = v59;
        v60 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

        if ((dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter() & 1) == 0)
        {
          v61 = [v60 identifier];
          [v47 setSelectedDetentIdentifier:v61];
        }

        v62 = v60;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v47 setPrefersGrabberVisible:1];
        v63 = [v62 identifier];
        [v47 setLargestUndimmedDetentIdentifier:v63];
      }
    }

    [v47 setPrefersEdgeAttachedInCompactHeight:1];
    [v47 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [v47 setPrefersPageSizing:0];
    v64 = v49;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v65 = *(v1 + 48);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, UISheetPresentationControllerDetent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 setDetents:isa];

    [v47 setDelegate:v65];
  }

  v67 = *(v1 + 48);
  v68 = *(v1 + 32);
  v69 = *((swift_isaMask & *v67) + 0xC0);
  v70 = v44;
  v69(v44);
  v71 = *((swift_isaMask & *v67) + 0xA8);
  v72 = v68;
  v71(v36);
  v73 = swift_task_alloc();
  *(v1 + 304) = v73;
  *v73 = v1;
  v73[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);

  return PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(0);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(char a1)
{
  v2[3] = v1;
  v4 = type metadata accessor for Logger();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);

  return PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(a1);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);
  }

  else
  {
    v6 = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)()
{
  v1 = v0[13];

  if (v1)
  {
    v2 = v0[13];
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[13];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SuggestionCollectionViewController] Presenting Onboarding / Error with view controller %@ ", v7, 0xCu);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v10 = v0[9];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v10, v11);
    [v13 presentViewController:v3 animated:1 completion:0];
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[8];
    v18 = v0[4];
    v19 = v0[5];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SuggestionCollectionViewController] Onboarding not needed", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
  }

  v21 = v0[1];

  return v21(v1 != 0);
}

{
  v1 = v0[14];

  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  if (v2)
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SuggestionCollectionViewController] show fatal error", v5, 2u);
    }

    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];

    (*(v8 + 8))(v6, v7);
    v10 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    [v9 presentViewController:v10 animated:1 completion:0];
  }

  else
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[SuggestionCollectionViewController] unknown error=%@", v13, 0xCu);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  v16 = v0[1];

  return v16(v2);
}

uint64_t PresenterServerViewController.presentPendingSheetContentViewController()()
{
  v1[8] = v0;
  v2 = type metadata accessor for Client();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v5, v4);
}

{
  v1 = (*((swift_isaMask & *v0[8]) + 0xB8))();
  v0[20] = v1;
  if (!v1)
  {

    goto LABEL_27;
  }

  v2 = v1;
  v3 = [v1 viewControllers];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIViewController, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_26:

    goto LABEL_27;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v5);
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  v0[21] = v6;
  v8 = v0[8];

  v10 = (*((swift_isaMask & *v8) + 0xA0))(v9);
  v0[22] = v10;
  if (!v10)
  {

    goto LABEL_27;
  }

  if ((static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter() & 1) == 0)
  {
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = PresenterServerViewController.presentPendingSheetContentViewController();
    v29 = v0[8];

    return PresenterServerViewController.showFatalErrorPopups(controller:)(v29);
  }

  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[10];
  (*((swift_isaMask & *v0[8]) + 0x88))();
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v34 = v0[14];
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[9];
    v38 = v0[10];
    (*(v38 + 16))(v36, v35, v37);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v35, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
    Client.connectionUUID.getter();
    (*(v38 + 8))(v36, v37);
    (*(v34 + 32))(v31, v32, v33);
    type metadata accessor for MomentsUIManager();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v40 = swift_allocObject();
    v0[24] = v40;
    *(v40 + 16) = xmmword_1002A48B0;
    (*(v34 + 16))(v40 + v39, v31, v33);
    v41 = swift_task_alloc();
    v0[25] = v41;
    *v41 = v0;
    v41[1] = PresenterServerViewController.presentPendingSheetContentViewController();
    v5 = v40;

    return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v5);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[12], &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  v14 = [v0[8] navigationController];
  if (v14)
  {
    v15 = v14;
    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[20];
    v19 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v18;
    v21[5] = v16;
    v0[6] = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
    v0[7] = v21;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_10;
    v22 = _Block_copy(v0 + 2);
    v23 = v17;
    v24 = v18;
    v25 = v16;

    [v15 presentViewController:v24 animated:v19 & 1 completion:v22];
    _Block_release(v22);
  }

  if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
  {
    v26 = v0[22];
    v27 = v0[20];

LABEL_27:

    v44 = v0[1];

    return v44();
  }

  v42 = v0[20];
  v43 = swift_task_alloc();
  v0[26] = v43;
  *v43 = v0;
  v43[1] = PresenterServerViewController.presentPendingSheetContentViewController();

  return PresenterServerViewController.showInfoPopups(controller:)(v42);
}

{
  if (*(v0 + 216) == 1)
  {
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 160);

LABEL_8:

    v19 = *(v0 + 8);

    return v19();
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*((swift_isaMask & **(v0 + 64)) + 0x88))();
  if ((*(v6 + 48))(v4, 1, v5))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 96), &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
    v7 = [*(v0 + 64) navigationController];
    if (v7)
    {
      v8 = v7;
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = *(v0 + 160);
      v12 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v9;
      *(v0 + 48) = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
      *(v0 + 56) = v14;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
      *(v0 + 40) = &block_descriptor_10;
      v15 = _Block_copy((v0 + 16));
      v16 = v10;
      v17 = v11;
      v18 = v9;

      [v8 presentViewController:v17 animated:v12 & 1 completion:v15];
      _Block_release(v15);
    }

    if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
    {
      v1 = *(v0 + 176);
      v3 = *(v0 + 160);

      goto LABEL_8;
    }

    v32 = *(v0 + 160);
    v33 = swift_task_alloc();
    *(v0 + 208) = v33;
    *v33 = v0;
    v33[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return PresenterServerViewController.showInfoPopups(controller:)(v32);
  }

  else
  {
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    (*(v28 + 16))(v26, v25, v27);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
    Client.connectionUUID.getter();
    (*(v28 + 8))(v26, v27);
    (*(v24 + 32))(v21, v22, v23);
    type metadata accessor for MomentsUIManager();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v30 = swift_allocObject();
    *(v0 + 192) = v30;
    *(v30 + 16) = xmmword_1002A48B0;
    (*(v24 + 16))(v30 + v29, v21, v23);
    v31 = swift_task_alloc();
    *(v0 + 200) = v31;
    *v31 = v0;
    v31[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v30);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  v1 = [*(v0 + 64) navigationController];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v4;
    v8[4] = v5;
    v8[5] = v3;
    *(v0 + 48) = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
    *(v0 + 56) = v8;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
    *(v0 + 40) = &block_descriptor_10;
    v9 = _Block_copy((v0 + 16));
    v10 = v4;
    v11 = v5;
    v12 = v3;

    [v2 presentViewController:v11 animated:v6 & 1 completion:v9];
    _Block_release(v9);
  }

  if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 160);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return PresenterServerViewController.showInfoPopups(controller:)(v17);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t PresenterServerViewController.presentPendingSheetContentViewController()(char a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v4, v3);
}

uint64_t PresenterServerViewController.showFatalErrorPopups(controller:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for CloudDevice();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v7;
  v2[37] = v6;

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v7, v6);
}

{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v4, v3);
}

uint64_t PresenterServerViewController.showFatalErrorPopups(controller:)()
{
  if ((static DefaultsManager.Cloud.showFatalErrorPopups.getter() & 1) != 0 && (v1 = [objc_opt_self() currentDevice], v2 = objc_msgSend(v1, "userInterfaceIdiom"), v1, v2))
  {
    if (v2 == 1)
    {
      type metadata accessor for MomentsUIManager();
      v3 = static MomentsUIManager.shared.getter();
      v0[38] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v4 = swift_task_alloc();
      v0[39] = v4;
      *v4 = v0;
      v4[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
    }

    else
    {
      __break(1u);
    }

    return CloudManager.getDeviceDB()();
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

{
  v155 = v0;
  if (*(v0 + 320))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 328) = v2;
    *(v0 + 336) = v1;

    return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v2, v1);
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  v5 = *(v0 + 112);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(*(v0 + 120) + 56);
  v8(*(v0 + 272), 1, 1, v5);
  (*(v7 + 56))(v4, 1, 1, v6);
  v8(v3, 1, 1, v5);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v9, v11, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of (String, Date?)(v13, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v10, v12, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  if (v17)
  {
    v20 = *(v0 + 224);
    v139 = v16;
    v136 = *(v0 + 184);
    v137 = *(v0 + 176);
    v144 = *(v0 + 80);
    v148 = *(v0 + 72);
    v150 = *(v0 + 104);
    v21 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v21 = 136315906;
    *(v0 + 400) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v154);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    outlined init with copy of (String, Date?)(v18, v20, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v154);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    outlined init with copy of (String, Date?)(v136, v137, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v136, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v154);

    *(v21 + 24) = v32;
    *(v21 + 32) = 2080;
    outlined init with copy of (String, Date?)(v19, v20, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v154);

    *(v21 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v15, v139, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v21, 0x2Au);
    swift_arrayDestroy();

    v37 = *(v144 + 8);
    v37(v150, v148);
    if (*(v0 + 320))
    {
      goto LABEL_7;
    }

LABEL_10:
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v47, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v49 = v46;
    v50 = &_s9MomentsUI11CloudDeviceVSgMd;
    v51 = &_s9MomentsUI11CloudDeviceVSgMR;
LABEL_21:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v49, v50, v51);
    v152 = 0;
LABEL_35:

    v131 = *(v0 + 8);

    return v131(v152);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 104);
  v44 = *(v0 + 72);
  v45 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v37 = *(v45 + 8);
  v37(v43, v44);
  if (!*(v0 + 320))
  {
    goto LABEL_10;
  }

LABEL_7:
  v38 = *(v0 + 168);
  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_15;
  }

  v52 = *(v0 + 56);
  v53 = *(v0 + 40);
  v54 = *(v0 + 48);
  (*(v54 + 32))(*(v0 + 64), *(v0 + 168), v53);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v56 = v55;
  v57 = *(v54 + 8);
  v57(v52, v53);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v58 < v56)
  {
    v151 = v57;
    v59 = *(v0 + 272);
    v60 = *(v0 + 216);
    v61 = *(v0 + 112);
    v62 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = objc_opt_self();
    v65 = [v64 bundleForClass:ObjCClassFromMetadata];
    v157._countAndFlagsBits = 0xD00000000000001CLL;
    v157._object = 0x80000001002B3D10;
    v66._object = 0x80000001002B3CF0;
    v66._countAndFlagsBits = 0x1000000000000017;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v157);

    outlined init with copy of (String, Date?)(v59, v60, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v68 = (*(v62 + 48))(v60, 1, v61);
    v69 = *(v0 + 216);
    if (v68 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }

    else
    {
      v113 = *(v0 + 112);
      v114 = *(v0 + 120);
      v115 = CloudDevice.name.getter();
      v117 = v116;
      (*(v114 + 8))(v69, v113);
      if (v117)
      {
        v118 = [v64 bundleForClass:ObjCClassFromMetadata];
        v158._object = 0x80000001002B3E10;
        v119._countAndFlagsBits = 0x10000000000000D5;
        v119._object = 0x80000001002B3E30;
        v120._countAndFlagsBits = 0;
        v120._object = 0xE000000000000000;
        v158._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v158);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_1002A48B0;
        *(v121 + 56) = &type metadata for String;
        *(v121 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v121 + 32) = v115;
        *(v121 + 40) = v117;
        static String.localizedStringWithFormat(_:_:)();

LABEL_33:
        v141 = *(v0 + 264);
        v143 = *(v0 + 192);
        v147 = *(v0 + 272);
        v138 = *(v0 + 64);
        v125 = *(v0 + 40);
        v126 = *(v0 + 16);
        v127 = String._bridgeToObjectiveC()();

        v128 = String._bridgeToObjectiveC()();

        v152 = 1;
        v129 = [objc_opt_self() alertControllerWithTitle:v127 message:v128 preferredStyle:1];

        v130 = PresenterServerViewController.okAction.getter();
        [v129 addAction:v130];
        [v129 setPreferredAction:v130];
        [v126 presentViewController:v129 animated:1 completion:0];

        v151(v138, v125);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v141, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v143, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v85 = v147;
LABEL_34:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v85, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        goto LABEL_35;
      }
    }

    v122 = [v64 bundleForClass:ObjCClassFromMetadata];
    v159._object = 0x80000001002B3E10;
    v123._countAndFlagsBits = 0x10000000000000D0;
    v123._object = 0x80000001002B3D30;
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    v159._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v123, 0, v122, v124, v159);

    goto LABEL_33;
  }

  v57(*(v0 + 64), *(v0 + 40));
LABEL_15:
  v70 = *(v0 + 160);
  v71 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v41(v70, 1, v71) != 1)
  {
    v86 = *(v0 + 272);
    v87 = *(v0 + 264);
    v88 = *(v0 + 192);
    v89 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v87, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v86, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v49 = v89;
    v50 = &_s10Foundation4DateVSgMd;
    v51 = &_s10Foundation4DateVSgMR;
    goto LABEL_21;
  }

  v72 = *(v0 + 264);
  v73 = *(v0 + 208);
  v75 = *(v0 + 112);
  v74 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v72, v73, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if ((*(v74 + 48))(v73, 1, v75) == 1)
  {
    v76 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v76, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CommonLogger.onboarding.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v79, 2u);
    }

    v80 = *(v0 + 264);
    v145 = *(v0 + 192);
    v149 = *(v0 + 272);
    v81 = *(v0 + 96);
    v82 = *(v0 + 72);
    v83 = *(v0 + 16);

    v37(v81, v82);
    v84 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v152 = 1;
    [v83 presentViewController:v84 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v80, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v85 = v149;
    goto LABEL_34;
  }

  v91 = *(v0 + 128);
  v90 = *(v0 + 136);
  v92 = *(v0 + 112);
  v93 = *(v0 + 120);
  (*(v93 + 32))(v90, *(v0 + 208), v92);
  static CommonLogger.onboarding.getter();
  (*(v93 + 16))(v91, v90, v92);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  v96 = os_log_type_enabled(v94, v95);
  v98 = *(v0 + 120);
  v97 = *(v0 + 128);
  v153 = *(v0 + 112);
  v99 = *(v0 + 88);
  v100 = *(v0 + 72);
  if (v96)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v154 = v102;
    *v101 = 136315138;
    v103 = CloudDevice.name.getter();
    v142 = v100;
    v146 = v99;
    if (v104)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0x3E6C696E3CLL;
    }

    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = 0xE500000000000000;
    }

    v140 = v95;
    v109 = *(v98 + 8);
    v107 = v98 + 8;
    v108 = v109;
    v109(v97, v153);
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v154);

    *(v101 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v94, v140, "[PresenterServerViewController] Lost Primary, re-noninating %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);

    v111 = v146;
    v112 = v142;
  }

  else
  {

    v132 = *(v98 + 8);
    v107 = v98 + 8;
    v108 = v132;
    v132(v97, v153);
    v111 = v99;
    v112 = v100;
  }

  v37(v111, v112);
  *(v0 + 376) = v107;
  *(v0 + 384) = v108;
  v133 = swift_task_alloc();
  *(v0 + 392) = v133;
  *v133 = v0;
  v133[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v134 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v134);
}

{
  CloudDevicesDB.primaryDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v58 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v3 + 48);
  *(v0 + 344) = v4;
  *(v0 + 352) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);

    return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v5, v6);
  }

  else
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 192);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);

    (*(v3 + 32))(v7, v1, v2);
    v12 = *(v3 + 56);
    v12(v7, 0, 1, v2);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12(v8, 1, 1, v2);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    type metadata accessor for CommonLogger();
    static CommonLogger.views.getter();
    outlined init with copy of (String, Date?)(v13, v15, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined init with copy of (String, Date?)(v17, v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of (String, Date?)(v14, v16, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    if (v21)
    {
      v24 = *(v0 + 224);
      v51 = *(v0 + 184);
      v52 = *(v0 + 176);
      v54 = *(v0 + 80);
      v55 = *(v0 + 72);
      v56 = *(v0 + 104);
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v25 = 136315906;
      *(v0 + 400) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      v26 = String.init<A>(describing:)();
      v53 = v20;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      outlined init with copy of (String, Date?)(v22, v24, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v22, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v57);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      outlined init with copy of (String, Date?)(v51, v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v57);

      *(v25 + 24) = v36;
      *(v25 + 32) = 2080;
      outlined init with copy of (String, Date?)(v23, v24, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v57);

      *(v25 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v19, v53, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v25, 0x2Au);
      swift_arrayDestroy();

      (*(v54 + 8))(v56, v55);
    }

    else
    {
      v41 = *(v0 + 184);
      v42 = *(v0 + 104);
      v43 = *(v0 + 72);
      v44 = *(v0 + 80);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v22, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      (*(v44 + 8))(v42, v43);
    }

    v45 = *(v0 + 320);
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 192);

    if (v45)
    {
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v47, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v46, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v49 = *(v0 + 8);

    return v49(0);
  }
}

{
  CloudDevicesDB.nominatedDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 112);
  v3 = (*(v0 + 344))(v1, 1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 120);
  if (v3 == 1)
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    (*(v5 + 56))(v4, 1, 1, v2);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = PresenterServerViewController.showFatalErrorPopups(controller:);
  }

  else
  {
    (*(v5 + 32))(*(v0 + 144), v1, v2);
    v12 = *(v5 + 56);
    *(v0 + 360) = v12;
    *(v0 + 368) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v4, 1, 1, v2);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = PresenterServerViewController.showFatalErrorPopups(controller:);
  }

  return _swift_task_switch(v11, v9, v10);
}

{
  CloudDevicesDB.nominationDateForPhone(_:)();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v151 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);

  (*(v5 + 8))(v3, v4);
  v1(v2, 1, 1, v4);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v6, v8, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of (String, Date?)(v10, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v7, v9, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 224);
    v134 = *(v0 + 184);
    v133 = *(v0 + 176);
    v136 = *(v0 + 232);
    v141 = *(v0 + 80);
    v144 = *(v0 + 72);
    v145 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *v16 = 136315906;
    *(v0 + 400) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v150);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    outlined init with copy of (String, Date?)(v14, v15, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v150);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    outlined init with copy of (String, Date?)(v134, v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v150);

    *(v16 + 24) = v27;
    *(v16 + 32) = 2080;
    outlined init with copy of (String, Date?)(v136, v15, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v136, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v150);

    *(v16 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v12, v13, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v16, 0x2Au);
    swift_arrayDestroy();

    v32 = *(v141 + 8);
    v32(v145, v144);
    if (*(v0 + 320))
    {
      goto LABEL_3;
    }

LABEL_6:
    v43 = *(v0 + 272);
    v44 = *(v0 + 264);
    v45 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v44, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = v43;
    v47 = &_s9MomentsUI11CloudDeviceVSgMd;
    v48 = &_s9MomentsUI11CloudDeviceVSgMR;
LABEL_17:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v46, v47, v48);
    v149 = 0;
LABEL_31:

    v128 = *(v0 + 8);

    return v128(v149);
  }

  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v39 = *(v0 + 184);
  v40 = *(v0 + 104);
  v41 = *(v0 + 72);
  v42 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v38, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v37, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v32 = *(v42 + 8);
  v32(v40, v41);
  if (!*(v0 + 320))
  {
    goto LABEL_6;
  }

LABEL_3:
  v33 = *(v0 + 168);
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v36 = *(v35 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v49 = *(v0 + 56);
  v50 = *(v0 + 40);
  v51 = *(v0 + 48);
  (*(v51 + 32))(*(v0 + 64), *(v0 + 168), v50);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v53 = v52;
  v54 = *(v51 + 8);
  v54(v49, v50);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v55 < v53)
  {
    v146 = v54;
    v56 = *(v0 + 272);
    v57 = *(v0 + 216);
    v58 = *(v0 + 112);
    v59 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = objc_opt_self();
    v62 = [v61 bundleForClass:ObjCClassFromMetadata];
    v153._countAndFlagsBits = 0xD00000000000001CLL;
    v153._object = 0x80000001002B3D10;
    v63._object = 0x80000001002B3CF0;
    v63._countAndFlagsBits = 0x1000000000000017;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v153);

    outlined init with copy of (String, Date?)(v56, v57, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v65 = (*(v59 + 48))(v57, 1, v58);
    v66 = *(v0 + 216);
    if (v65 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }

    else
    {
      v110 = *(v0 + 112);
      v111 = *(v0 + 120);
      v112 = CloudDevice.name.getter();
      v114 = v113;
      (*(v111 + 8))(v66, v110);
      if (v114)
      {
        v115 = [v61 bundleForClass:ObjCClassFromMetadata];
        v154._object = 0x80000001002B3E10;
        v116._countAndFlagsBits = 0x10000000000000D5;
        v116._object = 0x80000001002B3E30;
        v117._countAndFlagsBits = 0;
        v117._object = 0xE000000000000000;
        v154._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v116, 0, v115, v117, v154);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_1002A48B0;
        *(v118 + 56) = &type metadata for String;
        *(v118 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v118 + 32) = v112;
        *(v118 + 40) = v114;
        static String.localizedStringWithFormat(_:_:)();

LABEL_29:
        v138 = *(v0 + 264);
        v140 = *(v0 + 192);
        v142 = *(v0 + 272);
        v135 = *(v0 + 64);
        v122 = *(v0 + 40);
        v123 = *(v0 + 16);
        v124 = String._bridgeToObjectiveC()();

        v125 = String._bridgeToObjectiveC()();

        v149 = 1;
        v126 = [objc_opt_self() alertControllerWithTitle:v124 message:v125 preferredStyle:1];

        v127 = PresenterServerViewController.okAction.getter();
        [v126 addAction:v127];
        [v126 setPreferredAction:v127];
        [v123 presentViewController:v126 animated:1 completion:0];

        v146(v135, v122);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v138, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v83 = v140;
LABEL_30:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v142, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        goto LABEL_31;
      }
    }

    v119 = [v61 bundleForClass:ObjCClassFromMetadata];
    v155._object = 0x80000001002B3E10;
    v120._countAndFlagsBits = 0x10000000000000D0;
    v120._object = 0x80000001002B3D30;
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v155._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, v155);

    goto LABEL_29;
  }

  v54(*(v0 + 64), *(v0 + 40));
LABEL_11:
  v67 = *(v0 + 160);
  v68 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v36(v67, 1, v68) != 1)
  {
    v84 = *(v0 + 272);
    v85 = *(v0 + 264);
    v86 = *(v0 + 192);
    v87 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v85, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v84, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v46 = v87;
    v47 = &_s10Foundation4DateVSgMd;
    v48 = &_s10Foundation4DateVSgMR;
    goto LABEL_17;
  }

  v69 = *(v0 + 264);
  v70 = *(v0 + 208);
  v72 = *(v0 + 112);
  v71 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v69, v70, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if ((*(v71 + 48))(v70, 1, v72) == 1)
  {
    v147 = v32;
    v73 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v73, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CommonLogger.onboarding.getter();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v76, 2u);
    }

    v77 = *(v0 + 264);
    v142 = *(v0 + 272);
    v78 = *(v0 + 192);
    v79 = *(v0 + 96);
    v80 = *(v0 + 72);
    v81 = *(v0 + 16);

    v147(v79, v80);
    v82 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v149 = 1;
    [v81 presentViewController:v82 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v77, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v83 = v78;
    goto LABEL_30;
  }

  v89 = *(v0 + 128);
  v88 = *(v0 + 136);
  v90 = *(v0 + 112);
  v91 = *(v0 + 120);
  (*(v91 + 32))(v88, *(v0 + 208), v90);
  static CommonLogger.onboarding.getter();
  (*(v91 + 16))(v89, v88, v90);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  v94 = os_log_type_enabled(v92, v93);
  v96 = *(v0 + 120);
  v95 = *(v0 + 128);
  v97 = *(v0 + 112);
  v98 = *(v0 + 88);
  v99 = *(v0 + 72);
  if (v94)
  {
    v148 = v32;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v150 = v101;
    *v100 = 136315138;
    v102 = CloudDevice.name.getter();
    v139 = v99;
    v143 = v98;
    if (v103)
    {
      v104 = v102;
    }

    else
    {
      v104 = 0x3E6C696E3CLL;
    }

    if (v103)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0xE500000000000000;
    }

    v137 = v93;
    v108 = *(v96 + 8);
    v106 = v96 + 8;
    v107 = v108;
    v108(v95, v97);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v150);

    *(v100 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v92, v137, "[PresenterServerViewController] Lost Primary, re-noninating %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);

    v148(v143, v139);
  }

  else
  {

    v130 = *(v96 + 8);
    v106 = v96 + 8;
    v107 = v130;
    v130(v95, v97);
    v32(v98, v99);
  }

  *(v0 + 376) = v106;
  *(v0 + 384) = v107;
  v131 = swift_task_alloc();
  *(v0 + 392) = v131;
  *v131 = v0;
  v131[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v132 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v132);
}

{
  CloudDevicesDB.previousPrimaryDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v146 = v0;

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v1, v3, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of (String, Date?)(v5, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v2, v4, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    v129 = *(v0 + 184);
    v128 = *(v0 + 176);
    v131 = *(v0 + 232);
    v136 = *(v0 + 80);
    v139 = *(v0 + 72);
    v140 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v11 = 136315906;
    *(v0 + 400) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v145);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    outlined init with copy of (String, Date?)(v9, v10, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v145);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    outlined init with copy of (String, Date?)(v129, v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v145);

    *(v11 + 24) = v22;
    *(v11 + 32) = 2080;
    outlined init with copy of (String, Date?)(v131, v10, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v131, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v145);

    *(v11 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v11, 0x2Au);
    swift_arrayDestroy();

    v27 = *(v136 + 8);
    v27(v140, v139);
    if (*(v0 + 320))
    {
      goto LABEL_3;
    }

LABEL_6:
    v38 = *(v0 + 272);
    v39 = *(v0 + 264);
    v40 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v39, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v41 = v38;
    v42 = &_s9MomentsUI11CloudDeviceVSgMd;
    v43 = &_s9MomentsUI11CloudDeviceVSgMR;
LABEL_17:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, v42, v43);
    v144 = 0;
LABEL_31:

    v123 = *(v0 + 8);

    return v123(v144);
  }

  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 184);
  v35 = *(v0 + 104);
  v36 = *(v0 + 72);
  v37 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v27 = *(v37 + 8);
  v27(v35, v36);
  if (!*(v0 + 320))
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = *(v0 + 168);
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = *(v30 + 48);
  if (v31(v28, 1, v29) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v44 = *(v0 + 56);
  v45 = *(v0 + 40);
  v46 = *(v0 + 48);
  (*(v46 + 32))(*(v0 + 64), *(v0 + 168), v45);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v48 = v47;
  v49 = *(v46 + 8);
  v49(v44, v45);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v50 < v48)
  {
    v141 = v49;
    v51 = *(v0 + 272);
    v52 = *(v0 + 216);
    v53 = *(v0 + 112);
    v54 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = objc_opt_self();
    v57 = [v56 bundleForClass:ObjCClassFromMetadata];
    v148._countAndFlagsBits = 0xD00000000000001CLL;
    v148._object = 0x80000001002B3D10;
    v58._object = 0x80000001002B3CF0;
    v58._countAndFlagsBits = 0x1000000000000017;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v148);

    outlined init with copy of (String, Date?)(v51, v52, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v60 = (*(v54 + 48))(v52, 1, v53);
    v61 = *(v0 + 216);
    if (v60 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }

    else
    {
      v105 = *(v0 + 112);
      v106 = *(v0 + 120);
      v107 = CloudDevice.name.getter();
      v109 = v108;
      (*(v106 + 8))(v61, v105);
      if (v109)
      {
        v110 = [v56 bundleForClass:ObjCClassFromMetadata];
        v149._object = 0x80000001002B3E10;
        v111._countAndFlagsBits = 0x10000000000000D5;
        v111._object = 0x80000001002B3E30;
        v112._countAndFlagsBits = 0;
        v112._object = 0xE000000000000000;
        v149._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v149);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1002A48B0;
        *(v113 + 56) = &type metadata for String;
        *(v113 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v113 + 32) = v107;
        *(v113 + 40) = v109;
        static String.localizedStringWithFormat(_:_:)();

LABEL_29:
        v133 = *(v0 + 264);
        v135 = *(v0 + 192);
        v137 = *(v0 + 272);
        v130 = *(v0 + 64);
        v117 = *(v0 + 40);
        v118 = *(v0 + 16);
        v119 = String._bridgeToObjectiveC()();

        v120 = String._bridgeToObjectiveC()();

        v144 = 1;
        v121 = [objc_opt_self() alertControllerWithTitle:v119 message:v120 preferredStyle:1];

        v122 = PresenterServerViewController.okAction.getter();
        [v121 addAction:v122];
        [v121 setPreferredAction:v122];
        [v118 presentViewController:v121 animated:1 completion:0];

        v141(v130, v117);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v133, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v78 = v135;
LABEL_30:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v137, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        goto LABEL_31;
      }
    }

    v114 = [v56 bundleForClass:ObjCClassFromMetadata];
    v150._object = 0x80000001002B3E10;
    v115._countAndFlagsBits = 0x10000000000000D0;
    v115._object = 0x80000001002B3D30;
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    v150._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v114, v116, v150);

    goto LABEL_29;
  }

  v49(*(v0 + 64), *(v0 + 40));
LABEL_11:
  v62 = *(v0 + 160);
  v63 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v31(v62, 1, v63) != 1)
  {
    v79 = *(v0 + 272);
    v80 = *(v0 + 264);
    v81 = *(v0 + 192);
    v82 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v80, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v79, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v41 = v82;
    v42 = &_s10Foundation4DateVSgMd;
    v43 = &_s10Foundation4DateVSgMR;
    goto LABEL_17;
  }

  v64 = *(v0 + 264);
  v65 = *(v0 + 208);
  v67 = *(v0 + 112);
  v66 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Date?)(v64, v65, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if ((*(v66 + 48))(v65, 1, v67) == 1)
  {
    v142 = v27;
    v68 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v68, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CommonLogger.onboarding.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v71, 2u);
    }

    v72 = *(v0 + 264);
    v137 = *(v0 + 272);
    v73 = *(v0 + 192);
    v74 = *(v0 + 96);
    v75 = *(v0 + 72);
    v76 = *(v0 + 16);

    v142(v74, v75);
    v77 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v144 = 1;
    [v76 presentViewController:v77 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v72, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v78 = v73;
    goto LABEL_30;
  }

  v84 = *(v0 + 128);
  v83 = *(v0 + 136);
  v85 = *(v0 + 112);
  v86 = *(v0 + 120);
  (*(v86 + 32))(v83, *(v0 + 208), v85);
  static CommonLogger.onboarding.getter();
  (*(v86 + 16))(v84, v83, v85);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  v89 = os_log_type_enabled(v87, v88);
  v91 = *(v0 + 120);
  v90 = *(v0 + 128);
  v92 = *(v0 + 112);
  v93 = *(v0 + 88);
  v94 = *(v0 + 72);
  if (v89)
  {
    v143 = v27;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v145 = v96;
    *v95 = 136315138;
    v97 = CloudDevice.name.getter();
    v134 = v94;
    v138 = v93;
    if (v98)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0x3E6C696E3CLL;
    }

    if (v98)
    {
      v100 = v98;
    }

    else
    {
      v100 = 0xE500000000000000;
    }

    v132 = v88;
    v103 = *(v91 + 8);
    v101 = v91 + 8;
    v102 = v103;
    v103(v90, v92);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v145);

    *(v95 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v87, v132, "[PresenterServerViewController] Lost Primary, re-noninating %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);

    v143(v138, v134);
  }

  else
  {

    v125 = *(v91 + 8);
    v101 = v91 + 8;
    v102 = v125;
    v125(v90, v92);
    v27(v93, v94);
  }

  *(v0 + 376) = v101;
  *(v0 + 384) = v102;
  v126 = swift_task_alloc();
  *(v0 + 392) = v126;
  *v126 = v0;
  v126[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v127 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v127);
}

{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v3, v2);
}

{
  v1 = v0[48];
  v2 = v0[34];
  v3 = v0[33];
  v4 = v0[24];
  v5 = v0[17];
  v6 = v0[14];

  v1(v5, v6);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

  v7 = v0[1];

  return v7(0);
}

void closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for Client();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v37[1] = a4;
    v18 = [a2 sheetPresentationController];
    if (v18)
    {
      v19 = v18;
      v38 = v10;
      v20 = String._bridgeToObjectiveC()();
      v21 = [v19 valueForKey:v20];

      if (v21)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      v10 = v38;
      if (*(&v41 + 1))
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        v22 = v40;
        v23 = [a2 sheetPresentationController];
        if (v23)
        {
          v24 = v23;
          v25 = v22;
          v26 = String._bridgeToObjectiveC()();
          v27 = [v24 valueForKey:v26];

          if (v27)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v40 = 0u;
            v41 = 0u;
          }

          v42 = v40;
          v43 = v41;
          v28 = v25;
          if (*(&v41 + 1))
          {
            if (swift_dynamicCast())
            {
              v29 = v40;
              v30 = [v25 layer];
              [v30 setHitTestsAsOpaque:0];

              v28 = [v29 layer];
              [v28 setHitTestsAsOpaque:0];
            }

LABEL_18:
            v10 = v38;
            v31 = static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter();
            if ((v31 & 1) == 0)
            {
LABEL_24:
              (*((swift_isaMask & *v17) + 0x88))(v31);
              if ((*(v10 + 48))(v8, 1, v9) == 1)
              {

                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_s9MomentsUI6ClientVSgMd, &_s9MomentsUI6ClientVSgMR);
              }

              else
              {
                (*(v10 + 32))(v12, v8, v9);
                if (Client.sharedServer.getter())
                {
                  dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter();
                  swift_getObjectType();
                  dispatch thunk of SharedServer.sendSuggestionSheetStateUpdate(to:for:)();

                  swift_unknownObjectRelease();
                  (*(v10 + 8))(v12, v9);
                }

                else
                {
                  (*(v10 + 8))(v12, v9);
                }
              }

              return;
            }

LABEL_23:
            v32 = type metadata accessor for TaskPriority();
            (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
            v33 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for MainActor();

            v34 = v39;
            v35 = static MainActor.shared.getter();
            v36 = swift_allocObject();
            v36[2] = v35;
            v36[3] = &protocol witness table for MainActor;
            v36[4] = v33;
            v36[5] = v34;

            _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v36);

            goto LABEL_24;
          }
        }

        else
        {

          v42 = 0u;
          v43 = 0u;
        }

        v10 = v38;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v42, &_sypSgMd, &_sypSgMR);
    v31 = static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter();
    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v8, v7);
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    UUID.init()();
    *(v0 + 112) = type metadata accessor for MomentsUIManager();
    v5 = static MomentsUIManager.shared.getter();
    *(v0 + 120) = dispatch thunk of MomentsUIManager.cloudManager.getter();

    *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    *(v0 + 136) = *(v3 + 72);
    v6 = *(v3 + 80);
    *(v0 + 216) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 144) = v8;
    *(v8 + 16) = xmmword_1002A48B0;
    v9 = *(v3 + 16);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v8 + v7, v2, v4);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();

    return CloudManager.retainUIActive(_:_:_:)(v8, "presentPendingSheetContentViewController()", 42, 2, 264);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v2;
  v3[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
  v4 = *(v1 + 48);

  return PresenterServerViewController.showFatalErrorPopups(controller:)(v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}