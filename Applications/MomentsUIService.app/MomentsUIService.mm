void sub_100005B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1000075A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsUIService", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10000B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v6, static MOAngelLogger.shared);
    (*(v7 + 16))(v9, v10, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Can't set user's dir suffix path.", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }

  domainDirectoryPath.value._countAndFlagsBits = closure #1 in ();
  domainDirectoryPath.value._object = v14;
  type metadata accessor for MomentsUIManager();
  closure #2 in (v5);
  static MomentsUIManager.cloudSyncStateURL.setter();
  closure #3 in (v5);
  static MomentsUIManager.cloudDeviceDBURL.setter();
  closure #4 in (v5);
  static MomentsUIManager.cloudSuggestionsStateURL.setter();
  closure #5 in (v5);
  static MomentsUIManager.suggestionsDBURL.setter();
  closure #6 in (v5);
  static MomentsUIManager.cloudSyncDBURL.setter();
  static MomentsUIManager.isOnboarded.setter();
  static MomentsUIManager.onboardingFlowStatus.setter();
  momentsUIManager = static MomentsUIManager.shared.getter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = *((swift_isaMask & *static MOPresenterServer.shared) + 0xC8);
  v16 = static MOPresenterServer.shared;
  v15();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = *((swift_isaMask & *static MOProcessingServer.shared) + 0xD8);
  v18 = static MOProcessingServer.shared;
  v17();

  v19 = static CommandLine.argc.getter();
  v20 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIApplication, UIApplication_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MOAppDelegate();
  v23 = swift_getObjCClassFromMetadata();
  v24 = NSStringFromClass(v23);
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v19, v20, v22, v24);

  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in ()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v1 + 16))
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v3 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t closure #2 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #3 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #4 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #5 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #6 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

BOOL closure #7 in ()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 1;
  if (v1 == 1)
  {
    return (OnboardingType.needsOnboarding.getter(result) & 1) == 0;
  }

  if (!v1)
  {
    LOBYTE(result) = 0;
    return (OnboardingType.needsOnboarding.getter(result) & 1) == 0;
  }

  __break(1u);
  return result;
}

void closure #8 in ()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = 0;
LABEL_5:
    OnboardingType.onboardingFlowStatus.getter(v2);
    return;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id variable initialization expression of MOSuggestionPickerPrivacyBadge.iconView()
{
  v0 = CGRectMake();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView());

  return [v7 initWithFrame:{v0, v2, v4, v6}];
}

id variable initialization expression of MOSuggestionSheetOverflowView.overflowCountLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v0 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v0 setFont:static MOSuggestionSheetOverflowView.font];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id variable initialization expression of MOSuggestionSheetInterstitialView.stackView()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setAlignment:3];
  [v0 setSpacing:3.0];
  return v0;
}

id variable initialization expression of MOSuggestionCutoutView.fillLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

id default argument 1 of MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)()
{
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  v0 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];

  return v0;
}

id default argument 0 of WorkoutLocationAnnotationView.init(annotation:type:tileSize:)()
{
  v0 = objc_allocWithZone(MKPointAnnotation);

  return [v0 init];
}

id variable initialization expression of MOSuggestionAssetActivityRingsProvider.summary()
{
  v0 = objc_allocWithZone(HKActivitySummary);

  return [v0 init];
}

id variable initialization expression of MOSuggestionAssetActivityRingsProvider.timeRangePredicate()
{
  v0 = objc_allocWithZone(NSPredicate);

  return [v0 init];
}

id default argument 3 of UIImage.composedOf(with:rects:targetSize:backgroundColor:)()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

uint64_t variable initialization expression of MOSuggestionAssetMapSnapshotProvider.snapshotProcessingQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetMapSnapshotProvider.mapService()
{
  v0 = objc_allocWithZone(GEOMapService);

  return [v0 init];
}

id variable initialization expression of MOSuggestionActivityRouteAssetView.labelStack()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setDistribution:4];
  [v0 setAlignment:1];
  [v0 setSpacing:2.0];
  return v0;
}

id variable initialization expression of ReflectionPromptView.shuffleButton()
{
  v0 = objc_allocWithZone(UIButton);

  return [v0 init];
}

id variable initialization expression of ReflectionPromptView.blurredEffectView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of ReflectionPromptView.accentColor()
{
  v0 = [objc_opt_self() systemWhiteColor];

  return v0;
}

_BYTE *variable initialization expression of MOSuggestionSheetAssetGridView.addedView(char a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = a1;
  v3 = v2;
  [v3 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  return v3;
}

id variable initialization expression of MOSuggestionCollectionViewListCell.assetContainerView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 layer];
  [v2 setMaskedCorners:1];

  [v0 setClipsToBounds:1];
  return v0;
}

id variable initialization expression of MOSuggestionCollectionViewListCell.stackView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:a1];
  [v6 setAlignment:a2];
  [v6 setDistribution:a3];
  return v6;
}

uint64_t variable initialization expression of MOWeakArray.references(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MOWeakReference(0, a1, a3, a4);

  return static Array._allocateUninitialized(_:)();
}

id variable initialization expression of MOSuggestionAssetPhotoLivePhotoVideosProvider.imageManager()
{
  v0 = objc_allocWithZone(PHCachingImageManager);

  return [v0 init];
}

uint64_t variable initialization expression of MOSuggestionAssetPhotoLivePhotoVideosProvider.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetWorkoutProvider.healthStore()
{
  v0 = objc_allocWithZone(HKHealthStore);

  return [v0 init];
}

double variable initialization expression of MOSuggestionTipCoordinator.privacyTip@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of MOSuggestionInterstitialCarouselView.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionStateOfMindAssetView.labelStack()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setSpacing:1.0];
  [v0 setAlignment:1];
  return v0;
}

id variable initialization expression of MOAssetPhotoMomentProvider.imageManager()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id variable initialization expression of MOSuggestionActivityRingsAssetView.labelStackView()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setSpacing:2.0];
  [v0 setAlignment:1];
  [v0 setDistribution:3];
  return v0;
}

double variable initialization expression of MOSuggestionSheetImage.squareCrop@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of MOSuggestionCollectionView.onboardingManager()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOSuggestionCollectionView.privacyBadge()
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v3 = objc_allocWithZone(type metadata accessor for MOSuggestionPickerPrivacyBadge());

  return [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
}

id variable initialization expression of MOSuggestionCollectionView.refresher()
{
  v0 = objc_allocWithZone(UIRefreshControl);

  return [v0 init];
}

id variable initialization expression of MOSuggestionSheetInterstitialView.scrollView(Class *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(*a1) init];
  [v3 *a2];
  return v3;
}

id variable initialization expression of MOSuggestionInterstitialAlertContentViewController.textView()
{
  v0 = objc_allocWithZone(UITextView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.basePOICircleView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.clusterCountLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.borderBackgroundView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of MOAngelControllerWrapper.serverManager()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOAngelControllerWrapper.engagementWriter()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOSuggestionSheetFilterCollectionView.layout()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v0 setScrollDirection:1];
  [v0 setMinimumInteritemSpacing:12.0];
  return v0;
}

uint64_t variable initialization expression of MOSuggestionSheetFilterCollectionView.filterViewModel()
{
  type metadata accessor for MOSuggestionSheetFilterCollectionViewModel();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of MOSuggestionCollectionViewModel.currentFetchSignpostState@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t variable initialization expression of MOSuggestionInterstitialExpandableListView.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.muteButtonConfig()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  v1 = [objc_opt_self() configurationWithFont:v0];

  return v1;
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.unMutedImage()
{
  return variable initialization expression of MOSuggestionSheetVideoPlaybackView.unMutedImage();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  return v1;
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.mutedImage()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  return v1;
}

uint64_t variable initialization expression of MOProcessingServer.processorManager()
{
  type metadata accessor for TaskProcessorManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v0 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  return v0;
}

id default argument 3 of MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id variable initialization expression of MOEventBundleStore.promptManager()
{
  v0 = objc_allocWithZone(MOPromptManager);

  return [v0 init];
}

id variable initialization expression of CanvasAssetAccessoryView.keyColor()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id variable initialization expression of MOSuggestionCarouselView.pageControl()
{
  v0 = objc_allocWithZone(UIPageControl);

  return [v0 init];
}

id variable initialization expression of MOSuggestionMotionAssetView.motionBackground()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 systemWhiteColor];

  return v4;
}

id variable initialization expression of MOSuggestionMotionAssetView.workoutDataLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  [v0 setTextAlignment:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  return v0;
}

id variable initialization expression of MOMusicPlaybackCoordinator.mediaPlayer()
{
  v0 = [objc_opt_self() systemMusicPlayer];

  return v0;
}

id variable initialization expression of MOSuggestionAssetAppIconProvider.defaultDescriptor()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = objc_allocWithZone(ISImageDescriptor);

  return [v3 initWithSize:350.0 scale:{350.0, v2}];
}

id variable initialization expression of MOLocationShifter.shifter()
{
  v0 = objc_allocWithZone(GEOLocationShifter);

  return [v0 init];
}

uint64_t variable initialization expression of MOLocationShifter.processingQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.config(SEL *a1, double a2)
{
  v3 = [objc_opt_self() *a1];
  v4 = objc_opt_self();
  v5 = [v4 configurationWithHierarchicalColor:v3];

  v6 = [objc_opt_self() systemFontOfSize:a2];
  v7 = [v4 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  return v8;
}

id variable initialization expression of MOCircularProgressIndicatorView.borderPath()
{
  v0 = objc_allocWithZone(UIBezierPath);

  return [v0 init];
}

uint64_t variable initialization expression of MOPresenterServer.session()
{
  type metadata accessor for MOBundleProcessingSession();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 112) = static SuggestionNotificationManager.shared;
  *(v0 + 120) = 0;
  v2 = v1;
  return v0;
}

id variable initialization expression of MOPresenterServer.lock()
{
  v0 = objc_allocWithZone(NSRecursiveLock);

  return [v0 init];
}

id variable initialization expression of MOSuggestionActivityRouteAssetView.distanceBlue(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4];

  if (v6)
  {
    return v6;
  }

  v8 = [v5 *a3];

  return v8;
}

id variable initialization expression of MOSuggestionSheetInterstitialView.labelStackView(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:a1];
  [v4 setAlignment:a2];
  return v4;
}

id variable initialization expression of MOSuggestionPickerBadgeIconView.suggestionsImageView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of MOSuggestionPickerBadgeIconView.privacyImageView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

double variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.newEntryDelegate@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of MOPresenterServerWindow.viewController(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.checkmarkView(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(a1(0));

  return [v9 initWithFrame:{a2, a3, a4, a5}];
}

id variable initialization expression of MOSuggestionSheetMediaAssetView.labelStackView()
{
  v0 = objc_allocWithZone(UIStackView);

  return [v0 init];
}

id variable initialization expression of MOSuggestionMapSnapshotView.platterBlurView(uint64_t a1)
{
  v1 = [objc_opt_self() effectWithStyle:a1];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.platterView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v0, v2);
  return v0;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.journalButton(char a1)
{
  v2 = type metadata accessor for MOSuggestionSheetJournalButton();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = a1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  return v5;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.assetGridView(uint64_t (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t variable initialization expression of MOSuggestionAssetMediaAlbumArtProvider.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetMediaAlbumArtProvider.configurationManager()
{
  v0 = objc_allocWithZone(MOConfigurationManagerBase);

  return [v0 init];
}

uint64_t variable initialization expression of PresenterServerViewController.currentClient@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of MOSuggestionAssetCacheManager.assetCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

void *variable initialization expression of MOSuggestionAssetCacheManager.photoLivePhotoVideoProvider()
{
  type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider();
  swift_allocObject();
  return MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
}

BOOL _sSo21MOPickerContentOptionVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
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

uint64_t _sSo45UISheetPresentationControllerDetentIdentifieraSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *_sSo26MOOnboardingFlowCompletionVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance BMMomentsEngagementSuggestionType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BMMomentsEngagementSuggestionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BMMomentsEngagementSuggestionType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSetting(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9, a3, a4);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10, a3, a4);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIBackgroundTaskIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *_sSo22UIViewAnimationOptionsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *_sSo22UIViewAnimationOptionsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetsType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType, &protocol conformance descriptor for MOSuggestionAssetsType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType, &protocol conformance descriptor for MOSuggestionAssetsType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionEngagementEvent(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionEngagementEvent and conformance MOSuggestionEngagementEvent, type metadata accessor for MOSuggestionEngagementEvent, &protocol conformance descriptor for MOSuggestionEngagementEvent);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionEngagementEvent and conformance MOSuggestionEngagementEvent, type metadata accessor for MOSuggestionEngagementEvent, &protocol conformance descriptor for MOSuggestionEngagementEvent);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo22UIViewAnimationOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayG0x0fG7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100014394(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOEventBundleSourceType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType, &protocol conformance descriptor for MOEventBundleSourceType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType, &protocol conformance descriptor for MOEventBundleSourceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance GEOPOICategory(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory, &protocol conformance descriptor for GEOPOICategory);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory, &protocol conformance descriptor for GEOPOICategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMetadataKey(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskAction(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction, &protocol conformance descriptor for MOTaskAction);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction, &protocol conformance descriptor for MOTaskAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskWork(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork, &protocol conformance descriptor for MOTaskWork);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork, &protocol conformance descriptor for MOTaskWork);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOWorkoutMotionActivityAction(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOWorkoutMotionActivityAction and conformance MOWorkoutMotionActivityAction, type metadata accessor for MOWorkoutMotionActivityAction, &protocol conformance descriptor for MOWorkoutMotionActivityAction);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOWorkoutMotionActivityAction and conformance MOWorkoutMotionActivityAction, type metadata accessor for MOWorkoutMotionActivityAction, &protocol conformance descriptor for MOWorkoutMotionActivityAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UISheetPresentationControllerDetentIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier, &protocol conformance descriptor for UISheetPresentationControllerDetentIdentifier);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier, &protocol conformance descriptor for UISheetPresentationControllerDetentIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIContextOption(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption, &protocol conformance descriptor for CIContextOption);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption, &protocol conformance descriptor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOMediaPlayMetaDataKeyPlayerMediaType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOMediaPlayMetaDataKeyPlayerMediaType and conformance MOMediaPlayMetaDataKeyPlayerMediaType, type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType, &protocol conformance descriptor for MOMediaPlayMetaDataKeyPlayerMediaType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOMediaPlayMetaDataKeyPlayerMediaType and conformance MOMediaPlayMetaDataKeyPlayerMediaType, type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType, &protocol conformance descriptor for MOMediaPlayMetaDataKeyPlayerMediaType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMotionActivityType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType, &protocol conformance descriptor for MOSuggestionAssetMotionActivityType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType, &protocol conformance descriptor for MOSuggestionAssetMotionActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIBackgroundTaskIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier, &protocol conformance descriptor for UIBackgroundTaskIdentifier);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier, &protocol conformance descriptor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOUsageContextType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType, &protocol conformance descriptor for MOUsageContextType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType, &protocol conformance descriptor for MOUsageContextType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetsType@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey, &protocol conformance descriptor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey, &protocol conformance descriptor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOPhotoResourceType(uint64_t a1)
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOPhotoResourceType and conformance MOPhotoResourceType, type metadata accessor for MOPhotoResourceType, &protocol conformance descriptor for MOPhotoResourceType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOPhotoResourceType and conformance MOPhotoResourceType, type metadata accessor for MOPhotoResourceType, &protocol conformance descriptor for MOPhotoResourceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetsType(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100014394(uint64_t a1)
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

uint64_t type metadata accessor for UIApplication(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _sSo23GEOLocationCoordinate2Dawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo23GEOLocationCoordinate2Dawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

void type metadata accessor for HKWorkoutActivityType(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t MOSuggestionMapSnapshotViewStyle.description.getter(unsigned __int8 a1)
{
  v1 = 0x646C6569466F7774;
  v2 = 0xD000000000000019;
  if (a1 != 4)
  {
    v2 = 0x614C6E6564646968;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD000000000000012;
  if (a1 != 1)
  {
    v3 = 0xD000000000000013;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int UIView.AutolayoutEquivalency.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionMapSnapshotViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionMapSnapshotViewStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t MOSuggestionMapSnapshotView.prominentField.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t MOSuggestionMapSnapshotView.prominentField.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MOSuggestionMapSnapshotView.style.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionMapSnapshotView.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionMapSnapshotView.assignedTileSize.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionMapSnapshotView.assignedTileSize.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MOSuggestionMapSnapshotView.platterBlurView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionMapSnapshotView.platterBlurView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MOSuggestionMapSnapshotView.__allocating_init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a7;
  v9 = a6;
  v15 = objc_allocWithZone(v7);
  return MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(a1, a2, a3, a4, a5, v9, v8);
}

char *MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize] = 11;
  v16 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  v17 = [objc_opt_self() effectWithStyle:11];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v7[v16] = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView;
  *&v7[v19] = [objc_allocWithZone(UILabel) init];
  v20 = a1;
  v21 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  *&v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView] = v21;
  [v21 setContentMode:2];
  swift_beginAccess();
  v22 = v50;
  *v13 = a2;
  v13[1] = v22;

  swift_beginAccess();
  v23 = v52;
  *v14 = v51;
  v14[1] = v23;

  v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style] = v53;
  swift_beginAccess();
  v7[v15] = v54;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27 = type metadata accessor for MOSuggestionMapSnapshotView();
  v61.receiver = v7;
  v61.super_class = v27;
  v28 = objc_msgSendSuper2(&v61, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v29 = &v28[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField];
  swift_beginAccess();
  if (!*(v29 + 1))
  {
    v30 = &v28[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField];
    swift_beginAccess();
    v31 = *(v30 + 1);
    if (v31)
    {
      *v29 = *v30;
      *(v29 + 1) = v31;
    }
  }

  v32 = v28;
  [v32 setIsAccessibilityElement:1];
  v33 = UIAccessibilityTraitImage;
  v34 = [v32 accessibilityTraits];
  if ((v33 & ~v34) != 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  [v32 setAccessibilityTraits:v35 | v34];
  v36 = objc_opt_self();
  v37 = v32;
  v38 = [v36 mainBundle];
  v62._object = 0x80000001002AF5B0;
  v39._countAndFlagsBits = 0x70616E732070614DLL;
  v39._object = 0xEC000000746F6873;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD00000000000002BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v62);

  v41 = String._bridgeToObjectiveC()();

  [v37 setAccessibilityLabel:v41];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:);
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v44 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v45 = v57;
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v58 + 8))(v45, v46);
  (*(v55 + 8))(v12, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002A48B0;
  *(v47 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v47 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v37;
}

void closure #1 in MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong addSubview:*(Strong + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView)];
    v4 = (*((swift_isaMask & *v2) + 0xE8))(v3);
    [v2 addSubview:v4];

    v5 = [v2 addSubview:*(v2 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView)];
    (*((swift_isaMask & *v2) + 0x108))(v5);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

Swift::Void __swiftcall MOSuggestionMapSnapshotView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if ((*((swift_isaMask & *v0) + 0xB8))() != 2)
  {
    if (v2 == 1)
    {
      v3 = 11;
    }

    else
    {
      v3 = 16;
    }

    v4 = (*((swift_isaMask & *v0) + 0xE8))();
    v5 = [objc_opt_self() effectWithStyle:v3];
    [v4 setEffect:v5];
  }
}

uint64_t MOSuggestionMapSnapshotView.applyStyle()()
{
  result = (*((swift_isaMask & *v0) + 0xB8))();
  if (result > 1u)
  {
    if (result == 2)
    {
      result = (*((swift_isaMask & *v0) + 0x88))();
      if (!v17)
      {
        return result;
      }

      MOSuggestionMapSnapshotView.addGradient()();
      MOSuggestionMapSnapshotView.addFullWidthGradientLabel(text:)();
      goto LABEL_19;
    }

    if (result != 4)
    {
      return result;
    }

    result = (*((swift_isaMask & *v0) + 0x88))();
    if (!v3)
    {
      return result;
    }

    v4 = result;
    v5 = v3;
    v6 = (*((swift_isaMask & *v0) + 0xA0))();
    MOSuggestionMapSnapshotView.addCarouselCenteredLabels(prominentField:secondaryField:)(v4, v5, v6, v7);
    goto LABEL_13;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    result = (*((swift_isaMask & *v0) + 0x88))();
    if (!v2)
    {
      return result;
    }

    goto LABEL_18;
  }

  v8 = *((swift_isaMask & *v0) + 0x88);
  v9 = v8();
  if (!v10)
  {
LABEL_17:
    result = (v8)(v9);
    if (!v18)
    {
      return result;
    }

LABEL_18:
    MOSuggestionMapSnapshotView.addPlatter()();
    MOSuggestionMapSnapshotView.addFullWidthProminentLabel(text:)();
    goto LABEL_19;
  }

  v11 = v10;
  v12 = v9;
  v13 = (*((swift_isaMask & *v0) + 0xA0))();
  if (!v14)
  {

    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  MOSuggestionMapSnapshotView.addPlatter()();
  MOSuggestionMapSnapshotView.addProminentAndSecondaryLabel(prominentField:secondaryField:)(v12, v11, v15, v16);
LABEL_13:

LABEL_19:
}

void MOSuggestionMapSnapshotView.platterFrame.getter()
{
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetHeight(v4);
  [v0 bounds];
  CGRectGetHeight(v5);
  [v0 bounds];
  CGRectGetWidth(v6);
  [v0 bounds];
  CGRectGetHeight(v7);
  [v0 bounds];
  CGRectGetHeight(v8);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.platterLabelFrame.getter()
{
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetHeight(v4);
  [v0 bounds];
  CGRectGetHeight(v5);
  [v0 bounds];
  CGRectGetWidth(v6);
  [v0 bounds];
  CGRectGetHeight(v7);
  [v0 bounds];
  CGRectGetHeight(v8);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.gradientFrameLabel.getter()
{
  (*((swift_isaMask & *v0) + 0xD0))();
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetWidth(v4);
  [v0 bounds];
  CGRectGetHeight(v5);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.addGradient()()
{
  v42 = *((swift_isaMask & *v0) + 0xE8);
  v1 = v42();
  [v0 bounds];
  CGRectGetHeight(v45);
  [v0 bounds];
  CGRectGetHeight(v46);
  [v0 bounds];
  CGRectGetWidth(v47);
  [v0 bounds];
  CGRectGetHeight(v48);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v1 setFrame:?];

  v2 = [objc_allocWithZone(CAGradientLayer) init];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v2 setStartPoint:{0.5, v3}];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v2 setEndPoint:{0.5, v4}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48C0;
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  v8 = [v7 CGColor];

  type metadata accessor for CGColorRef(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [v6 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.85];

  v13 = [v12 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v13;
  v14 = [v6 whiteColor];
  v15 = [v14 colorWithAlphaComponent:1.0];

  v16 = [v15 CGColor];
  *(v5 + 120) = v10;
  *(v5 + 96) = v16;
  v17 = [v6 whiteColor];
  v18 = [v17 colorWithAlphaComponent:1.0];

  v19 = [v18 CGColor];
  *(v5 + 152) = v10;
  *(v5 + 128) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002A48D0;
  *(v21 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
  *(v21 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:0.5];
  *(v21 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:0.65];
  *(v21 + 56) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v22];

  v23 = v2;
  v24 = v42();
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = (v42)([v23 setFrame:{v26, v28, v30, v32}]);
  v34 = [v33 layer];

  [v34 setMask:v23];
  v35 = v42();
  v36 = [v35 layer];

  [v36 setMasksToBounds:1];
  v37 = v42();
  v38 = objc_opt_self();
  v39 = [objc_opt_self() mainScreen];
  [v39 scale];
  v41 = v40;

  v43 = [v38 _effectWithBlurRadius:8.0 scale:v41];
  [v37 setEffect:v43];
}

id MOSuggestionMapSnapshotView.addFullWidthGradientLabel(text:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.gradientFrameLabel.getter();
  [v1 setFrame:?];
  [v1 setTextAlignment:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor:v3];

  v4 = (*((swift_isaMask & *v0) + 0xD0))();
  v5 = objc_opt_self();
  if (v4 == 4)
  {
    v6 = [v5 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  }

  else
  {
    v6 = [v5 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  }

  v7 = [v6 fontDescriptorWithSymbolicTraits:32770];

  if (v7)
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    v8 = 0;
  }

  [v1 setFont:v8];

  return [v1 setNumberOfLines:2];
}

void MOSuggestionMapSnapshotView.addFullWidthProminentLabel(text:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.platterLabelFrame.getter();
  [v1 setFrame:?];
  [v1 setTextAlignment:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor:v3];

  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (v7)
  {
    v8 = [v4 fontWithDescriptor:v7 size:0.0];

    [v1 setFont:v8];
  }

  else
  {
    __break(1u);
  }
}

void MOSuggestionMapSnapshotView.addProminentAndSecondaryLabel(prominentField:secondaryField:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.platterLabelFrame.getter();
  [v7 setFrame:?];
  [v7 setTextAlignment:1];

  v8._countAndFlagsBits = 0x20A280E220;
  v8._object = 0xA500000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);

  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();

  v28 = [v10 initWithString:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v13 = objc_opt_self();
  v27 = NSFontAttributeName;
  v14 = [v13 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v15 = [v14 fontDescriptor];
  v16 = [v15 fontDescriptorWithSymbolicTraits:2];

  if (v16)
  {
    v17 = [v13 fontWithDescriptor:v16 size:0.0];

    v18 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont, UIFont_ptr);
    *(inited + 64) = v18;
    *(inited + 40) = v17;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v28 addAttributes:isa range:{0, String.count.getter()}];

    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1002A48B0;
    *(v20 + 32) = v27;
    v21 = [v13 preferredFontForTextStyle:UIFontTextStyleFootnote];
    *(v20 + 64) = v18;
    *(v20 + 40) = v21;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v20);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(v20 + 32);
    v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = String.count.getter();
    v24 = String.count.getter();
    v25 = String.count.getter();
    if (!__OFADD__(v24, v25))
    {
      [v28 addAttributes:v22.super.isa range:{v23, v24 + v25}];

      [v7 setAttributedText:v28];
      v26 = [objc_opt_self() secondaryLabelColor];
      [v7 setTextColor:v26];

      [v7 setAdjustsFontSizeToFitWidth:1];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void MOSuggestionMapSnapshotView.addCarouselCenteredLabels(prominentField:secondaryField:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  [v9 setTextAlignment:1];
  v69 = a4;
  if (!a4 || a3 == a1 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 10;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithString:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v16 = objc_opt_self();
  v67 = NSFontAttributeName;
  v68 = v16;
  v17 = [v16 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v19 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont, UIFont_ptr);
  *(inited + 64) = v19;
  *(inited + 40) = isa;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 addAttributes:v20 range:{0, String.count.getter()}];

  if (!v69 || a3 == a1 && a2 == v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1002A48B0;
  *(v21 + 32) = v67;
  v22 = v67;
  v23 = [v68 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  *(v21 + 64) = v19;
  *(v21 + 40) = v23;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v21);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(v21 + 32);
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = String.count.getter();
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v27 = String.count.getter();
  v28 = String.count.getter();
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v29, 1))
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v14 addAttributes:v24.super.isa range:{v26, v29 - 1}];

LABEL_16:
  [v9 setAttributedText:v14];
  v30 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor:v30];

  [v9 setNumberOfLines:2];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v70 frame];
  [v9 setPreferredMaxLayoutWidth:CGRectGetWidth(v71) + -64.0];
  v31 = [v9 heightAnchor];
  [v70 bounds];
  v32 = [v31 constraintLessThanOrEqualToConstant:CGRectGetHeight(v72) / 5.0];

  [v32 setActive:1];
  v33 = [v9 superview];
  if (v33)
  {
    v34 = v33;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v9 bottomAnchor];
    v36 = [v34 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    if (v37)
    {
      [v37 setConstant:-16.0];
      [v37 setActive:1];
    }
  }

  v38 = [v9 superview];
  if (v38)
  {
    v39 = v38;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v9 centerXAnchor];
    v41 = [v39 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    [v42 setConstant:0.0];
    [v42 setActive:1];
  }

  v43 = *((swift_isaMask & *v70) + 0xE8);
  v44 = v43();
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = v43();
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v45 leadingAnchor];
  v47 = [v9 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-16.0];

  [v48 setActive:1];
  v49 = v43();
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [v49 trailingAnchor];
  v51 = [v9 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:16.0];

  [v52 setActive:1];
  v53 = v43();
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [v53 topAnchor];
  v55 = [v9 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-8.0];

  [v56 setActive:1];
  v57 = v43();
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v57 bottomAnchor];
  v59 = [v9 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:8.0];

  [v60 setActive:1];
  v61 = v43();
  v62 = [v61 layer];

  [v62 setCornerRadius:8.0];
  v63 = v43();
  v64 = [v63 layer];

  LODWORD(v65) = 1065017672;
  [v64 setOpacity:v65];

  v66 = v43();
  [v66 setClipsToBounds:1];
}

void MOSuggestionMapSnapshotView.addPlatter()()
{
  v1 = *((swift_isaMask & *v0) + 0xE8);
  v2 = v1();
  MOSuggestionMapSnapshotView.platterFrame.getter();
  [v2 setFrame:?];

  v3 = v1();
  v4 = [v3 layer];

  [v0 bounds];
  [v4 setCornerRadius:CGRectGetHeight(v10) / 5.0 / 6.0];

  v5 = v1();
  v6 = [v5 layer];

  LODWORD(v7) = 1065017672;
  [v6 setOpacity:v7];

  v8 = v1();
  [v8 setClipsToBounds:1];
}

Swift::Void __swiftcall MOSuggestionMapSnapshotView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MOSuggestionMapSnapshotView();
  v16.receiver = v0;
  v16.super_class = v10;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView];
  [v1 bounds];
  [v11 setFrame:?];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionMapSnapshotView.layoutSubviews();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void closure #1 in MOSuggestionMapSnapshotView.layoutSubviews()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MOSuggestionMapSnapshotView.applyStyle()();
  }
}

id MOSuggestionMapSnapshotView.__deallocating_deinit()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView] setImage:0];
  v2 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  [*&v1[v2] setEffect:0];
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static MOAngelLogger.memory);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MOSuggestionMapSnapshotView] de-init", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MOSuggestionMapSnapshotView();
  return objc_msgSendSuper2(&v8, "dealloc");
}

id MOSuggestionInterstitialSupplementaryCheckmarkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MOSuggestionInterstitialSupplementaryCheckmarkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_1000196F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

void specialized MOSuggestionMapSnapshotView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize) = 11;
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  v4 = [objc_opt_self() effectWithStyle:11];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v0 + v3) = v5;
  v6 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle()
{
  result = lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle;
  if (!lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle);
  }

  return result;
}

uint64_t sub_100019920@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001997C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x90);

  return v4(v2, v3);
}

uint64_t sub_1000199F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100019A50(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t sub_100019AC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_100019B7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_100019C30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionMapSnapshotViewStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MOSuggestionMapSnapshotViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized Sequence.forEach(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      specialized Set._Variant.insert(_:)(&v6, v4);
      v5 = v6;

      --v1;
    }

    while (v1);
  }
}

void *specialized static MOBundleProcessingSession.settingToSourceTypeMapping.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtGMd, &_ss23_ContiguousArrayStorageCySo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A49F0;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMd, &_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002A48B0;
  v28 = MOEventBundleSourceTypeActivity;
  *(v1 + 32) = MOEventBundleSourceTypeActivity;
  *(inited + 40) = v1;
  *(inited + 48) = 2;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002A4A00;
  v3 = MOEventBundleSourceTypeMedia;
  v4 = MOEventBundleSourceTypeThirdPartyMedia;
  *(v2 + 32) = MOEventBundleSourceTypeMedia;
  *(v2 + 40) = v4;
  *(inited + 56) = v2;
  *(inited + 64) = 3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48B0;
  v6 = MOEventBundleSourceTypeContact;
  *(v5 + 32) = MOEventBundleSourceTypeContact;
  *(inited + 72) = v5;
  *(inited + 80) = 4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002A48B0;
  v8 = MOEventBundleSourceTypePhoto;
  *(v7 + 32) = MOEventBundleSourceTypePhoto;
  *(inited + 88) = v7;
  *(inited + 96) = 5;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002A48B0;
  v10 = MOEventBundleSourceTypeVisitLocation;
  *(v9 + 32) = MOEventBundleSourceTypeVisitLocation;
  *(inited + 104) = v9;
  *(inited + 112) = 6;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002A48B0;
  v12 = MOEventBundleSourceTypePeopleContext;
  *(v11 + 32) = MOEventBundleSourceTypePeopleContext;
  *(inited + 120) = v11;
  *(inited + 128) = 9;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002A48B0;
  v14 = MOEventBundleSourceTypeStateOfMind;
  *(v13 + 32) = MOEventBundleSourceTypeStateOfMind;
  *(inited + 136) = v13;
  *(inited + 144) = 10;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002A48B0;
  v16 = MOEventBundleSourceTypeReflectionPrompt;
  *(v15 + 32) = MOEventBundleSourceTypeReflectionPrompt;
  *(inited + 152) = v15;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v18 = v28;
  v19 = v3;
  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtMd, &_sSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtMR);
  swift_arrayDestroy();
  return v17;
}

_BYTE *specialized MOBundleProcessingSession.allowedSourceTypes.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  result = specialized static MOBundleProcessingSession.settingToSourceTypeMapping.getter();
  v2 = result;
  v3 = 0;
  v4 = 1 << result[32];
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = result + 64;
  v7 = v5 & *(result + 8);
  v8 = (v4 + 63) >> 6;
  while (v7)
  {
LABEL_10:
    v10 = (v3 << 9) | (8 * __clz(__rbit64(v7)));
    v11 = *(*(v2 + 6) + v10);
    v12 = *(*(v2 + 7) + v10);

    if ([v0 getStateForSetting:v11])
    {
      specialized Sequence.forEach(_:)(v12);
    }

    v7 &= v7 - 1;
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

      return &_swiftEmptySetSingleton;
    }

    v7 = *&v6[8 * v9];
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.artistName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster;
  if (!type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.getter()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);

  return swift_unknownObjectRetain();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 36);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.confidence.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 44));

  return v1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isWork.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isScaledDownPOI.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.horizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t static MOSuggestionAssetMapsClusterer.Cluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);

  return static UUID.== infix(_:_:)();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.hash(into:)(uint64_t a1)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MOSuggestionAssetMapsClusterer.Cluster.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.init(coordinates:distance:count:chain:id:geoMapItem:confidence:title:isWork:isScaledDownPOI:horizontalUncertainty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char a15)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v24 = v23[8];
  v25 = type metadata accessor for UUID();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  *(a9 + v23[9]) = a5;
  *(a9 + v23[10]) = a13;
  v27 = (a9 + v23[11]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v23[12]) = a8;
  *(a9 + v23[13]) = a15;
  *(a9 + v23[14]) = a14;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMapsClusterer.Cluster()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double *MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(unint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v9 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
  v10 = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v11 = type metadata accessor for MOSuggestionAssetMapsClusterer();
  v29.receiver = v2;
  v29.super_class = v11;
  v12 = objc_msgSendSuper2(&v29, "init");
  v28 = 0;
  v13 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v27 = v10;
      v15 = v12;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        break;
      }

      v22 = v12;
      v12 = 0;
      v17 = v27;
      v18 = v13;
      v24 = v13;
      v25 = v13 & 0xC000000000000001;
      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      v13 = v14;
      while (1)
      {
        v10 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v25)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v23 + 16))
          {
            goto LABEL_15;
          }

          v19 = *(v18 + 8 * v12 + 32);
        }

        v26 = v19;
        closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(&v26, &v28, v8);

        v27 = v17;
        v9 = *(v17 + 2);
        v20 = *(v17 + 3);
        if (v9 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v9 + 1, 1);
          v17 = v27;
        }

        *(v17 + 2) = v9 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v8, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9);
        ++v12;
        v18 = v24;
        if (v10 == v14)
        {

          v9 = 0x100334000;
          v12 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v21 = v12;

    v17 = _swiftEmptyArrayStorage;
LABEL_18:
    *(v12 + *(v9 + 808)) = v17;

    return v12;
  }

  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(**a1 + 240))();
  v7 = (*(*v5 + 264))();
  v8 = *(*v5 + 312);
  v9 = v8();
  if (v10)
  {
    v25 = 1;
  }

  else
  {
    result = (v8)(v9);
    if (v12)
    {
      goto LABEL_8;
    }

    v25 = result;
  }

  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v13;
  v14._countAndFlagsBits = 95;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = a2;
  v16 = (*(*v5 + 288))();
  v17 = (*(*v5 + 360))();
  v18 = (*(*v5 + 336))();
  v20 = v19;
  v21 = (*(*v5 + 384))();
  v22 = (*(*v5 + 456))();
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  result = UUID.init()();
  *a3 = v6;
  a3[1] = v7;
  a3[2] = 0.0;
  *(a3 + 3) = v25;
  *(a3 + 4) = v26;
  *(a3 + 5) = v27;
  *(a3 + v23[9]) = v16;
  *(a3 + v23[10]) = v17;
  v24 = (a3 + v23[11]);
  *v24 = v18;
  v24[1] = v20;
  *(a3 + v23[12]) = v21 & 1;
  *(a3 + v23[13]) = 0;
  *(a3 + v23[14]) = v22;
  if (!__OFADD__(*v15, 1))
  {
    ++*v15;
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v94 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v93 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v92 = &v79 - v6;
  v7 = __chkstk_darwin(v5);
  v91 = &v79 - v8;
  v9 = __chkstk_darwin(v7);
  v88 = &v79 - v10;
  v11 = __chkstk_darwin(v9);
  v89 = &v79 - v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v79 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v79 - v22;
  v24 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters);
  v103 = v24;
  v25 = *(v24 + 2);
  if (!v25)
  {
    goto LABEL_65;
  }

  v26 = v25 - 1;
  if (v25 != 1)
  {
    v97 = v21;
    v87 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold;
    v83 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;

    v27 = 0;
    v86 = 0;
    v80 = v0;
    v85 = v17;
    v99 = v23;
    v84 = v26;
    while (1)
    {
      v28 = specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(&v103);
      distanceMatrix._rawValue = v28;
      v104 = MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(&distanceMatrix, 1);
      if (v29)
      {
      }

      else
      {
        v98 = v28;
        if (v104.value._0._0 < 0)
        {
          goto LABEL_52;
        }

        v95 = v27;
        v30 = *(v24 + 2);
        if (v104.value._0._0 >= v30)
        {
          goto LABEL_53;
        }

        v31 = v104.value._0._1;
        v32 = *&v104.is_nil;
        v33 = v23;
        v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v34 = v24 + v96;
        v35 = *(v94 + 72);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v96 + v35 * v104.value._0._0, v33);
        if (v31 >= v30)
        {
          goto LABEL_54;
        }

        v36 = outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(&v34[v35 * v31], v20);
        if (*(v1 + v87) * *(v1 + v87) <= v32)
        {

          v23 = v99;
          v41 = v93;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v99, v93);
          swift_beginAccess();
          v42 = v92;
          specialized Set._Variant.insert(_:)(v92, v41);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v42);
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v20, v41);
          specialized Set._Variant.insert(_:)(v42, v41);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v42);
          swift_endAccess();
        }

        else
        {
          v81 = v32;
          __chkstk_darwin(v36);
          *(&v79 - 2) = v99;
          *(&v79 - 1) = v20;
          v37 = v86;
          v38 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram(), (&v79 - 4), v24);
          v86 = v37;
          v82 = &v79;
          if (v39)
          {
            v40 = *(v24 + 2);
          }

          else
          {
            v40 = v38;
            v43 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_64;
            }

            v45 = (v24 + 2);
            v44 = *(v24 + 2);
            if (v43 != v44)
            {
              v76 = v96 + v35 * v43;
              while (v43 < v44)
              {
                outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v76, v17);
                if (static UUID.== infix(_:_:)())
                {
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
                }

                else
                {
                  v77 = static UUID.== infix(_:_:)();
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
                  if ((v77 & 1) == 0)
                  {
                    if (v43 != v40)
                    {
                      if (v40 < 0)
                      {
                        goto LABEL_60;
                      }

                      v78 = *v45;
                      if (v40 >= v78)
                      {
                        goto LABEL_61;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v96 + v40 * v35, v89);
                      if (v43 >= v78)
                      {
                        goto LABEL_62;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v76, v88);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v88, v24 + v96 + v40 * v35);
                      if (v43 >= *(v24 + 2))
                      {
                        goto LABEL_63;
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v89, v24 + v76);
                    }

                    ++v40;
                  }
                }

                ++v43;
                v45 = (v24 + 2);
                v44 = *(v24 + 2);
                v76 += v35;
                if (v43 == v44)
                {
                  goto LABEL_16;
                }
              }

              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }
          }

LABEL_16:

          v46 = *(v24 + 2);
          v47 = v40 - v46;
          if (v40 > v46)
          {
            goto LABEL_55;
          }

          if (v40 < 0)
          {
            goto LABEL_56;
          }

          v48 = *(v24 + 2);
          if (v48 < v46)
          {
            goto LABEL_57;
          }

          v49 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v24;
          if (isUniquelyReferenced_nonNull_native && v49 <= *(v24 + 3) >> 1)
          {
            v51 = v35;
          }

          else
          {
            v51 = v35;
            if (v48 <= v49)
            {
              v52 = v49;
            }

            else
            {
              v52 = v48;
            }

            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v24, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
            v103 = v24;
          }

          v53 = v97;
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v40, v46, 0, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
          v54 = v53[9];
          v55 = v99;
          v56 = *&v99[v54];
          if (!v56)
          {
            v56 = *&v20[v54];
            swift_unknownObjectRetain();
          }

          v57 = *(v55 + 24);
          v58 = *(v20 + 3);
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_59;
          }

          v60 = (*(v55 + 8) + *(v20 + 1)) * 0.5;
          v61 = (*v55 + *v20) * 0.5;
          v62 = *(v55 + 40);
          v64 = *(v20 + 4);
          v63 = *(v20 + 5);
          v100 = *(v55 + 32);
          v101 = v62;
          swift_unknownObjectRetain();

          v65._countAndFlagsBits = v64;
          v66 = v97;
          v65._object = v63;
          String.append(_:)(v65);
          v67 = v100;
          v68 = v101;
          v69 = v90;
          UUID.init()();
          *v69 = v61;
          *(v69 + 8) = v60;
          *(v69 + 16) = v81;
          *(v69 + 24) = v59;
          *(v69 + 32) = v67;
          *(v69 + 40) = v68;
          *(v69 + v66[9]) = v56;
          *(v69 + v66[10]) = 0;
          v70 = (v69 + v66[11]);
          *v70 = 0;
          v70[1] = 0xE000000000000000;
          *(v69 + v66[12]) = 0;
          *(v69 + v66[13]) = 0;
          *(v69 + v66[14]) = 0;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v69, v91);
          v72 = *(v24 + 2);
          v71 = *(v24 + 3);
          if (v72 >= v71 >> 1)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
          }

          v1 = v80;
          *(v24 + 2) = v72 + 1;
          outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v91, v24 + v96 + v72 * v51);
          v103 = v24;
          v73 = v90;
          v74 = v93;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v90, v93);
          swift_beginAccess();
          v75 = v92;
          specialized Set._Variant.insert(_:)(v92, v74);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v75);
          swift_endAccess();
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v73);
          v23 = v99;
        }

        v26 = v84;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v20);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v23);
        v17 = v85;
        v27 = v95;
      }

      if (++v27 == v26)
      {

        return;
      }
    }
  }
}

Swift::tuple_tuple_Int_Int_Double_optional __swiftcall MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(Swift::OpaquePointer *distanceMatrix, Swift::Bool lowerHalfOnly)
{
  rawValue = distanceMatrix->_rawValue;
  v4 = distanceMatrix->_rawValue + 32;
  v5 = *(distanceMatrix->_rawValue + 2);

  v10 = 0;
  v11 = 1.79769313e308;
  v12 = -1;
  v13 = -1;
  while (1)
  {
LABEL_2:
    if (v5 == v10)
    {

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v12;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = LOBYTE(v11);
      }

      goto LABEL_43;
    }

    if (v10 >= rawValue[2])
    {
      break;
    }

    v14 = *&v4[8 * v10++];
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = v12;
      v36 = v5;
      v40 = *((swift_isaMask & *v2) + 0x78);

      v16 = 0;
      v17 = v10 - 1;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(v14 + 32 + 8 * v16);
        v22 = v40(v6);
        if (*(v22 + 16) && (v23 = v22, v24 = static Hasher._hash(seed:_:)(), v25 = -1 << *(v23 + 32), v26 = v24 & ~v25, ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (*(*(v23 + 48) + 8 * v26) + 1 != v10)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:

          v29 = (*((swift_isaMask & *v2) + 0x90))(v28);
          if (!*(v29 + 16) || (v30 = v29, v31 = static Hasher._hash(seed:_:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0))
          {
LABEL_24:

            if (!lowerHalfOnly || v16 < v17 && (v35 = rawValue[2], v16 < v35) && v35 >= 2 && v17 < v35)
            {
              v18 = v21 < v11;
              if (v21 >= v11)
              {
                v19 = v39;
              }

              else
              {
                v11 = v21;
                v19 = v16;
              }

              v20 = v38;
              if (v18)
              {
                v20 = v10 - 1;
              }

              v38 = v20;
              v39 = v19;
            }

            goto LABEL_12;
          }

          v34 = ~v32;
          while (*(*(v30 + 48) + 8 * v33) != v16)
          {
            v33 = (v33 + 1) & v34;
            if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_12:
        if (++v16 == v15)
        {

          v5 = v36;
          v13 = v38;
          v12 = v39;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result.value._1 = v9;
  result.value._0._1 = v7;
  result.value._0._0 = v6;
  result.is_nil = v8;
  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  if (static UUID.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return static UUID.== infix(_:_:)() & 1;
  }
}

int *MOSuggestionAssetMapsClusterer.combinedCluster(_:_:distance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v9 = result;
  v10 = result[9];
  v11 = *(a1 + v10);
  if (!v11)
  {
    v11 = *(a2 + v10);
    result = swift_unknownObjectRetain();
  }

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  else
  {
    v15 = (*(a1 + 8) + *(a2 + 8)) * 0.5;
    v16 = (*a1 + *a2) * 0.5;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    swift_unknownObjectRetain();

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    result = UUID.init()();
    *a3 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = a4;
    *(a3 + 24) = v14;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
    *(a3 + v9[9]) = v11;
    *(a3 + v9[10]) = 0;
    v20 = (a3 + v9[11]);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    *(a3 + v9[12]) = 0;
    *(a3 + v9[13]) = 0;
    *(a3 + v9[14]) = 0;
  }

  return result;
}

void static MOSuggestionAssetMapsClusterer.makeRegion(containing:applyBottomPaddingForPlatter:applyBottomPaddingForGradient:horizontalAspectRatio:markerStyle:applyRenderMargin:shouldAdjustMarker:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:
    if (one-time initialization token for assets == -1)
    {
LABEL_26:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static MOAngelLogger.assets);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "[MapSnapshot] makeRegion failed with 0 locations", v29, 2u);
      }

      v31.origin.x = MKMapRectNull.origin.x;
      v31.origin.y = MKMapRectNull.origin.y;
      v31.size.width = MKMapRectNull.size.width;
      v31.size.height = MKMapRectNull.size.height;
      MKCoordinateRegionForMapRect(v31);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v3 = v4;
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(a1 + 32);

LABEL_6:
  (*(*v3 + 240))(v4);
  (*(*v3 + 264))();
  v5 = (*(*v3 + 456))();
  v6 = (*(*v3 + 312))();
  v8 = v7;
  if (v2)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 2)
    {
LABEL_8:
      if (((v8 & 1) != 0 || v6 < 2) && v5 > 0.0 && one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
      {
        swift_once();
      }

      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < 2)
    {
      goto LABEL_8;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = (*(*v11 + 240))();
    v13 = (*(*v11 + 264))();

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (*&v15 >= *&v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((*&v14 > 1uLL), *&v15 + 1, 1);
    }

    ++v10;
    *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * *&v15 + 4];
    *v16 = v12;
    v16[1] = v13;
  }

  while (v9 != v10);
  v17 = [objc_opt_self() polygonWithCoordinates:&_swiftEmptyArrayStorage[4] count:v9];

  [v17 boundingMapRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  MKCoordinateRegionForMapRect(v30);
}

double *MOSuggestionAssetMapsClusterer.groupedByAverageHeight()()
{
  v136 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v0 = *(v136 - 8);
  v1 = __chkstk_darwin(v136);
  v141 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v121 - v4;
  v6 = __chkstk_darwin(v3);
  v128 = &v121 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v121 - v9;
  v11 = __chkstk_darwin(v8);
  v127 = (&v121 - v12);
  __chkstk_darwin(v11);
  v14 = (&v121 - v13);
  *&v147 = 0;
  *(&v147 + 1) = 0xE000000000000000;
  v15 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
  if (v16)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = v15;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_118:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.assets);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v21, 0xCu);
  }

  v22 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;
  v23 = v137;
  swift_beginAccess();
  v24 = *(v23 + v22);
  v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
  if (!*(v24 + 16))
  {
    v142 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    goto LABEL_99;
  }

  v124 = v10;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v10 = ((v26 + 63) >> 6);

  v29 = 0;
  v30 = 0.0;
  while (v28)
  {
LABEL_17:
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v24 + 48) + *(v0 + 9) * (__clz(__rbit64(v28)) | (v29 << 6)), v14);
    v32 = v14[2];
    v33 = *(v14 + *(v136 + 36));
    swift_unknownObjectRetain();
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    v34 = -v17;
    if (v33)
    {
      swift_unknownObjectRelease();
      v34 = v17;
    }

    v28 &= v28 - 1;
    v30 = v30 + v32 * (1.0 - v34);
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v31 >= v10)
    {
      break;
    }

    v28 = *(v24 + 56 + 8 * v31);
    ++v29;
    if (v28)
    {
      v29 = v31;
      goto LABEL_17;
    }
  }

  v35 = *(v137 + v22);
  v36 = v35[2];
  if (v36)
  {
    v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(v35[2], 0, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    v142 = specialized Sequence._copySequenceContents(initializing:)(&v145, v37 + ((*(v0 + 80) + 32) & ~*(v0 + 80)), v36, v35);
    v38 = v145;
    swift_bridgeObjectRetain_n();
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v38);
    if (v142 != v36)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v39 = v137;
  }

  else
  {
    v39 = v137;

    v37 = _swiftEmptyArrayStorage;
  }

  *&v145 = v37;
  specialized MutableCollection<>.sort(by:)(&v145, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  v41 = v145;
  v10 = *(v145 + 16);
  if (!v10)
  {

    v142 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
    goto LABEL_101;
  }

  v42 = 0;
  v43 = v36;
  v131 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v44 = v145 + v131;
  v125 = "MomentsUIDendrogramPOIPenalty";
  v142 = _swiftEmptyArrayStorage;
  v45 = v30 / v43;
  v132 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters;
  v123 = GEOPOICategoryReligiousSite;
  v14 = v127;
  v126 = v145;
  v129 = v10;
  v133 = v145 + v131;
  while (2)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_114;
    }

    v46 = *(v0 + 9);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v44 + v46 * v42, v14);
    v47 = v14[2];
    if (v47 >= v45)
    {
      goto LABEL_27;
    }

    v140 = v42;
    v48 = v10;
    v10 = v5;
    v5 = v0;
    v138 = v46;
    v145 = v147;
    v49 = *(v14 + 4);
    v0 = *(v14 + 5);
    *&v143 = v49;
    *(&v143 + 1) = v0;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.contains<A>(_:)())
    {
      v44 = v133;
      v0 = v5;
      v5 = v10;
      v10 = v48;
      v42 = v140;
      goto LABEL_27;
    }

    v135 = v49;
    *&v145 = v49;
    *(&v145 + 1) = v0;
    v134 = v0;
    *&v143 = 95;
    *(&v143 + 1) = 0xE100000000000000;
    v50 = StringProtocol.components<A>(separatedBy:)();
    if (!*(v50 + 16))
    {
      goto LABEL_116;
    }

    v51 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
    }

    v52 = v138;
    v0 = v5;
    v53 = *(v51 + 2);
    if (!v53)
    {
      goto LABEL_117;
    }

    v5 = v10;
    *(v51 + 2) = v53 - 1;

    v10 = *(v51 + 2);
    if (!v10)
    {
      v10 = v129;
LABEL_96:

      v42 = v140;
      goto LABEL_97;
    }

    v14 = v0;
    v54 = 0;
    v130 = 0;
    v139 = 0;
    v0 = v51 + 5;
    v55 = 0.0;
    v56 = 0.0;
    do
    {
      v57 = *(v0 - 1);
      v58 = *v0;
      if (v57)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58 == 0xE000000000000000;
      }

      if (v59)
      {
        goto LABEL_39;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_39;
      }

      v60 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v57, v58);
      if (v61)
      {
        goto LABEL_39;
      }

      if (v60 < 0)
      {
        goto LABEL_39;
      }

      v62 = *(v137 + v132);
      if (v60 >= *(v62 + 16))
      {
        goto LABEL_39;
      }

      v63 = (v62 + v131 + v60 * v52);
      v64 = *v63;
      v65 = v63[1];
      v66 = *(v63 + *(v136 + 36));
      if (!v66 || v130 >= 1)
      {
        goto LABEL_50;
      }

      v68 = one-time initialization token for defaults;
      swift_unknownObjectRetain();
      if (v68 != -1)
      {
        swift_once();
      }

      v69 = static MOAngelDefaultsManager.defaults;
      if (!static MOAngelDefaultsManager.defaults)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v145 = 0u;
        v146 = 0u;
        v52 = v138;
LABEL_75:
        outlined destroy of Any?(&v145);
        goto LABEL_51;
      }

      v70 = String._bridgeToObjectiveC()();
      v71 = [v69 objectForKey:v70];

      if (v71)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v144 = 0u;
        v143 = 0u;
      }

      v145 = v143;
      v146 = v144;
      v52 = v138;
      if (!*(&v144 + 1))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_75;
      }

      if (swift_dynamicCast() & 1) != 0 && (v143)
      {
        v72 = [v66 _poiCategory];
        if (!v72)
        {
          goto LABEL_77;
        }

        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;
        if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
        {
          swift_unknownObjectRelease();

LABEL_88:
          swift_unknownObjectRelease();
          v52 = v138;
          goto LABEL_51;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v78 & 1) == 0)
        {
LABEL_77:
          v79 = objc_opt_self();
          v80 = [v66 _styleAttributes];
          v122 = objc_opt_self();
          v81 = [v122 mainScreen];
          [v81 scale];
          v17 = v82;

          v83 = [v79 newFillColorForStyleAttributes:v80 forScale:v17];
          v84 = v79;
          if (v83)
          {
            v85 = [v66 _styleAttributes];
            v86 = [v122 mainScreen];
            [v86 scale];
            v17 = v87;

            v88 = [v79 imageForStyle:v85 size:3 forScale:0 format:v17];
            if (v88)
            {

              v89 = v136;
              v130 = *(v136 + 32);
              v90 = v134;

              v91 = v124;
              UUID.init()();
              *v91 = v64;
              *(v91 + 8) = v65;
              *(v91 + 16) = v47;
              v92 = v135;
              *(v91 + 24) = 1;
              *(v91 + 32) = v92;
              *(v91 + 40) = v90;
              *(v91 + v89[9]) = v66;
              *(v91 + v89[10]) = 0;
              v93 = (v91 + v89[11]);
              *v93 = 0;
              v93[1] = 0xE000000000000000;
              *(v91 + v89[12]) = 0;
              *(v91 + v89[13]) = 1;
              *(v91 + v89[14]) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
              }

              v17 = 7.0;
              v95 = *(v142 + 2);
              v94 = *(v142 + 3);
              if (v95 >= v94 >> 1)
              {
                v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
              }

              v96 = v142;
              *(v142 + 2) = v95 + 1;
              v97 = v96 + v131 + v95 * v138;
              v52 = v138;
              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v124, v97);
              if (v56 != 0.0)
              {
                v56 = v56 + (v56 - v64) / 7.0;
              }

              if (v55 != 0.0)
              {
                v55 = v55 + (v55 - v65) / 7.0;
              }

              v130 = 1;
              goto LABEL_39;
            }
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_88;
      }

      swift_unknownObjectRelease();
LABEL_50:
      swift_unknownObjectRelease();
LABEL_51:
      if (__OFADD__(v54++, 1))
      {
        goto LABEL_115;
      }

      if (v55 == 0.0)
      {
        v55 = v65;
      }

      else
      {
        v55 = (v55 + v65) * 0.5;
      }

      if (v56 == 0.0)
      {
        v56 = v64;
      }

      else
      {
        v56 = (v56 + v64) * 0.5;
      }

      swift_unknownObjectRetain();
      v139 = v66;
LABEL_39:
      v0 += 2;
      --v10;
    }

    while (v10);
    v0 = v14;
    v10 = v129;
    if (v54 < 1)
    {
      v14 = v127;
      v41 = v126;
      goto LABEL_96;
    }

    v98 = *(v51 + 2);
    v99 = v139;
    swift_unknownObjectRetain();
    v100 = v134;

    v101 = v136;
    v102 = v128;
    UUID.init()();
    *v102 = v56;
    *(v102 + 8) = v55;
    *(v102 + 16) = v47;
    v103 = v135;
    *(v102 + 24) = v54;
    *(v102 + 32) = v103;
    *(v102 + 40) = v100;
    *(v102 + v101[9]) = v99;
    *(v102 + v101[10]) = 0;
    v104 = (v102 + v101[11]);
    *v104 = 0;
    v104[1] = 0xE000000000000000;
    *(v102 + v101[12]) = 0;
    *(v102 + v101[13]) = v54 != v98;
    *(v102 + v101[14]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    }

    v106 = *(v142 + 2);
    v105 = *(v142 + 3);
    v14 = v127;
    v41 = v126;
    v42 = v140;
    if (v106 >= v105 >> 1)
    {
      v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    }

    v107 = v142;
    *(v142 + 2) = v106 + 1;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v128, v107 + v131 + v106 * v138);
LABEL_97:
    v108._countAndFlagsBits = v135;
    v108._object = v134;
    String.append(_:)(v108);
    swift_unknownObjectRelease();
    v44 = v133;
LABEL_27:
    ++v42;
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    if (v42 != v10)
    {
      continue;
    }

    break;
  }

  v40 = *(&v147 + 1);
  v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
LABEL_99:
  v39 = v137;
LABEL_101:
  v109 = *(v39 + v25[101]);
  v110 = *(v109 + 16);
  if (v110)
  {
    v111 = v147;
    v112 = v0;
    v113 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v114 = v109 + v113;
    v115 = *(v112 + 9);
    v140 = v109;

    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v114, v5);
      *&v145 = v111;
      *(&v145 + 1) = v40;
      v116 = *(v5 + 5);
      *&v143 = *(v5 + 4);
      *(&v143 + 1) = v116;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
      }

      else
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v141);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
        }

        v118 = *(v142 + 2);
        v117 = *(v142 + 3);
        if (v118 >= v117 >> 1)
        {
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v142, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
        }

        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
        v119 = v142;
        *(v142 + 2) = v118 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v141, v119 + v113 + v118 * v115);
      }

      v114 += v115;
      --v110;
    }

    while (v110);
  }

  return v142;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id MOSuggestionInterstitialAlertContentViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MOSuggestionAssetMapsClusterer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAssetMapsClusterer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *MOSuggestionAssetMapsClusterer.__allocating_init(coordinates:separationThreshold:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 240))(_swiftEmptyArrayStorage, 0.5);
  v10 = v9;
  *&v9[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v30 = _swiftEmptyArrayStorage;
    v27[0] = v9;
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v30;
    v27[1] = a1;
    v15 = (a1 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v27[2] = v13;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v18;
      v19._countAndFlagsBits = 95;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v28;
      v21 = v29;
      UUID.init()();
      *v8 = v16;
      v8[1] = v17;
      v8[2] = 0;
      v8[3] = 1;
      v8[4] = v20;
      v8[5] = v21;
      *(v8 + v5[9]) = 0;
      *(v8 + v5[10]) = 0;
      v22 = (v8 + v5[11]);
      *v22 = 0;
      v22[1] = 0xE000000000000000;
      *(v8 + v5[12]) = 0;
      *(v8 + v5[13]) = 0;
      *(v8 + v5[14]) = 0;
      v30 = v14;
      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v14 = v30;
      }

      ++v13;
      *(v14 + 2) = v24 + 1;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
      v15 += 2;
    }

    while (v11 != v13);

    v10 = v27[0];
  }

  else
  {
    v25 = v9;

    v14 = _swiftEmptyArrayStorage;
  }

  *&v10[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters] = v14;

  return v10;
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.comparable()()
{
  if ((((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && v1 < 0.0)
  {
    v4 = v0;
    v5 = remainder(v1, 360.0);
    v0 = v4;
    v1 = v5 + 360.0;
  }

  result.longitude = v1;
  result.latitude = v0;
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.printDendogram()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(v2[2], 0, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
  v5 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  v7 = v8;
  swift_bridgeObjectRetain_n();
  outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v7);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v4;
  specialized MutableCollection<>.sort(by:)(&v8, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(v8);
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.normalized()()
{
  v2.i64[0] = v1;
  v3 = *v0.i64;
  v0.i64[0] = 0x4076800000000000;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = remainder(*v2.i64, *vbslq_s8(vnegq_f64(v4), v0, v2).i64);
  v6 = v3;
  result.longitude = v5;
  result.latitude = v6;
  return result;
}

uint64_t static FloatingPoint.* infix(_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = *(a3 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  return (*(v7 + 8))(v9, a3);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(double **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  *a1 = v7;
  return result;
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMd, &_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
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

    a4[2] = 0.0;
  }

  else
  {
    type metadata accessor for MOEventBundleSourceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pMd, &_s16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService19MOAssetAndMediaTypeV_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService19MOAssetAndMediaTypeV_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService19MOAssetAndMediaTypeV_SitMd, &_s16MomentsUIService19MOAssetAndMediaTypeV_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo33BMMomentsEngagementSuggestionTypeVGMd, &_ss23_ContiguousArrayStorageCySo33BMMomentsEngagementSuggestionTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService20MOProtectedAppSourceVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService20MOProtectedAppSourceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyycGMd, &_ss23_ContiguousArrayStorageCyyycGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService27MOClientPresentationDetailsV012presentationH0_ySaySo13MOEventBundleCG_ShySSGSgtc7handlertGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService27MOClientPresentationDetailsV012presentationH0_ySaySo13MOEventBundleCG_ShySSGSgtc7handlertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService27MOClientPresentationDetailsV012presentationE0_yyc7handlertMd, &_s16MomentsUIService27MOClientPresentationDetailsV012presentationE0_yyc7handlertMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService38MOSuggestionAssetMediaAlbumArtProviderC15QueuableRequest33_15720FFAFF6C490D807E9EF804F12153LLVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService38MOSuggestionAssetMediaAlbumArtProviderC15QueuableRequest33_15720FFAFF6C490D807E9EF804F12153LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService29MOSuggestionAssetCacheManagerC0fG22CompletionResultHolderVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService29MOSuggestionAssetCacheManagerC0fG22CompletionResultHolderVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *a1, uint64_t a2, uint64_t a3, double *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMR, &_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMd, &_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, &type metadata accessor for UUID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR, type metadata accessor for MOSuggestionSheetAssetDateRange);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService026MOSuggestionAssetPhotoLiveH14VideosProviderC0iH4TaskVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService026MOSuggestionAssetPhotoLiveH14VideosProviderC0iH4TaskVGMR, type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, &type metadata accessor for URL);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMd, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMR, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMd, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMR, &_sSo17MOSuggestionAssetC_SitMd, &_sSo17MOSuggestionAssetC_SitMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVGMR, type metadata accessor for MOSuggestionAssetPhotoMomentMetadata);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR, &type metadata accessor for CloudDevice.Capability);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService18PropertyDescriptorVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService18PropertyDescriptorVGMR, type metadata accessor for PropertyDescriptor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, &type metadata accessor for Date);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySDySo28MOSuggestionAssetMetadataKeyaypSgGGMd, &_ss23_ContiguousArrayStorageCySDySo28MOSuggestionAssetMetadataKeyaypSgGGMR, &_sSDySo28MOSuggestionAssetMetadataKeyaypSgGMd, &_sSDySo28MOSuggestionAssetMetadataKeyaypSgGMR);
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = (v12 + 4);
  v16 = (a4 + 4);
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

double *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService42MOSuggestionInterstitialListAssetViewModelC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySo23MOEventBundleSourceTypeaGMd, &_ss11_SetStorageCySo23MOEventBundleSourceTypeaGMR, type metadata accessor for MOEventBundleSourceType);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySo22MOSuggestionAssetsTypeaGMd, &_ss11_SetStorageCySo22MOSuggestionAssetsTypeaGMR, type metadata accessor for MOSuggestionAssetsType);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = v4;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v7);
      v15 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(a2);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v9, v7);
    v22 = *v16;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v9, v20);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CloudDevice.Capability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMd, &_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMR);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMd, &_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMR);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMd, &_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMR);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd, &_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMR);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for CloudDevice.Capability();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v12 + 48) + v16 * a2, v9);
      v17 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()(&type metadata accessor for UUID, &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for CloudDevice.Capability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()(&type metadata accessor for CloudDevice.Capability, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
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

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for MOSuggestionAssetMediaItemType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for BMMomentsEngagementSuggestionType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    specialized _NativeSet.resize(capacity:)(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      result = specialized _NativeSet.copy()(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1, a4, a5);
  }

  v13 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v6 + 48) + v21, v5);
        result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMd, &_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  return specialized _NativeSet.copy()(&type metadata accessor for UUID, &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMd, &_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMd, &_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd, &_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  return specialized _NativeSet.copy()(&type metadata accessor for CloudDevice.Capability, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR);
}