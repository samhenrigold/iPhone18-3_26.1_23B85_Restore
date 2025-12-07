uint64_t CAFPreferencesGetBoolean(const __CFString *a1, unsigned int a2)
{
  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppBooleanValue(a1, @"com.apple.CarAccessoryFramework", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

double CAFPreferencesGetDouble(void *a1, double a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithDouble:a2];
  v5 = CAFPreferencesGetNumber(v3, v4);

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

id CAFPreferencesGetNumber(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

id CAFPreferencesGetArray(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

BOOL CAFDefaultsHasValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 valueForKey:v1];

  return v3 != 0;
}

id CAFDefaultsGetBoolean(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 valueForKey:v3];

  if (v5)
  {
    a2 = [v5 BOOLValue];
  }

  return a2;
}

void sub_100002668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100004304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000087DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000094DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 72), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_10000B5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  CAFSignpostEmit_Launched();
  Boolean = CAFPreferencesGetBoolean(@"fastStartupRegistration", 1u);
  v5 = CAFDLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (Boolean)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cafd starting with fastStartup", buf, 2u);
    }

    v7 = [CAFCarManagerMutableConfiguration alloc];
    v5 = +[CAFRegistrations fastStartup];
    v8 = [v7 initWithRegistrationDictionary:v5];
  }

  else
  {
    if (v6)
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cafd starting without fastStartup", v59, 2u);
    }

    v8 = 0;
  }

  v9 = objc_alloc_init(CARSessionStatus);
  v10 = _MergedGlobals;
  _MergedGlobals = v9;

  v11 = CAFDLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    main_cold_1();
  }

  v12 = [_TtC13caraccessoryd28CAFDSessionBoostServiceAgent alloc];
  v13 = [(CAFDSessionBoostServiceAgent *)v12 initWithSessionStatus:_MergedGlobals];
  v14 = sessionBoost;
  sessionBoost = v13;

  v15 = [CAFDCarDataServiceAgent alloc];
  v16 = [(CAFDCarDataServiceAgent *)v15 initWithSessionStatus:_MergedGlobals config:v8];
  v17 = qword_100060E48;
  qword_100060E48 = v16;

  v18 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.caraccessoryframework.cardata"];
  v19 = carDataListener;
  carDataListener = v18;

  [carDataListener setDelegate:qword_100060E48];
  [carDataListener activate];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &__block_literal_global_0);
  v20 = objc_alloc_init(CAFCarManager);
  v21 = qword_100060E50;
  qword_100060E50 = v20;

  if (_os_feature_enabled_impl())
  {
    v22 = CAFDLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      main_cold_2();
    }

    v23 = [_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent alloc];
    v24 = [(CAFDAppClipsDeclarationAgent *)v23 initWithCarManager:qword_100060E50];
    v25 = appClipsAgent;
    appClipsAgent = v24;
  }

  v26 = [_TtC13caraccessoryd22CAFDAssetVariantsAgent alloc];
  v27 = [(CAFDAssetVariantsAgent *)v26 initWithCarManager:qword_100060E50 sessionStatus:_MergedGlobals];
  v28 = assetVariants;
  assetVariants = v27;

  v29 = [assetVariants domain];
  v30 = [BSServicesConfiguration activateManualDomain:v29];
  v31 = assetVariantsToken;
  assetVariantsToken = v30;

  v32 = [_TtC13caraccessoryd27CAFDVehicleResourcesManager alloc];
  v33 = [(CAFDVehicleResourcesManager *)v32 initWithCarManager:qword_100060E50];
  v34 = vehicleResourcesManager;
  vehicleResourcesManager = v33;

  [assetVariants setVehicleResourcesManager:vehicleResourcesManager];
  [vehicleResourcesManager setAssetVariantsAgent:assetVariants];
  v35 = [_TtC13caraccessoryd19CAFDNowPlayingAgent alloc];
  v36 = [(CAFDNowPlayingAgent *)v35 initWithCarManager:qword_100060E50];
  v37 = nowPlayingAgent;
  nowPlayingAgent = v36;

  v38 = [nowPlayingAgent domain];
  v39 = [BSServicesConfiguration activateManualDomain:v38];
  v40 = nowPlayingToken;
  nowPlayingToken = v39;

  v41 = [_TtC13caraccessoryd17CAFDAppLinksAgent alloc];
  v42 = [(CAFDAppLinksAgent *)v41 initWithCarManager:qword_100060E50];
  v43 = appLinksAgent;
  appLinksAgent = v42;

  v44 = [appLinksAgent domain];
  v45 = [BSServicesConfiguration activateManualDomain:v44];
  v46 = appLinksToken;
  appLinksToken = v45;

  LODWORD(v44) = _os_feature_enabled_impl();
  v47 = CAFDLogging();
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (v48)
    {
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "cafd AppIntents enabled", v58, 2u);
    }

    v49 = [_TtC13caraccessoryd13CAFDFramework alloc];
    v50 = [(CAFDFramework *)v49 initWithCarManager:qword_100060E50];
    v47 = daemonFramework;
    daemonFramework = v50;
  }

  else if (v48)
  {
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "cafd AppIntents disabled", v57, 2u);
  }

  v51 = [_TtC13caraccessoryd20CAFDAppLaunchManager alloc];
  v52 = [(CAFDAppLaunchManager *)v51 initWithCarManager:qword_100060E50];
  v53 = appLaunchManager;
  appLaunchManager = v52;

  v54 = CAFDLogging();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    main_cold_3();
  }

  objc_autoreleasePoolPop(v3);
  v55 = +[NSRunLoop mainRunLoop];
  [v55 run];

  return 0;
}

void __main_block_invoke(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = [NSString stringWithUTF8String:string];
    v4 = CAFDLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __main_block_invoke_cold_1();
    }
  }
}

void sub_1000119C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_2_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return objc_opt_class();
}

NSMutableData *CAFImageDataByScalingImageData(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 length];
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (!v7 || (v10 = CGImageSourceCreateWithData(v7, 0)) == 0)
  {
LABEL_8:

LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
  if (!v12)
  {
    CFRelease(v11);
    goto LABEL_8;
  }

  v13 = v12;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v12, kCGImagePropertyOrientation);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v15 = valuePtr > 4;
  }

  else
  {
    v15 = 0;
  }

  v17 = CFDictionaryGetValue(v13, kCGImagePropertyPixelWidth);
  if (v17 && CFNumberGetValue(v17, kCFNumberIntType, &valuePtr))
  {
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = valuePtr;
    }

    if (v15)
    {
      v19 = valuePtr;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = CFDictionaryGetValue(v13, kCGImagePropertyPixelHeight);
  if (v20 && CFNumberGetValue(v20, kCFNumberIntType, &valuePtr))
  {
    if (v15)
    {
      v18 = valuePtr;
    }

    else
    {
      v19 = valuePtr;
    }
  }

  CFRelease(v13);

  v21 = v18;
  v22 = v19;
  if (a2 >= v18 && a3 >= v22)
  {
    CFRelease(v11);
    goto LABEL_9;
  }

  if (a2 / v21 >= a3 / v22)
  {
    v24 = a3 / v22;
  }

  else
  {
    v24 = a2 / v21;
  }

  if (CGImageSourceGetCount(v11))
  {
    v25 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
    if (ImageAtIndex)
    {
      v27 = ImageAtIndex;
      v28 = v24 * v21;
      v29 = v24 * v22;
      v30 = vcvtms_u32_f32(v29);
      if (vcvtms_u32_f32(v28))
      {
        v31 = v30 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = CGImageCreateByScaling();
        CFRelease(v27);
        v27 = v32;
      }

      v9 = objc_opt_new();
      v33 = CGImageDestinationCreateWithData(v9, @"public.jpeg", 1uLL, 0);
      if (v33)
      {
        v34 = v33;
        v35 = [NSMutableDictionary dictionaryWithDictionary:v25];
        v36 = [NSNumber numberWithDouble:0.75];
        [v35 setObject:v36 forKeyedSubscript:kCGImageDestinationLossyCompressionQuality];

        CGImageDestinationAddImage(v34, v27, v35);
        CGImageDestinationFinalize(v34);
        CFRelease(v34);
      }

      CGImageRelease(v27);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v11);
LABEL_10:

  return v9;
}

CGImageRef CAFCreateImageRefForData(const __CFData *a1)
{
  v1 = CGDataProviderCreateWithCFData(a1);
  v2 = CGImageCreateWithPNGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  if (!v2)
  {
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  }

  CGDataProviderRelease(v1);
  return v2;
}

BOOL CAFImageDataIsValidImage(const __CFData *a1)
{
  v1 = CAFCreateImageRefForData(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

void ZipArchiverCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

void *CAFDAssetVariantsAgent.vehicleResourcesManager.getter()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CAFDAssetVariantsAgent.vehicleResourcesManager.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
}

uint64_t CAFDAssetVariantsAgent.vehicleResourcesManager.didset()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
    swift_beginAccess();
    v11 = *&v5[v10];
    *(v8 + 4) = v11;
    *v9 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "vehicleResourcesManager didset %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t (*CAFDAssetVariantsAgent.vehicleResourcesManager.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAFDAssetVariantsAgent.vehicleResourcesManager.modify;
}

uint64_t CAFDAssetVariantsAgent.vehicleResourcesManager.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
  }

  return result;
}

uint64_t variable initialization expression of CAFDAssetVariantsAgent.workQueue()
{
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.identifier.getter();
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() serial];
  v2 = BSDispatchQueueCreate();

  return v2;
}

uint64_t CAFDAssetVariantsAgent.assetVariants.willset(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[1] = v11;
    *v10 = 136315394;
    v21 = *&v7[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants];
    v22 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [CAUVehicleTrait : String] and conformance [A : B], &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMR, &protocol conformance descriptor for [A : B]);
    v12 = Optional<A>.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);
    v20[0] = v3;
    v15 = v14;

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v21 = a1;
    v16 = Optional<A>.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "updating assetVariants from %s to %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v6, v20[0]);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t CAFDAssetVariantsAgent.assetExtrasURL.willset(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v7 = a1;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = a1;
    *v11 = 136315394;
    v23 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    v24 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26NSSecurityScopedURLWrapperCSgMd, &_sSo26NSSecurityScopedURLWrapperCSgMR);
    lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject();
    v13 = Optional<A>.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);
    v22 = v3;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v23 = v21;
    v17 = Optional<A>.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v24);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "updating assetExtrasURL from %s to %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v6, v22);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

void CAFDAssetVariantsAgent.refreshClients()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_connections;
  swift_beginAccess();
  v30 = *(v0 + v5);
  if ((v30 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CAFDAssetVariantsAgent._ConnectionProxy and conformance NSObject, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v8 = v38;
    v7 = v39;
    v9 = v40;
    v10 = v41;
    v11 = v42;
  }

  else
  {
    v12 = -1 << *(v30 + 32);
    v7 = v30 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v30 + 56);
    v8 = v30;
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v29 = v9;
  v15 = (v9 + 64) >> 6;
  v33 = (v2 + 8);
  *&v6 = 138412290;
  v31 = v6;
  v32 = v4;
  v34 = v8;
  while (v8 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v36 = v21, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy(), swift_dynamicCast(), v20 = v37, v18 = v10, v19 = v11, !v37))
    {
LABEL_20:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant(v8);

      return;
    }

LABEL_18:
    v35 = v19;
    static Logger.assetUtils.getter();
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v1;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = v31;
      *(v26 + 4) = v22;
      *v27 = v20;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "queuing refresh %@", v26, 0xCu);
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v1 = v25;
      v4 = v32;
    }

    (*v33)(v4, v1);
    [v22 refreshVariants];

    v10 = v18;
    v8 = v34;
    v11 = v35;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_20;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *CAFDAssetVariantsAgent.init(carManager:sessionStatus:)(void *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v40 = type metadata accessor for Logger();
  v5 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar] = 0;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources] = 0;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager] = 0;
  v11 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue;
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.identifier.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() serial];
  v14 = BSDispatchQueueCreate();

  *&v3[v11] = v14;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(_swiftEmptyArrayStorage, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_connections] = v15;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants] = 0;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = 0;
  static Logger.assetUtils.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Initializing with carManager %@", v19, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v22 = *(v5 + 8);
  v22(v10, v40);
  swift_unknownObjectWeakAssign();
  v23 = v39;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus] = v39;
  v24 = type metadata accessor for CAFDAssetVariantsAgent();
  v42.receiver = v3;
  v42.super_class = v24;
  v25 = v23;
  v26 = objc_msgSendSuper2(&v42, "init");
  *(&v39 - 2) = __chkstk_darwin(v26);
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in CAFDAssetVariantsAgent.init(carManager:sessionStatus:);
  *(v27 + 24) = &v39 - 4;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor;
  v28 = _Block_copy(aBlock);
  v29 = objc_opt_self();
  v30 = v26;

  v31 = [v29 listenerWithConfigurator:v28];
  _Block_release(v28);

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    v33 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener;
    v34 = *&v30[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener];
    *&v30[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener] = v31;

    static Logger.assetUtils.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "activating listener", v37, 2u);
    }

    v22(v8, v40);
    result = *&v30[v33];
    if (result)
    {
      [result activate];
      [v16 registerObserver:v30];
      v38 = [v16 currentCar];
      [v30 carManager:v16 didUpdateCurrentCar:v38];

      return v30;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in CAFDAssetVariantsAgent.init(carManager:sessionStatus:)(void *a1, uint64_t a2)
{
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static CAUVariantsService.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id CAFDAgent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CAFDAssetVariantsAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v24 = v4;
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v11 = 136315138;
    v12 = [v8 vehicleResources];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 description];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking for vehicleResources: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v19 = [v8 vehicleResources];
  v20 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources);
  *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources) = v19;
  v21 = v19;

  if (v21)
  {
    [v21 registerObserver:v2];
  }

  CAFDAssetVariantsAgent.updateAssetVariants()();
}

Swift::Void __swiftcall CAFDAssetVariantsAgent.updateAssetVariants()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v64 - v6;
  v8 = type metadata accessor for CAUVehicleTrait();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources);
  if (v12)
  {
    v13 = v12;
    if ([v13 receivedAllValues])
    {
      v70 = v11;
      v71 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils15CAUVehicleTraitO_SStGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils15CAUVehicleTraitO_SStGMR);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
      v65 = v14;
      v15 = *(v14 - 8);
      v72 = *(v15 + 72);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100042860;
      v18 = v17 + v16;
      v19 = v8;
      v20 = (v18 + *(v14 + 48));
      v22 = v9 + 104;
      v21 = *(v9 + 104);
      v23 = v18;
      v66 = v18;
      v21();
      v24 = [v13 vehicleVariant];
      v25 = [v24 exteriorStyle];
      v68 = v9;
      v26 = v13;
      v27 = v25;

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *v20 = v28;
      v20[1] = v30;
      v31 = (v23 + v72 + *(v65 + 48));
      v67 = v19;
      v69 = v21;
      v72 = v22;
      v21();
      v32 = [v26 vehicleVariant];
      v33 = [v32 interiorStyle];

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v26;
      *v31 = v34;
      v31[1] = v36;
      v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13CarAssetUtils15CAUVehicleTraitO_SSTt0g5Tf4g_n(v17);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v39 = [v26 vehicleVariant];
      v40 = [v39 vehicleLayout];

      if (v40)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v45 = v69;
        v44 = v70;
        v46 = v67;
        (v69)(v70, enum case for CAUVehicleTrait.vehicleLayout(_:), v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v43, v44, isUniquelyReferenced_nonNull_native);
        v48 = v68;
        v49 = v46;
        (*(v68 + 8))(v44, v46);
        v38 = v73;
        v50 = v48;
      }

      else
      {
        v49 = v67;
        v50 = v68;
        v45 = v69;
        v44 = v70;
      }

      v57 = [v37 vehicleVariant];
      v58 = [v57 audioLogo];

      if (v58)
      {
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        (v45)(v44, enum case for CAUVehicleTrait.audioBrandLogo(_:), v49);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v61, v44, v62);
        (*(v50 + 8))(v44, v49);
        v38 = v73;
      }

      v63 = v71;
      CAFDAssetVariantsAgent.assetVariants.willset(v38);
      *(v63 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants) = v38;

      CAFDAssetVariantsAgent.refreshClients()();
    }

    else
    {
      static Logger.assetUtils.getter();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Missing values from variants", v56, 2u);
      }

      else
      {
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  else
  {
    static Logger.assetUtils.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No vehicleResources", v53, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t BSServiceConnectionHost.CAFDDescription.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(19);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 0x3D64697020;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  v4 = [v1 remoteToken];
  [v4 pid];

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3D656C646E756220;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  v7 = [v2 remoteToken];
  v8 = [v7 bundleID];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  return 0;
}

uint64_t CAFDAssetVariantsAgent.add(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFDAssetVariantsAgent._ConnectionProxy.activate()();
  v15 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAssetVariantsAgent.add(proxy:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t CAFDAssetVariantsAgent.remove(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  v15 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAssetVariantsAgent.remove(proxy:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

void closure #1 in CAFDAssetVariantsAgent.remove(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = specialized Set._Variant.remove(_:)(a2);
    swift_endAccess();
  }
}

void closure #1 in CAFDAssetVariantsAgent.add(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v6, a2);
    v5 = v6;
    swift_endAccess();
  }
}

id CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection] = a3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v18, "init");
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:);
  *(v10 + 24) = v9;
  v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ();
  v17[5] = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v17[3] = &block_descriptor_53;
  v11 = _Block_copy(v17);
  v12 = v8;
  v13 = v7;
  v14 = v12;
  v15 = a2;

  [v13 configureConnection:v11];

  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

void closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:a2];
  type metadata accessor for CAUVariantsService();
  v5 = static CAUVariantsService.serviceQuality.getter();
  [a1 setServiceQuality:v5];

  v6 = static CAUVariantsService.interface.getter();
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:);
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v9[3] = &block_descriptor_59;
  v8 = _Block_copy(v9);

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void closure #1 in closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    static Logger.assetUtils.getter();
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v7;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Connection invalidated %@", v11, 0xCu);
      outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*(v3 + 8))(v5, v2);
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      CAFDAssetVariantsAgent.remove(proxy:)(v8);
    }
  }
}

uint64_t CAFDAssetVariantsAgent._ConnectionProxy.remote.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  v4 = *(v0 + OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100042870;
  *(v5 + 32) = v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 remoteTargetWithAssertionAttributes:isa];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils17CAUVariantsClient_pMd, &_s13CarAssetUtils17CAUVariantsClient_pMR);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(v13, &_sypSgMd, _sypSgMR);
    return 0;
  }
}

id CAFDAssetVariantsAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id CAFDAssetVariantsAgent._ConnectionProxy.activate()(const char *a1, SEL *a2, ...)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(v6 + 8))(v8, v5);
  return [*&v9[OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection] *a2];
}

void *CAFDAssetVariantsAgent._ConnectionProxy.refreshVariants()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "telling %@ to refresh", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(v2 + 8))(v4, v1);
  result = CAFDAssetVariantsAgent._ConnectionProxy.remote.getter();
  if (result)
  {
    [result refreshVariants];
    return swift_unknownObjectRelease();
  }

  return result;
}

id variable initialization expression of CAFDAppLinksAgent.appLinksQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setQualityOfService:25];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

id variable initialization expression of CAFDNowPlayingAgent.nowPlayingQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setQualityOfService:25];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

void variable initialization expression of CAFDAssetVariantsAgent.connections(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(_swiftEmptyArrayStorage, a1, a2, a3);
    }
  }
}

uint64_t variable initialization expression of CAFDVehicleResourcesManager.archiveInfo@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of CAFDSessionBoostServiceAgent.workQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSURLResourceKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void specialized CAFDAssetVariantsAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v7 = a1;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v40 = v3;
    v41 = a1;
    v42 = v7;
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v11 = 136315394;
    v12 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar];
    if (v12)
    {
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v43);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    a1 = v41;
    if (v41)
    {
      v18 = [v42 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v43);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "update current car from %s to %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v40);
    v7 = v42;
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v23 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar;
  v24 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar];
  if (v24)
  {
    [v24 unregisterObserver:v8];
  }

  v25 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources;
  v26 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources];
  if (v26)
  {
    [v26 unregisterObserver:v8];
  }

  v27 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager;
  v28 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager];
  if (v28)
  {
    [v28 setDelegate:0];
    v28 = *&v8[v27];
  }

  [v28 invalidate];
  v29 = *&v8[v27];
  *&v8[v27] = 0;

  CAFDAssetVariantsAgent.assetVariants.willset(0);
  *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants] = 0;

  CAFDAssetVariantsAgent.refreshClients()();
  v30 = *&v8[v25];
  *&v8[v25] = 0;

  v31 = *&v8[v23];
  *&v8[v23] = a1;

  if (a1)
  {
    v32 = v7;
    [v32 registerObserver:v8];
    v33 = objc_allocWithZone(CRSUIClusterThemeManager);
    v34 = v32;
    v35 = [v33 init];
    [v35 setDelegate:v8];
    v36 = *&v8[v27];
    *&v8[v27] = v35;
    v37 = v35;

    [v8 carDidUpdateAccessories:v34];
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void specialized CAFDAssetVariantsAgent.clusterThemeManager(_:didUpdateExtraAssetsURL:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Logger();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v9 = a1;
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = &unk_10005F000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v36 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v35 = v3;
    v17 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
    swift_beginAccess();
    v18 = *&v10[v17];
    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v9;
    *v16 = v18;
    v16[1] = a1;
    v19 = v9;
    v20 = v18;
    v3 = v35;
    _os_log_impl(&_mh_execute_header, v11, v12, "Telling %@ about extra assets URL: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v13 = &unk_10005F000;

    v4 = v36;
  }

  (*(v6 + 8))(v8, v38);
  v21 = v13[268];
  swift_beginAccess();
  v22 = *&v10[v21];
  if (v22)
  {
    v23 = v22;
    CAFDVehicleResourcesManager.didUpdate(assetExtrasURL:)(a1);
  }

  if (a1)
  {
    v24 = v9;
    v25 = [v24 url];
    v26 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:v29 readonly:1];

    (*(v4 + 8))(v26, v3);
    CAFDAssetVariantsAgent.assetExtrasURL.willset(v31);
    v32 = *&v10[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    *&v10[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = v31;
    v33 = v31;

    CAFDAssetVariantsAgent.refreshClients()();
  }

  else
  {
    CAFDAssetVariantsAgent.assetExtrasURL.willset(0);
    v34 = *&v10[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    *&v10[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = 0;

    CAFDAssetVariantsAgent.refreshClients()();
  }
}

void specialized CAFDAssetVariantsAgent.accessoryDidUpdate(_:receivedAllValues:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Variants have all values", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  CAFDAssetVariantsAgent.updateAssetVariants()();
}

void specialized CAFDAssetVariantsAgent.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  static Logger.assetUtils.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v42 = v3;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v6;
    v15 = v2;
    v16 = v3;
    v17 = v14;
    v43 = v14;
    *v13 = 136315138;
    ObjectType = swift_getObjectType();
    v19 = BSServiceConnectionHost.CAFDDescription.getter(ObjectType);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v43);

    *(v13 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received connection %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);

    v22 = v16;
    v2 = v15;
    v6 = v40;
    v23 = *(v22 + 8);
  }

  else
  {

    v23 = *(v3 + 8);
  }

  v23(v8, v2);
  v24 = swift_getObjectType();
  v25 = [v9 remoteToken];
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.entitlement.getter();
  v26 = String._bridgeToObjectiveC()();

  v27 = [v25 hasEntitlement:v26];

  if (v27)
  {
    v28 = v41;
    v29 = *&v41[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue];
    v30 = objc_allocWithZone(type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy());
    v31 = CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(v28, v29, v9);
    CAFDAssetVariantsAgent.add(proxy:)(v31);
  }

  else
  {
    static Logger.assetUtils.getter();
    v32 = v9;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v35 = 136315138;
      v37 = BSServiceConnectionHost.CAFDDescription.getter(v24);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v43);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "connection %s does not have required entitlement", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    v23(v6, v2);
    [v32 invalidate];
  }
}

void specialized CAFDAssetVariantsAgent._ConnectionProxy.fetchResources(reply:)(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = *(Strong + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants), v10 = Strong, , v10, v9))
  {
    v11 = Dictionary<>.init(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus);

    v15 = [v14 currentSession];
    if (v15)
    {
      v16 = [v15 configuration];

      v15 = [v16 rightHandDrive];
    }
  }

  else
  {
    v15 = 0;
  }

  v64 = [objc_allocWithZone(NSNumber) initWithBool:v15];
  static Logger.assetUtils.getter();

  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v60 = v19;
    v61 = v5;
    v63 = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66 = v59;
    *v20 = 138413314;
    *(v20 + 4) = v17;
    v58 = v21;
    *v21 = v17;
    *(v20 + 12) = 2080;
    v22 = swift_unknownObjectWeakLoadStrong();
    v62 = v4;
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants);
      v24 = v22;

      v25 = v17;
    }

    else
    {
      v26 = v17;
      v23 = 0;
    }

    v65 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [CAUVehicleTrait : String] and conformance [A : B], &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMR, &protocol conformance descriptor for [A : B]);
    v27 = Optional<A>.description.getter();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v66);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v65 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String : String] and conformance [A : B], &_sSDyS2SGMd, &_sSDyS2SGMR, &protocol conformance descriptor for [A : B]);
    v31 = Optional<A>.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v66);

    *(v20 + 24) = v33;
    *(v20 + 32) = 2080;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL);
      v36 = v34;
      v37 = v35;
    }

    else
    {
      v35 = 0;
    }

    v65 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26NSSecurityScopedURLWrapperCSgMd, &_sSo26NSSecurityScopedURLWrapperCSgMR);
    lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject();
    v38 = Optional<A>.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v66);

    *(v20 + 34) = v41;
    *(v20 + 42) = 2080;
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      v44 = *(v42 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus);

      v45 = [v44 currentSession];
      v46 = v62;
      a2 = v63;
      if (v45)
      {
        v47 = [v45 configuration];

        v48 = [v47 rightHandDrive];
      }

      else
      {
        v48 = 2;
      }
    }

    else
    {
      v48 = 2;
      v46 = v62;
      a2 = v63;
    }

    LOBYTE(v65) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v49 = Optional<A>.description.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v66);

    *(v20 + 44) = v51;
    _os_log_impl(&_mh_execute_header, v18, v60, "fetching for %@ assetVariants=%s payload=%s extraAssetsURL=%s isRHD=%s", v20, 0x34u);
    outlined destroy of NSObject?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();

    (*(v61 + 8))(v7, v46);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (!v52)
  {
    v54 = 0;
    if (v11)
    {
      goto LABEL_25;
    }

LABEL_27:
    v55.super.isa = 0;
    goto LABEL_28;
  }

  v53 = v52;
  v54 = *(v52 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL);

  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_25:
  v55.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_28:
  v56 = v64;
  (*(a2 + 16))(a2, v54, v64, v55.super.isa, 0);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
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

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = (v6 + 7);
  v44 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    while (1)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = NSObject._rawHashValue(seed:)(v6[5]);
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *&v12[8 * (v19 >> 6)];
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(v6[6] + 8 * v19);
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *&v12[8 * (v19 >> 6)];
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v12[8 * v20] = v22 | v21;
        *(v6[6] + 8 * v19) = v16;
        v26 = v6[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        v6[2] = v27;
        if (v13 == v8)
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
    v28 = 0;
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = v6[5];
      v30 = *(a1 + 32 + 8 * v28);
      v31 = NSObject._rawHashValue(seed:)(v29);
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *&v12[8 * (v33 >> 6)];
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        a4(0);
        while (1)
        {
          v38 = *(v6[6] + 8 * v33);
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *&v12[8 * (v33 >> 6)];
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v12[8 * v34] = v36 | v35;
        *(v6[6] + 8 * v33) = v30;
        v40 = v6[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        v6[2] = v41;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
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

unint64_t lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for NSSecurityScopedURLWrapper, NSSecurityScopedURLWrapper_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject);
  }

  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000186E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t objectdestroy_40Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for CAFSettingProminenceLevel(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void one-time initialization function for subsystem()
{
  v0 = [objc_opt_self() identifier];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static Logger.AppLinksLogger.subsystem = v1;
  *algn_10005FE08 = v3;
}

uint64_t one-time initialization function for appLinks()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appLinks);
  __swift_project_value_buffer(v0, static Logger.appLinks);
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

void CAFDAppLinksAgent.settings.didset()
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.appLinks);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = *(&v2->isa + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v3, v4, "Received %{public}ld new deep link settings from automakerSettings", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v8 = *(&v2->isa + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v12[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = &block_descriptor_67;
  v10 = _Block_copy(v12);
  v11 = v2;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

char *CAFDAppLinksAgent.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDAppLinksAgent.init(carManager:)(a1);

  return v4;
}

char *CAFDAppLinksAgent.init(carManager:)(void *a1)
{
  v2 = specialized CAFDAppLinksAgent.init(carManager:)(a1);

  return v2;
}

void CAFDAppLinksAgent.refreshClients()()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (one-time initialization token for appLinks != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_7;
  }

  v3 = __CocoaSet.count.getter();

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(v0 + v1);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAgent._CAFDConnectionProxy();
    lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFDAgent._CAFDConnectionProxy and conformance NSObject, type metadata accessor for CAFDAgent._CAFDConnectionProxy, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v6 = v36;
    v5 = v37;
    v7 = v38;
    v8 = v39;
    v9 = v40;
  }

  else
  {
    v14 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v9 = v16 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v8 = 0;
  }

  v17 = (v7 + 64) >> 6;
  v18 = &unk_10005F000;
  v33 = v5;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CAFDAgent._CAFDConnectionProxy(), swift_dynamicCast(), v23 = v35, v21 = v8, v22 = v9, !v35))
    {
LABEL_29:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant(v6);

      return;
    }

LABEL_25:
    v34 = v22;
    if (v18[261] != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.appLinks);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v18;
      v29 = v6;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v25;
      *v31 = v23;
      v32 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "queuing applinks refresh for %@", v30, 0xCu);
      outlined destroy of NSObject?(v31);

      v6 = v29;
      v18 = v28;
      v5 = v33;
    }

    [swift_dynamicCastObjCProtocolUnconditional() refreshAppLinksSnapshot];
    v8 = v21;
    v9 = v34;
  }

  v19 = v8;
  v20 = v9;
  v21 = v8;
  if (v9)
  {
LABEL_21:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v6 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_29;
    }

    v20 = *(v5 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.appLinks);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No clients to refresh.", v13, 2u);
  }
}

void CAFDAppLinksAgent.updateAppLinks()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&v0[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings];
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = v0;

    v0 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v48 = v7;
      closure #1 in CAFDAppLinksAgent.updateAppLinks()(&v48, &v47);

      if (v47)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = aBlock[0];
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_15:

  v10 = objc_allocWithZone(CAFAppLinksSnapshot);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAppLink, CAFAppLink_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = [v10 initWithAppLinks:isa];

  v12 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot;
  v13 = v44;
  v14 = *&v44[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot];
  if (v14)
  {
    v15 = v14;
    if ([v15 isEqual:v45])
    {
      if (one-time initialization token for appLinks != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.appLinks);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No change in appLink snapshot; not notifying clients.", v19, 2u);
      }

      v20 = v45;

      return;
    }
  }

  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.appLinks);
  v22 = v45;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Sending updated appLink snapshot to clients: %@", v25, 0xCu);
    outlined destroy of NSObject?(v26);
  }

  v28 = *&v13[v12];
  *&v13[v12] = v22;
  v29 = v22;

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v13;
  aBlock[4] = partial apply for closure #2 in CAFDAppLinksAgent.updateAppLinks();
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_61;
  v32 = _Block_copy(aBlock);
  v33 = v13;

  v34 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v35 = v40;
  v36 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v42 + 8))(v35, v36);
  (*(v39 + 8))(v34, v41);
}

void closure #1 in CAFDAppLinksAgent.updateAppLinks()(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 prominenceInfo];
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = v4;
  [v4 prominenceLevel];
  if ((CAFSettingProminenceLevel.hasHomescreen.getter() & 1) == 0)
  {
LABEL_22:

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v6 = getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(v5, v3);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.appLinks);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Ignoring AppLink - homescreen DeepLink missing title.";
    goto LABEL_20;
  }

  v10 = [v3 symbolName];
  if (!v10)
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.appLinks);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Ignoring AppLink - homescreen DeepLink missing symbol information.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_21:

    goto LABEL_22;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042860;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v16 = [v5 color];
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(CAFSymbolImageWithColor);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithDictionary:isa];

  v20 = [v3 identifier];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(v5, v3);
  v21 = [v3 contentURLAction];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = objc_allocWithZone(CAFAppLink);
  v23 = v19;
  v24 = String._bridgeToObjectiveC()();

  v25 = [v22 initWithIdentifier:v20 title:v24 contentURLAction:v21 symbolNameAndColor:v23];

LABEL_24:
  *a2 = v25;
}

uint64_t getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(void *a1, void *a2)
{
  v3 = [a1 userVisibleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  v10 = [a2 userVisibleLabel];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

void CAFDAppLinksAgent.__ivar_destroyer()
{
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
}

id CAFDAppLinksAgent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDAppLinksAgent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void CAFDAppLinksAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v2 = [a1 automakerSettings];
  if (v2)
  {
    v3 = v2;
    [v2 registerObserver:v1];
    v4 = *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings);
    *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings) = v3;
    v16 = v3;

    v5 = [v16 deepLinkSettings];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFDeepLinkSetting, CAFDeepLinkSetting_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          [v10 registerObserver:v1];

          ++v9;
          if (v12 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:
      *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings) = v7;

      CAFDAppLinksAgent.settings.didset();
    }
  }

  else
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.appLinks);
    v16 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v16, v14, "Awaiting automakerSettings", v15, 2u);
    }
  }
}

void CAFDAppLinksAgent.accessoryDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 car];
    if (v3)
    {
      v4 = v3;
      [v2 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateProminenceInfo:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.appLinks);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v8 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (a2)
    {
      v17 = [v7 prominenceLevel];
    }

    else
    {
      v17 = 0;
    }

    aBlock = v17;
    LOBYTE(v27) = a2 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAFSettingProminenceLevelVSgMd, _sSo25CAFSettingProminenceLevelVSgMR);
    lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel, type metadata accessor for CAFSettingProminenceLevel, &protocol conformance descriptor for CAFSettingProminenceLevel);
    v18 = Optional<A>.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received didUpdateProminenceInfo %s prominenceLevel %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *&v3[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v30 = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v31 = v22;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v29 = &block_descriptor_0;
  v23 = _Block_copy(&aBlock);
  v24 = v3;

  [v21 addOperationWithBlock:v23];
  _Block_release(v23);
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appLinks);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "Received didUpdateUserVisibleLabel %s userVisibleLabel %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *&v4[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  v22[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22[3] = &block_descriptor_6;
  v20 = _Block_copy(v22);
  v21 = v4;

  [v18 addOperationWithBlock:v20];
  _Block_release(v20);
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateSymbolName:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appLinks);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      a2 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v18, v24);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received didUpdateSymbolName %s symbolName %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *&v4[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v24[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v24[3] = &block_descriptor_12;
  v22 = _Block_copy(v24);
  v23 = v4;

  [v20 addOperationWithBlock:v22];
  _Block_release(v22);
}

void CAFDAppLinksAgent.deepLinkSettingService(_:didUpdateContentURLAction:)(void *a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.appLinks);
  v16 = a1;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v33 = a2;
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = [v16 identifier];
    v21 = a7;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v18;
    v23 = v11;
    v24 = a6;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v26, aBlock);
    a6 = v24;
    v11 = v23;

    *(v19 + 4) = v27;
    a7 = v21;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v32, a4, v19, 0x16u);
    swift_arrayDestroy();
  }

  v28 = *&v11[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v11;
  aBlock[4] = a6;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a7;
  v30 = _Block_copy(aBlock);
  v31 = v11;

  [v28 addOperationWithBlock:v30];
  _Block_release(v30);
}

uint64_t @objc CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  a5(v11, v8, v10);
}

void CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLinks);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "fetchAppLinksSnapshot(reply:)", v7, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for CAFDAppLinksAgent(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = a1;
      v13[4] = a2;
      aBlock[4] = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:);
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_55;
      v14 = _Block_copy(aBlock);
      v15 = v12;
      v16 = v9;

      [v15 addOperationWithBlock:v14];
      _Block_release(v14);

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(uint64_t a1, void (*a2)(id, void))
{
  v3 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot;
  v4 = *(a1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot);
  if (v4 || (CAFDAppLinksAgent.updateAppLinks()(), (v4 = *(a1 + v3)) != 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(CAFAppLinksSnapshot) init];
    v4 = 0;
  }

  v6 = v4;
  a2(v7, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall CAFDAgent._CAFDConnectionProxy.refreshAppLinksSnapshot()()
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.appLinks);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "refreshAppLinksSnapshot()", v3, 2u);
  }

  if (CAFDAgent._CAFDConnectionProxy.remote.getter())
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 refreshAppLinksSnapshot];
    }

    swift_unknownObjectRelease();
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13CarAssetUtils15CAUVehicleTraitO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v9, v5, &_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CAUVehicleTrait();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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

char *specialized CAFDAppLinksAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAFDAgent.Configuration(0);
  v9 = __chkstk_darwin(v8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v48 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_carManager;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue;
  v14 = [objc_allocWithZone(NSOperationQueue) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setName:v15];

  [v14 setQualityOfService:25];
  [v14 setMaxConcurrentOperationCount:1];
  *&v2[v13] = v14;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, static Logger.appLinks);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v2;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "initializing applinks server", v19, 2u);
  }

  v49 = v7;
  v50 = v4;
  v51 = a1;

  swift_unknownObjectWeakAssign();
  (*(v5 + 16))(v7, v16, v4);
  v20 = objc_opt_self();
  v21 = [v20 identifier];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = [objc_opt_self() serial];
  v48 = BSDispatchQueueCreate();

  v47 = [v20 interface];
  v23 = [v20 entitlement];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v25;
  v46 = v24;

  v26 = [objc_opt_self() userInitiated];
  v27 = [v20 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = [v20 identifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  (*(v5 + 32))(v12, v49, v50);
  v35 = v47;
  *&v12[v8[5]] = v48;
  *&v12[v8[6]] = v35;
  v36 = &v12[v8[7]];
  v37 = v45;
  *v36 = v46;
  *(v36 + 1) = v37;
  *&v12[v8[8]] = v26;
  v38 = &v12[v8[9]];
  *v38 = v28;
  v38[1] = v30;
  v39 = &v12[v8[10]];
  *v39 = v32;
  v39[1] = v34;
  v40 = v52;
  outlined init with copy of CAFDAgent.Configuration(v12, v52);
  v41 = CAFDAgent.init(configuration:)(v40);
  v42 = v51;
  [v51 registerObserver:v41];
  v43 = [v42 currentCar];
  [v41 carManager:v42 didUpdateCurrentCar:v43];

  outlined destroy of CAFDAgent.Configuration(v12);
  return v41;
}

uint64_t type metadata accessor for CAFDAppLinksAgent(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFDAppLinksAgent;
  if (!type metadata singleton initialization cache for CAFDAppLinksAgent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10001BF64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized CAFDAppLinksAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.appLinks);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar];
    if (v9)
    {
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v28);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (a1)
    {
      v15 = [v4 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v28);

    *(v8 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "update current car from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar;
  v21 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar];
  if (v21)
  {
    [v21 unregisterObserver:v5];
    v22 = *&v5[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v5[v20] = a1;

  if (a1)
  {
    v24 = v4;
    [v24 registerObserver:v5];
    v25 = "carDidUpdateAccessories:";
    v26 = v5;
    v23 = v24;
  }

  else
  {
    v26 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
    v25 = "cancelAllOperations";
  }

  return [v26 v25];
}

uint64_t sub_10001C334()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C374()
{

  return _swift_deallocObject(v0, 40, 7);
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

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t outlined init with copy of CAFDAgent.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDAgent.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFDAgent.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for CAFDAgent.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t one-time initialization function for nowPlaying()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.nowPlaying);
  __swift_project_value_buffer(v0, static Logger.nowPlaying);
  return Logger.init(subsystem:category:)();
}

int64x2_t one-time initialization function for maxImageSize()
{
  result = vdupq_n_s64(0x407F400000000000uLL);
  static CAFDNowPlayingAgent.maxImageSize = result;
  return result;
}

void CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.nowPlaying);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier];
    v8 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8];

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new media source identifier %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v14[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = &block_descriptor_190;
  v12 = _Block_copy(v14);
  v13 = v2;

  [v10 addOperationWithBlock:v12];
  _Block_release(v12);
}

char *CAFDNowPlayingAgent.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDNowPlayingAgent.init(carManager:)(a1);

  return v4;
}

char *CAFDNowPlayingAgent.init(carManager:)(void *a1)
{
  v2 = specialized CAFDNowPlayingAgent.init(carManager:)(a1);

  return v2;
}

void CAFDNowPlayingAgent.refreshClients()()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (one-time initialization token for nowPlaying != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_7;
  }

  v3 = __CocoaSet.count.getter();

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(v0 + v1);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAgent._CAFDConnectionProxy();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CAFDAgent._CAFDConnectionProxy and conformance NSObject, type metadata accessor for CAFDAgent._CAFDConnectionProxy, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v6 = v36;
    v5 = v37;
    v7 = v38;
    v8 = v39;
    v9 = v40;
  }

  else
  {
    v14 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v9 = v16 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v8 = 0;
  }

  v17 = (v7 + 64) >> 6;
  v18 = &unk_10005F000;
  v33 = v5;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CAFDAgent._CAFDConnectionProxy(), swift_dynamicCast(), v23 = v35, v21 = v8, v22 = v9, !v35))
    {
LABEL_29:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant(v6);

      return;
    }

LABEL_25:
    v34 = v22;
    if (v18[262] != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.nowPlaying);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v18;
      v29 = v6;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v25;
      *v31 = v23;
      v32 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "queuing now playing refresh for %@", v30, 0xCu);
      outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v6 = v29;
      v18 = v28;
      v5 = v33;
    }

    [swift_dynamicCastObjCProtocolUnconditional() refreshNowPlayingSnapshot];
    v8 = v21;
    v9 = v34;
  }

  v19 = v8;
  v20 = v9;
  v21 = v8;
  if (v9)
  {
LABEL_21:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v6 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_29;
    }

    v20 = *(v5 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.nowPlaying);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No clients to refresh.", v13, 2u);
  }
}

void CAFDNowPlayingAgent.updateNowPlaying()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v306 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = 0;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v306 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  v13 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  v12 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8);
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.nowPlaying);
    v334 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v334, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v334, v40, "No current media source", v41, 2u);
    }

    goto LABEL_91;
  }

  v326 = v11;
  v312 = v10;
  v313 = v8;
  v15 = v13 == 0x59414C505F574F4ELL && v12 == 0xEB00000000474E49;
  v333 = v1;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v42 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar);
    if (v42 && (, v43 = v42, v44 = String._bridgeToObjectiveC()(), , v334 = [v43 mediaSourceWithIdentifier:v44], v43, v44, v334))
    {
      v45 = [v334 receivedAllValues];
      v46 = one-time initialization token for nowPlaying == -1;
      if (v45)
      {
        if (one-time initialization token for nowPlaying != -1)
        {
          goto LABEL_319;
        }

        goto LABEL_29;
      }

LABEL_86:
      if (!v46)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.nowPlaying);
      v101 = v1;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v335[0] = v105;
        *v104 = 136446210;
        v106 = *v326;
        v107 = v326[1];

        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v335);

        *(v104 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v102, v103, "Source has not received all values: %{public}s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
      }

      [v334 registerObserver:v101];
    }

    else
    {
      if (one-time initialization token for nowPlaying != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.nowPlaying);
      v61 = v1;
      v334 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v334, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v335[0] = v64;
        *v63 = 136446210;
        v65 = *v326;
        v66 = v326[1];

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v335);

        *(v63 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v334, v62, "No media source with identifier %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);

        return;
      }
    }

LABEL_91:
    v109 = v334;

    return;
  }

  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v311 = v7;
  v316 = v5;
  v317 = v3;
  v318 = v2;
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.nowPlaying);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received update for now-playing-only source identifier.", v19, 2u);
  }

  v20 = swift_allocObject();
  v7 = 0;
  v21 = 0;
  *(v20 + 16) = _swiftEmptyArrayStorage;
  while (2)
  {
    v22 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying;
    v23 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying);
    v334 = v21;
    if (!v23)
    {
      v319 = 0;
      v320 = 0;
      v25 = 0;
      v310 = 0;
      v34 = 0xE000000000000000;
      v27 = 0xE000000000000000;
      v331 = 0xE000000000000000;
      v329 = 0xE000000000000000;
      goto LABEL_43;
    }

    v24 = [v23 title];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = *(v1 + v22);
    if (!v28)
    {
      v319 = 0;
      v320 = 0;
      v310 = 0;
      v34 = 0xE000000000000000;
      v331 = 0xE000000000000000;
LABEL_41:
      v329 = 0xE000000000000000;
      goto LABEL_42;
    }

    v29 = [v28 artist];
    v319 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v331 = v30;

    v31 = *(v1 + v22);
    if (!v31)
    {
      v320 = 0;
      v310 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_41;
    }

    v32 = [v31 album];
    v320 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = *(v1 + v22);
    if (!v35 || (v36 = [v35 userVisibleDescription]) == 0)
    {
      v310 = 0;
      goto LABEL_41;
    }

    v37 = v36;
    v310 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v329 = v38;

LABEL_42:
    v21 = v334;
LABEL_43:
    v328 = v34;
    v68 = *(v1 + v22);
    if (v68)
    {
      v69 = [v68 artworkCharacteristic];
      v324 = [v69 transactionId];

      v21 = v334;
      if (v334)
      {
        goto LABEL_45;
      }

LABEL_48:
      v323 = 0;
      v72 = *(v1 + v22);
      if (v72)
      {
        goto LABEL_52;
      }

LABEL_49:
      v73 = 1;
      goto LABEL_57;
    }

    v324 = 0;
    if (!v21)
    {
      goto LABEL_48;
    }

LABEL_45:
    v70 = [v21 mediaItemImagesCharacteristic];
    if (v70)
    {
      v71 = v70;
      v323 = [v70 transactionId];
    }

    else
    {
      v323 = 0;
    }

    v21 = v334;
    v72 = *(v1 + v22);
    if (!v72)
    {
      goto LABEL_49;
    }

LABEL_52:
    if ([v72 hasPlaybackState] && (v74 = *(v1 + v22)) != 0)
    {
      v73 = [v74 playbackState];
    }

    else
    {
      v73 = 1;
    }

    v21 = v334;
LABEL_57:
    v321 = v20;
    v322 = v27;
    v325 = v22;
    v315 = v73;
    if (!v21)
    {
      goto LABEL_109;
    }

    v75 = v21;
    if ([v75 hasCurrentMediaItemIdentifier]&& [v75 hasMediaItems]&& ([v75 currentMediaItemIdentifierInvalid]& 1) == 0 && (v76 = [v75 currentMediaItemIdentifier]) != 0)
    {
      v309 = v25;
      v77 = v76;
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        v82 = v80;
        v83 = v75;
        v84 = [v75 mediaItems];
        if (v84)
        {
          v85 = v20;
          v86 = v84;
          v87 = [v84 mediaItems];

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
          v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v89 = v332;
          v25 = specialized Sequence.first(where:)(v88, v78, v82);
          v332 = v89;

          swift_bridgeObjectRelease_n();
          if (v25)
          {
            v90 = v83;
            v20 = v85;
LABEL_97:
            v314 = v25;
            v110 = v25;
            if (one-time initialization token for nowPlaying != -1)
            {
              swift_once();
            }

            v111 = type metadata accessor for Logger();
            __swift_project_value_buffer(v111, static Logger.nowPlaying);
            v112 = v110;
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.default.getter();
            v115 = os_log_type_enabled(v113, v114);
            v308 = v112;
            v330 = v90;
            if (v115)
            {
              LODWORD(v327) = v114;
              v116 = v20;
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v335[0] = v118;
              *v117 = 136446466;
              v119 = [v112 identifier];
              if (v119)
              {
                v120 = v119;
                v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v123 = v122;
              }

              else
              {
                v121 = 0;
                v123 = 0xE000000000000000;
              }

              v256 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v335);

              *(v117 + 4) = v256;
              *(v117 + 12) = 1026;
              v257 = v308;
              v258 = [v308 frequency];

              *(v117 + 14) = v258;
              v124 = v257;

              _os_log_impl(&_mh_execute_header, v113, v327, "Found media item with identifier %{public}s, frequency %{public}u", v117, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v118);

              v20 = v116;
              v25 = v309;
              v90 = v330;
            }

            else
            {

              v25 = v309;
              v124 = v112;
            }

            v259 = swift_allocObject();
            *(v259 + 16) = 0;
            *(v259 + 24) = 0xE000000000000000;
            v309 = v25;
            v307 = v259;
            if (v7 > 8 || ((1 << v7) & 0x106) == 0)
            {
              v275 = [v124 mediaItemName];
              v27 = v322;
              if (!v275)
              {
LABEL_296:
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100042C30;
                swift_beginAccess();
                v284 = *(v259 + 24);
                *(inited + 32) = *(v259 + 16);
                *(inited + 40) = v284;

                specialized Array.append<A>(contentsOf:)(inited);
                v285 = v308;
                v133 = [v308 multicast];
                v286 = [v285 mediaItemImageIdentifier];
                if (v286)
                {
                  v287 = v286;
                  v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v290 = v289;

                  v291 = HIBYTE(v290) & 0xF;
                  if ((v290 & 0x2000000000000000) == 0)
                  {
                    v291 = v288 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v291)
                  {
                    v292 = v90;
                    v293 = [v292 hasMediaItemImages];
                    v294 = v308;
                    if (v293)
                    {
                      v295 = [v292 mediaItemImages];
                      if (v295)
                      {
                        v296 = v292;
                        v297 = v295;
                        v298 = [v295 mediaItemImages];

                        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItemImage, CAFMediaItemImage_ptr);
                        v299 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                        v300 = v332;
                        v301 = specialized Sequence.first(where:)(v299, v288, v290);
                        v332 = v300;

                        swift_bridgeObjectRelease_n();
                        if (v301)
                        {
                          v302 = [v301 imageData];
                          v20 = v321;
                          v25 = v309;
                          if (v302)
                          {
                            v303 = v302;
                            v327 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                            v330 = v304;
                          }

                          else
                          {

                            v327 = 0;
                            v330 = 0xF000000000000000;
                          }

                          v27 = v322;
                        }

                        else
                        {

                          v327 = 0;
                          v330 = 0xF000000000000000;
                          v20 = v321;
                          v27 = v322;
                          v25 = v309;
                        }

                        goto LABEL_121;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }

                  v327 = 0;
                  v330 = 0xF000000000000000;
                  v25 = v309;
                  goto LABEL_121;
                }

                v327 = 0;
                goto LABEL_120;
              }

              v276 = v20;
              v277 = v275;
              v278 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v280 = v279;

              v281 = HIBYTE(v280) & 0xF;
              if ((v280 & 0x2000000000000000) == 0)
              {
                v281 = v278 & 0xFFFFFFFFFFFFLL;
              }

              if (v281)
              {
                firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v278, v280, v259);
              }

              v20 = v276;
              goto LABEL_292;
            }

            if ([v124 frequency])
            {
              v327 = UInt32.formattedFrequency(in:)(v7, [v124 frequency]);
              v261 = v260;
            }

            else
            {
              v327 = 0;
              v261 = 0xE000000000000000;
            }

            v262 = [v124 mediaItemName];
            v27 = v322;
            if (v262)
            {
              v263 = v20;
              v264 = v262;
              v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v267 = v266;

              v268 = HIBYTE(v267) & 0xF;
              if ((v267 & 0x2000000000000000) == 0)
              {
                v268 = v265 & 0xFFFFFFFFFFFFLL;
              }

              if (v268)
              {
                goto LABEL_280;
              }

              v20 = v263;
              v90 = v330;
              v124 = v308;
            }

            v269 = [v124 mediaItemShortName];
            if (v269)
            {
              v263 = v20;
              v270 = v269;
              v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v267 = v271;

              v272 = HIBYTE(v267) & 0xF;
              if ((v267 & 0x2000000000000000) == 0)
              {
                v272 = v265 & 0xFFFFFFFFFFFFLL;
              }

              if (v272)
              {
LABEL_280:
                v273 = HIBYTE(v261) & 0xF;
                if ((v261 & 0x2000000000000000) == 0)
                {
                  v273 = v327 & 0xFFFFFFFFFFFFLL;
                }

                v20 = v263;
                if (v273)
                {
                  v274._countAndFlagsBits = 8013901;
                  v274._object = 0xE300000000000000;
                  if (!String.hasSuffix(_:)(v274))
                  {
                    firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v327, v261, v307);
                  }
                }

                v259 = v307;
                firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v265, v267, v307);
LABEL_292:
                v90 = v330;
LABEL_295:

                v25 = v309;
                goto LABEL_296;
              }

              v20 = v263;
              v90 = v330;
            }

            v282 = v307;
            firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v327, v261, v307);
            v259 = v282;
            goto LABEL_295;
          }

          v20 = v85;
          v27 = v322;
          v25 = v309;
LABEL_109:
          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          __swift_project_value_buffer(v125, static Logger.nowPlaying);
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 0;
            _os_log_impl(&_mh_execute_header, v126, v127, "No available current media item", v128, 2u);
          }

          if (v334)
          {
            v129 = v25;
            v130 = v334;
            if ([v130 hasCurrentFrequency]&& ([v130 currentFrequencyInvalid]& 1) == 0 && [v130 currentFrequency])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v131 = swift_initStackObject();
              *(v131 + 16) = xmmword_100042C30;
              *(v131 + 32) = UInt32.formattedFrequency(in:)([v130 mediaSourceSemanticType], [v130 currentFrequency]);
              *(v131 + 40) = v132;
              specialized Array.append<A>(contentsOf:)(v131);
            }

            v133 = 0;
            v327 = 0;
            v314 = 0;
            v330 = 0xF000000000000000;
            v25 = v129;
LABEL_121:
            v134 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v134 = v25 & 0xFFFFFFFFFFFFLL;
            }

            if (v134)
            {
              v135 = v27;
              v136 = v331;
              v137 = v319;
            }

            else
            {
              v138 = HIBYTE(v329) & 0xF;
              v25 = v310;
              if ((v329 & 0x2000000000000000) == 0)
              {
                v138 = v310 & 0xFFFFFFFFFFFFLL;
              }

              v136 = v331;
              v137 = v319;
              if (!v138)
              {
                goto LABEL_130;
              }

              v135 = v329;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v139 = swift_initStackObject();
            *(v139 + 16) = xmmword_100042C30;
            *(v139 + 32) = v25;
            *(v139 + 40) = v135;

            specialized Array.append<A>(contentsOf:)(v139);
LABEL_130:
            v319 = v133;
            v140 = HIBYTE(v136) & 0xF;
            if ((v136 & 0x2000000000000000) == 0)
            {
              v140 = v137 & 0xFFFFFFFFFFFFLL;
            }

            if (v140)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v141 = swift_initStackObject();
              *(v141 + 16) = xmmword_100042C30;
              *(v141 + 32) = v137;
              *(v141 + 40) = v136;

              specialized Array.append<A>(contentsOf:)(v141);
            }

            v142 = &byte_100055978;
            v143 = 3;
            v97 = v325;
            v144 = v320;
            while (v143)
            {
              v145 = *v142++;
              --v143;
              if (v145 == v7)
              {
                v146 = v328;
                v147 = HIBYTE(v328) & 0xF;
                if ((v328 & 0x2000000000000000) == 0)
                {
                  v147 = v320 & 0xFFFFFFFFFFFFLL;
                }

                if (v147)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                  v148 = swift_initStackObject();
                  *(v148 + 16) = xmmword_100042C30;
                  *(v148 + 32) = v144;
                  *(v148 + 40) = v146;

                  specialized Array.append<A>(contentsOf:)(v148);
                }

                break;
              }
            }

            v25 = v20 + 16;
            v3 = *(v20 + 16);
            v335[0] = &_swiftEmptySetSingleton;

            v150 = specialized _ArrayProtocol.filter(_:)(v149);

            v332 = v150;
            if (*(v150 + 16) != *(v3 + 16))
            {
              if (one-time initialization token for nowPlaying != -1)
              {
                goto LABEL_314;
              }

              goto LABEL_143;
            }

            goto LABEL_146;
          }

          v133 = 0;
          v327 = 0;
          v314 = 0;
LABEL_120:
          v330 = 0xF000000000000000;
          goto LABEL_121;
        }

        goto LABEL_107;
      }

      v25 = v309;
    }

    else
    {
    }

    v91 = v75;
    if (![v91 hasCurrentFrequency])
    {
      goto LABEL_108;
    }

    if (([v91 currentFrequencyInvalid]& 1) != 0)
    {
      goto LABEL_108;
    }

    if (![v91 currentFrequency])
    {
      goto LABEL_108;
    }

    v92 = [v91 mediaItems];
    if (!v92)
    {
      goto LABEL_108;
    }

    LODWORD(v327) = v7;
    v309 = v25;
    v93 = v92;
    v94 = [v92 mediaItems];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
    v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v95 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        goto LABEL_75;
      }

LABEL_102:
      v7 = v327;
LABEL_107:

      v25 = v309;
LABEL_108:

      goto LABEL_109;
    }

    v7 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_102;
    }

LABEL_75:
    v330 = v75;
    v96 = 0;
    v97 = v95 & 0xC000000000000001;
    while (v97)
    {
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = v96 + 1;
      v46 = v96 == -1;
      if (__OFADD__(v96, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_79:
      v25 = v98;
      v99 = [v98 frequency];
      if (v99 == [v91 currentFrequency])
      {

        v1 = v333;
        v20 = v321;
        v90 = v330;
        v7 = v327;
        goto LABEL_97;
      }

      ++v96;
      v15 = v1 == v7;
      v1 = v333;
      if (v15)
      {
        v20 = v321;
        v27 = v322;
        v75 = v330;
        goto LABEL_102;
      }
    }

    if (v96 < *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v98 = *(v95 + 8 * v96 + 32);
      v1 = v96 + 1;
      v46 = v96 == -1;
      if (__OFADD__(v96, 1))
      {
        goto LABEL_85;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_314:
    swift_once();
LABEL_143:
    v151 = type metadata accessor for Logger();
    __swift_project_value_buffer(v151, static Logger.nowPlaying);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v335[0] = v155;
      *v154 = 136446210;

      v156 = Array.description.getter();
      v158 = v157;

      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, v335);

      *(v154 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v152, v153, "Removed duplicate titles: %{public}s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      v1 = v333;

      v97 = v325;
    }

    swift_beginAccess();
    v160 = v332;
    *v25 = v332;

    v3 = v160;
LABEL_146:
    v336 = xmmword_100042C40;
    v161 = *(v1 + v97);
    v2 = v330;
    if (v161)
    {
      v162 = [v161 artwork];
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v163;

      v164 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        if (v164 == 2 && *(v51 + 16) != *(v51 + 24))
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (v164)
        {
          if (v51 == v51 >> 32)
          {
            goto LABEL_162;
          }
        }

        else if ((v5 & 0xFF000000000000) == 0)
        {
          goto LABEL_162;
        }

LABEL_155:
        isa = Data._bridgeToObjectiveC()().super.isa;
        IsValidImage = CAFImageDataIsValidImage(isa);

        if (IsValidImage)
        {
          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v167 = type metadata accessor for Logger();
          __swift_project_value_buffer(v167, static Logger.nowPlaying);
          v168 = Logger.logObject.getter();
          v169 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v168, v169))
          {
            v170 = swift_slowAlloc();
            *v170 = 0;
            _os_log_impl(&_mh_execute_header, v168, v169, "Applying now playing artwork for snapshot.", v170, 2u);
          }

          v171 = v336;
          *&v336 = v51;
          *(&v336 + 1) = v5;
          outlined copy of Data._Representation(v51, v5);
          outlined consume of Data?(v171, *(&v171 + 1));
          v172 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
          if (!v172)
          {
            goto LABEL_227;
          }

          v173 = v172;
          v174 = [v173 lastArtworkToken];
          outlined consume of Data._Representation(v51, v5);

LABEL_228:
          v5 = v324;
          v2 = v324 != v174;
          goto LABEL_165;
        }
      }

LABEL_162:
      outlined consume of Data._Representation(v51, v5);
    }

    if (v2 >> 60 == 15)
    {
      goto LABEL_164;
    }

    v180 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (v180)
      {
        if (v327 == v327 >> 32)
        {
          goto LABEL_164;
        }
      }

      else if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_209;
    }

    while (2)
    {
      if (v180 != 2 || *(v327 + 16) == *(v327 + 24))
      {
        goto LABEL_164;
      }

LABEL_209:
      v197 = v327;
      outlined copy of Data._Representation(v327, v2);
      v198 = Data._bridgeToObjectiveC()().super.isa;
      v199 = CAFImageDataIsValidImage(v198);

      if (!v199)
      {
        outlined consume of Data?(v197, v2);
LABEL_164:
        v2 = 0;
        v5 = 0;
LABEL_165:
        v175 = 1;
        goto LABEL_166;
      }

      if (one-time initialization token for nowPlaying != -1)
      {
        goto LABEL_316;
      }

      while (1)
      {
        v200 = type metadata accessor for Logger();
        __swift_project_value_buffer(v200, static Logger.nowPlaying);
        v201 = Logger.logObject.getter();
        v202 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          *v203 = 0;
          _os_log_impl(&_mh_execute_header, v201, v202, "Applying media item artwork for snapshot.", v203, 2u);
        }

        v204 = v336;
        v205 = v327;
        *&v336 = v327;
        *(&v336 + 1) = v2;
        outlined copy of Data._Representation(v327, v2);
        outlined consume of Data?(v204, *(&v204 + 1));
        v206 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
        if (v206)
        {
          v207 = v206;
          v208 = [v207 lastMediaItemImageToken];
          outlined consume of Data?(v205, v2);
        }

        else
        {
          outlined consume of Data?(v205, v2);
          v208 = 0;
        }

        v175 = 0;
        v5 = v323;
        v2 = v323 != v208;
LABEL_166:
        v325 = v175;
        if (*(&v336 + 1) >> 60 == 15)
        {

          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v176 = type metadata accessor for Logger();
          __swift_project_value_buffer(v176, static Logger.nowPlaying);
          v50 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v50, v177))
          {
            v178 = swift_slowAlloc();
            *v178 = 0;
            _os_log_impl(&_mh_execute_header, v50, v177, "No available artwork data.", v178, 2u);
            goto LABEL_245;
          }

          goto LABEL_246;
        }

        v179 = *(&v336 + 1) >> 62;
        if ((*(&v336 + 1) >> 62) > 1)
        {
          break;
        }

        if (!v179)
        {
          v1 = BYTE14(v336);
          goto LABEL_188;
        }

        if (!__OFSUB__(DWORD1(v336), v336))
        {
          v1 = DWORD1(v336) - v336;
          goto LABEL_188;
        }

        __break(1u);
LABEL_316:
        swift_once();
      }

      if (v179 == 2)
      {
        v180 = *(v336 + 16);
        v181 = *(v336 + 24);
        v1 = v181 - v180;
        if (!__OFSUB__(v181, v180))
        {
          goto LABEL_188;
        }

        __break(1u);
        continue;
      }

      break;
    }

    v1 = 0;
LABEL_188:
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v182 = type metadata accessor for Logger();
    __swift_project_value_buffer(v182, static Logger.nowPlaying);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 134218240;
      *(v185 + 4) = v1;
      *(v185 + 12) = 2048;
      *(v185 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v183, v184, "Processing new artwork data of size %ld; transaction %ld.", v185, 0x16u);
    }

    if (v2)
    {
      v186 = *(&v336 + 1);
      if (*(&v336 + 1) >> 60 == 15)
      {
        goto LABEL_326;
      }

      v187 = v336;
      outlined copy of Data._Representation(v336, *(&v336 + 1));
      v188.super.isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v187, v186);
      if (one-time initialization token for maxImageSize != -1)
      {
        swift_once();
      }

      v189 = CAFImageDataByScalingImageData(v188.super.isa, *&static CAFDNowPlayingAgent.maxImageSize, *(&static CAFDNowPlayingAgent.maxImageSize + 1));

      v190 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v191;

      outlined consume of Data?(v336, *(&v336 + 1));
      *&v336 = v190;
      *(&v336 + 1) = v2;
    }

    if (v1 < 1)
    {

      goto LABEL_247;
    }

    if (*(&v336 + 1) >> 60 != 15)
    {

      v192 = *(&v336 + 1) >> 62;
      if ((*(&v336 + 1) >> 62) > 1)
      {
        if (v192 != 2)
        {
          goto LABEL_218;
        }

        v193 = *(v336 + 16);
        v194 = *(v336 + 24);
        v195 = __OFSUB__(v194, v193);
        v196 = v194 - v193;
        if (!v195)
        {
          if (v196 >= v1)
          {
            goto LABEL_247;
          }

          goto LABEL_218;
        }

        __break(1u);
      }

      else
      {
        if (!v192)
        {
          if (BYTE14(v336) >= v1)
          {
            goto LABEL_247;
          }

          goto LABEL_218;
        }

        if (!__OFSUB__(DWORD1(v336), v336))
        {
          if (DWORD1(v336) - v336 >= v1)
          {
            goto LABEL_247;
          }

LABEL_218:
          v50 = Logger.logObject.getter();
          v209 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v50, v209))
          {
            goto LABEL_246;
          }

          LODWORD(v332) = v209;
          v210 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          v335[0] = v331;
          *v210 = 134218498;
          swift_beginAccess();
          v51 = *(&v336 + 1);
          if (*(&v336 + 1) >> 60 == 15)
          {
            goto LABEL_327;
          }

          v211 = v336;
          v48 = (*(&v336 + 1) >> 62);
          if ((*(&v336 + 1) >> 62) > 1)
          {
            if (v48 != 2)
            {
              v212 = 0;
              goto LABEL_234;
            }

            v214 = *(v336 + 16);
            v213 = *(v336 + 24);
            v195 = __OFSUB__(v213, v214);
            v212 = v213 - v214;
            if (!v195)
            {
LABEL_234:
              *(v210 + 4) = v212;
              *(v210 + 12) = 2080;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v215 = swift_allocObject();
              *(v215 + 16) = xmmword_100042C30;
              if (v48 > 1)
              {
                if (v48 == 2)
                {
                  v218 = *(v211 + 16);
                  v217 = *(v211 + 24);
                  v195 = __OFSUB__(v217, v218);
                  v216 = v217 - v218;
                  if (!v195)
                  {
                    goto LABEL_244;
                  }

                  __break(1u);
                  goto LABEL_241;
                }

                v216 = 0;
              }

              else
              {
                if (!v48)
                {
                  v216 = BYTE6(v51);
                  goto LABEL_244;
                }

LABEL_241:
                LODWORD(v216) = HIDWORD(v211) - v211;
                if (__OFSUB__(HIDWORD(v211), v211))
                {
                  goto LABEL_323;
                }

                v216 = v216;
              }

LABEL_244:
              v219 = v216 * 100.0 / v1;
              *(v215 + 56) = &type metadata for Float;
              *(v215 + 64) = &protocol witness table for Float;
              *(v215 + 32) = v219;
              v220 = String.init(format:_:)();
              v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v221, v335);

              *(v210 + 14) = v222;
              *(v210 + 22) = 2048;
              *(v210 + 24) = v5;
              _os_log_impl(&_mh_execute_header, v50, v332, "Final artwork size %ld (deflated to %s%% of original), ; transaction %ld", v210, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v331);

LABEL_245:

LABEL_246:

LABEL_247:
              swift_beginAccess();
              v223 = v336;

              outlined copy of Data?(v223, *(&v223 + 1));
              v224.super.isa = Array._bridgeToObjectiveC()().super.isa;

              v225 = 0;
              if (*(&v223 + 1) >> 60 != 15)
              {
                v225 = Data._bridgeToObjectiveC()().super.isa;
                outlined consume of Data?(v223, *(&v223 + 1));
              }

              v226 = objc_allocWithZone(CAFNowPlayingSnapshot);
              v227 = String._bridgeToObjectiveC()();

              LOBYTE(v305) = v315;
              v228 = [v226 initWithTitles:v224.super.isa artworkData:v225 mediaSourceType:v7 mediaSourceIdentifier:v227 artworkToken:v324 mediaItemImageToken:v323 artworkType:v325 multicast:v319 playbackState:v305];

              v229 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot;
              v230 = *&v333[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot];
              v232 = v317;
              v231 = v318;
              v233 = v316;
              if (v230)
              {
                v234 = v230;
                if ([v234 isEqual:v228])
                {
                  if (one-time initialization token for nowPlaying != -1)
                  {
                    swift_once();
                  }

                  v235 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v235, static Logger.nowPlaying);
                  v236 = Logger.logObject.getter();
                  v237 = static os_log_type_t.default.getter();
                  v238 = os_log_type_enabled(v236, v237);
                  v239 = v327;
                  if (v238)
                  {
                    v240 = swift_slowAlloc();
                    *v240 = 0;
                    _os_log_impl(&_mh_execute_header, v236, v237, "No change in snapshot; not notifying clients.", v240, 2u);
                  }

                  outlined consume of Data?(v239, v330);
                  outlined consume of Data?(v336, *(&v336 + 1));
LABEL_262:

                  return;
                }
              }

              if (one-time initialization token for nowPlaying != -1)
              {
                swift_once();
              }

              v241 = type metadata accessor for Logger();
              __swift_project_value_buffer(v241, static Logger.nowPlaying);
              v242 = v228;
              v243 = Logger.logObject.getter();
              v244 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v243, v244))
              {
                v245 = swift_slowAlloc();
                v246 = swift_slowAlloc();
                *v245 = 138412290;
                *(v245 + 4) = v242;
                *v246 = v242;
                v247 = v242;
                _os_log_impl(&_mh_execute_header, v243, v244, "Generated snapshot %@", v245, 0xCu);
                outlined destroy of NSObject?(v246, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              }

              v248 = v333;
              v249 = *&v333[v229];
              *&v333[v229] = v242;
              v250 = v242;

              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
              v251 = static OS_dispatch_queue.main.getter();
              v252 = swift_allocObject();
              *(v252 + 16) = v248;
              v335[4] = partial apply for closure #4 in CAFDNowPlayingAgent.updateNowPlaying();
              v335[5] = v252;
              v335[0] = _NSConcreteStackBlock;
              v335[1] = 1107296256;
              v335[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v335[3] = &block_descriptor_180;
              v253 = _Block_copy(v335);
              v254 = v248;

              v255 = v312;
              static DispatchQoS.unspecified.getter();
              v335[0] = _swiftEmptyArrayStorage;
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v253);

              outlined consume of Data?(v327, v330);
              (*(v232 + 8))(v233, v231);
              (*(v311 + 8))(v255, v313);
              outlined consume of Data?(v336, *(&v336 + 1));
              goto LABEL_262;
            }

            __break(1u);
LABEL_227:
            outlined consume of Data._Representation(v51, v5);
            v174 = 0;
            goto LABEL_228;
          }

          if (!v48)
          {
            v212 = BYTE14(v336);
            goto LABEL_234;
          }

          LODWORD(v212) = DWORD1(v336) - v336;
          if (!__OFSUB__(DWORD1(v336), v336))
          {
            v212 = v212;
            goto LABEL_234;
          }

          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          v59 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_319:
      swift_once();
LABEL_29:
      v311 = v7;
      v316 = v5;
      v317 = v3;
      v318 = v2;
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.nowPlaying);
      v48 = v334;
      v49 = v1;
      v50 = Logger.logObject.getter();
      LOBYTE(v51) = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v3 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v335[0] = v1;
        *v3 = 136446466;
        v52 = *v326;
        v53 = v326[1];

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v335);

        *(v3 + 4) = v54;
        *(v3 + 12) = 2050;
        v55 = [v48 mediaItems];
        if (v55)
        {
          v56 = v55;
          v57 = [v55 mediaItems];

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
          v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v58 >> 62)
          {
            goto LABEL_324;
          }

          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
        }

        else
        {

          v59 = 0;
        }

        *(v3 + 14) = v59;

        _os_log_impl(&_mh_execute_header, v50, v51, "Source %{public}s has %{public}ld media item(s)", v3, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v1);

        v1 = v333;
      }

      else
      {
      }

      v20 = swift_allocObject();
      *(v20 + 16) = _swiftEmptyArrayStorage;
      v7 = [v48 mediaSourceSemanticType];
      v21 = v334;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
}

uint64_t firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  v7 = *(a3 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {
    swift_beginAccess();
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    swift_endAccess();
  }

  swift_beginAccess();
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  return swift_endAccess();
}

uint64_t UInt32.formattedFrequency(in:)(char a1, unsigned int a2)
{
  if (a1 == 8 || a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100042C30;
    *(v4 + 56) = &type metadata for Double;
    *(v4 + 64) = &protocol witness table for Double;
    *(v4 + 32) = a2 / 1000.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100042C30;
    *(v5 + 56) = &type metadata for UInt;
    *(v5 + 64) = &protocol witness table for UInt;
    *(v5 + 32) = a2;
  }

  return String.init(format:_:)();
}

void CAFDNowPlayingAgent.__ivar_destroyer()
{
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
}

id CAFDNowPlayingAgent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDNowPlayingAgent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v3 = [a1 media];
  if (!v3)
  {
LABEL_20:
    if (one-time initialization token for nowPlaying == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v4 = v3;
  v5 = [a1 nowPlayingInformation];
  if (!v5)
  {

    goto LABEL_20;
  }

  v39 = v5;
  [v4 registerObserver:v1];
  [v39 registerObserver:v1];
  if (([v39 receivedAllValues]& 1) == 0)
  {
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.nowPlaying);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_33;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Awaiting now playing to receive all values";
    goto LABEL_32;
  }

  v6 = [v4 mediaSources];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaSource, CAFMediaSource_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9)
    {
      v10 = [v39 nowPlaying];
      [v10 registerObserver:v1];

      v11 = [v4 mediaSources];
      if (v11)
      {
        v12 = v11;
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (v14)
          {
LABEL_11:
            v15 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              v18 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              v40 = v16;
              closure #1 in CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(&v40, v1);

              ++v15;
              if (v18 == v14)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            swift_once();
LABEL_21:
            v19 = type metadata accessor for Logger();
            __swift_project_value_buffer(v19, static Logger.nowPlaying);
            v39 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v39, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&_mh_execute_header, v39, v20, "Awaiting media and now playing", v21, 2u);
            }

            goto LABEL_23;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_11;
          }
        }

LABEL_42:
      }

      v29 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media);
      *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media) = v4;
      v30 = v4;

      v31 = [v39 nowPlaying];
      v32 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying);
      *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying) = v31;

      v33 = [v39 nowPlaying];
      v34 = [v33 currentMediaSourceIdentifier];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = (v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
      *v38 = v35;
      v38[1] = v37;

      CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset();

LABEL_23:
      v22 = v39;
      goto LABEL_34;
    }
  }

  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.nowPlaying);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Awaiting media to receive some sources";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);
  }

LABEL_33:

  v22 = v4;
LABEL_34:
}

void closure #1 in CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.nowPlaying);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v10 = [v5 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = a2;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v14, &v26);
    a2 = v12;

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Observing source: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  [v5 registerObserver:a2];
  if (([v5 receivedAllValues] & 1) == 0)
  {
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = [v16 identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Waiting for source to receive all values: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }
}

void CAFDNowPlayingAgent.accessoryDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2;
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.nowPlaying);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received all values for accessory %@!", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v12 = [v6 car];
    if (v12)
    {
      v13 = v12;
      [v3 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CAFDNowPlayingAgent(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = a1;
      v9[4] = a2;
      aBlock[4] = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:);
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_171;
      v10 = _Block_copy(aBlock);
      v11 = v8;
      v12 = v5;

      [v11 addOperationWithBlock:v10];
      _Block_release(v10);

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(uint64_t a1, void (*a2)(id, void))
{
  v3 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot;
  v4 = *(a1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
  if (v4 || (CAFDNowPlayingAgent.updateNowPlaying()(), (v4 = *(a1 + v3)) != 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(CAFNowPlayingSnapshot) init];
    v4 = 0;
  }

  v6 = v4;
  a2(v7, 0);
}

Swift::Void __swiftcall CAFDAgent._CAFDConnectionProxy.refreshNowPlayingSnapshot()()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.nowPlaying);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "telling %@ to refresh", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  if (CAFDAgent._CAFDConnectionProxy.remote.getter())
  {
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      [v8 refreshNowPlayingSnapshot];
    }

    swift_unknownObjectRelease();
  }
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *&v3[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v10[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:);
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_1;
  v8 = _Block_copy(v10);

  v9 = v3;

  [v6 addOperationWithBlock:v8];
  _Block_release(v8);
}

void closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  v4 = *(a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier) == a1 && *(a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8) == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *v3 = a1;
    v3[1] = a2;

    CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset();
  }
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdateTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *&v6[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v13[4] = a5;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v13[3] = a6;
  v11 = _Block_copy(v13);
  v12 = v6;

  [v9 addOperationWithBlock:v11];
  _Block_release(v11);
}

uint64_t @objc CAFDNowPlayingAgent.nowPlayingService(_:didUpdateJumpBackwardInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a4)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUnitDuration, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  return outlined destroy of NSObject?(v7, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdatePlaybackState:)()
{
  v1 = *&v0[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_36;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 addOperationWithBlock:v3];
  _Block_release(v3);
}

void CAFDNowPlayingAgent.serviceDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2;
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.nowPlaying);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = [v6 name];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Service %{public}s received all values", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v16 = [v6 car];
    if (v16)
    {
      v17 = v16;
      [v3 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDNowPlayingAgent.mediaSourceService(_:didUpdateCurrentFrequency:)()
{
  v1 = *&v0[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_42;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 addOperationWithBlock:v3];
  _Block_release(v3);
}

void CAFDNowPlayingAgent.mediaSourceService(_:didUpdateMediaItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

void @objc CAFDNowPlayingAgent.nowPlayingService(_:didUpdateTitle:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *&a1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  [v10 addOperationWithBlock:v12];
  _Block_release(v12);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized Sequence.first(where:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      if (v10)
      {
        v11 = i;
        v12 = a3;
        v13 = v10;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        a3 = v12;
        if (v14 == v20 && v16 == v12)
        {

          return v8;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        i = v11;
        if (v18)
        {
          return v8;
        }
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0;
}

{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 != a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v14 = 0xE000000000000000;
        if (a2)
        {
          goto LABEL_13;
        }
      }

      if (v14 == a3)
      {

        return v8;
      }

LABEL_13:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = specialized Set._Variant.insert(_:)(v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1);
      v4 = v15;
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    v4[2] = v11 + 1;
    v12 = &v4[2 * v11];
    v12[4] = v8;
    v12[5] = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

char *specialized CAFDNowPlayingAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAFDAgent.Configuration(0);
  v9 = __chkstk_darwin(v8);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v50 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_carManager;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying] = 0;
  v13 = &v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue;
  v15 = [objc_allocWithZone(NSOperationQueue) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 setName:v16];

  [v15 setQualityOfService:25];
  [v15 setMaxConcurrentOperationCount:1];
  *&v2[v14] = v15;
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, static Logger.nowPlaying);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v2;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "initializing now playing server", v20, 2u);
  }

  v49 = v7;
  v51 = v4;
  v52 = a1;

  swift_unknownObjectWeakAssign();
  (*(v5 + 16))(v7, v17, v4);
  v21 = objc_opt_self();
  v22 = [v21 identifier];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = [objc_opt_self() serial];
  v50 = BSDispatchQueueCreate();

  v48 = [v21 interface];
  v24 = [v21 entitlement];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v26;
  v47 = v25;

  v27 = [objc_opt_self() userInitiated];
  v28 = [v21 identifier];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [v21 identifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  (*(v5 + 32))(v12, v49, v51);
  *&v12[v8[5]] = v50;
  v36 = v47;
  *&v12[v8[6]] = v48;
  v37 = &v12[v8[7]];
  v38 = v46;
  *v37 = v36;
  *(v37 + 1) = v38;
  *&v12[v8[8]] = v27;
  v39 = &v12[v8[9]];
  *v39 = v29;
  v39[1] = v31;
  v40 = &v12[v8[10]];
  *v40 = v33;
  v40[1] = v35;
  v41 = v53;
  outlined init with copy of CAFDAgent.Configuration(v12, v53);
  v42 = CAFDAgent.init(configuration:)(v41);
  v43 = v52;
  [v52 registerObserver:v42];
  v44 = [v43 currentCar];
  [v42 carManager:v43 didUpdateCurrentCar:v44];

  outlined destroy of CAFDAgent.Configuration(v12);
  return v42;
}

uint64_t type metadata accessor for CAFDNowPlayingAgent(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFDNowPlayingAgent;
  if (!type metadata singleton initialization cache for CAFDNowPlayingAgent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized CAFDNowPlayingAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.nowPlaying);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar];
    if (v9)
    {
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v31);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (a1)
    {
      v15 = [v4 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v31);

    *(v8 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "update current car from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar;
  v21 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar];
  if (v21)
  {
    [v21 unregisterObserver:v5];
  }

  v22 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media] = 0;

  v23 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying] = 0;

  v24 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot] = 0;

  v25 = *&v5[v20];
  *&v5[v20] = a1;

  if (a1)
  {
    v27 = v4;
    [v27 registerObserver:v5];
    v28 = "carDidUpdateAccessories:";
    v29 = v5;
    v26 = v27;
  }

  else
  {
    v29 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
    v28 = "cancelAllOperations";
  }

  return [v29 v28];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022998()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroyTm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022A64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022A9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022AE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t sub_100022BC0()
{

  return _swift_deallocObject(v0, 32, 7);
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

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, isUniquelyReferenced_nonNull_native);
    *v1 = v10;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v6)
    {
      v7 = result;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v1;
      v11 = *v2;
      if (!v8)
      {
        specialized _NativeDictionary.copy()();
        v9 = v11;
      }

      result = specialized _NativeDictionary._delete(at:)(v7, v9);
      *v2 = v9;
    }
  }

  return result;
}

id CAFDAppLaunchManager.init(carManager:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchAssertions] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_carManager] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CAFDAppLaunchManager();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v12, "init");
  v5 = one-time initialization token for appLaunchManager;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.appLaunchManager);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AppLaunchManager initialized", v10, 2u);
  }

  [v3 registerObserver:{v6, v12.receiver, v12.super_class}];
  return v6;
}

id CAFDAppLaunchManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appLaunchManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AppLaunchManager deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDAppLaunchManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFDAppLaunchManager.Application()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFDAppLaunchManager.Application(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CAFDAppLaunchManager.Application@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CAFDAppLaunchManager.Application, *a1);

  *a2 = v3 != 0;
  return result;
}

void CAFDAppLaunchManager.requestLaunch(app:for:)(void *a1)
{
  v54 = type metadata accessor for UUID();
  v3 = *(v54 - 8);
  v4 = __chkstk_darwin(v54);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v53 = &v50 - v8;
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.appLaunchManager);
  v12 = v1;
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v14, v15))
  {

    v24 = v54;
    goto LABEL_12;
  }

  v52 = v6;
  v16 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v56[0] = v51;
  *v16 = 136315906;
  *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100044030, v56);
  *(v16 + 12) = 2080;
  *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, v56);
  *(v16 + 22) = 2048;
  v17 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v18 = *&v12[v17];
  if (!*(v18 + 16))
  {
    v19 = v3;
LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v19 = v3;

  v20 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v21 & 1) == 0)
  {

    goto LABEL_10;
  }

  v22 = *(*(v18 + 56) + 8 * v20);

  v23 = *(v22 + 16);

LABEL_11:
  *(v16 + 24) = v23;

  *(v16 + 32) = 2080;
  v25 = [v13 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = UUID.uuidString.getter();
  v28 = v27;
  v29 = v10;
  v24 = v54;
  (*(v19 + 8))(v29, v54);
  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v56);
  v3 = v19;

  *(v16 + 34) = v30;
  _os_log_impl(&_mh_execute_header, v14, v15, "%s app=%s launchRequest.count=%ld service.uniqueIdentifier=%s", v16, 0x2Au);
  swift_arrayDestroy();

  v6 = v52;
LABEL_12:
  v31 = [v13 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *&v12[v32];
  v34 = v55;
  *&v12[v32] = 0x8000000000000000;
  v35 = specialized __RawDictionaryStorage.find<A>(_:)();
  v37 = v34[2];
  v38 = (v36 & 1) == 0;
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (v39)
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v13) = v36;
  if (v34[3] < v40)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
    v34 = v55;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v13 & 1) == (v41 & 1))
    {
      goto LABEL_17;
    }

    v35 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v49 = v35;
    specialized _NativeDictionary.copy()();
    v35 = v49;
    v34 = v55;
    *&v12[v32] = v55;
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_17:
  *&v12[v32] = v34;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_18:
  v34[(v35 >> 6) + 8] |= 1 << v35;
  *(v34[7] + 8 * v35) = &_swiftEmptySetSingleton;
  v42 = v34[2];
  v39 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v39)
  {
    __break(1u);
    return;
  }

  v34[2] = v43;
LABEL_20:
  v44 = v53;
  specialized Set._Variant.insert(_:)(v53, v6);
  (*(v3 + 8))(v44, v24);
  swift_endAccess();
  if (v34[2])
  {

    v45 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v46)
    {
      v47 = *(v34[7] + 8 * v45);

      v48 = *(v47 + 16);

      if (v48)
      {
        CAFDAppLaunchManager.launch(app:)();
      }
    }

    else
    {
    }
  }
}

unint64_t CAFDAppLaunchManager.removeRequestLaunch(app:for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.appLaunchManager);
  v14 = v1;
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = &selRef_bundleID;
  if (!os_log_type_enabled(v16, v17))
  {

    v26 = v52;
    goto LABEL_11;
  }

  v51 = v5;
  v19 = swift_slowAlloc();
  v55[0] = swift_slowAlloc();
  *v19 = 136315906;
  *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000100044050, v55);
  *(v19 + 12) = 2080;
  *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, v55);
  *(v19 + 22) = 2048;
  v20 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v21 = *&v14[v20];
  if (!*(v21 + 16))
  {
    goto LABEL_9;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v23 & 1) == 0)
  {

LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v25 = *(v24 + 16);

LABEL_10:
  *(v19 + 24) = v25;

  *(v19 + 32) = 2080;
  v27 = [v15 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = UUID.uuidString.getter();
  v30 = v29;
  v31 = v12;
  v26 = v52;
  (*(v53 + 8))(v31, v52);
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v55);
  v18 = &selRef_bundleID;

  *(v19 + 34) = v32;
  _os_log_impl(&_mh_execute_header, v16, v17, "%s app=%s launchRequest.count=%ld service.uniqueIdentifier=%s", v19, 0x2Au);
  swift_arrayDestroy();

  v5 = v51;
LABEL_11:
  v33 = [v15 v18[346]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *&v14[v34];
  v36 = v54;
  *&v14[v34] = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v39 = v36[2];
  v40 = (v38 & 1) == 0;
  v41 = __OFADD__(v39, v40);
  v42 = v39 + v40;
  if (v41)
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v15) = v38;
  if (v36[3] < v42)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
    v36 = v54;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v15 & 1) == (v43 & 1))
    {
      goto LABEL_16;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v50 = result;
    specialized _NativeDictionary.copy()();
    result = v50;
    v36 = v54;
    *&v14[v34] = v54;
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  *&v14[v34] = v36;
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_17:
  v36[(result >> 6) + 8] |= 1 << result;
  *(v36[7] + 8 * result) = &_swiftEmptySetSingleton;
  v44 = v36[2];
  v41 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v41)
  {
    __break(1u);
    return result;
  }

  v36[2] = v45;
LABEL_19:
  specialized Set._Variant.remove(_:)(v10, v5);
  (*(v53 + 8))(v10, v26);
  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  if (v36[2])
  {

    v46 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v47)
    {
      v48 = *(v36[7] + 8 * v46);

      v49 = *(v48 + 16);

      if (v49)
      {
        return result;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  specialized Dictionary.subscript.setter(0);
  return swift_endAccess();
}

void CAFDAppLaunchManager.launch(app:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles;
  swift_beginAccess();
  if (*(*&v0[v5] + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)();
    v7 = v6;

    if (v7)
    {
      if (one-time initialization token for appLaunchManager != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.appLaunchManager);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v11 = 136315394;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
        *(v11 + 12) = 2080;
        *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, aBlock);
        _os_log_impl(&_mh_execute_header, v9, v10, "%s already tracking a process for %s", v11, 0x16u);
        swift_arrayDestroy();
      }

LABEL_32:

      return;
    }
  }

  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v4, 1, 1, v12);
  v88 = "createPKZip";
  v14 = String._bridgeToObjectiveC()();
  v16 = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v13 + 8))(v4, v12);
  }

  v18 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v14 URL:v16 personaUniqueString:0 personaType:4];

  v19 = [objc_opt_self() identityForLSApplicationIdentity:v18];
  if (!v19)
  {
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.appLaunchManager);
    v70 = v18;
    v9 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v72 = 136315394;
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v72 + 12) = 2112;
      *(v72 + 14) = v70;
      *v73 = v70;
      v75 = v70;
      _os_log_impl(&_mh_execute_header, v9, v71, "%s unable to look up process identity for app identity %@", v72, 0x16u);
      outlined destroy of NSObject?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v74);

      return;
    }

    goto LABEL_32;
  }

  v20 = v19;
  v87 = v5;
  v90 = v1;
  v91 = v18;
  v21 = [objc_opt_self() contextWithIdentity:v19];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() attributeWithDomain:v22 name:v23];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100042870;
  *(v25 + 32) = v24;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v89 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setAttributes:isa];

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.appLaunchManager);
  v29 = v20;
  v92 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v32 = 136315394;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v20;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s requesting launch for %@", v32, 0x16u);
    outlined destroy of NSObject?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v36 = v90;
  v37 = objc_allocWithZone(RBSLaunchRequest);
  v90 = v21;
  v38 = [v37 initWithContext:v21];
  v94 = 0;
  aBlock[0] = 0;
  v93 = 0;
  v39 = [v38 execute:aBlock assertion:&v94 error:&v93];
  v40 = v94;
  v41 = aBlock[0];
  if (v39)
  {
    v42 = v93;
    v43 = v40;
    v44 = v41;

    if (v43)
    {
      swift_beginAccess();
      v45 = v43;
      specialized Set._Variant.insert(_:)(&v94, v45);
      v46 = v94;
      swift_endAccess();

      [v45 addObserver:v36];
    }

    v47 = v29;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v88 = v47;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v86 = v43;
      v52 = v51;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v52 = 136315650;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v52 + 12) = 2112;
      *(v52 + 14) = v47;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v44;
      *v53 = v20;
      v53[1] = v41;
      v55 = v47;
      v56 = v44;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s process handle for %@: %@", v52, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();

      __swift_destroy_boxed_opaque_existential_0(v54);

      v43 = v86;
    }

    swift_beginAccess();
    v57 = v44;
    specialized Dictionary.subscript.setter(v41);
    swift_endAccess();
    if (v57)
    {
      v58 = v57;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = v43;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock[0] = v64;
        *v62 = 136315394;
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
        *(v62 + 12) = 2112;
        *(v62 + 14) = v58;
        *v63 = v41;
        v65 = v58;
        _os_log_impl(&_mh_execute_header, v59, v60, "%s monitoring %@ for termination", v62, 0x16u);
        outlined destroy of NSObject?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0(v64);

        v43 = v61;
      }

      v66 = v88;
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in CAFDAppLaunchManager.launch(app:);
      aBlock[5] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
      aBlock[3] = &block_descriptor_2;
      v68 = _Block_copy(aBlock);

      [v58 monitorForDeath:v68];

      _Block_release(v68);
    }

    else
    {
    }
  }

  else
  {
    v76 = v93;
    v77 = v40;
    v78 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v81 = 136315650;
      *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v81 + 12) = 2080;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, v88 | 0x8000000000000000, aBlock);
      *(v81 + 22) = 2112;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 24) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "%s error requesting launch for %s: %@", v81, 0x20u);
      outlined destroy of NSObject?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    v84 = v91;
    if (v77)
    {
      [v77 invalidate];
    }

    else
    {
    }
  }
}

uint64_t closure #1 in CAFDAppLaunchManager.launch(app:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in CAFDAppLaunchManager.launch(app:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void closure #1 in closure #1 in CAFDAppLaunchManager.launch(app:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    CAFDAppLaunchManager.handleDeath(of:handle:)(a2);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void CAFDAppLaunchManager.handleDeath(of:handle:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLaunchManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100043FD0, v29);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s monitored process %@ terminated", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16))
  {

    v14 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSProcessHandle, RBSProcessHandle_ptr);
      v17 = v5;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        swift_beginAccess();
        specialized Dictionary.subscript.setter(0);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  v19 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (*(v20 + 16))
  {

    v21 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = *(v23 + 16);

      if (v24)
      {
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 136315394;
          *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100043FD0, &v28);
          *(v27 + 12) = 2080;
          *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, &v28);
          _os_log_impl(&_mh_execute_header, v25, v26, "%s relaunching %s", v27, 0x16u);
          swift_arrayDestroy();
        }

        CAFDAppLaunchManager.launch(app:)();
      }
    }

    else
    {
    }
  }
}

void CAFDAppLaunchManager.carDidUpdateAccessories(_:)(void *a1)
{
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appLaunchManager);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v18);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s accessories updated for %@", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v10 = [v3 automakerRequestContent];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAutomakerRequestContent, CAFAutomakerRequestContent_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    CAFDAppLaunchManager.registerServices(automakerRequestContent:)(v14);
  }

LABEL_14:

  v16 = [v3 automakerNotificationHistory];
  if (v16)
  {
    v17 = v16;
    CAFDAppLaunchManager.registerServices(automakerNotificationHistory:)(v16);
  }
}

void CAFDAppLaunchManager.registerServices(automakerRequestContent:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v46 - v9;
  v11 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  v12 = *&v1[v11];

  v13 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v13) = specialized Set.contains(_:)(v10, v12);

  v14 = *(v5 + 8);
  v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v23 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v8);
    v14(v10, v4);
    swift_endAccess();
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.appLaunchManager);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001000440A0, v46);
      *(v28 + 12) = 2112;
      *(v28 + 14) = v25;
      *v29 = v25;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s registering for automakerRequestContent: %@", v28, 0x16u);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    v32 = [v25 requestContents];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFRequestContent, CAFRequestContent_ptr);
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v34 >> 62))
      {
LABEL_13:
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_13;
      }
    }

    v35 = _CocoaArrayWrapper.endIndex.getter();
LABEL_14:
    if (v35)
    {
      if (v35 < 1)
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = 0;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v34 + 8 * v36 + 32);
        }

        v38 = v37;
        ++v36;
        [v37 registerObserver:v2];
        [v2 requestContentService:v38 didUpdateOn:{objc_msgSend(v38, "on")}];
      }

      while (v35 != v36);
    }

    v39 = [v25 requestTemporaryContents];
    if (v39)
    {
      v40 = v39;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFRequestTemporaryContent, CAFRequestTemporaryContent_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v41 >> 62))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_23:
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
LABEL_24:
      if (v42 >= 1)
      {
        v43 = 0;
        do
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v44 = *(v41 + 8 * v43 + 32);
          }

          v45 = v44;
          ++v43;
          [v44 registerObserver:v2];
          [v2 requestTemporaryContentService:v45 didUpdateOn:{objc_msgSend(v45, "on")}];
        }

        while (v42 != v43);
        goto LABEL_34;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_34:

    return;
  }

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.appLaunchManager);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46[0] = v21;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001000440A0, v46);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v16;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s already registered for automakerRequestContent: %@", v19, 0x16u);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

void CAFDAppLaunchManager.registerServices(automakerNotificationHistory:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v39 - v9;
  v11 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  v12 = *(v1 + v11);

  v13 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v13) = specialized Set.contains(_:)(v10, v12);

  v14 = *(v5 + 8);
  v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v23 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v8);
    v14(v10, v4);
    swift_endAccess();
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.appLaunchManager);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000100044070, v39);
      *(v28 + 12) = 2112;
      *(v28 + 14) = v25;
      *v29 = v25;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s registering for automakerNotificationHistory: %@", v28, 0x16u);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    v32 = [v25 historicalNotifications];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFHistoricalNotification, CAFHistoricalNotification_ptr);
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v34 >> 62))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_13:
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v35)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (!v35)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v35 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v35; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v34 + 8 * i + 32);
      }

      v38 = v37;
      [v37 registerObserver:v2];
    }

LABEL_22:

    return;
  }

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.appLaunchManager);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000100044070, v39);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v16;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s already registered for automakerNotificationHistory: %@", v19, 0x16u);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void CAFDAppLaunchManager.requestContentService(_:didUpdateOn:)(void *a1, char a2)
{
  if (a2)
  {
    CAFDAppLaunchManager.requestLaunch(app:for:)(a1);
  }

  else
  {
    CAFDAppLaunchManager.removeRequestLaunch(app:for:)(a1);
  }
}

void @objc CAFDAppLaunchManager.requestContentService(_:didUpdateOn:)(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  if (a4)
  {
    CAFDAppLaunchManager.requestLaunch(app:for:)(v6);
  }

  else
  {
    CAFDAppLaunchManager.removeRequestLaunch(app:for:)(v6);
  }
}

void CAFDAppLaunchManager.assertion(_:didInvalidateWithError:)(void *a1)
{
  swift_beginAccess();
  v2 = specialized Set._Variant.remove(_:)(a1);
  swift_endAccess();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for CAUVehicleTrait();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait, &protocol conformance descriptor for CAUVehicleTrait);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CAUVehicleTrait();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait, &protocol conformance descriptor for CAUVehicleTrait);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
        v20 = v19;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v27 = 1 << *(v5 + 32);
    v3 = v2;
    if (v27 >= 64)
    {
      bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}