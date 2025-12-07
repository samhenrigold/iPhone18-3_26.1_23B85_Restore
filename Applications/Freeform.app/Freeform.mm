void sub_1000040D0()
{
  v0 = objc_autoreleasePoolPush();
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  xmmword_101A34EA0 = vnegq_f64(v1);
  *algn_101A34EB0 = vnegq_f64(0);
  xmmword_101A34EC0 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *algn_101A34ED0 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for CRLiOSApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for CRLiOSAppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id sub_1000042AC()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryActionAlertController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_stencilLibrary] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore] = 0;
  v0[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime] = 0;
  v2 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_applicationCoordinator;
  if (qword_1019F1EB0 != -1)
  {
    swift_once();
  }

  v3 = qword_101A152D0;
  *&v1[v2] = qword_101A152D0;
  v4 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus;
  type metadata accessor for CRLiCloudStatusObserver();
  swift_allocObject();
  v5 = v3;
  *&v1[v4] = sub_100004554();
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_spotlightManager] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_keyboardMonitor] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_activeUseManager] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharingExtensionImporter] = 0;
  v6 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_insertMenuIdentifier;
  *&v1[v6] = String._bridgeToObjectiveC()();
  v7 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_autoFillMenuIdentifier;
  *&v1[v7] = String._bridgeToObjectiveC()();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLiOSAppDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100004478()
{
  result = [objc_allocWithZone(type metadata accessor for CRLApplicationCoordinator()) init];
  qword_101A152D0 = result;
  return result;
}

void *sub_100004554()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  LOBYTE(aBlock[0]) = 4;
  sub_1005B981C(&qword_101A16F80, &qword_1014A4EB8);
  swift_allocObject();
  v0[2] = CurrentValueSubject.init(_:)();
  type metadata accessor for CRLUnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  atomic_thread_fence(memory_order_acq_rel);
  v0[3] = v6;
  v0[4] = 0;
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  atomic_thread_fence(memory_order_acq_rel);
  v0[5] = v8;
  v0[6] = 0;
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  atomic_thread_fence(memory_order_acq_rel);
  v0[7] = v10;
  v0[8] = 0;
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  atomic_thread_fence(memory_order_acq_rel);
  v0[9] = v12;
  v0[10] = 0;
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  atomic_thread_fence(memory_order_acq_rel);
  v1[11] = v14;
  *(v1 + 96) = 0;
  if (qword_1019F1588 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD6518;
  v1[13] = qword_101AD6518;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v17 = v16;
  static DispatchQoS.default.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006448(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v1[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000067FC();
  v18 = [objc_opt_self() defaultContainer];
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000081B0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10000880C;
  aBlock[3] = &unk_10189CCE0;
  v20 = _Block_copy(aBlock);

  [v18 accountInfoWithCompletionHandler:v20];
  _Block_release(v20);

  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v1 selector:"accountDidChange" name:CKAccountChangedNotification object:0];
  [v21 addObserver:v1 selector:"accountDidChange" name:ACDAccountStoreDidChangeNotification object:0];

  return v1;
}

id sub_100004AD0()
{
  v0 = [objc_allocWithZone(CKContainerOptions) init];
  [v0 setUseZoneWidePCS:1];
  [v0 setMaintainRecordUploadOrder:1];
  [v0 setFetchChangesForMergeableValues:1];
  if (qword_1019F1590 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6520;
  if (qword_1019F2170 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlCloudKitEnvironment;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = CKContainerEnvironmentString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Using %{public}@ CKContainerEnvironment", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v9 = objc_allocWithZone(CKContainerID);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithContainerIdentifier:v10 environment:v1];

  v12 = [objc_allocWithZone(CKContainer) initWithContainerID:v11 options:v0];
  return v12;
}

uint64_t sub_100004D00()
{
  v2[3] = &type metadata for CRLFeatureFlags;
  v2[4] = sub_100004D60();
  LOBYTE(v2[0]) = 27;
  v0 = isFeatureEnabled(_:)();
  result = sub_100005070(v2);
  byte_101AD6528 = v0 & 1;
  return result;
}

unint64_t sub_100004D60()
{
  result = qword_1019F52F0;
  if (!qword_1019F52F0)
  {
    result = swift_getWitnessTable(a9_14, &type metadata for CRLFeatureFlags, v0, v1);
    atomic_store(result, &qword_1019F52F0);
  }

  return result;
}

const char *sub_100004DE8(char a1)
{
  result = "AdoptTipsNext";
  switch(a1)
  {
    case 1:
      result = "AppAnalytics";
      break;
    case 2:
      result = "AppIntents";
      break;
    case 3:
      result = "AppIntentsSettings";
      break;
    case 4:
      result = "BatteriesIncluded";
      break;
    case 5:
      result = "BetterPencilSelection";
      break;
    case 6:
      result = "ChangeShape";
      break;
    case 7:
      result = "CloudQuotaMessaging";
      break;
    case 8:
      result = "ContentLanguageCopyPaste";
      break;
    case 9:
      result = "DrawingDataDetectors";
      break;
    case 10:
      result = "EasierConnectionLines";
      break;
    case 11:
      result = "FileImportExport";
      break;
    case 12:
      result = "PKDrawingExport";
      break;
    case 13:
      result = "Follow";
      break;
    case 14:
      result = "GenerativePlayground";
      break;
    case 15:
      result = "MathPaper";
      break;
    case 16:
      result = "MagicLists";
      break;
    case 17:
      result = "MacMediaReplacer";
      break;
    case 18:
      result = "MediaLibrary";
      break;
    case 19:
      result = "PlaceholderImages";
      break;
    case 20:
      result = "Scenes";
      break;
    case 21:
      result = "SendACopy";
      break;
    case 22:
      result = "SignOutRedesign";
      break;
    case 23:
      result = "SnapToGrid";
      break;
    case 24:
      result = "Stencils";
      break;
    case 25:
      result = "VerticalTextBoxAlignment";
      break;
    case 26:
      result = "AllowMinRequiredVersionForGoodEnoughFidelityToSaveToCloudKit";
      break;
    case 27:
      result = "UseSandboxEnvironment";
      break;
    case 28:
      result = "Spatial";
      break;
    case 29:
      result = "InlineQuickLook";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100005070(void *a1)
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

void sub_1000050BC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC68, &qword_101AD5C10);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudKitEnvironment = v1;
}

void *sub_100005174(void *a1, void *a2, dispatch_once_t *a3)
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000052C8;
  v15 = &unk_10183B720;
  v16 = a1;
  v17 = a2;
  v5 = *a3;
  v6 = a1;
  v7 = v6;
  if (v5 != -1)
  {
    dispatch_once(a3, &v12);
  }

  v8 = sub_100005314(v6);
  [v8 setObject:v7 forKey:{*a2, v12, v13, v14, v15, v16, v17}];

  v9 = *a2;
  v10 = v9;

  return v9;
}

id sub_100005244()
{
  result = sub_100004AD0();
  qword_101AD6518 = result;
  return result;
}

uint64_t sub_100005264()
{
  if (qword_1019F1598 != -1)
  {
    result = swift_once();
  }

  v0 = 1;
  if (byte_101AD6528)
  {
    v0 = 2;
  }

  qword_101AD6520 = v0;
  return result;
}

void sub_1000052C8(uint64_t a1)
{
  v2 = os_log_create("com.apple.freeform", [*(a1 + 32) UTF8String]);

  **(a1 + 40) = v2;
}

id sub_100005314(uint64_t a1)
{
  if (qword_101A35200 != -1)
  {
    sub_100005358();
  }

  v2 = qword_101A351F8;

  return v2;
}

void sub_10000536C(id a1)
{
  v1 = +[NSMapTable strongToStrongObjectsMapTable];
  v2 = qword_101A351F8;
  qword_101A351F8 = v1;
}

unint64_t sub_1000053B0()
{
  result = qword_1019F4D40;
  if (!qword_1019F4D40)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1019F4D40);
  }

  return result;
}

uint64_t sub_100005404(uint64_t a1, const mach_header_64 *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  switch(*(a7 + 16))
  {
    case 1:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10146C6B0;
      v9 = a7 + 32;
      v10 = v20 + 32;
      goto LABEL_25;
    case 2:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10146BDE0;
      sub_10000630C(a7 + 32, v16 + 32);
      v9 = a7 + 72;
      v10 = v16 + 72;
      goto LABEL_25;
    case 3:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10146C4D0;
      sub_10000630C(a7 + 32, v18 + 32);
      sub_10000630C(a7 + 72, v18 + 72);
      v9 = a7 + 112;
      v10 = v18 + 112;
      goto LABEL_25;
    case 4:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10146D2A0;
      sub_10000630C(a7 + 32, v13 + 32);
      sub_10000630C(a7 + 72, v13 + 72);
      sub_10000630C(a7 + 112, v13 + 112);
      v9 = a7 + 152;
      v10 = v13 + 152;
      goto LABEL_25;
    case 5:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10146CA70;
      sub_10000630C(a7 + 32, v23 + 32);
      sub_10000630C(a7 + 72, v23 + 72);
      sub_10000630C(a7 + 112, v23 + 112);
      sub_10000630C(a7 + 152, v23 + 152);
      v9 = a7 + 192;
      v10 = v23 + 192;
      goto LABEL_25;
    case 6:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101478A90;
      sub_10000630C(a7 + 32, v26 + 32);
      sub_10000630C(a7 + 72, v26 + 72);
      sub_10000630C(a7 + 112, v26 + 112);
      sub_10000630C(a7 + 152, v26 + 152);
      sub_10000630C(a7 + 192, v26 + 192);
      v9 = a7 + 232;
      v10 = v26 + 232;
      goto LABEL_25;
    case 7:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_101483930;
      sub_10000630C(a7 + 32, v19 + 32);
      sub_10000630C(a7 + 72, v19 + 72);
      sub_10000630C(a7 + 112, v19 + 112);
      sub_10000630C(a7 + 152, v19 + 152);
      sub_10000630C(a7 + 192, v19 + 192);
      sub_10000630C(a7 + 232, v19 + 232);
      v9 = a7 + 272;
      v10 = v19 + 272;
      goto LABEL_25;
    case 8:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1014AEA50;
      sub_10000630C(a7 + 32, v29 + 32);
      sub_10000630C(a7 + 72, v29 + 72);
      sub_10000630C(a7 + 112, v29 + 112);
      sub_10000630C(a7 + 152, v29 + 152);
      sub_10000630C(a7 + 192, v29 + 192);
      sub_10000630C(a7 + 232, v29 + 232);
      sub_10000630C(a7 + 272, v29 + 272);
      v9 = a7 + 312;
      v10 = v29 + 312;
      goto LABEL_25;
    case 9:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1014A04A0;
      sub_10000630C(a7 + 32, v15 + 32);
      sub_10000630C(a7 + 72, v15 + 72);
      sub_10000630C(a7 + 112, v15 + 112);
      sub_10000630C(a7 + 152, v15 + 152);
      sub_10000630C(a7 + 192, v15 + 192);
      sub_10000630C(a7 + 232, v15 + 232);
      sub_10000630C(a7 + 272, v15 + 272);
      sub_10000630C(a7 + 312, v15 + 312);
      v9 = a7 + 352;
      v10 = v15 + 352;
      goto LABEL_25;
    case 0xALL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_101488C80;
      sub_10000630C(a7 + 32, v28 + 32);
      sub_10000630C(a7 + 72, v28 + 72);
      sub_10000630C(a7 + 112, v28 + 112);
      sub_10000630C(a7 + 152, v28 + 152);
      sub_10000630C(a7 + 192, v28 + 192);
      sub_10000630C(a7 + 232, v28 + 232);
      sub_10000630C(a7 + 272, v28 + 272);
      sub_10000630C(a7 + 312, v28 + 312);
      sub_10000630C(a7 + 352, v28 + 352);
      v9 = a7 + 392;
      v10 = v28 + 392;
      goto LABEL_25;
    case 0xBLL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1014AEA40;
      sub_10000630C(a7 + 32, v12 + 32);
      sub_10000630C(a7 + 72, v12 + 72);
      sub_10000630C(a7 + 112, v12 + 112);
      sub_10000630C(a7 + 152, v12 + 152);
      sub_10000630C(a7 + 192, v12 + 192);
      sub_10000630C(a7 + 232, v12 + 232);
      sub_10000630C(a7 + 272, v12 + 272);
      sub_10000630C(a7 + 312, v12 + 312);
      sub_10000630C(a7 + 352, v12 + 352);
      sub_10000630C(a7 + 392, v12 + 392);
      v9 = a7 + 432;
      v10 = v12 + 432;
      goto LABEL_25;
    case 0xCLL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1014A50F0;
      sub_10000630C(a7 + 32, v14 + 32);
      sub_10000630C(a7 + 72, v14 + 72);
      sub_10000630C(a7 + 112, v14 + 112);
      sub_10000630C(a7 + 152, v14 + 152);
      sub_10000630C(a7 + 192, v14 + 192);
      sub_10000630C(a7 + 232, v14 + 232);
      sub_10000630C(a7 + 272, v14 + 272);
      sub_10000630C(a7 + 312, v14 + 312);
      sub_10000630C(a7 + 352, v14 + 352);
      sub_10000630C(a7 + 392, v14 + 392);
      sub_10000630C(a7 + 432, v14 + 432);
      v9 = a7 + 472;
      v10 = v14 + 472;
      goto LABEL_25;
    case 0xDLL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10148EDC0;
      sub_10000630C(a7 + 32, v25 + 32);
      sub_10000630C(a7 + 72, v25 + 72);
      sub_10000630C(a7 + 112, v25 + 112);
      sub_10000630C(a7 + 152, v25 + 152);
      sub_10000630C(a7 + 192, v25 + 192);
      sub_10000630C(a7 + 232, v25 + 232);
      sub_10000630C(a7 + 272, v25 + 272);
      sub_10000630C(a7 + 312, v25 + 312);
      sub_10000630C(a7 + 352, v25 + 352);
      sub_10000630C(a7 + 392, v25 + 392);
      sub_10000630C(a7 + 432, v25 + 432);
      sub_10000630C(a7 + 472, v25 + 472);
      v9 = a7 + 512;
      v10 = v25 + 512;
      goto LABEL_25;
    case 0xELL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_101490C80;
      sub_10000630C(a7 + 32, v11 + 32);
      sub_10000630C(a7 + 72, v11 + 72);
      sub_10000630C(a7 + 112, v11 + 112);
      sub_10000630C(a7 + 152, v11 + 152);
      sub_10000630C(a7 + 192, v11 + 192);
      sub_10000630C(a7 + 232, v11 + 232);
      sub_10000630C(a7 + 272, v11 + 272);
      sub_10000630C(a7 + 312, v11 + 312);
      sub_10000630C(a7 + 352, v11 + 352);
      sub_10000630C(a7 + 392, v11 + 392);
      sub_10000630C(a7 + 432, v11 + 432);
      sub_10000630C(a7 + 472, v11 + 472);
      sub_10000630C(a7 + 512, v11 + 512);
      v9 = a7 + 552;
      v10 = v11 + 552;
      goto LABEL_25;
    case 0xFLL:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1014AEA30;
      sub_10000630C(a7 + 32, v17 + 32);
      sub_10000630C(a7 + 72, v17 + 72);
      sub_10000630C(a7 + 112, v17 + 112);
      sub_10000630C(a7 + 152, v17 + 152);
      sub_10000630C(a7 + 192, v17 + 192);
      sub_10000630C(a7 + 232, v17 + 232);
      sub_10000630C(a7 + 272, v17 + 272);
      sub_10000630C(a7 + 312, v17 + 312);
      sub_10000630C(a7 + 352, v17 + 352);
      sub_10000630C(a7 + 392, v17 + 392);
      sub_10000630C(a7 + 432, v17 + 432);
      sub_10000630C(a7 + 472, v17 + 472);
      sub_10000630C(a7 + 512, v17 + 512);
      sub_10000630C(a7 + 552, v17 + 552);
      v9 = a7 + 592;
      v10 = v17 + 592;
      goto LABEL_25;
    case 0x10:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1014AEA20;
      sub_10000630C(a7 + 32, v8 + 32);
      sub_10000630C(a7 + 72, v8 + 72);
      sub_10000630C(a7 + 112, v8 + 112);
      sub_10000630C(a7 + 152, v8 + 152);
      sub_10000630C(a7 + 192, v8 + 192);
      sub_10000630C(a7 + 232, v8 + 232);
      sub_10000630C(a7 + 272, v8 + 272);
      sub_10000630C(a7 + 312, v8 + 312);
      sub_10000630C(a7 + 352, v8 + 352);
      sub_10000630C(a7 + 392, v8 + 392);
      sub_10000630C(a7 + 432, v8 + 432);
      sub_10000630C(a7 + 472, v8 + 472);
      sub_10000630C(a7 + 512, v8 + 512);
      sub_10000630C(a7 + 552, v8 + 552);
      sub_10000630C(a7 + 592, v8 + 592);
      v9 = a7 + 632;
      v10 = v8 + 632;
      goto LABEL_25;
    case 0x11:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1014AEA10;
      sub_10000630C(a7 + 32, v21 + 32);
      sub_10000630C(a7 + 72, v21 + 72);
      sub_10000630C(a7 + 112, v21 + 112);
      sub_10000630C(a7 + 152, v21 + 152);
      sub_10000630C(a7 + 192, v21 + 192);
      sub_10000630C(a7 + 232, v21 + 232);
      sub_10000630C(a7 + 272, v21 + 272);
      sub_10000630C(a7 + 312, v21 + 312);
      sub_10000630C(a7 + 352, v21 + 352);
      sub_10000630C(a7 + 392, v21 + 392);
      sub_10000630C(a7 + 432, v21 + 432);
      sub_10000630C(a7 + 472, v21 + 472);
      sub_10000630C(a7 + 512, v21 + 512);
      sub_10000630C(a7 + 552, v21 + 552);
      sub_10000630C(a7 + 592, v21 + 592);
      sub_10000630C(a7 + 632, v21 + 632);
      v9 = a7 + 672;
      v10 = v21 + 672;
      goto LABEL_25;
    case 0x12:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1014827A0;
      sub_10000630C(a7 + 32, v27 + 32);
      sub_10000630C(a7 + 72, v27 + 72);
      sub_10000630C(a7 + 112, v27 + 112);
      sub_10000630C(a7 + 152, v27 + 152);
      sub_10000630C(a7 + 192, v27 + 192);
      sub_10000630C(a7 + 232, v27 + 232);
      sub_10000630C(a7 + 272, v27 + 272);
      sub_10000630C(a7 + 312, v27 + 312);
      sub_10000630C(a7 + 352, v27 + 352);
      sub_10000630C(a7 + 392, v27 + 392);
      sub_10000630C(a7 + 432, v27 + 432);
      sub_10000630C(a7 + 472, v27 + 472);
      sub_10000630C(a7 + 512, v27 + 512);
      sub_10000630C(a7 + 552, v27 + 552);
      sub_10000630C(a7 + 592, v27 + 592);
      sub_10000630C(a7 + 632, v27 + 632);
      sub_10000630C(a7 + 672, v27 + 672);
      v9 = a7 + 712;
      v10 = v27 + 712;
      goto LABEL_25;
    case 0x13:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1014AEA00;
      sub_10000630C(a7 + 32, v30 + 32);
      sub_10000630C(a7 + 72, v30 + 72);
      sub_10000630C(a7 + 112, v30 + 112);
      sub_10000630C(a7 + 152, v30 + 152);
      sub_10000630C(a7 + 192, v30 + 192);
      sub_10000630C(a7 + 232, v30 + 232);
      sub_10000630C(a7 + 272, v30 + 272);
      sub_10000630C(a7 + 312, v30 + 312);
      sub_10000630C(a7 + 352, v30 + 352);
      sub_10000630C(a7 + 392, v30 + 392);
      sub_10000630C(a7 + 432, v30 + 432);
      sub_10000630C(a7 + 472, v30 + 472);
      sub_10000630C(a7 + 512, v30 + 512);
      sub_10000630C(a7 + 552, v30 + 552);
      sub_10000630C(a7 + 592, v30 + 592);
      sub_10000630C(a7 + 632, v30 + 632);
      sub_10000630C(a7 + 672, v30 + 672);
      sub_10000630C(a7 + 712, v30 + 712);
      v9 = a7 + 752;
      v10 = v30 + 752;
      goto LABEL_25;
    case 0x14:
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1014AE9F0;
      sub_10000630C(a7 + 32, v22 + 32);
      sub_10000630C(a7 + 72, v22 + 72);
      sub_10000630C(a7 + 112, v22 + 112);
      sub_10000630C(a7 + 152, v22 + 152);
      sub_10000630C(a7 + 192, v22 + 192);
      sub_10000630C(a7 + 232, v22 + 232);
      sub_10000630C(a7 + 272, v22 + 272);
      sub_10000630C(a7 + 312, v22 + 312);
      sub_10000630C(a7 + 352, v22 + 352);
      sub_10000630C(a7 + 392, v22 + 392);
      sub_10000630C(a7 + 432, v22 + 432);
      sub_10000630C(a7 + 472, v22 + 472);
      sub_10000630C(a7 + 512, v22 + 512);
      sub_10000630C(a7 + 552, v22 + 552);
      sub_10000630C(a7 + 592, v22 + 592);
      sub_10000630C(a7 + 632, v22 + 632);
      sub_10000630C(a7 + 672, v22 + 672);
      sub_10000630C(a7 + 712, v22 + 712);
      sub_10000630C(a7 + 752, v22 + 752);
      v9 = a7 + 792;
      v10 = v22 + 792;
LABEL_25:
      sub_10000630C(v9, v10);
      os_log(_:dso:log:type:_:)();

      break;
    default:

      result = os_log(_:dso:log:type:_:)();
      break;
  }

  return result;
}

uint64_t sub_10000630C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006370(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000063B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006400(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006448(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006490(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000064D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006520(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006568(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000065B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000065F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006640(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006688(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000066D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006718(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006760(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1005C4E5C(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 112);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100007AEC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189C998;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_100006AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007530(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007570(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000075F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007638(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_10000767C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(*(v2 + 11) + 16);

    os_unfair_lock_lock(v3);
    v2[96] = 1;
    os_unfair_lock_unlock(v3);
    swift_endAccess();

    v4 = objc_opt_self();
    result = [v4 defaultStore];
    if (result)
    {
      v5 = result;
      v6 = [result aa_primaryAppleAccount];

      if (!v6)
      {
        swift_beginAccess();
        v15 = *(v2 + 4);
        v16 = *(*(v2 + 3) + 16);
        os_unfair_lock_lock(v16);
        os_unfair_lock_unlock(v16);
        swift_endAccess();
        swift_beginAccess();
        v17 = *(*(v2 + 3) + 16);

        os_unfair_lock_lock(v17);
        *(v2 + 4) = 3;
        os_unfair_lock_unlock(v17);
        swift_endAccess();

        sub_1000099BC(v15);
        swift_beginAccess();
        v18 = *(v2 + 6);
        v19 = *(*(v2 + 5) + 16);
        os_unfair_lock_lock(v19);
        os_unfair_lock_unlock(v19);
        swift_endAccess();
        swift_beginAccess();
        v20 = *(*(v2 + 5) + 16);

        os_unfair_lock_lock(v20);
        *(v2 + 6) = 3;
        goto LABEL_11;
      }

      swift_beginAccess();
      v7 = *(v2 + 4);
      v8 = *(*(v2 + 3) + 16);
      os_unfair_lock_lock(v8);
      os_unfair_lock_unlock(v8);
      swift_endAccess();
      swift_beginAccess();
      v9 = *(*(v2 + 3) + 16);

      os_unfair_lock_lock(v9);
      *(v2 + 4) = 1;
      os_unfair_lock_unlock(v9);
      swift_endAccess();

      sub_1000099BC(v7);
      result = [v4 defaultStore];
      if (result)
      {
        v10 = result;
        v11 = [result aa_primaryAppleAccount];

        if (v11)
        {
          if ([v11 isEnabledForDataclass:ACAccountDataclassFreeform])
          {
            swift_beginAccess();
            v12 = *(v2 + 6);
            v13 = *(*(v2 + 5) + 16);
            os_unfair_lock_lock(v13);
            os_unfair_lock_unlock(v13);
            swift_endAccess();
            swift_beginAccess();
            v14 = *(*(v2 + 5) + 16);

            os_unfair_lock_lock(v14);
            *(v2 + 6) = 1;
            os_unfair_lock_unlock(v14);
            swift_endAccess();

            sub_1000138B8(v12);

LABEL_12:
            sub_10000A05C();
            CurrentValueSubject.send(_:)();
            swift_beginAccess();
            v22 = *(*(v2 + 11) + 16);

            os_unfair_lock_lock(v22);
            v2[96] = 0;
            os_unfair_lock_unlock(v22);
            swift_endAccess();
          }
        }

        swift_beginAccess();
        v18 = *(v2 + 6);
        v21 = *(*(v2 + 5) + 16);
        os_unfair_lock_lock(v21);
        os_unfair_lock_unlock(v21);
        swift_endAccess();
        swift_beginAccess();
        v20 = *(*(v2 + 5) + 16);

        os_unfair_lock_lock(v20);
        *(v2 + 6) = 3;
LABEL_11:
        os_unfair_lock_unlock(v20);
        swift_endAccess();

        sub_1000138B8(v18);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007B0C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100006520(&unk_1019FF3F0, type metadata accessor for LaunchOptionsKey, "с<");
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  v10 = a5();

  return v10 & 1;
}

uint64_t sub_100007BDC()
{
  v1 = v0;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() registerUserDefaults];
  sub_10000A728();
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v1 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v1 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v14 = *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_applicationCoordinator];
  sub_10000D0FC();

  v15 = [objc_opt_self() sharedKeyboardMonitor];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_keyboardMonitor];
  *&v1[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_keyboardMonitor] = v15;

  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v33 = sub_10000D610;
  v34 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  v32 = &unk_101885C98;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100006520(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10000D494();
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v3, v21);
  (*(v27 + 8))(v6, v28);

  v32 = &type metadata for CRLFeatureFlags;
  v33 = sub_100004D60();
  LOBYTE(aBlock[0]) = 1;
  LOBYTE(v21) = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v21)
  {
    if (qword_1019F14F0 != -1)
    {
      swift_once();
    }

    v22 = static AASApplicationManager.shared;
    v23 = [objc_allocWithZone(type metadata accessor for CRLAASApplicationManagerDependencies()) init];
    sub_10000EC70(v23, v22);
  }

  return 1;
}

void sub_100008814(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000088A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = v12;
    v16 = v7;
    v17 = [a1 deviceToDeviceEncryptionAvailability];
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v36 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = v17;
    aBlock[4] = sub_1000788BC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189C920;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v16 + 8))(v9, v6);
    return (*(v11 + 8))(v15, v37);
  }

  sub_100006370(0, &qword_1019F6EE0, OS_os_log_ptr);
  v22 = static OS_os_log.default.getter();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if (a2)
  {
    swift_getErrorValue();
    v24 = Error.publicDescription.getter(v39, v40);
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  v28 = v27;
  *(inited + 64) = v27;
  if (v26)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v26)
  {
    v30 = v26;
  }

  *(inited + 32) = v29;
  *(inited + 40) = v30;
  if (!a2)
  {
    v33 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v27;
    goto LABEL_15;
  }

  swift_getErrorValue();
  v31 = Error.fullDescription.getter(v41);
  v33 = (inited + 72);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v28;
  if (!v32)
  {
LABEL_15:
    *v33 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_16;
  }

  *v33 = v31;
LABEL_16:
  *(inited + 80) = v32;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v34, "Error fetching device to device encryption availability: %{public}@ <%@>", 72, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  return swift_arrayDestroy();
}

uint64_t sub_100008D8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008DE4(uint64_t a1)
{
  result = type metadata accessor for CRLFolderIdentifierStorage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008E50(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100008EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_100008F10(uint64_t a1)
{
  sub_100008EC4(319, &unk_101A24AA0, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100008F84(uint64_t a1)
{
  type metadata accessor for CRLFolderIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_10000B42C(319, &qword_1019F7F60, type metadata accessor for CRLFolderIdentifier);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_10000B42C(319, &unk_101A249C8, _s5BoardV13ShareMetadataVMa);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000090BC(uint64_t a1)
{
  sub_10000B480(319, &qword_101A046F0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ParticipantRole(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000091A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100009260()
{
  v1 = v0;
  v2 = 0xE900000000000073;
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v9 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v10 = (*(*(v9 - 8) + 48))(v8, 5, v9);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = 0x657469726F766146;
    }

    else
    {
      if (v10 == 4)
      {
        v11 = 0x646572616853;
      }

      else
      {
        v11 = 0x796C746E65636552;
      }

      if (v10 == 4)
      {
        v2 = 0xE600000000000000;
      }

      else
      {
        v2 = 0xEF646574656C6544;
      }
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0x6472616F426C6C41;
    }

    else
    {
      v11 = 0x73746E65636552;
    }

    if (v10 != 1)
    {
      v2 = 0xE700000000000000;
    }
  }

  else
  {
    sub_10000CCD0(v8, v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v12._countAndFlagsBits = UUID.uuidString.getter();
    v15 = 0x2D72657355;
    v16 = 0xE500000000000000;
    String.append(_:)(v12);

    v11 = v15;
    v2 = v16;
    sub_10000CD38(v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v15 = 0xD000000000000012;
  v16 = 0x80000001015B51A0;
  v13._countAndFlagsBits = v11;
  v13._object = v2;
  String.append(_:)(v13);

  return v15;
}

uint64_t sub_1000094E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for Date();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10000974C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000097B8(uint64_t a1, void *a2, uint64_t (*a3)(void *, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 64);
    v8 = *(*(v6 + 56) + 16);
    v9 = a2;
    os_unfair_lock_lock(v8);
    v10 = v7;
    os_unfair_lock_unlock(v8);
    swift_endAccess();
    swift_beginAccess();
    v11 = *(*(v6 + 56) + 16);
    v12 = v9;

    os_unfair_lock_lock(v11);
    v13 = *(v6 + 64);
    *(v6 + 64) = a2;
    v14 = v12;

    os_unfair_lock_unlock(v11);
    swift_endAccess();

    sub_10000A154(v7);
  }

  return a3(a2, 0);
}

void sub_100009904()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAC8, &qword_101AD5A70);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.realTimeSync = v1;
}

void sub_1000099BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_beginAccess();
  v11 = *(v2 + 32);
  v12 = *(*(v2 + 24) + 16);

  os_unfair_lock_lock(v12);
  os_unfair_lock_unlock(v12);

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v11;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v13, "Cached account status: %d", 25, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v14 = *(v2 + 32);
  v15 = *(*(v2 + 24) + 16);

  os_unfair_lock_lock(v15);
  os_unfair_lock_unlock(v15);

  if (v14 != a1)
  {
    v16 = sub_10000A05C();
    swift_beginAccess();
    v17 = *(v2 + 96);
    v18 = *(*(v2 + 88) + 16);

    os_unfair_lock_lock(v18);
    os_unfair_lock_unlock(v18);

    if ((v17 & 1) == 0)
    {
      LOBYTE(aBlock) = v16;
      CurrentValueSubject.send(_:)();
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v16;
    v39 = sub_100078EA0;
    v40 = v20;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_100007638;
    v38 = &unk_10189CB28;
    v21 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v34 + 8))(v6, v4);
    (*(v32 + 8))(v8, v33);
    swift_beginAccess();
    v22 = *(v2 + 64);
    v23 = *(*(v2 + 56) + 16);
    os_unfair_lock_lock(v23);
    v24 = v22;
    os_unfair_lock_unlock(v23);
    swift_endAccess();
    swift_beginAccess();
    v25 = *(*(v2 + 56) + 16);

    os_unfair_lock_lock(v25);
    v26 = *(v2 + 64);
    *(v2 + 64) = 0;

    os_unfair_lock_unlock(v25);
    swift_endAccess();

    sub_10000A154(v22);

    v27 = *(v2 + 104);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
    v29[3] = 0;
    v29[4] = v28;
    v39 = sub_100015184;
    v40 = v29;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_10000880C;
    v38 = &unk_10189CB78;
    v30 = _Block_copy(&aBlock);

    [v27 fetchUserRecordIDWithCompletionHandler:v30];
    _Block_release(v30);
  }
}

uint64_t sub_100009FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A018()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000A05C()
{
  swift_beginAccess();
  v1 = v0[6];
  v2 = *(v0[5] + 16);

  os_unfair_lock_lock(v2);
  os_unfair_lock_unlock(v2);

  if (v1 == 1)
  {
    return 1;
  }

  swift_beginAccess();
  v4 = v0[4];
  v5 = *(v0[3] + 16);

  os_unfair_lock_lock(v5);
  os_unfair_lock_unlock(v5);

  if (!v1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if (v4 == 4)
  {
    v6 = 0;
  }

  if (v1 == 4)
  {
    v6 = 0;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_10000A154(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 64);
  v12 = *(*(v2 + 56) + 16);
  v13 = v11;

  os_unfair_lock_lock(v12);
  v14 = v13;
  os_unfair_lock_unlock(v12);

  if (!a1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v11 || (sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr), v15 = a1, v16 = static NSObject.== infix(_:_:)(), v15, v14, (v16 & 1) == 0))
  {
LABEL_7:
    v17 = *(v2 + 64);
    v18 = *(*(v2 + 56) + 16);
    v19 = v17;

    os_unfair_lock_lock(v18);
    v20 = v19;
    os_unfair_lock_unlock(v18);

    if (v17)
    {
      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v25 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v20;
      aBlock[4] = sub_100C5DFE4;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_10189CAD8;
      v22 = _Block_copy(aBlock);
      v23 = v20;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v25;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      (*(v5 + 8))(v7, v4);
      (*(v26 + 8))(v10, v27);
    }
  }
}

uint64_t sub_10000A524()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000A574(id a1)
{
  v6[0] = @"CRLSnapToGrid";
  v6[1] = @"CRLDisplayEdgeGuides";
  v7[0] = &__kCFBooleanFalse;
  v7[1] = &__kCFBooleanFalse;
  v6[2] = @"CRLDisplayCenterGuides";
  v6[3] = @"CRLDisplaySpacingGuides";
  v7[2] = &__kCFBooleanTrue;
  v7[3] = &__kCFBooleanTrue;
  v6[4] = @"CRLDisplaySizingGuides";
  v6[5] = @"CRLUseHapticFeedbackWhenSnapping";
  v6[6] = @"CRLEncryptSharePlayData";
  v6[7] = @"CRLDeleteBoardCleanupTolerance";
  v7[6] = &__kCFBooleanTrue;
  v7[7] = &off_1018E2E38;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[8] = @"CRLDeletedBoardTTL";
  v6[9] = @"CRLSelectAndScrollWithApplePencil";
  v7[8] = &off_1018E2E50;
  v7[9] = &__kCFBooleanFalse;
  v6[10] = @"CRLMathRecognitionMode";
  v6[11] = @"CRLAppAnalyticsResetIdentifier";
  v7[10] = &off_1018E2E68;
  v7[11] = &__kCFBooleanFalse;
  v6[12] = @"enableOSSignpost";
  v6[13] = @"CRLMultiSelectionShouldDisplaySingleBoundsUserDefault";
  v7[12] = &__kCFBooleanFalse;
  v7[13] = &__kCFBooleanTrue;
  v6[14] = @"CRLRulerUnitTypeUserDefault";
  v1 = +[NSLocale currentLocale];
  if ([v1 usesMetricSystem])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v6[15] = @"CRL3DObjectCompression";
  v7[14] = v3;
  v7[15] = &__kCFBooleanFalse;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:16];
  v5 = qword_101A35230;
  qword_101A35230 = v4;
}

void sub_10000A728()
{
  v0 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v0 - 8);
  v130 = &v122 - v1;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v126 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v127 = *(v4 - 8);
  v128 = v4;
  __chkstk_darwin(v4);
  v125 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v6 - 8);
  v129 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v122 - v9;
  __chkstk_darwin(v10);
  v123 = &v122 - v11;
  __chkstk_darwin(v12);
  v122 = &v122 - v13;
  __chkstk_darwin(v14);
  v16 = &v122 - v15;
  __chkstk_darwin(v17);
  v19 = &v122 - v18;
  sub_1005B981C(&qword_101A32680, &unk_1014DBC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101478A90;
  v137 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v21 = *(v137 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(v19, 1, 5, v137);
  v135 = v23;
  v136 = v22;
  v24 = v22;
  v25 = sub_100009260();
  v27 = v26;
  v134 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
  sub_10000BC84(v19, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *(inited + 32) = v25;
  v131 = inited + 32;
  *(inited + 40) = v27;
  v132 = sub_1005B981C(&qword_101A12AA8, &unk_10149FAD0);
  v28 = swift_initStackObject();
  v138 = xmmword_10146D2A0;
  *(v28 + 16) = xmmword_10146D2A0;
  v29 = *(&xmmword_101A32618 + 1);
  *(v28 + 32) = xmmword_101A32618;
  *(v28 + 40) = v29;
  *(v28 + 48) = 1;
  v30 = off_101A32638;
  v31 = *(&off_101A32638 + 1);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 80) = v30;
  *(v28 + 88) = v31;
  *(v28 + 96) = 1;
  v32 = off_101A32648;
  v33 = *(&off_101A32648 + 1);
  *(v28 + 120) = &type metadata for Int;
  *(v28 + 128) = v32;
  *(v28 + 136) = v33;
  *(v28 + 144) = 0;
  v34 = off_101A32628;
  v35 = *(&off_101A32628 + 1);
  *(v28 + 168) = &type metadata for Bool;
  *(v28 + 176) = v34;
  *(v28 + 184) = v35;
  *(v28 + 216) = &type metadata for Bool;
  *(v28 + 192) = 0;

  v36 = sub_10000BCE4(v28);
  swift_setDeallocating();
  v133 = sub_1005B981C(&qword_101A2F5D0, &qword_10149E8C0);
  swift_arrayDestroy();
  *(inited + 48) = v36;
  v37 = v137;
  v24(v16, 2, 5, v137);
  v38 = sub_100009260();
  v40 = v39;
  v41 = v134;
  sub_10000BC84(v16, v134);
  *(inited + 56) = v38;
  *(inited + 64) = v40;
  v42 = swift_initStackObject();
  *(v42 + 16) = v138;
  v43 = *(&xmmword_101A32618 + 1);
  *(v42 + 32) = xmmword_101A32618;
  *(v42 + 40) = v43;
  *(v42 + 48) = 1;
  v44 = off_101A32638;
  v45 = *(&off_101A32638 + 1);
  *(v42 + 72) = &type metadata for Bool;
  *(v42 + 80) = v44;
  *(v42 + 88) = v45;
  *(v42 + 96) = 1;
  v46 = off_101A32648;
  v47 = *(&off_101A32648 + 1);
  *(v42 + 120) = &type metadata for Int;
  *(v42 + 128) = v46;
  *(v42 + 136) = v47;
  *(v42 + 144) = 0;
  v48 = off_101A32628;
  v49 = *(&off_101A32628 + 1);
  *(v42 + 168) = &type metadata for Bool;
  *(v42 + 176) = v48;
  *(v42 + 184) = v49;
  *(v42 + 216) = &type metadata for Bool;
  *(v42 + 192) = 1;

  v50 = sub_10000BCE4(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v50;
  v51 = v122;
  v52 = v37;
  v53 = v136;
  v136(v122, 3, 5, v52);
  v54 = sub_100009260();
  v56 = v55;
  sub_10000BC84(v51, v41);
  *(inited + 80) = v54;
  *(inited + 88) = v56;
  v57 = swift_initStackObject();
  *(v57 + 16) = v138;
  v58 = *(&xmmword_101A32618 + 1);
  *(v57 + 32) = xmmword_101A32618;
  *(v57 + 40) = v58;
  *(v57 + 48) = 1;
  v59 = off_101A32638;
  v60 = *(&off_101A32638 + 1);
  *(v57 + 72) = &type metadata for Bool;
  *(v57 + 80) = v59;
  *(v57 + 88) = v60;
  *(v57 + 96) = 1;
  v61 = off_101A32648;
  v62 = *(&off_101A32648 + 1);
  *(v57 + 120) = &type metadata for Int;
  *(v57 + 128) = v61;
  *(v57 + 136) = v62;
  *(v57 + 144) = 0;
  v63 = off_101A32628;
  v64 = *(&off_101A32628 + 1);
  *(v57 + 168) = &type metadata for Bool;
  *(v57 + 176) = v63;
  *(v57 + 184) = v64;
  *(v57 + 216) = &type metadata for Bool;
  *(v57 + 192) = 0;

  v65 = sub_10000BCE4(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v65;
  v66 = v123;
  v53(v123, 4, 5, v137);
  v67 = sub_100009260();
  v69 = v68;
  v70 = v134;
  sub_10000BC84(v66, v134);
  *(inited + 104) = v67;
  *(inited + 112) = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = v138;
  v72 = *(&xmmword_101A32618 + 1);
  *(v71 + 32) = xmmword_101A32618;
  *(v71 + 40) = v72;
  *(v71 + 48) = 1;
  v73 = off_101A32638;
  v74 = *(&off_101A32638 + 1);
  *(v71 + 72) = &type metadata for Bool;
  *(v71 + 80) = v73;
  *(v71 + 88) = v74;
  *(v71 + 96) = 2;
  v75 = off_101A32648;
  v76 = *(&off_101A32648 + 1);
  *(v71 + 120) = &type metadata for Int;
  *(v71 + 128) = v75;
  *(v71 + 136) = v76;
  *(v71 + 144) = 1;
  v77 = off_101A32628;
  v78 = *(&off_101A32628 + 1);
  *(v71 + 168) = &type metadata for Bool;
  *(v71 + 176) = v77;
  *(v71 + 184) = v78;
  *(v71 + 216) = &type metadata for Bool;
  *(v71 + 192) = 1;

  v79 = sub_10000BCE4(v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 120) = v79;
  v80 = v124;
  v136(v124, 5, 5, v137);
  v81 = sub_100009260();
  v83 = v82;
  sub_10000BC84(v80, v70);
  *(inited + 128) = v81;
  *(inited + 136) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = v138;
  v85 = *(&xmmword_101A32618 + 1);
  *(v84 + 32) = xmmword_101A32618;
  *(v84 + 40) = v85;
  *(v84 + 48) = 1;
  v86 = off_101A32638;
  v87 = *(&off_101A32638 + 1);
  *(v84 + 72) = &type metadata for Bool;
  *(v84 + 80) = v86;
  *(v84 + 88) = v87;
  *(v84 + 96) = 1;
  v88 = off_101A32648;
  v89 = *(&off_101A32648 + 1);
  *(v84 + 120) = &type metadata for Int;
  *(v84 + 128) = v88;
  *(v84 + 136) = v89;
  *(v84 + 144) = 0;
  v90 = off_101A32628;
  v91 = *(&off_101A32628 + 1);
  *(v84 + 168) = &type metadata for Bool;
  *(v84 + 176) = v90;
  *(v84 + 184) = v91;
  *(v84 + 216) = &type metadata for Bool;
  *(v84 + 192) = 0;

  v92 = sub_10000BCE4(v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 144) = v92;
  v93 = v126;
  UUID.init()();
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v125;
  sub_10000C004(v93, v94, v96, v125);
  v97 = v130;
  (*(v127 + 56))(v130, 1, 1, v128);
  sub_1005B981C(&qword_1019F49A0, &unk_101480600);
  v98 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
  v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10146C6B0;
  v101 = sub_10000C3A0(0xC7uLL) - 99;
  UUID.init()();
  *(v100 + v99) = v101;
  v102 = v129;
  sub_10000C9DC(v95, v129, type metadata accessor for CRLFolderIdentifier);
  v103 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  sub_10000BE14(v97, v102 + v103[5], &qword_1019F33E0, &unk_101468A80);
  static Date.distantPast.getter();
  static Date.distantPast.getter();
  sub_10000CAAC(v97, &qword_1019F33E0, &unk_101468A80);
  sub_10000BC84(v95, type metadata accessor for CRLFolderIdentifier);
  v104 = v103[14];
  v105 = _s5BoardV13ShareMetadataVMa(0);
  (*(*(v105 - 8) + 56))(v102 + v104, 1, 1, v105);
  v106 = (v102 + v103[6]);
  *v106 = 0;
  v106[1] = 0xE000000000000000;
  *(v102 + v103[7]) = v100;
  *(v102 + v103[10]) = 0;
  *(v102 + v103[11]) = 0;
  *(v102 + v103[12]) = 0;
  *(v102 + v103[13]) = 0;
  v136(v102, 0, 5, v137);
  v107 = sub_100009260();
  v109 = v108;
  sub_10000BC84(v102, v134);
  *(inited + 152) = v107;
  *(inited + 160) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v138;
  v111 = *(&xmmword_101A32618 + 1);
  *(v110 + 32) = xmmword_101A32618;
  *(v110 + 40) = v111;
  *(v110 + 48) = 1;
  v112 = off_101A32638;
  v113 = *(&off_101A32638 + 1);
  *(v110 + 72) = &type metadata for Bool;
  *(v110 + 80) = v112;
  *(v110 + 88) = v113;
  *(v110 + 96) = 1;
  v114 = off_101A32648;
  v115 = *(&off_101A32648 + 1);
  *(v110 + 120) = &type metadata for Int;
  *(v110 + 128) = v114;
  *(v110 + 136) = v115;
  *(v110 + 144) = 0;
  v116 = off_101A32628;
  v117 = *(&off_101A32628 + 1);
  *(v110 + 168) = &type metadata for Bool;
  *(v110 + 176) = v116;
  *(v110 + 184) = v117;
  *(v110 + 216) = &type metadata for Bool;
  *(v110 + 192) = 0;

  v118 = sub_10000BCE4(v110);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 168) = v118;
  v119 = sub_10000CD98(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A32688, &unk_1014DBC80);
  swift_arrayDestroy();
  v120 = [objc_opt_self() standardUserDefaults];
  sub_10000CE9C(v119);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v120 registerDefaults:isa];
}

void sub_10000B42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10000B480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10000B4D4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000B534(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for Date();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10000B720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000B864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BAA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BBC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000BCE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0BA60, &unk_10148CE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v13, &qword_101A2F5D0, &qword_10149E8C0);
      v5 = v13;
      v6 = v14;
      result = sub_10000BE7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000BF3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000BE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1005B981C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000BEA8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

_OWORD *sub_10000BF3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000C004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v12);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  a2 = 0;
  a3 = 0xE000000000000000;
LABEL_9:
  (*(v8 + 8))(a1, v7);
  (*(v8 + 32))(v14, v10, v7);
  v18 = &v14[*(v11 + 20)];
  *v18 = a2;
  *(v18 + 1) = a3;
  return sub_10000C270(v14, v21, type metadata accessor for CRLFolderIdentifierStorage);
}

uint64_t sub_10000C208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CRLDisjointPosition.Element(uint64_t a1)
{
  result = qword_101A0B480;
  if (!qword_101A0B480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C324(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000C3A0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CAAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1005B981C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000CCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000CD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14708, &qword_10149EC30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000BE7C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000CE9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0BA60, &unk_10148CE80);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        sub_1005B981C(&qword_101A0B1B0, &unk_1014C61F0);
        swift_dynamicCast();
        sub_10000BF3C(&v22, v24);
        sub_10000BF3C(v24, v25);
        sub_10000BF3C(v25, &v23);
        result = sub_10000BE7C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005070(v11);
          result = sub_10000BF3C(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10000BF3C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10000D0FC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 addObserver:v0 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
  [v1 addObserver:v0 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v1 addObserver:v0 selector:"applicationWillTerminate" name:UIApplicationWillTerminateNotification object:0];
}

void sub_10000D270(id a1)
{
  v1 = objc_alloc_init(CRLiOSKeyboardMonitor);
  v2 = qword_101A34D50;
  qword_101A34D50 = v1;
}

unint64_t sub_10000D494()
{
  result = qword_1019F4D20;
  if (!qword_1019F4D20)
  {
    v3 = sub_1005C4E5C(&unk_1019FF400, &unk_10146CF00);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1019F4D20);
  }

  return result;
}

id sub_10000D4F8()
{
  result = [objc_allocWithZone(type metadata accessor for AASApplicationManager(0)) init];
  static AASApplicationManager.shared = result;
  return result;
}

uint64_t type metadata accessor for AASApplicationManager(uint64_t a1)
{
  result = qword_1019FBEC0;
  if (!qword_1019FBEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D578(uint64_t a1)
{
  if (qword_1019F1518 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = static CRLAnalyticsActiveUseManager.shared;
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_activeUseManager);
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_activeUseManager) = static CRLAnalyticsActiveUseManager.shared;
  v2 = v1;
}

void sub_10000D618(uint64_t a1)
{
  sub_10000D714(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10000D6E4()
{
  result = [objc_allocWithZone(type metadata accessor for CRLAnalyticsActiveUseManager()) init];
  static CRLAnalyticsActiveUseManager.shared = result;
  return result;
}

void sub_10000D714(uint64_t a1)
{
  if (!qword_1019FBED0)
  {
    type metadata accessor for AASUserInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FBED0);
    }
  }
}

uint64_t type metadata accessor for AASUserInfo(uint64_t a1)
{
  result = qword_1019FE070;
  if (!qword_1019FE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D7B8(uint64_t a1)
{
  sub_10000D854(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_10000D990(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000D854(uint64_t a1)
{
  if (!qword_1019FE080)
  {
    type metadata accessor for Date();
    sub_10000D8C0();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FE080);
    }
  }
}

unint64_t sub_10000D8C0()
{
  result = qword_1019FE088;
  if (!qword_1019FE088)
  {
    result = swift_getWitnessTable(aA_23, &type metadata for AASApplicationVariant, v0, v1);
    atomic_store(result, &qword_1019FE088);
  }

  return result;
}

unint64_t sub_10000D93C()
{
  result = qword_1019FE198;
  if (!qword_1019FE198)
  {
    result = swift_getWitnessTable(aI_34, &type metadata for AASApplicationVariant, v0, v1);
    atomic_store(result, &qword_1019FE198);
  }

  return result;
}

void sub_10000D990(uint64_t a1)
{
  if (!qword_101A0BCE0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A0BCE0);
    }
  }
}

char *sub_10000D9E8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_appForegroundedAnalyticsDomain];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000101552E60;
  v3 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_deviceIDAnalyticsKey];
  *v3 = 0x4449656369766564;
  *(v3 + 1) = 0xE800000000000000;
  v4 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_userIDAnalyticsKey];
  *v4 = 0x444972657375;
  *(v4 + 1) = 0xE600000000000000;
  v5 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_supportsEndToEndEncryptionKey];
  *v5 = 0xD00000000000001ALL;
  *(v5 + 1) = 0x8000000101552E80;
  v6 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_overriddenUserIDAnalyticsKey];
  *v6 = 0xD000000000000010;
  *(v6 + 1) = 0x8000000101552EA0;
  v7 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadiCloudAccountAnalyticsKey];
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x8000000101552EC0;
  v8 = &v0[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_hadQuotaViolationKey];
  *v8 = 0xD000000000000011;
  *(v8 + 1) = 0x8000000101552EE0;
  v9 = [objc_allocWithZone(NSOperationQueue) init];
  [v9 setMaxConcurrentOperationCount:1];
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  v11 = objc_allocWithZone(type metadata accessor for CRLAnalyticsDataStore(0));
  v12 = v9;
  v13 = sub_10000E7B0(v12);

  *&v1[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore] = v13;
  v56.receiver = v1;
  v56.super_class = type metadata accessor for CRLAnalyticsActiveUseManager();
  v14 = objc_msgSendSuper2(&v56, "init");
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v18;
  v54 = sub_1000598B0;
  v55 = v19;
  v50 = _NSConcreteStackBlock;
  v51 = *"";
  v52 = sub_100059694;
  v53 = &unk_101884B28;
  v20 = _Block_copy(&v50);
  v21 = v12;
  v22 = v16;

  v23 = [v17 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v21 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
  if (qword_1019F1418 != -1)
  {
    swift_once();
  }

  v24 = qword_101AD60D8;
  v25 = OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore;
  v26 = *&v22[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v27;
  v54 = sub_10073C0E0;
  v55 = v28;
  v50 = _NSConcreteStackBlock;
  v51 = *"";
  v52 = sub_100059694;
  v53 = &unk_101884B78;
  v29 = _Block_copy(&v50);
  v30 = v21;
  v31 = v26;

  v32 = [v17 addObserverForName:v24 object:v31 queue:v30 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  if (qword_1019F1420 != -1)
  {
    swift_once();
  }

  v33 = qword_101AD60E0;
  v34 = *&v22[v25];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = v35;
  v54 = sub_10073C0E8;
  v55 = v36;
  v50 = _NSConcreteStackBlock;
  v51 = *"";
  v52 = sub_100059694;
  v53 = &unk_101884BC8;
  v37 = _Block_copy(&v50);
  v38 = v30;
  v39 = v34;

  v40 = [v17 addObserverForName:v33 object:v39 queue:v38 usingBlock:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  if (qword_1019F1428 != -1)
  {
    swift_once();
  }

  v41 = qword_101AD60E8;
  v42 = *&v22[v25];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v42;

  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  *(v45 + 24) = v43;
  v54 = sub_10073C160;
  v55 = v45;
  v50 = _NSConcreteStackBlock;
  v51 = *"";
  v52 = sub_100059694;
  v53 = &unk_101884C18;
  v46 = _Block_copy(&v50);
  v47 = v38;

  v48 = [v17 addObserverForName:v41 object:v44 queue:v47 usingBlock:v46];
  _Block_release(v46);

  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_10000E0B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000E0FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummaryEventConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  v11 = type metadata accessor for AASUserInfo(0);
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_flushManager] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator] = 0;
  v12 = &v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 0;
  v13 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager;
  type metadata accessor for AASUserSamplingManager(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 0;
  *(v14 + 24) = 1;
  v15 = OBJC_IVAR____TtC8Freeform22AASUserSamplingManager_userId;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *&v1[v13] = v14;
  v17 = &v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_dependencies];
  *v17 = 0;
  v17[1] = 0;
  static SummaryEventConfiguration.disabled.getter();
  type metadata accessor for AppSessionManager();
  type metadata accessor for TrackingConsent();
  static TrackingConsent.shared.getter();
  (*(v4 + 16))(v6, v9, v3);
  v18 = type metadata accessor for CrashDetector();
  v19 = static CrashDetector.shared.getter();
  v25 = v18;
  v26 = &protocol witness table for CrashDetector;
  v24 = v19;
  *&v1[OBJC_IVAR____TtC8Freeform21AASApplicationManager_appSessionManager] = AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:)();
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "init");
  (*(v4 + 8))(v9, v3);
  return v20;
}

uint64_t type metadata accessor for CRLAnalyticsDataStore(uint64_t a1)
{
  result = qword_1019F82E8;
  if (!qword_1019F82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10000E46C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AASUserSamplingManager(uint64_t a1)
{
  result = qword_1019F44D0;
  if (!qword_1019F44D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E5E8(uint64_t a1)
{
  sub_10000E68C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E68C(uint64_t a1)
{
  if (!qword_1019F44E0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1019F44E0);
    }
  }
}

void sub_10000E6E4(uint64_t a1)
{
  sub_10000D990(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_10000E7B0(void *a1)
{
  v1[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption] = 0;
  v3 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_userDefaults;
  *&v1[v3] = [objc_opt_self() standardUserDefaults];
  *&v1[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvsSetAttempts] = 0;
  v4 = &v1[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserID];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserIDRotationDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v33.receiver = v1;
  v33.super_class = type metadata accessor for CRLAnalyticsDataStore(0);
  v7 = objc_msgSendSuper2(&v33, "init");
  v8 = [objc_opt_self() crl_encryptedKVS];
  v9 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs;
  v10 = *&v7[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs];
  *&v7[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs] = v8;
  v11 = v8;

  if (v11)
  {

    v12 = objc_opt_self();
    v13 = [v12 defaultCenter];
    v14 = *&v7[v9];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = sub_10069F4B8;
    v32 = v15;
    v27 = _NSConcreteStackBlock;
    v28 = *"";
    v29 = sub_100059694;
    v30 = &unk_101880550;
    v16 = _Block_copy(&v27);
    v17 = v14;
    v18 = a1;

    v19 = [v13 addObserverForName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v17 queue:v18 usingBlock:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();

    v20 = [v12 defaultCenter];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = sub_10069F4C0;
    v32 = v21;
    v27 = _NSConcreteStackBlock;
    v28 = *"";
    v29 = sub_100059694;
    v30 = &unk_101880578;
    v22 = _Block_copy(&v27);

    v23 = [v20 addObserverForName:CKAccountChangedNotification object:0 queue:v18 usingBlock:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();

    sub_10000FAC4();
    sub_10000FE74(0);
  }

  else
  {
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAnalytics;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v25, "Unable to initialize CRLAnalyticsDataStore due to nil iCloud KVS Store", 70, 2, _swiftEmptyArrayStorage);
  }

  return v7;
}

uint64_t sub_10000EB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000EC70(void *a1, char *a2)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static OS_os_log.crlAppAnalytics;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Setup app analytics", 19, 2, _swiftEmptyArrayStorage);

  v6 = &a2[OBJC_IVAR____TtC8Freeform21AASApplicationManager_dependencies];
  *v6 = a1;
  *(v6 + 1) = &off_1018835D8;
  swift_unknownObjectRelease();
  type metadata accessor for FlushManager();
  v7 = *&a2[OBJC_IVAR____TtC8Freeform21AASApplicationManager_appSessionManager];
  v8 = a1;

  sub_10000F424();
  sub_10000F8D8();
  type metadata accessor for Client();
  v9 = [objc_opt_self() mainBundle];
  Client.__allocating_init(bundle:)();
  v10 = type metadata accessor for URLSessionUploadClientFactory();
  swift_allocObject();
  v48 = v10;
  v49 = &protocol witness table for URLSessionUploadClientFactory;
  v45 = URLSessionUploadClientFactory.init()();

  v11 = FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
  *(swift_allocObject() + 16) = a2;
  v12 = a2;
  dispatch thunk of FlushManager.repairThenFlush(repair:completion:)();

  *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_flushManager] = v11;

  v13 = sub_10000F424();

  v14 = objc_allocWithZone(type metadata accessor for AASSessionManager());
  v15 = sub_1000105B4(v7, v13, 0, 1);

  v16 = OBJC_IVAR____TtC8Freeform17AASSessionManager_sessionManager;

  v17 = SessionManager.tracker.getter();

  type metadata accessor for AASTrackersCoordinator();
  v18 = swift_allocObject();
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0;
  *(v18 + 64) = sub_100010D6C(_swiftEmptyArrayStorage);
  *(v18 + 16) = v17;
  swift_allocObject();
  swift_weakInit();

  Tracker.onSessionChange(block:)();

  v19 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator;
  *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator] = v18;

  v20 = *&v12[v19];
  v21 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
  if (v20)
  {
    v22 = type metadata accessor for CRLAASApplicationTracker();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = objc_opt_self();

    v25 = [v24 defaultCenter];
    v26 = qword_1019F2748;

    if (v26 != -1)
    {
      swift_once();
    }

    v21 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
    [v25 addObserver:v23 selector:"updateBoardInitialAppStateEventData:" name:qword_101AD8948 object:{0, v11}];

    v48 = v22;
    v49 = &off_101891768;
    v45 = v23;
    swift_beginAccess();
    sub_1007884F8(&v45, v20 + 24);
    swift_endAccess();
  }

  AppSessionManager.startAppSession(shouldCorrelateSceneSessions:)(0);
  v27 = *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager];
  *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_rootSessionManager] = v15;
  v28 = v15;

  v29 = *&v15[v16];

  v30 = sub_100010EA4();
  v31 = &v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController];
  v32 = *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController];
  v33 = *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController + 8];
  v35 = v34 & 1;
  v37 = *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController + 16];
  v36 = *&v12[OBJC_IVAR____TtC8Freeform21AASApplicationManager_sessionPropertiesController + 24];
  *v31 = v29;
  *(v31 + 1) = v30;
  *(v31 + 2) = v38;
  *(v31 + 3) = v39;
  v31[32] = v35;
  sub_100011A4C(v32, v33, v37, v36);
  if (*v31)
  {
    v40 = v31[32];
    v41 = *(v31 + 2);
    v42 = *(v31 + 3);
    v43 = *(v31 + 1);
    v45 = *v31;
    v46 = v43;
    v47 = v41;
    v48 = v42;
    LOBYTE(v49) = v40 & 1;

    sub_100011290();
  }

  v44 = [objc_opt_self() defaultCenter];
  [v44 v21[350]];
  [v44 v21[350]];
  [v44 v21[350]];
  [v44 v21[350]];
  if (qword_1019F14F8 != -1)
  {
    swift_once();
  }

  [v44 v21[350]];
}

uint64_t sub_10000F2F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F330()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000F36C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB88, &qword_101AD5B30);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAppAnalytics = v1;
}

uint64_t sub_10000F424()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_dependencies))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_dependencies + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);
    v5 = v4;
    swift_unknownObjectRelease();
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = String.lowercased()();

      v10 = v9._countAndFlagsBits == 7759204 && v9._object == 0xE300000000000000;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9._countAndFlagsBits == 24945 && v9._object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9._countAndFlagsBits == 0x6D706F6C65766564 && v9._object == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v11 = swift_getObjectType();
        v12 = (*(v5 + 24))(v11, v5);
LABEL_23:
        v14 = v12;
        swift_unknownObjectRelease();
        return v14;
      }

      if ((v9._countAndFlagsBits != 1685025392 || v9._object != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v9._countAndFlagsBits != 0x69746375646F7270 || v9._object != 0xEA00000000006E6FLL))
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v13 = swift_getObjectType();
    v12 = (*(v5 + 32))(v13, v5);
    goto LABEL_23;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000F7CC()
{
  v0 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    return Endpoint.init(url:name:sharedContainerIdentifier:)();
  }

  return result;
}

uint64_t sub_10000F8D8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v13 = 0;
  v5 = [v4 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v13];

  v6 = v13;
  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for UploadBatchEventConfig();
    v8 = static UploadBatchEventConfig.default.getter();
    v9 = UploadBatchEventConfig.with(directory:)();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for UploadBatchEventConfig();
    v9 = static UploadBatchEventConfig.default.getter();
  }

  return v9;
}

void sub_10000FAC4()
{
  if (qword_1019F1588 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6518;
  if ([qword_101AD6518 respondsToSelector:"accountInfoWithCompletionHandler:"])
  {
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &qword_1019F82F8, CKContainer_ptr);
    *(inited + 64) = sub_10000FE24(&qword_101A1BA50, &qword_1019F82F8, CKContainer_ptr);
    *(inited + 32) = v1;
    v4 = v1;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v5, "Retrieving CloudKit account info from container: %@", 51, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    aBlock[4] = sub_1000102DC;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10000880C;
    aBlock[3] = &unk_101880500;
    v7 = _Block_copy(aBlock);
    v8 = v0;

    [v4 accountInfoWithCompletionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_10000FCE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000FD20()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB90, &qword_101AD5B38);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnalytics = v1;
}

uint64_t sub_10000FDE0(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100006370(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FE24(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_100006370(255, a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000FE74(char a1)
{
  v3 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v3 - 8);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  __chkstk_darwin(v9);
  v11 = &v38[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs);
  if (v12)
  {
    v13 = qword_1019F2110;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAnalytics;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v16, "Synchronizing iCloud KVS", 24, 2, _swiftEmptyArrayStorage);
    if (([v14 synchronize] & 1) == 0)
    {
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v17, "Unable to synchronize iCloud KVS", 32, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAnalytics;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v19, "Unable synchronize due to nil iCloud KVS Store", 46, 2, _swiftEmptyArrayStorage);
  }

  v20 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_userDefaults);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 stringForKey:v21];

  if (!v22 || (v22, sub_10001501C(v11), v23 = type metadata accessor for Date(), v24 = (*(*(v23 - 8) + 48))(v11, 1, v23), v25 = sub_10000CAAC(v11, &qword_101A0A320, &qword_10146D650), v24 == 1))
  {
    v25 = sub_10069E00C(0);
  }

  sub_100015188(v25);
  if (!v26 || (, sub_100015370(v8), v27 = type metadata accessor for Date(), v28 = (*(*(v27 - 8) + 48))(v8, 1, v27), sub_10000CAAC(v8, &qword_101A0A320, &qword_10146D650), v28 == 1))
  {
    sub_10069E00C(2u);
  }

  v29 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  swift_beginAccess();
  if ((*(v1 + v29) & 1) == 0)
  {
    v30 = (v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserID);
    *v30 = 0;
    v30[1] = 0;

    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    v32 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserIDRotationDate;
    swift_beginAccess();
    sub_100015CDC(v5, v1 + v32);
    swift_endAccess();
  }

  v33 = sub_100015D98();
  if (a1)
  {
    sub_10069EBB8(v33);
  }

  if (*(v1 + v29) == 1)
  {
    v34 = sub_100015188(v33);
    v35 = (v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserID);
    *v35 = v34;
    v35[1] = v36;

    sub_100015370(v5);
    v37 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserIDRotationDate;
    swift_beginAccess();
    sub_100015CDC(v5, v1 + v37);
    swift_endAccess();
  }
}

void sub_1000102E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v7 = _convertErrorToNSError(_:)();
    *(inited + 56) = sub_100006370(0, &qword_1019F6BD0, NSError_ptr);
    *(inited + 64) = sub_10000FE24(&qword_1019F8300, &qword_1019F6BD0, NSError_ptr);
    *(inited + 32) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v8, "Error retrieving CloudKit account info: %@", 42, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  if (a1)
  {
    v9 = a1;
    if ([v9 respondsToSelector:"supportsDeviceToDeviceEncryption"])
    {
      v10 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
      swift_beginAccess();
      v11 = *(a3 + v10);
      if (v11 != [v9 supportsDeviceToDeviceEncryption])
      {
        *(a3 + v10) = [v9 supportsDeviceToDeviceEncryption];
        sub_10000FE74(0);
        v12 = [objc_opt_self() defaultCenter];
        if (qword_1019F1428 != -1)
        {
          swift_once();
        }

        [v12 postNotificationName:qword_101AD60E8 object:a3 userInfo:0];
      }
    }
  }

  else
  {
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAnalytics;
    v14 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v14, "Unable to retrieve CloudKit account info", 40, 2, _swiftEmptyArrayStorage);
  }
}

id sub_1000105B4(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v23[1] = a1;
  v24 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LoggingEventProcessorFormat();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v28 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v6);
  v23[0] = type metadata accessor for TimestampJitter();
  v7 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SessionManagerConfiguration();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v25 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlushEvents();
  __chkstk_darwin(v12);
  sub_1005B981C(&qword_1019FBAF8, "vE&");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10146C4D0;
  static FlushEvents.didStartSession.getter();
  static FlushEvents.didEndSession.getter();
  static FlushEvents.didLeaveGroup.getter();
  v34 = v13;
  sub_100010D00(&qword_1019FBB00, &type metadata accessor for FlushEvents, &protocol conformance descriptor for FlushEvents);
  sub_1005B981C(&qword_1019FBB08, &qword_101475570);
  sub_1000067A8(&qword_1019FBB10, &qword_1019FBB08, &qword_101475570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for FlushProcessor();
  swift_allocObject();
  FlushProcessor.init(flushEvents:flushInterval:)();
  *v9 = xmmword_101475540;
  (*(v7 + 104))(v9, enum case for TimestampJitter.enabled(_:), v23[0]);
  v34 = _swiftEmptyArrayStorage;
  sub_100010D00(&qword_1019FBB18, &type metadata accessor for SessionManager.Options, &protocol conformance descriptor for SessionManager.Options);

  sub_1005B981C(&qword_1019FBB20, &qword_101475578);
  sub_1000067A8(&qword_1019FBB28, &qword_1019FBB20, &qword_101475578);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DisabledPrivacyValidationProvider();
  swift_allocObject();
  DisabledPrivacyValidationProvider.init()();
  v14 = v25;
  SessionManagerConfiguration.init(options:flushProcessor:timestampJitter:privacyValidationProvider:)();
  v15 = AppSessionManager.createSessionManager(with:)();
  type metadata accessor for UploadBatchEventProcessor();
  type metadata accessor for Client();
  v16 = [objc_opt_self() mainBundle];
  Client.__allocating_init(bundle:)();
  v17 = v24;
  v18 = sub_10000F8D8();
  UploadBatchEventConfig.with(transparencyLoggingEnabled:)();

  UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  type metadata accessor for LoggingEventProcessor();
  v20 = v28;
  v19 = v29;
  *v28 = 11;
  (*(v19 + 104))(v20, enum case for LoggingEventProcessorFormat.json(_:), v30);
  LoggingEventProcessor.__allocating_init(logFormat:)();
  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  (*(v26 + 8))(v14, v27);
  v21 = v32;
  *&v32[OBJC_IVAR____TtC8Freeform17AASSessionManager_sessionManager] = v15;
  v33.receiver = v21;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t sub_100010D00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010D6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&unk_101A0F2D0, &qword_101492970);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 16)
    {
      sub_10000BE14(i, &v11, &qword_101A14700, &unk_10149EC20);
      v5 = v11;
      result = sub_1007C7EC0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003DFF8(&v12, v3[7] + 8 * result, &qword_1019FBEF0, &qword_10147B4B0);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100010EA4()
{
  v0 = objc_opt_self();
  if ([v0 crl_phoneDevice])
  {
    v1 = 1;
  }

  else if ([v0 crl_iPadDevice])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = [v0 crl_platformString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [objc_opt_self() isInternalOSInstall];
  return v1;
}

void sub_100011018(id a1)
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xDD849C12uLL);
  sysctlbyname("hw.machine", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  free(v1);
  objc_storeStrong(&qword_101A347B8, v2);
  if (!qword_101A347B8)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132924C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329274(v3, v4);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101329330();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v5, v3);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIDevice(CRLAdditions) crl_platformString]_block_invoke");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIDevice_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:46 isFatal:0 description:"invalid nil value for '%{public}s'", "s_platformString"];
  }
}

void sub_100011228(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  [v2 UTF8String];

  byte_101A34CA0 = os_variant_has_internal_content();
}

uint64_t sub_100011290()
{
  v1 = sub_1005B981C(&qword_1019FBEE0, &qword_10149BD50);
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin(v1);
  v60 = v2;
  v61 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v53 - v4;
  v66 = sub_1005B981C(&qword_101A13810, &qword_10149BD58);
  v59 = *(v66 - 8);
  __chkstk_darwin(v66);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v5;
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v65 = sub_1005B981C(&qword_101A13818, &unk_10149BD60);
  v58 = *(v65 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v65);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = *(v0 + 8);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v56 = v0;
  v16 = *(v0 + 32);

  v17 = sub_100011CCC();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v68 = v15;
  v69 = v14;
  LOBYTE(v70) = v13;
  v71 = v18;
  v72 = v20;
  v73 = v16 & 1;
  sub_100011D20();
  SessionData.init(key:data:)();
  type metadata accessor for Client();
  v21 = [objc_opt_self() mainBundle];
  v22 = Client.__allocating_init(bundle:)();
  v23 = Client.version.getter();
  v25 = v24;
  v26 = Client.buildNumber.getter();
  v68 = v23;
  v69 = v25;
  v70 = v26;
  v71 = v27;
  sub_100011D88();
  v28 = v8;
  SessionData.init(key:data:)();

  v29 = [objc_opt_self() standardUserDefaults];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 stringForKey:v30];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v68 = v32;
  v69 = v34;
  sub_100011DE8();
  v35 = v67;
  SessionData.init(key:data:)();
  v56 = *v56;
  v36 = v58;
  v37 = *(v58 + 16);
  v54 = v12;
  v37(v64, v12, v65);
  v38 = v59;
  v39 = *(v59 + 16);
  v40 = v57;
  v53 = v28;
  v39(v57, v28, v66);
  v42 = v61;
  v41 = v62;
  v43 = v63;
  (*(v62 + 16))(v61, v35, v63);
  v44 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v45 = (v9 + *(v38 + 80) + v44) & ~*(v38 + 80);
  v46 = (v55 + *(v41 + 80) + v45) & ~*(v41 + 80);
  v47 = swift_allocObject();
  v48 = v47 + v44;
  v49 = v65;
  (*(v36 + 32))(v48, v64, v65);
  v50 = v47 + v45;
  v51 = v66;
  (*(v38 + 32))(v50, v40, v66);
  (*(v41 + 32))(v47 + v46, v42, v43);
  SessionManager.transaction(_:)();

  (*(v41 + 8))(v67, v43);
  (*(v38 + 8))(v53, v51);
  return (*(v36 + 8))(v54, v49);
}

uint64_t sub_100011854()
{
  v1 = sub_1005B981C(&qword_101A13818, &unk_10149BD60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 16) & ~v3;
  v18 = v1;
  v4 = *(v2 + 64);
  v5 = sub_1005B981C(&qword_101A13810, &qword_10149BD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v17 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_1005B981C(&qword_1019FBEE0, &qword_10149BD50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v7 | v12;
  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100011A4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100011A9C()
{
  result = qword_101A2AE10;
  if (!qword_101A2AE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_101A2AE10);
  }

  return result;
}

unint64_t sub_100011AF4()
{
  result = qword_101A2AE18;
  if (!qword_101A2AE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_101A2AE18);
  }

  return result;
}

unint64_t sub_100011B5C()
{
  result = qword_1019FBB80;
  if (!qword_1019FBB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_1019FBB80);
  }

  return result;
}

unint64_t sub_100011BB4()
{
  result = qword_1019FBB88;
  if (!qword_1019FBB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_1019FBB88);
  }

  return result;
}

unint64_t sub_100011C1C()
{
  result = qword_1019FBF18;
  if (!qword_1019FBF18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_1019FBF18);
  }

  return result;
}

unint64_t sub_100011C74()
{
  result = qword_1019FBF20;
  if (!qword_1019FBF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_1019FBF20);
  }

  return result;
}

id sub_100011CCC()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 systemVersion];

  return v1;
}

unint64_t sub_100011D20()
{
  result = qword_101A13820;
  if (!qword_101A13820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_101A13820);
  }

  return result;
}

__n128 sub_100011D74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100011D88()
{
  result = qword_101A13828;
  if (!qword_101A13828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_101A13828);
  }

  return result;
}

__n128 sub_100011DDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_100011DE8()
{
  result = qword_1019FBEE8;
  if (!qword_1019FBEE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_1019FBEE8);
  }

  return result;
}

__n128 _s8PositionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

NSString sub_100011E48()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.AASUserIdentifierDidResetNotification = result;
  return result;
}

uint64_t sub_100011E98()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v2 - 8);
  v168 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v165 = &v158 - v5;
  v6 = type metadata accessor for URL();
  v169 = *(v6 - 1);
  v170 = v6;
  __chkstk_darwin(v6);
  v159 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v160 = &v158 - v9;
  v10 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v10 - 8);
  v166 = &v158 - v11;
  v167 = objc_opt_self();
  v12 = [v167 sharedApplication];
  [v12 setApplicationSupportsShakeToEdit:1];

  v13 = objc_opt_self();
  v180 = sub_10077DDEC;
  v181 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10077E1C8;
  v179 = &unk_101885BF8;
  v14 = _Block_copy(aBlock);
  [v13 loadDataIfNeededWithCompletion:v14];
  _Block_release(v14);
  [objc_opt_self() backgroundLoadAllBrushStrokes];
  if (qword_1019F2098 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v15 = static OS_os_log.crlDefault;
    v16 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v164 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    v18 = sub_100016E14();
    v20 = v19;
    *(inited + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    *(inited + 64) = v21;
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v22 = static os_log_type_t.default.getter();
    v171 = v15;
    sub_100005404(v15, &_mh_execute_header, v22, "App version is %{public}@.", 26, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    type metadata accessor for CRLBoardDataStoreProvider();
    v23 = 0;
    v24 = sub_1000171D8();
    v172 = v21;
    v173 = v16;
    v25 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore;
    v26 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore);
    *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore) = v24;

    *&v164 = [objc_opt_self() standardUserDefaults];
    [v164 setURL:0 forKey:@"CRLSyncDataWasRemovedUserDefault"];
    v27 = *(v1 + v25);
    if (!v27)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v179 = &type metadata for CRLDataStoreUpgrader;
    v180 = &off_1018B8BB8;
    aBlock[0] = v27;
    v28 = v27;
    v29 = sub_10001FF1C();
    v30 = sub_10001FF28(v29);
    sub_100028A70(v30);
    v31 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver;
    v32 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver);
    if (v32)
    {
      v21 = *(v32 + 40);

      goto LABEL_9;
    }

    v33 = *(v1 + v25);
    if (!v33)
    {
      goto LABEL_68;
    }

    v34 = qword_1019F1588;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = qword_101AD6518;
    type metadata accessor for CRLBoardShareController();
    v21 = swift_allocObject();
    v37 = v36;
    swift_defaultActor_initialize();
    type metadata accessor for CRLZoneShareController();
    v21[16] = 0;
    v21[17] = 0;
    v38 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v38 + 112) = v37;
    *(v38 + 120) = 0;
    v21[14] = v38;
    v21[15] = v35;
    v32 = *(v1 + v31);
    if (!v32)
    {
      break;
    }

LABEL_9:
    v39 = *(v32 + 72);

    v40 = *(v1 + v25);
    if (v40)
    {
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  type metadata accessor for CRLSyncPriorityProvider(0);
  swift_allocObject();
  v39 = sub_100028CF8();
  v40 = *(v1 + v25);
  if (!v40)
  {
    goto LABEL_33;
  }

LABEL_10:
  v41 = objc_allocWithZone(type metadata accessor for CRLBoardLibrary());

  v42 = v40;
  v43 = sub_10110536C(v42, v21, v39);

  v163 = v39;

  v44 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary;
  v45 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary);
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary) = v43;
  v16 = v43;

  v46 = type metadata accessor for CRLBoardLibraryCommandController();
  v47 = objc_allocWithZone(v46);
  *&v47[OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_undoStack] = _swiftEmptyArrayStorage;
  *&v47[OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_redoStack] = _swiftEmptyArrayStorage;
  v48 = &v47[OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary];
  *v48 = v16;
  *(v48 + 1) = &off_1018B0AB8;
  v177.receiver = v47;
  v177.super_class = v46;
  v49 = objc_msgSendSuper2(&v177, "init");
  v50 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController);
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController) = v49;

  v23 = *(v1 + v44);
  if (!v23)
  {
    goto LABEL_36;
  }

  type metadata accessor for CRLBoardLibraryActionAlertController();
  v51 = swift_allocObject();
  *(v51 + 16) = v23;
  *(v51 + 24) = &off_1018B0AB8;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryActionAlertController) = v51;
  v52 = v23;

  v23 = *(v1 + v44);
  if (!v23)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v53 = objc_allocWithZone(type metadata accessor for CRLBoardPreviewImageCache());
  v20 = v23;
  v54 = sub_100040098(v20);

  v55 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache;
  v56 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache);
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache) = v54;

  v176[3] = &type metadata for CRLFeatureFlags;
  v176[4] = sub_100004D60();
  LOBYTE(v176[0]) = 24;
  v32 = isFeatureEnabled(_:)();
  sub_100005070(v176);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

  v57 = *(v1 + v25);
  if (!v57)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  type metadata accessor for CRLStencilLibrary(0);
  swift_allocObject();
  v58 = v57;
  v59 = sub_100D7F8D0(v58);

  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_stencilLibrary) = v59;

LABEL_15:
  v23 = *(v1 + v55);
  if (!v23)
  {
    goto LABEL_38;
  }

  v161 = v21;
  type metadata accessor for CRLSharedBoardThumbnailManager();
  swift_allocObject();
  v60 = v16;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager) = sub_100041EFC(v60, v23);

  v61 = *(v1 + v55);
  type metadata accessor for CRLSpotlightManager(0);
  swift_allocObject();
  v62 = v61;
  v162 = v60;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_spotlightManager) = sub_10004229C(v162, v61);

  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_10146BDE0;
  v21 = v167;
  v64 = [v167 sharedApplication];
  v65 = [v64 _launchTestName];

  if (!v65)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v23 = &type metadata for String;
  v69 = v172;
  *(v63 + 56) = &type metadata for String;
  *(v63 + 64) = v69;
  *(v63 + 32) = v66;
  *(v63 + 40) = v68;
  v21 = [v21 sharedApplication];
  v70 = [v21 _extendLaunchTest];

  if (!v70)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    v32 = swift_initStackObject();
    *(v32 + 16) = v164;
    aBlock[0] = v23;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    *(v32 + 32) = String.init<A>(describing:)();
    v171 = (v32 + 32);
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v21;
    *(v32 + 40) = v123;
    v170 = objc_opt_self();
    LODWORD(v1) = [v170 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v32, aBlock, "Failed to initialize the data store. error=%@", 45, 2u);
    StaticString.description.getter("application(_:didFinishLaunchingWithOptions:)", 45, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
    v124 = String._bridgeToObjectiveC()();

    v125 = [v124 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v126;

    if (qword_1019F20A0 == -1)
    {
LABEL_42:
      v127 = static OS_os_log.crlAssert;
      v128 = swift_initStackObject();
      *(v128 + 16) = xmmword_10146CA70;
      *(v128 + 56) = &type metadata for Int32;
      *(v128 + 64) = &protocol witness table for Int32;
      *(v128 + 32) = v1;
      v129 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v128 + 96) = v129;
      v130 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v128 + 72) = v25;
      v131 = v172;
      *(v128 + 136) = &type metadata for String;
      *(v128 + 144) = v131;
      *(v128 + 104) = v130;
      *(v128 + 112) = v20;
      *(v128 + 120) = v16;
      *(v128 + 176) = &type metadata for UInt;
      *(v128 + 184) = &protocol witness table for UInt;
      *(v128 + 152) = 116;
      v132 = aBlock[0];
      *(v128 + 216) = v129;
      *(v128 + 224) = v130;
      *(v128 + 192) = v132;
      v133 = v25;
      v134 = v132;
      v135 = static os_log_type_t.error.getter();
      sub_100005404(v127, &_mh_execute_header, v135, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v128);

      v136 = static os_log_type_t.error.getter();
      sub_100005404(v127, &_mh_execute_header, v136, "Failed to initialize the data store. error=%@", 45, 2, v32);

      sub_10063DF98(v32, "Failed to initialize the data store. error=%@");
      type metadata accessor for __VaListBuilder();
      v1 = swift_allocObject();
      v1[2] = 8;
      v1[3] = 0;
      v137 = v1 + 3;
      v1[4] = 0;
      v1[5] = 0;
      v16 = *(v32 + 16);
      if (!v16)
      {
LABEL_74:
        v152 = __VaListBuilder.va_list()();
        StaticString.description.getter("application(_:didFinishLaunchingWithOptions:)", 45, 2);
        v153 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
        v154 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Failed to initialize the data store. error=%@", 45, 2);
        v155 = String._bridgeToObjectiveC()();

        [v170 handleFailureInFunction:v153 file:v154 lineNumber:116 isFatal:1 format:v155 args:v152];

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v156, v157);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v138 = 0;
      v25 = 40;
      while (1)
      {
        v139 = &v171[5 * v138];
        v20 = v139[4];
        v32 = sub_100020E58(v139, v139[3]);
        v140 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v141 = *v137;
        v142 = *(v140 + 16);
        v143 = __OFADD__(*v137, v142);
        v144 = *v137 + v142;
        if (v143)
        {
          goto LABEL_69;
        }

        v20 = v140;
        v32 = v1[4];
        if (v32 >= v144)
        {
          goto LABEL_59;
        }

        if (v32 + 0x4000000000000000 < 0)
        {
          goto LABEL_70;
        }

        v145 = v1[5];
        if (2 * v32 > v144)
        {
          v144 = 2 * v32;
        }

        v1[4] = v144;
        if ((v144 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_71;
        }

        v146 = swift_slowAlloc();
        v1[5] = v146;
        if (v145)
        {
          break;
        }

LABEL_60:
        if (!v146)
        {
          __break(1u);
          goto LABEL_74;
        }

        v148 = *(v20 + 2);
        if (v148)
        {
          v149 = (v20 + 32);
          v150 = *v137;
          while (1)
          {
            v151 = *v149++;
            *&v146[8 * v150] = v151;
            v150 = *v137 + 1;
            if (__OFADD__(*v137, 1))
            {
              break;
            }

            *v137 = v150;
            if (!--v148)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_44:

        if (++v138 == v16)
        {
          goto LABEL_74;
        }
      }

      if (v146 != v145 || v146 >= &v145[8 * v141])
      {
        memmove(v146, v145, 8 * v141);
      }

      v32 = v1;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_59:
      v146 = v1[5];
      goto LABEL_60;
    }

LABEL_72:
    swift_once();
    goto LABEL_42;
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  *(v63 + 96) = &type metadata for String;
  *(v63 + 104) = v69;
  *(v63 + 72) = v71;
  *(v63 + 80) = v73;
  v74 = static os_log_type_t.default.getter();
  v21 = v171;
  sub_100005404(v171, &_mh_execute_header, v74, "Launch Test: %@  Extended Launch Test: %@", 41, 2, v63);
  swift_setDeallocating();
  v75 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_100042F30();
  sub_1000437CC();
  v76 = type metadata accessor for TaskPriority();
  v23 = v166;
  (*(*(v76 - 8) + 56))(v166, 1, 1, v76);
  type metadata accessor for MainActor();
  v77 = v162;
  v78 = static MainActor.shared.getter();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = &protocol witness table for MainActor;
  v79[4] = v77;
  sub_10064191C(0, 0, v23, &unk_10147AD70, v79);

  v80 = [objc_opt_self() defaultManager];
  v81 = sub_100017A38(v80);
  if (!v81)
  {
    goto LABEL_41;
  }

  v82 = v81;
  v83 = [v80 containerURLForSecurityApplicationGroupIdentifier:v81];

  v84 = v170;
  if (v83)
  {
    v85 = v168;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = v169;
    (*(v169 + 56))(v85, 0, 1, v84);
  }

  else
  {
    v166 = v75;
    v167 = v77;
    (*(v169 + 56))(v168, 1, 1, v170);
    v162 = objc_opt_self();
    v87 = [v162 _atomicIncrementAssertCount];
    v176[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v176, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("application(_:didFinishLaunchingWithOptions:)", 45, 2);
    v158 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
    v88 = String._bridgeToObjectiveC()();

    v89 = [v88 lastPathComponent];

    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v93 = static OS_os_log.crlAssert;
    v94 = swift_initStackObject();
    *(v94 + 16) = xmmword_10146CA70;
    *(v94 + 56) = &type metadata for Int32;
    *(v94 + 64) = &protocol witness table for Int32;
    *(v94 + 32) = v87;
    v95 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v94 + 96) = v95;
    v96 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    v97 = v158;
    *(v94 + 72) = v158;
    v98 = v172;
    *(v94 + 136) = &type metadata for String;
    *(v94 + 144) = v98;
    *(v94 + 104) = v96;
    *(v94 + 112) = v90;
    *(v94 + 120) = v92;
    *(v94 + 176) = &type metadata for UInt;
    *(v94 + 184) = &protocol witness table for UInt;
    *(v94 + 152) = 167;
    v99 = v176[0];
    *(v94 + 216) = v95;
    *(v94 + 224) = v96;
    *(v94 + 192) = v99;
    v100 = v97;
    v101 = v99;
    v102 = static os_log_type_t.error.getter();
    sub_100005404(v93, &_mh_execute_header, v102, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v94);
    swift_setDeallocating();
    swift_arrayDestroy();
    v103 = static os_log_type_t.error.getter();
    sub_100005404(v93, &_mh_execute_header, v103, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v104 = swift_allocObject();
    v104[2] = 8;
    v104[3] = 0;
    v104[4] = 0;
    v104[5] = 0;
    v105 = __VaListBuilder.va_list()();
    StaticString.description.getter("application(_:didFinishLaunchingWithOptions:)", 45, 2);
    v106 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSAppDelegate.swift", 85, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v108 = String._bridgeToObjectiveC()();

    [v162 handleFailureInFunction:v106 file:v107 lineNumber:167 isFatal:0 format:v108 args:v105];

    v84 = v170;
    v21 = v171;
    v85 = v168;
    v86 = v169;
    v77 = v167;
  }

  v109 = v85;
  v110 = v165;
  sub_100044B68(v109, v165);
  if ((*(v86 + 48))(v110, 1, v84) == 1)
  {
    sub_10000CAAC(v110, &unk_1019F33C0, &unk_101468A60);
    if (qword_1019F2148 != -1)
    {
      swift_once();
    }

    v111 = static OS_os_log.crlSharingExtension;
    v112 = static os_log_type_t.error.getter();
    sub_100005404(v111, &_mh_execute_header, v112, "Unable to start sharing extension import. App Group container not found", 71, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v113 = v160;
    (*(v86 + 32))(v160, v110, v84);
    v114 = v159;
    (*(v86 + 16))(v159, v113, v84);
    v115 = objc_allocWithZone(type metadata accessor for CRLSEImporter(0));
    v116 = v77;
    v117 = sub_100044DD8(v114, v116);

    (*(v86 + 8))(v113, v84);
    v118 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharingExtensionImporter);
    *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharingExtensionImporter) = v117;
  }

  if (qword_1019F2818 != -1)
  {
    swift_once();
  }

  v174 = 0xD00000000000001FLL;
  v175 = 0x8000000101558510;
  v119 = v77;

  AnyHashable.init<A>(_:)();
  *(swift_allocObject() + 16) = v119;
  v120 = v119;
  AppDependencyManager.add<A>(key:dependency:)();

  sub_10000CAAC(v176, &unk_101A27F50, &unk_1014C1B70);
  v121 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v121, "Freeform did finish launching", 29, 2, _swiftEmptyArrayStorage);

  sub_1000458C8(aBlock);
  return 1;
}

uint64_t sub_100013538()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000135D0(id a1)
{
  v1 = +[NSBundle mainBundle];
  v8 = [v1 URLForResource:@"shape_library" withExtension:@"json"];

  v2 = +[NSBundle mainBundle];
  v3 = [v2 URLForResource:@"CRLShapeLibraryCategorySort" withExtension:@"plist"];

  v4 = [CRLShapeLibrary alloc];
  v5 = +[CRLLocale currentLocale];
  v6 = [(CRLShapeLibrary *)v4 initWithShapeLibraryURL:v8 categorySortURL:v3 locale:v5];
  v7 = qword_101A345F0;
  qword_101A345F0 = v6;
}

void sub_1000137FC(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initInternal];
  v2 = qword_101A35510;
  qword_101A35510 = v1;
}

void sub_1000138B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_beginAccess();
  v11 = *(v2 + 48);
  v12 = *(*(v2 + 40) + 16);

  os_unfair_lock_lock(v12);
  os_unfair_lock_unlock(v12);

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v11;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v13, "Cached dataclass status: %d", 27, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v14 = *(v2 + 48);
  v15 = *(*(v2 + 40) + 16);

  os_unfair_lock_lock(v15);
  os_unfair_lock_unlock(v15);

  if (v14 != a1)
  {
    v16 = sub_10000A05C();
    swift_beginAccess();
    v17 = *(v2 + 96);
    v18 = *(*(v2 + 88) + 16);

    os_unfair_lock_lock(v18);
    os_unfair_lock_unlock(v18);

    if ((v17 & 1) == 0)
    {
      LOBYTE(aBlock) = v16;
      CurrentValueSubject.send(_:)();
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v16;
    v39 = sub_100016800;
    v40 = v20;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_100007638;
    v38 = &unk_10189C9E8;
    v21 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v34 + 8))(v6, v4);
    (*(v32 + 8))(v8, v33);
    swift_beginAccess();
    v22 = *(v2 + 64);
    v23 = *(*(v2 + 56) + 16);
    os_unfair_lock_lock(v23);
    v24 = v22;
    os_unfair_lock_unlock(v23);
    swift_endAccess();
    swift_beginAccess();
    v25 = *(*(v2 + 56) + 16);

    os_unfair_lock_lock(v25);
    v26 = *(v2 + 64);
    *(v2 + 64) = 0;

    os_unfair_lock_unlock(v25);
    swift_endAccess();

    sub_10000A154(v22);

    v27 = *(v2 + 104);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
    v29[3] = 0;
    v29[4] = v28;
    v39 = sub_1000152A4;
    v40 = v29;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_10000880C;
    v38 = &unk_10189CA38;
    v30 = _Block_copy(&aBlock);

    [v27 fetchUserRecordIDWithCompletionHandler:v30];
    _Block_release(v30);
  }
}

id sub_100013F00(objc_class *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100014370(a1, v3);
  v5 = v4;
  if (v3 && !v4)
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013519C0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v15 = v7;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromClass(a1);
      *buf = 67110402;
      v20 = v6;
      v21 = 2082;
      v22 = "id CRLCheckedDynamicCast(__unsafe_unretained Class, __strong id<NSObject>)";
      v23 = 2082;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m";
      v25 = 1024;
      v26 = 131;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected object type %{public}@ in checked dynamic cast to %{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013519D4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"id CRLCheckedDynamicCast(__unsafe_unretained Class, __strong id<NSObject>)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromClass(a1);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:131 isFatal:0 description:"Unexpected object type %{public}@ in checked dynamic cast to %{public}@", v12, v13];
  }

  return v5;
}

id sub_100014370(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100014AA0(void *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v41 = v15;
    v40 = v16;
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v19 = a1;
    v39 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = v19;
    v20[4] = a3;
    v20[5] = a4;
    aBlock[4] = sub_100C5DFD8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189CA88;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v39;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v11 + 8))(v13, v10);
    return (*(v40 + 8))(v18, v41);
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if (a2)
  {
    swift_getErrorValue();
    v27 = Error.publicDescription.getter(v43, v44);
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *(inited + 56) = &type metadata for String;
  v30 = sub_1000053B0();
  v31 = v30;
  *(inited + 64) = v30;
  if (v29)
  {
    v32 = v27;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v29)
  {
    v33 = v29;
  }

  *(inited + 32) = v32;
  *(inited + 40) = v33;
  if (!a2)
  {
    v36 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v30;
    goto LABEL_17;
  }

  swift_getErrorValue();
  v34 = Error.fullDescription.getter(v45);
  v36 = (inited + 72);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v31;
  if (!v35)
  {
LABEL_17:
    *v36 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_18;
  }

  *v36 = v34;
LABEL_18:
  *(inited + 80) = v35;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v37, "Error fetching user record ID: %{public}@ <%@>", 46, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  if (a2)
  {
    v38 = a2;
  }

  else
  {
    v38 = [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1 userInfo:0];
  }

  swift_errorRetain();
  a3(v38, 1);
}

uint64_t sub_100014FD4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001501C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_userDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10000CAAC(v12, &unk_1019F4D00, &unk_10146E7F0);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100015188(uint64_t a1)
{
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlAnalytics;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Retrieving userID value from iCloud KVS", 39, 2, _swiftEmptyArrayStorage);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringForKey:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void sub_1000152B0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA60, &qword_101AD5A08);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDefault = v1;
}

uint64_t sub_100015370@<X0>(uint64_t a2@<X8>)
{
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlAnalytics;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Retrieving lastUserIDRotationDate value from iCloud KVS", 55, 2, _swiftEmptyArrayStorage);
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs);
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      v10 = type metadata accessor for Date();
      v11 = swift_dynamicCast();
      return (*(*(v10 - 8) + 56))(a2, v11 ^ 1u, 1, v10);
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_10000CAAC(&v16, &unk_1019F4D00, &unk_10146E7F0);
  v13 = type metadata accessor for Date();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t Error.publicDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = sub_1005B981C(&qword_101A0F718, &qword_101493238);
  __chkstk_darwin(v5 - 8);
  v76 = (&v66 - v6);
  v7 = type metadata accessor for Mirror.DisplayStyle();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  __chkstk_darwin(v7);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v66 - v11;
  v12 = type metadata accessor for Mirror();
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  __chkstk_darwin(v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = v3;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v23 = String.init<A>(reflecting:)();
  v25 = v24;
  sub_100015D4C();
  if (!swift_dynamicCastMetatype())
  {
    v70 = v18;
    v71 = v25;
    v72 = v23;
    v79 = v12;
    v83[1] = a1;
    v26 = sub_10002C58C(&DynamicType);
    v29 = *(v15 + 16);
    v28 = v15 + 16;
    v27 = v29;
    v29(v26, v22, a1);
    Mirror.init(reflecting:)();
    v30 = v76;
    Mirror.displayStyle.getter();
    v31 = v77;
    v32 = v78;
    v33 = v14;
    if ((*(v78 + 48))(v30, 1, v77) == 1)
    {
      (*(v75 + 8))(v14, v79);
      sub_100AC1B98(v30);
      return v72;
    }

    v67 = a1;
    v68 = v27;
    v69 = v28;
    v44 = v74;
    (*(v32 + 32))(v74, v30, v31);
    v45 = v73;
    (*(v32 + 104))(v73, enum case for Mirror.DisplayStyle.enum(_:), v31);
    v46 = static Mirror.DisplayStyle.== infix(_:_:)();
    v49 = *(v32 + 8);
    v47 = v32 + 8;
    v48 = v49;
    (v49)(v45, v31);
    if ((v46 & 1) == 0)
    {
      DynamicType = 0;
      v82 = 0xE000000000000000;
      v55._countAndFlagsBits = v72;
      v55._object = v71;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 40;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      _print_unlocked<A, B>(_:_:)();
      v57._countAndFlagsBits = 41;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v58 = DynamicType;
      (v48)(v44, v31);
      (*(v75 + 8))(v33, v79);
      return v58;
    }

    v76 = v48;
    v73 = v22;
    v78 = v47;
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v50 != result)
    {
      __break(1u);
      return result;
    }

    v51 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v51)
    {
      swift_unknownObjectRelease();

      v52 = v77;
      v53 = v79;
      v54 = v72;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v60 = DynamicType;
      v59 = v82;
      sub_100005070(v83);
      v52 = v77;
      v53 = v79;
      v54 = v72;
      if (v59)
      {
LABEL_15:
        v62 = v75;
        v63 = v76;
        DynamicType = v54;
        v82 = v71;
        v64._countAndFlagsBits = 46;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        v65._countAndFlagsBits = v60;
        v65._object = v59;
        String.append(_:)(v65);

        v58 = DynamicType;
        v63(v74, v52);
        (*(v62 + 8))(v33, v53);
        return v58;
      }
    }

    v68(v70, v73, v67);
    v60 = String.init<A>(describing:)();
    v59 = v61;

    goto LABEL_15;
  }

  (*(v15 + 16))(v21, v22, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v15 + 8))(v21, a1);
  }

  else
  {
    swift_allocError();
    (*(v15 + 32))(v35, v21, a1);
  }

  v36 = _convertErrorToNSError(_:)();

  DynamicType = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  DynamicType = 0x20726F727245534ELL;
  v82 = 0xEF3D6E69616D6F44;
  v37 = [v36 domain];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x3D65646F4320;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v80 = [v36 code];
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  return DynamicType;
}

uint64_t sub_100015CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015D4C()
{
  result = qword_1019F6BD0;
  if (!qword_1019F6BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6BD0);
  }

  return result;
}

uint64_t sub_100015D98()
{
  v0 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_10001501C(v5);
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    sub_10000CAAC(v5, &qword_101A0A320, &qword_10146D650);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    if (sub_10001600C(v12))
    {
      sub_10069E00C(0);
    }

    (*(v7 + 8))(v12, v6);
  }

  sub_100015370(v2);
  if (v13(v2, 1, v6) == 1)
  {
    return sub_10000CAAC(v2, &qword_101A0A320, &qword_10146D650);
  }

  (*(v7 + 32))(v9, v2, v6);
  if (sub_10001600C(v9))
  {
    sub_10069E00C(2u);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10001600C(uint64_t a1)
{
  v26 = a1;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Calendar();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1005B981C(&qword_1019F5528, &qword_10146D680);
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10146BDE0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, enum case for Calendar.Component.year(_:), v9);
  v15(v14 + v11, enum case for Calendar.Component.month(_:), v9);
  sub_10001644C(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:to:)();

  (*(v25 + 8))(v2, v27);
  (*(v3 + 8))(v5, v22);
  v16 = DateComponents.year.getter();
  if ((v17 & 1) != 0 || v16 < 1)
  {
    v19 = DateComponents.month.getter();
    v21 = v20;
    (*(v23 + 8))(v8, v24);
    return (v19 > 0) & ~v21;
  }

  else
  {
    (*(v23 + 8))(v8, v24);
    return 1;
  }
}

uint64_t Error.fullDescription.getter(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return String.init<A>(reflecting:)();
}

void *sub_10001644C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1005B981C(&qword_1019F36A8, &qword_101468AF8);
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
      sub_100016770(&qword_1019F36B0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100016770(&qword_1019F36B8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
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

  return _swiftEmptySetSingleton;
}

uint64_t sub_100016770(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

NSString sub_1000167C8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD60D8 = result;
  return result;
}

uint64_t sub_100016820()
{

  return _swift_deallocObject(v0, 40, 7);
}

NSString sub_10001686C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD60E0 = result;
  return result;
}

NSString sub_1000168CC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD60E8 = result;
  return result;
}

uint64_t sub_10001691C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002D3D4;

  return sub_10007A584();
}

void sub_100016BD8(id a1)
{
  v3[0] = @"Chalk2";
  v3[1] = @"Dry Brush";
  v3[2] = @"Feathered Brush";
  v3[3] = @"Pen";
  v3[4] = @"Crayon";
  v3[5] = @"Pencil";
  v3[6] = @"Basic";
  v3[7] = @"Basic Rounded";
  v3[8] = @"Basic Square";
  v1 = [NSArray arrayWithObjects:v3 count:9];
  v2 = qword_101A34600;
  qword_101A34600 = v1;
}

void sub_100016D4C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.freeform.CRLBrushStrokeLoadQueue", v3);
  v2 = qword_101A34620;
  qword_101A34620 = v1;
}

uint64_t sub_100016E14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v13;
      v3 = v14;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1005E09AC(&v17);
  }

  v3 = 0xE100000000000000;
  v4 = 63;
LABEL_9:
  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_1005E09AC(&v17);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v7 = 0xE100000000000000;
    v8 = 63;
    goto LABEL_17;
  }

  v8 = v13;
  v7 = v14;
LABEL_17:
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C4D0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v8;
  *(v9 + 80) = v7;
  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = v10;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  v11 = String.init(format:_:)();

  return v11;
}

void sub_1000170D4(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_101A34630;
  qword_101A34630 = v1;
}

__CFString *sub_1000171D8()
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  sub_100017670(0, &v32 - v10);
  if (!v0)
  {
    sub_100017670(1, v8);
    v12 = sub_100FC3C44(v11, v8);
    v36 = 0;
    v34 = v12;
    (*(v3 + 16))(v5, v11, v2);
    v1 = sub_10001804C(v5);
    sub_10001E4FC(SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    v35 = [objc_opt_self() standardUserDefaults];
    v32 = @"CRLEnsureOwnershipOfDataUserDefault";
    v14 = [v35 BOOLForKey:?];
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for Bool;
    *(inited + 64) = &protocol witness table for Bool;
    *(inited + 32) = v14;
    *(inited + 96) = &type metadata for Bool;
    *(inited + 104) = &protocol witness table for Bool;
    v16 = v34 & 1;
    *(inited + 72) = v34 & 1;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v33, &_mh_execute_header, v17, "newMainDataStore() ensureOwnershiopOfData=%d didMigrate=%d", 58, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    v18 = swift_arrayDestroy();
    if ((v16 & v14 & 1) != 0 && (__chkstk_darwin(v18), *(&v32 - 2) = v1, v19 = v36, OS_dispatch_queue.sync<A>(execute:)(), (v36 = v19) != 0))
    {

      v20 = *(v3 + 8);
      v20(v8, v2);
      v20(v11, v2);
    }

    else
    {
      [v35 setURL:0 forKey:v32];
      v21 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v21 + 16));
      v22 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v23 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      }

      else
      {
        v25 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v26 = v1;
        v27 = sub_10001F1A0(v26);

        v28 = *&v1[v22];
        *&v1[v22] = v27;
        v24 = v27;

        v23 = 0;
      }

      v29 = *(v21 + 16);
      v30 = v23;
      os_unfair_lock_unlock(v29);
      sub_10001F7A4();

      v31 = *(v3 + 8);
      v31(v8, v2);
      v31(v11, v2);
    }
  }

  return v1;
}

void sub_100017670(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  if (a1)
  {
    sub_100017D2C();
    if (!v2)
    {
      goto LABEL_7;
    }

LABEL_18:

    return;
  }

  v13 = [v11 defaultManager];
  v14 = sub_100017A38(v13);
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (!v16)
  {
    sub_100FC4E08();
    swift_allocError();
    swift_willThrow();
    goto LABEL_18;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  if (qword_1019F1598 != -1)
  {
    swift_once();
  }

  if (byte_101AD6528 == 1)
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.boardStore;
    v18 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v18, "Using sandbox path Development/Boards", 37, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.boardStore;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v20, "Using production path Boards", 28, 2, _swiftEmptyArrayStorage);
  }

  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  sub_100017CD8();
  URL.appending<A>(components:directoryHint:)();

  (*(v5 + 8))(v7, v4);
  (*(v21 + 8))(v10, v22);
}

id sub_100017A38(uint64_t a1)
{
  if (qword_101A34AA0 != -1)
  {
    sub_100017A7C();
  }

  v2 = qword_101A34A98;

  return v2;
}

void sub_100017A90(id a1)
{
  v1 = [NSString stringWithUTF8String:"group.com.apple.freeform"];
  v2 = qword_101A34A98;
  qword_101A34A98 = v1;

  if (([qword_101A34A98 hasPrefix:@"group.com.apple."] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B7EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B800();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B8A8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", "NSString *CRLAppGroupIdentifier()_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m", 56, qword_101A34A98);
    v4 = [NSString stringWithUTF8String:"NSString *CRLAppGroupIdentifier()_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:56 isFatal:1 description:"App group identifier (%@) has unexpected prefix.", qword_101A34A98];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v6, v7);
    abort();
  }
}

void sub_100017C20()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAE0, &qword_101AD5A88);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardStore = v1;
}

unint64_t sub_100017CD8()
{
  result = qword_1019F69C0;
  if (!qword_1019F69C0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1019F69C0);
  }

  return result;
}

uint64_t sub_100017D2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v6 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:{&v12, v3}];
  v7 = v12;
  if (v6)
  {
    v8 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

char *sub_10001804C(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v16[1] = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100018340();
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_100018398();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore(0));
  v14 = sub_10001855C(v11, 0, v12, v13);

  (*(v8 + 8))(v17, v7);
  return v14;
}

unint64_t sub_100018340()
{
  result = qword_101A1DE70;
  if (!qword_101A1DE70)
  {
    v3 = type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue.Attributes, v3, v0, v1);
    atomic_store(result, &qword_101A1DE70);
  }

  return result;
}

unint64_t sub_100018398()
{
  result = qword_101A1DE80;
  if (!qword_101A1DE80)
  {
    v3 = sub_1005C4E5C(&unk_1019FB800, &unk_10146F020);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A1DE80);
  }

  return result;
}

uint64_t sub_10001841C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_10001855C(char *a1, void *a2, void *a3, char *a4)
{
  v207 = a3;
  v225 = a2;
  v228 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v226 = *(v5 - 8);
  v227 = v5;
  __chkstk_darwin(v5);
  v210 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v211 = &v206 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v230 = v9;
  v231 = v10;
  __chkstk_darwin(v9);
  v224 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v14 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum] = 0;
  v18 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.boardStore;
  *&a4[v18] = static OS_os_log.boardStore;
  v20 = &a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName];
  *v20 = 0x7461446472616F62;
  *(v20 + 1) = 0xE900000000000061;
  v209 = v20;
  v21 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_userDefaults;
  v22 = objc_opt_self();
  v229 = v22;
  v23 = v19;
  *&a4[v21] = [v22 standardUserDefaults];
  *&a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite] = _swiftEmptySetSingleton;
  *&a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper] = 0;
  v24 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock;
  type metadata accessor for CRLUnfairLock();
  v25 = swift_allocObject();
  v26 = swift_slowAlloc();
  *v26 = 0;
  *(v25 + 16) = v26;
  atomic_thread_fence(memory_order_acq_rel);
  *&a4[v24] = v25;
  *&a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager] = 0;
  v27 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  atomic_thread_fence(memory_order_acq_rel);
  *&a4[v27] = v28;
  *&a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager] = 0;
  v30 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock;
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *v32 = 0;
  *(v31 + 16) = v32;
  atomic_thread_fence(memory_order_acq_rel);
  *&a4[v30] = v31;
  *&a4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager] = 0;
  v232 = a4;
  v216 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetUploadTracker;
  v33 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  *&v235 = _swiftEmptyArrayStorage;
  v34 = sub_1000066D0(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v35 = sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  v219 = sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020, &protocol conformance descriptor for [A]);
  v220 = v35;
  v208 = v12;
  v221 = v34;
  v36 = v229;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = *(v231 + 104);
  v218 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v231 += 104;
  v217 = v37;
  v37(v224);
  v222 = v33;
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for CRLAssetUploadTracker();
  v39 = swift_allocObject();
  type metadata accessor for CRLAssetUploadObserverManager();
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v40 + 112) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:1];
  *(v39 + 16) = v40;
  *(v39 + 24) = _swiftEmptyDictionarySingleton;
  *(v39 + 32) = _swiftEmptyDictionarySingleton;
  *(v39 + 40) = 0;
  *(v39 + 48) = v38;
  *&v216[v232] = v39;
  v41 = v232;
  v42 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_accountUtilities;
  type metadata accessor for CRLAccountUtilities();
  *&v41[v42] = swift_allocObject();
  *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions] = _swiftEmptyDictionarySingleton;
  v43 = [v36 standardUserDefaults];
  v44 = [v43 objectForKey:@"CRLDeleteBoardCleanupTolerance"];

  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v238 = 0u;
    v239 = 0u;
  }

  v235 = v238;
  v236 = v239;
  if (*(&v239 + 1))
  {
    if (swift_dynamicCast())
    {
      v45 = v233;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CAAC(&v235, &unk_1019F4D00, &unk_10146E7F0);
  }

  v45 = 0x40AC200000000000;
LABEL_11:
  *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardsCleanupTolerance] = v45;
  *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem] = 0;
  v46 = [v36 standardUserDefaults];
  v47 = [v46 objectForKey:@"CRLDeletedBoardTTL"];

  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v238 = 0u;
    v239 = 0u;
  }

  v235 = v238;
  v236 = v239;
  v223 = v17;
  v206 = v14;
  if (*(&v239 + 1))
  {
    if (swift_dynamicCast())
    {
      v48 = v233;
      goto LABEL_19;
    }
  }

  else
  {
    sub_10000CAAC(&v235, &unk_1019F4D00, &unk_10146E7F0);
  }

  v48 = 0x4143C68000000000;
LABEL_19:
  *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardTTL] = v48;
  v216 = &v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(241);
  v49._object = 0x80000001015A8F20;
  v49._countAndFlagsBits = 0xD000000000000011;
  v213 = 0xD000000000000011;
  v214 = "rm.assetUploadTracker";
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x737265646C6F66;
  v50._object = 0xE700000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x202020202820;
  v51._object = 0xE600000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x696669746E656469;
  v52._object = 0xEA00000000007265;
  String.append(_:)(v52);
  v215 = "    CREATE TABLE ";
  v53._countAndFlagsBits = 0xD000000000000020;
  v53._object = 0x80000001015A8F40;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 1635017060;
  v54._object = 0xE400000000000000;
  String.append(_:)(v54);
  v229 = "Y NOT NULL,     ";
  v55._object = 0x80000001015A8F70;
  v55._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x5F65726168736B63;
  v56._object = 0xEC00000061746164;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x20202C424F4C4220;
  v57._object = 0xEB00000000202020;
  String.append(_:)(v57);
  v58._object = 0x80000001015A3BE0;
  v58._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x20202C424F4C4220;
  v59._object = 0xEB00000000202020;
  String.append(_:)(v59);
  v60._object = 0x80000001015A3590;
  v60._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0xD00000000000001ALL;
  v61._object = 0x80000001015A8F90;
  String.append(_:)(v61);
  *&v238 = 0x4000000000000;
  v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v62);

  v63._countAndFlagsBits = 0x20202020202CLL;
  v63._object = 0xE600000000000000;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0xD00000000000002DLL;
  v64._object = 0x80000001015A3760;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0xD00000000000001ALL;
  v65._object = 0x80000001015A8F90;
  String.append(_:)(v65);
  *&v238 = 0x4000000000000;
  v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v66);

  v67._countAndFlagsBits = 0x20202020202CLL;
  v67._object = 0xE600000000000000;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = 0x80000001015A33F0;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = 0x80000001015A8F90;
  String.append(_:)(v69);
  *&v238 = 0x4000000000000;
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  v71._countAndFlagsBits = 0x20202020202CLL;
  v71._object = 0xE600000000000000;
  String.append(_:)(v71);
  v72._countAndFlagsBits = 0x656C746974;
  v72._object = 0xE500000000000000;
  String.append(_:)(v72);
  v73._countAndFlagsBits = 0x20202C5458455420;
  v73._object = 0xEB00000000202020;
  String.append(_:)(v73);
  v74._countAndFlagsBits = 0xD000000000000012;
  v74._object = 0x80000001015A3810;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x2020204C41455220;
  v75._object = 0xEB00000000292020;
  String.append(_:)(v75);
  v76 = *(&v235 + 1);
  v77 = v216;
  *v216 = v235;
  *(v77 + 1) = v76;
  v78 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(158);
  v80 = v213;
  v79 = v214;
  v81._object = (v214 | 0x8000000000000000);
  v81._countAndFlagsBits = v213;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0xD000000000000010;
  v216 = 0xD000000000000010;
  v82._object = 0x80000001015A30F0;
  String.append(_:)(v82);
  v83._countAndFlagsBits = 0x202020202820;
  v83._object = 0xE600000000000000;
  String.append(_:)(v83);
  v84._countAndFlagsBits = 0x696669746E656469;
  v84._object = 0xEA00000000007265;
  String.append(_:)(v84);
  v85._countAndFlagsBits = 0xD00000000000002ALL;
  v85._object = 0x80000001015A8FB0;
  String.append(_:)(v85);
  v86._countAndFlagsBits = 0x737265646C6F66;
  v86._object = 0xE700000000000000;
  String.append(_:)(v86);
  v87._countAndFlagsBits = 10272;
  v87._object = 0xE200000000000000;
  String.append(_:)(v87);
  v88._countAndFlagsBits = 0x696669746E656469;
  v88._object = 0xEA00000000007265;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 0xD000000000000019;
  v89._object = 0x80000001015A8FE0;
  String.append(_:)(v89);
  v90._countAndFlagsBits = 1635017060;
  v90._object = 0xE400000000000000;
  String.append(_:)(v90);
  v91 = v229;
  v92._object = (v229 | 0x8000000000000000);
  v92._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v92);
  v93._countAndFlagsBits = 0xD000000000000026;
  v93._object = 0x80000001015A33F0;
  String.append(_:)(v93);
  v94._countAndFlagsBits = 0xD00000000000001ALL;
  v94._object = 0x80000001015A8F90;
  String.append(_:)(v94);
  *&v238 = 0x4000000000000;
  v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v95);

  v96._countAndFlagsBits = 0x292020202020;
  v96._object = 0xE600000000000000;
  String.append(_:)(v96);
  v97 = *(&v235 + 1);
  *v78 = v235;
  *(v78 + 1) = v97;
  v98 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v99._object = (v79 | 0x8000000000000000);
  v99._countAndFlagsBits = v80;
  String.append(_:)(v99);
  v100._countAndFlagsBits = 0x64726F6365726B63;
  v100._object = 0xEE0065686361635FLL;
  String.append(_:)(v100);
  v101._countAndFlagsBits = 0x202020202820;
  v101._object = 0xE600000000000000;
  String.append(_:)(v101);
  v102._countAndFlagsBits = 0x695F64726F636572;
  v102._object = 0xE900000000000064;
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0xD000000000000020;
  v104 = v215;
  v103._object = (v215 | 0x8000000000000000);
  String.append(_:)(v103);
  v105._countAndFlagsBits = 0x64695F656E6F7ALL;
  v105._object = 0xE700000000000000;
  String.append(_:)(v105);
  v106._object = (v91 | 0x8000000000000000);
  v106._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v106);
  v107._countAndFlagsBits = 0x64726F636572;
  v107._object = 0xE600000000000000;
  String.append(_:)(v107);
  v108._object = 0x80000001015A9000;
  v108._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v108);
  v109 = *(&v235 + 1);
  *v98 = v235;
  *(v98 + 1) = v109;
  v110 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  v111._object = (v79 | 0x8000000000000000);
  v111._countAndFlagsBits = v80;
  String.append(_:)(v111);
  v112._countAndFlagsBits = 0x635F656E6F7A6B63;
  v112._object = 0xEC00000065686361;
  String.append(_:)(v112);
  v113._countAndFlagsBits = 0x202020202820;
  v113._object = 0xE600000000000000;
  String.append(_:)(v113);
  v114._countAndFlagsBits = 0x64695F656E6F7ALL;
  v114._object = 0xE700000000000000;
  String.append(_:)(v114);
  v115._countAndFlagsBits = 0xD000000000000020;
  v115._object = (v104 | 0x8000000000000000);
  String.append(_:)(v115);
  v116._countAndFlagsBits = 0x646574656C6564;
  v116._object = 0xE700000000000000;
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0x52454745544E4920;
  v117._object = 0xEE0020202020202CLL;
  String.append(_:)(v117);
  v118._countAndFlagsBits = 0x646567727570;
  v118._object = 0xE600000000000000;
  String.append(_:)(v118);
  v119._countAndFlagsBits = 0x52454745544E4920;
  v119._object = 0xEE0020202020202CLL;
  String.append(_:)(v119);
  v120._countAndFlagsBits = 0xD000000000000028;
  v120._object = 0x80000001015A87B0;
  String.append(_:)(v120);
  v121._object = 0xEE00292020202020;
  v121._countAndFlagsBits = 0x52454745544E4920;
  String.append(_:)(v121);
  v122 = *(&v235 + 1);
  *v110 = v235;
  *(v110 + 1) = v122;
  v123 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v124._object = (v79 | 0x8000000000000000);
  v124._countAndFlagsBits = v80;
  String.append(_:)(v124);
  v125._countAndFlagsBits = 0xD000000000000015;
  v125._object = 0x80000001015A3110;
  String.append(_:)(v125);
  v126._countAndFlagsBits = 0x202020202820;
  v126._object = 0xE600000000000000;
  String.append(_:)(v126);
  v127._countAndFlagsBits = 0x695F64726F636572;
  v127._object = 0xE900000000000064;
  String.append(_:)(v127);
  v128._countAndFlagsBits = 0xD000000000000020;
  v128._object = (v104 | 0x8000000000000000);
  String.append(_:)(v128);
  v129._countAndFlagsBits = 0x64695F656E6F7ALL;
  v129._object = 0xE700000000000000;
  String.append(_:)(v129);
  v130._object = (v229 | 0x8000000000000000);
  v130._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v130);
  v131._countAndFlagsBits = 0x745F64726F636572;
  v131._object = 0xEB00000000657079;
  String.append(_:)(v131);
  v132._object = 0x80000001015A9020;
  v132._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v132);
  v133 = *(&v235 + 1);
  *v123 = v235;
  *(v123 + 1) = v133;
  v134 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery];
  *v134 = 0xD00000000000004FLL;
  *(v134 + 1) = 0x80000001015A9040;
  v135 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery];
  *v135 = 0xD00000000000005DLL;
  *(v135 + 1) = 0x80000001015A9090;
  v136 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v137._object = 0x80000001015A90F0;
  v138 = v216;
  v137._countAndFlagsBits = v216;
  String.append(_:)(v137);
  v139._countAndFlagsBits = 0x736472616F62;
  v139._object = 0xE600000000000000;
  String.append(_:)(v139);
  v140._countAndFlagsBits = 0x4C4F432044444120;
  v140._object = 0xEC000000204E4D55;
  String.append(_:)(v140);
  v141._countAndFlagsBits = 0xD000000000000015;
  v141._object = 0x80000001015A3830;
  String.append(_:)(v141);
  v142._countAndFlagsBits = 0xD00000000000001CLL;
  v142._object = 0x80000001015A9110;
  String.append(_:)(v142);
  v143 = *(&v235 + 1);
  *v136 = v235;
  *(v136 + 1) = v143;
  v144 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v145._object = 0x80000001015A90F0;
  v145._countAndFlagsBits = v138;
  String.append(_:)(v145);
  v146._countAndFlagsBits = 0x736472616F62;
  v146._object = 0xE600000000000000;
  String.append(_:)(v146);
  v147._countAndFlagsBits = 0x4C4F432044444120;
  v147._object = 0xEC000000204E4D55;
  String.append(_:)(v147);
  v148._countAndFlagsBits = 0xD00000000000001BLL;
  v148._object = 0x80000001015A3790;
  String.append(_:)(v148);
  v149._countAndFlagsBits = 0xD00000000000001FLL;
  v149._object = 0x80000001015A9130;
  String.append(_:)(v149);
  v150 = *(&v235 + 1);
  *v144 = v235;
  *(v144 + 1) = v150;
  v151 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v152._object = 0x80000001015A90F0;
  v152._countAndFlagsBits = v138;
  String.append(_:)(v152);
  v153._countAndFlagsBits = 0x74695F6472616F62;
  v153._object = 0xEB00000000736D65;
  String.append(_:)(v153);
  v154._countAndFlagsBits = 0x4C4F432044444120;
  v154._object = 0xEC000000204E4D55;
  String.append(_:)(v154);
  v155._countAndFlagsBits = 0xD00000000000001BLL;
  v155._object = 0x80000001015A3790;
  String.append(_:)(v155);
  v156._countAndFlagsBits = 0xD00000000000001FLL;
  v156._object = 0x80000001015A9130;
  String.append(_:)(v156);
  v157 = *(&v235 + 1);
  *v151 = v235;
  *(v151 + 1) = v157;
  v158 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v159._object = 0x80000001015A90F0;
  v159._countAndFlagsBits = v138;
  String.append(_:)(v159);
  v160._countAndFlagsBits = 0xD000000000000018;
  v160._object = 0x80000001015A31A0;
  String.append(_:)(v160);
  v161._countAndFlagsBits = 0x4C4F432044444120;
  v161._object = 0xEC000000204E4D55;
  String.append(_:)(v161);
  v162._countAndFlagsBits = 0xD00000000000001BLL;
  v162._object = 0x80000001015A3790;
  String.append(_:)(v162);
  v163._countAndFlagsBits = 0xD00000000000001FLL;
  v163._object = 0x80000001015A9130;
  String.append(_:)(v163);
  v164 = *(&v235 + 1);
  *v158 = v235;
  *(v158 + 1) = v164;
  v165 = &v232[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery];
  *&v235 = 0;
  *(&v235 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v166._object = 0x80000001015A90F0;
  v166._countAndFlagsBits = v138;
  String.append(_:)(v166);
  v167._countAndFlagsBits = 0x74695F6472616F62;
  v167._object = 0xEB00000000736D65;
  v168 = v232;
  String.append(_:)(v167);
  v169._countAndFlagsBits = 0x4C4F432044444120;
  v169._object = 0xEC000000204E4D55;
  String.append(_:)(v169);
  v170._countAndFlagsBits = 0x6D6574695F627573;
  v170._object = 0xED0000657079745FLL;
  String.append(_:)(v170);
  v171._countAndFlagsBits = 0xD000000000000013;
  v171._object = 0x80000001015A9150;
  String.append(_:)(v171);
  v172 = *(&v235 + 1);
  *v165 = v235;
  *(v165 + 1) = v172;
  v173 = &v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery];
  *v173 = 0xD000000000000039;
  *(v173 + 1) = 0x80000001015A9170;
  v174 = &v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery];
  *v174 = 0xD000000000000046;
  *(v174 + 1) = 0x80000001015A91B0;
  v175 = *(v226 + 16);
  v229 = v226 + 16;
  v216 = v175;
  (v175)(&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_dataDirectory], v228, v227);
  v176 = v225;
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_temporaryDirectory] = v225;
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime] = 0;
  v177 = v176;
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore] = sub_10001A3AC();
  v178 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue;
  v179 = v207;
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue] = v207;
  v180 = v179;
  *&v235 = OS_dispatch_queue.label.getter();
  *(&v235 + 1) = v181;
  v182._countAndFlagsBits = 0x646165722ELL;
  v182._object = 0xE500000000000000;
  String.append(_:)(v182);
  v215 = v235;
  v183 = *&v168[v178];
  static DispatchQoS.unspecified.getter();
  *&v235 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v184 = v224;
  v217(v224, v218, v230);
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v185 = *&v168[v178];
  v186 = OS_dispatch_queue.label.getter();
  v188 = v187;

  *&v235 = v186;
  *(&v235 + 1) = v188;
  v189._countAndFlagsBits = 0x65746972772ELL;
  v189._object = 0xE600000000000000;
  String.append(_:)(v189);
  v215 = v178;
  v190 = *&v168[v178];
  static DispatchQoS.unspecified.getter();
  *&v235 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v217(v184, v218, v230);
  *&v168[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v225)
  {
    v191 = v227;
    v192 = v228;
    v193 = v211;
    v194 = v216;
    if (qword_1019F17C0 != -1)
    {
      swift_once();
    }

    v195 = sub_1005EB3DC(v191, qword_101AD69B8);
    (v194)(v193, v195, v191);
  }

  else
  {
    v193 = v211;
    v192 = v228;
    URL.appendingPathComponent(_:)();
    v191 = v227;
    v194 = v216;
  }

  v196 = v210;
  v197 = *v209;
  v198 = v209[1];
  (v194)(v210, v193, v191);
  v199 = v232;
  v200 = *&v232[v215];
  type metadata accessor for SQLiteDatabase(0);
  swift_allocObject();

  *&v199[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database] = sub_10089ABDC(v197, v198, v196, v200);
  type metadata accessor for CRContext();
  v237 = 0;
  v235 = 0u;
  v236 = 0u;
  v201 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_10000CAAC(&v235, &qword_101A07B90, &unk_101493B40);
  *&v199[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext] = v201;
  v202 = [objc_opt_self() mainBundle];
  v203 = *(v226 + 8);
  v203(v193, v191);
  *&v199[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetBundle] = v202;
  v234.receiver = v199;
  v234.super_class = ObjectType;
  v204 = objc_msgSendSuper2(&v234, "init");
  v203(v192, v191);
  return v204;
}

uint64_t sub_10001A2F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10001A3AC()
{
  v0 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v0 - 8);
  v19 = &v18 - v1;
  v20 = type metadata accessor for URL();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v24 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v21 = "MarksForAppTermination";
  v22 = v8;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10001A844(&qword_101A1DE70, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v9 = &unk_1019FB800;
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v10 = v24;
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for CRLBoardDataStoreProvider();
  v12 = v25;
  sub_100017670(0, v10);
  if (v12)
  {
  }

  else
  {
    v14 = v18;
    v13 = v19;
    v15 = v20;
    (*(v18 + 16))(v19, v10, v20);
    (*(v14 + 56))(v13, 0, 1, v15);
    type metadata accessor for CRLSideStore();
    swift_allocObject();
    v16 = v11;
    v9 = sub_10001A8B0(v13, v16);
    OS_dispatch_queue.sync<A>(execute:)();

    (*(v14 + 8))(v10, v15);
  }

  return v9;
}

uint64_t sub_10001A844(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10001A8B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.sideStore;
  v2[4] = static OS_os_log.sideStore;
  v2[5] = 1701079411;
  v2[6] = 0xE400000000000000;
  v2[7] = _swiftEmptyDictionarySingleton;
  sub_10001ACF0(a1, v7);
  v18 = (*(v9 + 48))(v7, 1, v8);
  v35 = a1;
  if (v18 == 1)
  {
    v19 = v17;
    sub_10000CAAC(v7, &unk_1019F33C0, &unk_101468A60);
    if (qword_1019F17C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1005EB3DC(v8, qword_101AD69B8);
    v21 = *(v9 + 16);
    v21(v16, v20, v8);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v22 = v17;
    URL.appendingPathComponent(_:)();
    (*(v9 + 8))(v13, v8);
    v21 = *(v9 + 16);
  }

  v23 = v16;
  v24 = v34;
  v25 = v3;
  v3[3] = v34;
  v26 = v3[5];
  v27 = v3[6];
  v28 = v33;
  v32 = v23;
  v21(v33, v23, v8);
  type metadata accessor for SQLiteDatabase(0);
  swift_allocObject();
  v29 = v24;

  v30 = sub_10089ABDC(v26, v27, v28, v29);
  sub_10000CAAC(v35, &unk_1019F33C0, &unk_101468A60);
  (*(v9 + 8))(v32, v8);
  v25[2] = v30;
  return v25;
}

void sub_10001AC38()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC80, &qword_101AD5C28);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sideStore = v1;
}

uint64_t sub_10001ACF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SQLiteDatabase(uint64_t a1)
{
  result = qword_101A05930;
  if (!qword_101A05930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001ADAC(uint64_t a1)
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

uint64_t sub_10001AEA4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v0;
  v6 = v0[3];
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  (v8)(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v177[2];
  v12 = v7;
  v13 = *(v10 + 32);
  *v5 = v13;
  LODWORD(v174) = v12;
  v176 = v8;
  (v8)(v5);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v13 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  URL.absoluteString.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 fileSystemRepresentation];
  v17 = v15;

  v19 = v16;
  v20 = v175;
  v21 = sub_10001C448(v18, v19, v10, 3178502);

  if (v21)
  {

    sub_10089CCDC(v22, v10);

    swift_beginAccess();
    *(v10 + 16) = 0;
    sub_10089C7D0();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }

  v175 = v20;
  v25 = *(v10 + 32);
  *v5 = v25;
  v26 = v174;
  v176(v5, v174, v1);
  v27 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001C924(v10, 0xD00000000000001CLL, 0x8000000101585480);
  sub_10001D624();
  v28 = *(v10 + 32);
  *v5 = v28;
  v176(v5, v26, v1);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v28 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_10001C924(v10, 0xD00000000000001ALL, 0x80000001015854A0);
  v30 = *(v10 + 32);
  *v5 = v30;
  v176(v5, v26, v1);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v30 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v179[0] = v10;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {
      v65 = v179[5];
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v67 = v177[5];
      v66 = v177[6];
      *(inited + 56) = &type metadata for String;
      v68 = sub_1000053B0();
      *(inited + 32) = v67;
      v177 = (inited + 32);
      *(inited + 40) = v66;
      v69 = &type metadata for Int;
      v70 = &protocol witness table for Int;
      *(inited + 96) = &type metadata for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 64) = v68;
      *(inited + 72) = v65;
      v71 = 2;
      goto LABEL_54;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_10146C4D0;
    v72 = v177[5];
    v73 = v177[6];
    *(v43 + 56) = &type metadata for String;
    v74 = sub_1000053B0();
    *(v43 + 32) = v72;
    v177 = (v43 + 32);
    *(v43 + 64) = v74;
    *(v43 + 40) = v73;
    swift_getErrorValue();
    v75 = v178[54];
    v76 = v178[55];

    v77 = Error.publicDescription.getter(v75, v76);
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = v74;
    *(v43 + 72) = v77;
    *(v43 + 80) = v78;
    swift_getErrorValue();
    v79 = Error.fullDescription.getter(v178[50]);
    *(v43 + 136) = &type metadata for String;
    *(v43 + 144) = v74;
    *(v43 + 112) = v79;
    *(v43 + 120) = v80;
    v175 = objc_opt_self();
    LODWORD(v176) = [v175 _atomicIncrementAssertCount];
    v179[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v43, v179, "Encountered an error while attempting to open the %{public}@ database: unable to fetch schema version. Error: %{public}@ %@", 123, 2u);
    StaticString.description.getter("_openDatabase()", 15, 2);
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v85;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_119;
    }

    while (1)
    {
      v86 = static OS_os_log.crlAssert;
      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_10146CA70;
      *(v87 + 56) = &type metadata for Int32;
      *(v87 + 64) = &protocol witness table for Int32;
      *(v87 + 32) = v176;
      v88 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v87 + 96) = v88;
      v89 = sub_1005CF04C();
      *(v87 + 72) = v81;
      *(v87 + 136) = &type metadata for String;
      *(v87 + 144) = v74;
      *(v87 + 104) = v89;
      *(v87 + 112) = v84;
      *(v87 + 120) = v44;
      *(v87 + 176) = &type metadata for UInt;
      *(v87 + 184) = &protocol witness table for UInt;
      *(v87 + 152) = 258;
      v90 = v179[0];
      *(v87 + 216) = v88;
      *(v87 + 224) = v89;
      *(v87 + 192) = v90;
      v91 = v81;
      v92 = v90;
      v93 = static os_log_type_t.error.getter();
      sub_100005404(v86, &_mh_execute_header, v93, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v87);

      v94 = static os_log_type_t.error.getter();
      sub_100005404(v86, &_mh_execute_header, v94, "Encountered an error while attempting to open the %{public}@ database: unable to fetch schema version. Error: %{public}@ %@", 123, 2, v43);

      sub_10063DF98(v43, "Encountered an error while attempting to open the %{public}@ database: unable to fetch schema version. Error: %{public}@ %@");
      type metadata accessor for __VaListBuilder();
      v74 = swift_allocObject();
      v74[2] = 8;
      v74[3] = 0;
      v95 = v74 + 3;
      v74[4] = 0;
      v74[5] = 0;
      v96 = *(v43 + 16);
      if (!v96)
      {
        goto LABEL_124;
      }

      v43 = 0;
      while (1)
      {
        v97 = &v177[5 * v43];
        v44 = v97[3];
        v84 = v97[4];
        sub_100020E58(v97, v44);
        v98 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v81 = *v95;
        v99 = *(v98 + 16);
        v100 = __OFADD__(*v95, v99);
        v101 = *v95 + v99;
        if (v100)
        {
          goto LABEL_110;
        }

        v84 = v98;
        inited = v74[4];
        if (inited >= v101)
        {
          goto LABEL_46;
        }

        if (inited + 0x4000000000000000 < 0)
        {
          goto LABEL_112;
        }

        v44 = v74[5];
        if (2 * inited > v101)
        {
          v101 = 2 * inited;
        }

        v74[4] = v101;
        if ((v101 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_113;
        }

        v68 = swift_slowAlloc();
        v74[5] = v68;
        if (v44)
        {
          if (v68 != v44 || v68 >= v44 + 8 * v81)
          {
            memmove(v68, v44, 8 * v81);
          }

          inited = v74;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_46:
          v68 = v74[5];
        }

        if (!v68)
        {
          __break(1u);
LABEL_121:
          swift_once();
          goto LABEL_85;
        }

        v69 = v84[2];
        if (v69)
        {
          break;
        }

LABEL_31:

        if (++v43 == v96)
        {
          goto LABEL_124;
        }
      }

      v70 = v84 + 4;
      v103 = *v95;
      while (1)
      {
        v104 = *v70++;
        v71 = v104;
        *(v68 + v103) = v104;
        v103 = *v95 + 1;
        if (__OFADD__(*v95, 1))
        {
          break;
        }

        *v95 = v103;
        if (!--v69)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_54:
      v105 = v68;
      v106 = 0;
      v107 = v71 - 1;
      if (v107)
      {
        v108 = &byte_101872F19;
        do
        {
          v109 = *v108++;
          v106 |= v109;
          --v107;
        }

        while (v107);
      }

      *(inited + 136) = v69;
      *(inited + 144) = v70;
      *(inited + 112) = v106 & 1;

      v175 = objc_opt_self();
      LODWORD(v176) = [v175 _atomicIncrementAssertCount];
      v178[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, v178, "Encountered an unknown schema version for the %{public}@ database during possible migration, found value %{public}d is less than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 255, 2u);
      StaticString.description.getter("_openDatabase()", 15, 2);
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v111 = String._bridgeToObjectiveC()();

      v112 = [v111 lastPathComponent];

      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v116 = static OS_os_log.crlAssert;
      v117 = swift_initStackObject();
      *(v117 + 16) = xmmword_10146CA70;
      *(v117 + 56) = &type metadata for Int32;
      *(v117 + 64) = &protocol witness table for Int32;
      *(v117 + 32) = v176;
      v118 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v117 + 96) = v118;
      v119 = sub_1005CF04C();
      *(v117 + 72) = v110;
      *(v117 + 136) = &type metadata for String;
      *(v117 + 144) = v105;
      *(v117 + 104) = v119;
      *(v117 + 112) = v113;
      *(v117 + 120) = v115;
      *(v117 + 176) = &type metadata for UInt;
      *(v117 + 184) = &protocol witness table for UInt;
      *(v117 + 152) = 256;
      v120 = v178[0];
      *(v117 + 216) = v118;
      *(v117 + 224) = v119;
      *(v117 + 192) = v120;
      v121 = v110;
      v122 = v120;
      v123 = static os_log_type_t.error.getter();
      sub_100005404(v116, &_mh_execute_header, v123, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v117);

      v124 = static os_log_type_t.error.getter();
      sub_100005404(v116, &_mh_execute_header, v124, "Encountered an unknown schema version for the %{public}@ database during possible migration, found value %{public}d is less than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 255, 2, inited);

      sub_10063DF98(inited, "Encountered an unknown schema version for the %{public}@ database during possible migration, found value %{public}d is less than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.");
      type metadata accessor for __VaListBuilder();
      v74 = swift_allocObject();
      v74[2] = 8;
      v74[3] = 0;
      v81 = (v74 + 3);
      v74[4] = 0;
      v74[5] = 0;
      v125 = *(inited + 16);
      if (!v125)
      {
LABEL_125:
        v168 = __VaListBuilder.va_list()();
        StaticString.description.getter("_openDatabase()", 15, 2);
        v165 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
        v166 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Encountered an unknown schema version for the %{public}@ database during possible migration, found value %{public}d is less than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 255, 2);
        v167 = String._bridgeToObjectiveC()();

        [v175 handleFailureInFunction:v165 file:v166 lineNumber:256 isFatal:1 format:v167 args:v168];
        goto LABEL_126;
      }

      v43 = 0;
      while (2)
      {
        v126 = &v177[5 * v43];
        v44 = v126[3];
        v84 = v126[4];
        sub_100020E58(v126, v44);
        v127 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v128 = *v81;
        v129 = *(v127 + 16);
        v100 = __OFADD__(*v81, v129);
        v130 = *v81 + v129;
        if (v100)
        {
          goto LABEL_111;
        }

        v84 = v127;
        inited = v74[4];
        if (inited >= v130)
        {
LABEL_76:
          v52 = v74[5];
        }

        else
        {
          if (inited + 0x4000000000000000 < 0)
          {
            goto LABEL_114;
          }

          v44 = v74[5];
          if (2 * inited > v130)
          {
            v130 = 2 * inited;
          }

          v74[4] = v130;
          if ((v130 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_115;
          }

          v52 = swift_slowAlloc();
          v74[5] = v52;
          if (v44)
          {
            if (v52 != v44 || v52 >= v44 + 8 * v128)
            {
              memmove(v52, v44, 8 * v128);
            }

            inited = v74;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_76;
          }
        }

        if (!v52)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v164 = __VaListBuilder.va_list()();
          StaticString.description.getter("_openDatabase()", 15, 2);
          v165 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v166 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Encountered an error while attempting to open the %{public}@ database: unable to fetch schema version. Error: %{public}@ %@", 123, 2);
          v167 = String._bridgeToObjectiveC()();

          [v175 handleFailureInFunction:v165 file:v166 lineNumber:258 isFatal:1 format:v167 args:v164];
LABEL_126:

          goto LABEL_127;
        }

        v132 = v84[2];
        if (!v132)
        {
LABEL_61:

          if (++v43 == v125)
          {
            goto LABEL_125;
          }

          continue;
        }

        break;
      }

      v133 = v84 + 4;
      v134 = *v81;
      while (1)
      {
        v135 = *v133++;
        *(v52 + v134) = v135;
        v134 = *v81 + 1;
        if (__OFADD__(*v81, 1))
        {
          break;
        }

        *v81 = v134;
        if (!--v132)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
LABEL_84:
      v177 = v52;
      v136 = objc_opt_self();

      v174 = v136;
      LODWORD(v176) = [v136 _atomicIncrementAssertCount];
      v179[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(v44, v179, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d for %{public}@ database", 142, 2u);
      StaticString.description.getter("_openDatabase()", 15, 2);
      v175 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v137 = String._bridgeToObjectiveC()();

      v138 = [v137 lastPathComponent];

      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v139;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_121;
      }

LABEL_85:
      v140 = static OS_os_log.crlAssert;
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10146CA70;
      *(v141 + 56) = &type metadata for Int32;
      *(v141 + 64) = &protocol witness table for Int32;
      *(v141 + 32) = v176;
      v142 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v141 + 96) = v142;
      v143 = sub_1005CF04C();
      v144 = v175;
      *(v141 + 72) = v175;
      v145 = v177;
      *(v141 + 136) = inited;
      *(v141 + 144) = v145;
      *(v141 + 104) = v143;
      *(v141 + 112) = v95;
      *(v141 + 120) = v74;
      *(v141 + 176) = &type metadata for UInt;
      *(v141 + 184) = &protocol witness table for UInt;
      *(v141 + 152) = 269;
      v146 = v179[0];
      *(v141 + 216) = v142;
      *(v141 + 224) = v143;
      *(v141 + 192) = v146;
      v147 = v144;
      v148 = v146;
      v149 = static os_log_type_t.error.getter();
      sub_100005404(v140, &_mh_execute_header, v149, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v141);

      v150 = static os_log_type_t.error.getter();
      sub_100005404(v140, &_mh_execute_header, v150, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d for %{public}@ database", 142, 2, v44);

      sub_10063DF98(v44, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d for %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v84 = swift_allocObject();
      v84[2] = 8;
      v84[3] = 0;
      v151 = v84 + 3;
      v84[4] = 0;
      v84[5] = 0;
      v177 = *(v44 + 16);
      if (!v177)
      {
        while (1)
        {
LABEL_128:
          v171 = __VaListBuilder.va_list()();
          StaticString.description.getter("_openDatabase()", 15, 2);
          v172 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v173 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d for %{public}@ database", 142, 2);
          v167 = String._bridgeToObjectiveC()();

          [v174 handleFailureInFunction:v172 file:v173 lineNumber:269 isFatal:1 format:v167 args:v171];

LABEL_127:
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v169, v170);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v44 = 0;
      while (2)
      {
        v152 = (v43 + 40 * v44);
        v74 = v152[3];
        v81 = v152[4];
        sub_100020E58(v152, v74);
        v153 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v154 = *v151;
        v155 = *(v153 + 16);
        v100 = __OFADD__(*v151, v155);
        v156 = *v151 + v155;
        if (v100)
        {
          goto LABEL_116;
        }

        v81 = v153;
        v157 = v84[4];
        if (v157 >= v156)
        {
LABEL_102:
          v158 = v84[5];
        }

        else
        {
          if (v157 + 0x4000000000000000 < 0)
          {
            goto LABEL_117;
          }

          v74 = v84[5];
          if (2 * v157 > v156)
          {
            v156 = 2 * v157;
          }

          v84[4] = v156;
          if ((v156 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_118;
          }

          v158 = swift_slowAlloc();
          v84[5] = v158;
          if (v74)
          {
            if (v158 != v74 || v158 >= &v74[v154])
            {
              memmove(v158, v74, 8 * v154);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_102;
          }
        }

        if (!v158)
        {
          goto LABEL_123;
        }

        v160 = *(v81 + 16);
        if (!v160)
        {
LABEL_87:

          if (++v44 == v177)
          {
            goto LABEL_128;
          }

          continue;
        }

        break;
      }

      v161 = (v81 + 32);
      v162 = *v151;
      while (1)
      {
        v163 = *v161++;
        v158[v162] = v163;
        v162 = *v151 + 1;
        if (__OFADD__(*v151, 1))
        {
          break;
        }

        *v151 = v162;
        if (!--v160)
        {
          goto LABEL_87;
        }
      }

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
      swift_once();
    }
  }

  sub_10001C924(v10, 0xD000000000000019, 0x80000001015854C0);
  v32 = v177[4];
  v33 = static os_log_type_t.info.getter();
  sub_100005404(v32, &_mh_execute_header, v33, "Going to migrate schema version if necessary", 44, 2, _swiftEmptyArrayStorage);
  v34 = v175;
  v35 = sub_10001D824();
  v10 = v34;
  if (v34)
  {
    goto LABEL_26;
  }

  v36 = 0;
  v37 = 1;
  v38 = v177;
  v39 = &byte_101872E79;
  do
  {
    v40 = *v39++;
    v36 |= v40;
    --v37;
  }

  while (v37);
  if ((v36 ^ v35))
  {
    sub_100A76F6C(v35 & 1);
    v41 = sub_10001D824();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_10146C4D0;
    *(v42 + 32) = v41 & 1;
    v43 = v42 + 32;
    *(v42 + 56) = &type metadata for Int;
    *(v42 + 64) = &protocol witness table for Int;
    v44 = v42;
    v45 = 0;
    v46 = 1;
    v47 = &byte_101872EC9;
    do
    {
      v48 = *v47++;
      v45 |= v48;
      --v46;
    }

    while (v46);
    *(v42 + 96) = &type metadata for Int;
    *(v42 + 104) = &protocol witness table for Int;
    *(v42 + 72) = v45 & 1;
    v49 = v38[5];
    v50 = v38[6];
    inited = &type metadata for String;
    *(v42 + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(v44 + 144) = v52;
    *(v44 + 112) = v49;
    *(v44 + 120) = v50;
    v53 = 0;
    v54 = 1;
    v55 = &byte_101872EF1;
    do
    {
      v56 = *v55++;
      v53 |= v56;
      --v54;
    }

    while (v54);
    if ((v53 ^ v41))
    {
      goto LABEL_84;
    }

    swift_setDeallocating();

    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    return swift_arrayDestroy();
  }

  else
  {
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10146C6B0;
    v58 = 0;
    v59 = 1;
    v60 = &byte_101872EA1;
    do
    {
      v61 = *v60++;
      v58 |= v61;
      --v59;
    }

    while (v59);
    *(v57 + 56) = &type metadata for Int;
    *(v57 + 64) = &protocol witness table for Int;
    *(v57 + 32) = v58 & 1;
    v62 = (v57 + 32);
    v63 = v57;
    v64 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v64, "No need to migrate database schema, already on latest version %{public}d", 72, 2, v63);
    swift_setDeallocating();
    sub_100005070(v62);
    return swift_deallocClassInstance();
  }
}