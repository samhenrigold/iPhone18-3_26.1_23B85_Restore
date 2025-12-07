uint64_t sub_100001660(uint64_t a1)
{
  qword_1000161E0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_10000248C(uint64_t a1)
{
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000097E8();
  }

  v2 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/SensingPredictBundle.bundle" delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  [*(*(a1 + 32) + 32) setDelegate:?];
  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  [*(a1 + 32) _startMonitoringVisits];
  v8 = *(a1 + 32);

  return [v8 _requestPlaceInference];
}

void sub_1000025C8(uint64_t a1)
{
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009804();
  }

  [*(a1 + 32) _stopPollingForLocationCategory];
  [*(a1 + 32) _stopMonitoringVisits];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_100002AB8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v8 = [v4 firstObject];

  v5 = [v8 _loiIdentifier];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 _loiIdentifier];
    [v6 _updateLocationCategoryWithBestPlaceInferenceIdentifier:v7];
  }

  else
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000098FC();
    }

    [*(a1 + 32) _startPollingForLocationCategory];
  }
}

id sub_100002E18(uint64_t a1)
{
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009950();
  }

  v2 = *(a1 + 32);

  return [v2 _stopPollingForLocationCategory];
}

id sub_100002E80(uint64_t a1)
{
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000099B4();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002F38;
  v5[3] = &unk_1000106C0;
  v5[4] = v2;
  return [v3 _fetchPlaceInferencesWithFidelityPolicy:0 handler:v5];
}

void sub_100002F38(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 24);
    v7 = [v5 placemark];
    v8 = [v7 _geoMapItemHandle];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000302C;
    v9[3] = &unk_100010710;
    v9[4] = *(a1 + 32);
    [v6 resolveMapItemFromHandle:v8 completionHandler:v9];
  }
}

void sub_10000302C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000030C8;
  v7[3] = &unk_1000106E8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_1000030C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _poiCategory];
  v4 = [v2 _getLocationCategoryFromGEOPOI:v3];

  result = [*(a1 + 32) _updateLocationCategory:v4];
  if (v4)
  {
    v6 = *(a1 + 32);

    return [v6 _stopPollingForLocationCategory];
  }

  return result;
}

void sub_100003378(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003414;
  v7[3] = &unk_1000106E8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_100003414(uint64_t a1)
{
  v2 = [*(a1 + 32) _getLocationCategoryFromRTLocationOfInterestType:{objc_msgSend(*(a1 + 40), "type")}];
  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) mapItem];
    v5 = [v4 category];
    v2 = [v3 _getLocationCategoryFromGEOPOI:v5];
  }

  v6 = *(a1 + 32);

  return [v6 _updateLocationCategory:v2];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[SPXPCService sharedInstance];
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000039E4(id a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = +[SPXPCService sharedInstance];
  [v3 locationCategoryChanged:v2];

  v4 = +[SPXPCService sharedInstance];
  [v4 contextEventUpdated:v2 fusedState:(v2 - 6) < 4];
}

void sub_100003AE4(id a1, unsigned int a2)
{
  if (dword_100015ED0 <= 30 && (dword_100015ED0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009B88();
  }
}

uint64_t sub_100003D58(uint64_t a1)
{
  qword_1000161F8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100003EA0(uint64_t a1)
{
  if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
  {
    sub_100009DDC();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void sub_100004D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004D70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004D88(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (dword_100015F40 <= 90 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = *(v1 + 32);
    if (result)
    {
      v2 = *(result + 16);

      return v2();
    }
  }

  return result;
}

void sub_100005060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000509C(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40))
  {
    if (dword_100015F40 <= 90)
    {
      if (dword_100015F40 != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t sub_100005214()
{
  sub_1000055F4(&qword_1000161C0, &qword_10000BE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BDA0;
  *(inited + 32) = 0x6469766F72504F49;
  *(inited + 40) = 0xEF7373616C437265;
  *(inited + 48) = 0x7665444449484F49;
  *(inited + 56) = 0xEB00000000656369;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010000F020;
  *(inited + 96) = 65333;
  *(inited + 120) = &type metadata for Int32;
  strcpy((inited + 128), "PrimaryUsage");
  *(inited + 168) = &type metadata for Int;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 1;
  v1 = sub_1000090FC(inited);
  swift_setDeallocating();
  sub_1000055F4(&qword_1000161C8, &qword_10000BE98);
  result = swift_arrayDestroy();
  qword_100016208 = v1;
  return result;
}

uint64_t variable initialization expression of SPAudioAccessoryDeviceHIDClient.SPHIDManagerQueue()
{
  sub_10000A180();
  __chkstk_darwin();
  v0 = sub_10000A190();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A110();
  __chkstk_darwin();
  sub_1000055A8();
  sub_10000A100();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  v5[1] = &_swiftEmptyArrayStorage;
  sub_100008930(&qword_1000160D8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000055F4(&qword_1000160E0, &qword_10000BDF0);
  sub_100008978(&qword_1000160E8, &qword_1000160E0, &qword_10000BDF0);
  sub_10000A1D0();
  return sub_10000A1B0();
}

unint64_t sub_1000055A8()
{
  result = qword_1000160D0;
  if (!qword_1000160D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000160D0);
  }

  return result;
}

uint64_t sub_1000055F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000563C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of SPAudioAccessoryDeviceHIDClient.hidManager()
{
  v0 = objc_allocWithZone(HIDManager);

  return [v0 initWithOptions:8];
}

id sub_10000570C()
{
  result = [objc_allocWithZone(type metadata accessor for SPAudioAccessoryDeviceHIDClient()) init];
  qword_100016228 = result;
  return result;
}

id SPAudioAccessoryDeviceHIDClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_100005770()
{
  if (qword_100016210 != -1)
  {
    swift_once();
  }

  return &qword_100016228;
}

id sub_1000057C0()
{
  if (qword_100016210 != -1)
  {
    swift_once();
  }

  v0 = qword_100016228;

  return v0;
}

void *SPAudioAccessoryDeviceHIDClient.init()()
{
  v1 = v0;
  sub_10000A180();
  __chkstk_darwin();
  v2 = sub_10000A190();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A110();
  __chkstk_darwin();
  v18 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_SPHIDManagerQueue;
  v17[1] = sub_1000055A8();
  sub_10000A100();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v20 = &_swiftEmptyArrayStorage;
  sub_100008930(&qword_1000160D8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000055F4(&qword_1000160E0, &qword_10000BDF0);
  sub_100008978(&qword_1000160E8, &qword_1000160E0, &qword_10000BDF0);
  sub_10000A1D0();
  *&v0[v18] = sub_10000A1B0();
  v6 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidManager;
  *&v1[v6] = [objc_allocWithZone(HIDManager) initWithOptions:8];
  *&v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice] = 0;
  v7 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_notificationPointer;
  *&v1[v7] = IONotificationPortCreate(kIOMainPortDefault);
  *&v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_iter] = 0;
  *&v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_currentMatchedService] = 0;
  v8 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown;
  v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown] = 1;
  v9 = &v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_reportString];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions] = 0;
  *&v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeSessionInfo] = &_swiftEmptyArrayStorage;
  v10 = &v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeAppName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v1[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback];
  *v11 = 0;
  v11[1] = 0;
  v1[v8] = 1;
  v12 = type metadata accessor for SPAudioAccessoryDeviceHIDClient();
  v19.receiver = v1;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "init");
  v14 = *((swift_isaMask & *v13) + 0x1A8);
  v15 = v13;
  v14();

  return v15;
}

uint64_t sub_100005C60(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback);
  v4 = *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback);
  v5 = *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_100005CAC(a1, a2);

  return sub_100005CBC(v4, v5);
}

uint64_t sub_100005CAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005CBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005D78()
{
  sub_10000A170();
  v1 = sub_100009418();
  v2 = *v1;
  sub_10000A0D0();

  v3 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_notificationPointer;
  if (!*(v0 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_notificationPointer))
  {
    v4 = IONotificationPortCreate(kIOMainPortDefault);
    *(v0 + v3) = v4;
    IONotificationPortSetDispatchQueue(v4, *(v0 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_SPHIDManagerQueue));
  }

  sub_10000A170();
  v5 = *v1;
  sub_10000A0D0();

  v6 = *(v0 + v3);
  if (qword_100016200 != -1)
  {
    swift_once();
  }

  isa = sub_10000A120().super.isa;
  v8 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_iter;
  swift_beginAccess();
  IOServiceAddMatchingNotification(v6, "IOServiceMatched", isa, sub_100005FB0, v0, (v0 + v8));
  swift_endAccess();
  sub_10000A170();
  v9 = *v1;
  sub_10000A0D0();

  return (*((swift_isaMask & *v0) + 0x1B0))(*(v0 + v8));
}

void sub_100005FB0(char *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_iter;
    v5 = a1;
    swift_beginAccess();
    *&a1[v3] = a2;
    (*((swift_isaMask & *v5) + 0x1B0))(a2);
  }
}

uint64_t sub_100006064(uint64_t a1)
{
  v2 = a1;
  sub_10000A170();
  v3 = sub_100009418();
  v4 = *v3;
  sub_10000A0D0();

  v5 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_currentMatchedService;
  result = IOIteratorNext(v2);
  if (result)
  {
    v7 = result;
    while (1)
    {
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v7, &entryID);
      v8 = IORegistryEntryIDMatching(entryID);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
      if (MatchingService)
      {
        v11 = MatchingService;
        if (*(v1 + v5) == MatchingService)
        {

          return IOObjectRelease(v7);
        }

        sub_10000A170();
        v12 = *v3;
        sub_10000A0D0();

        v13 = (*((swift_isaMask & *v1) + 0x1B8))(v11);
        if (v13)
        {
          v14 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice);
          *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice) = v13;

          *(v1 + v5) = v11;
          return IOObjectRelease(v7);
        }
      }

      else
      {
      }

      IOObjectRelease(v7);
      result = IOIteratorNext(v2);
      v7 = result;
      if (!result)
      {
        return result;
      }
    }

    v15 = sub_10000A170();
    v16 = *v3;
    if (os_log_type_enabled(*v3, v15))
    {
      v17 = v16;
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_beginAccess();
      *(v18 + 4) = entryID;
      _os_log_impl(&_mh_execute_header, v17, v15, "Couldn't find IO Registry Entry ID. { regID=%llu }", v18, 0xCu);
    }

    return IOObjectRelease(v7);
  }

  return result;
}

id sub_100006308(uint64_t a1)
{
  v2 = [objc_allocWithZone(HIDDevice) initWithService:a1];
  v3 = sub_10000A170();
  v4 = sub_100009418();
  v5 = *v4;
  if (v2)
  {
    v6 = v4;
    if (os_log_type_enabled(*v4, v3))
    {
      v7 = v5;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138477827;
      *(v8 + 4) = v2;
      *v9 = v2;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v7, v3, "Created HID device. { hidDevice=%{private}@ }", v8, 0xCu);
      sub_10000859C(v9);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    *(v11 + 17) = 200;
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = v11;
    v12[4] = v1;
    v39 = sub_100008128;
    v40 = v12;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100006838;
    v38 = &unk_1000109A8;
    v13 = _Block_copy(&aBlock);
    v14 = v2;

    v15 = v1;

    [v14 setInputReportHandler:v13];
    _Block_release(v13);
    v39 = sub_100006900;
    v40 = 0;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1000092AC;
    v38 = &unk_1000109D0;
    v16 = _Block_copy(&aBlock);
    [v14 setCancelHandler:v16];
    _Block_release(v16);
    sub_10000A170();
    v17 = *v6;
    sub_10000A0D0();

    [v14 setDispatchQueue:*&v15[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_SPHIDManagerQueue]];
    [v14 activate];
    [v14 open];
    sub_10000A170();
    v18 = *v6;
    sub_10000A0D0();

    swift_beginAccess();
    v19 = *(v11 + 16);
    v34 = 0;
    v20 = [v14 setReport:v11 + 16 reportLength:5 withIdentifier:v19 forType:2 error:&v34];
    v21 = v34;
    swift_endAccess();
    if (v20)
    {
      v22 = v21;
LABEL_10:

      return v2;
    }

    v24 = v21;
    sub_10000A060();

    swift_willThrow();
    v25 = sub_10000A170();
    v26 = *v6;
    if (!os_log_type_enabled(*v6, v25))
    {

      goto LABEL_10;
    }

    v27 = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136380675;
    swift_getErrorValue();
    v30 = sub_10000A220();
    v32 = sub_100007B28(v30, v31, &aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v27, v25, "Error attempting to set report { %{private}s }", v28, 0xCu);
    sub_100008550(v29);
  }

  else
  {
    v23 = v5;
    sub_10000A0D0();

    return 0;
  }

  return v2;
}

uint64_t sub_100006838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a6;
  v14 = sub_10000A090();
  v16 = v15;

  v11(v12, a3, a4, a5, v14, v16);
  sub_1000090A8(v14, v16);
}

void sub_100006900(uint64_t a1)
{
  sub_10000A170();
  v1 = *sub_100009418();
  sub_10000A0D0();
}

void sub_100006980(uint64_t a1)
{
  v19 = 1;
  v20 = 0;
  sub_10000A170();
  v2 = sub_100009418();
  v3 = *v2;
  sub_10000A0D0();

  v4 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice;
  v5 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice);
  if (v5)
  {
    v21 = 0;
    if ([v5 setReport:&v19 reportLength:5 withIdentifier:1 forType:2 error:&v21])
    {
      v6 = v21;
    }

    else
    {
      v7 = v21;
      sub_10000A060();

      swift_willThrow();
      v8 = sub_10000A170();
      v9 = *v2;
      if (os_log_type_enabled(*v2, v8))
      {
        v10 = v9;
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136380675;
        swift_getErrorValue();
        v13 = sub_10000A220();
        v15 = sub_100007B28(v13, v14, &v21);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v10, v8, "Error attempting to turn off packet streaming. { %{private}s }", v11, 0xCu);
        sub_100008550(v12);
      }

      else
      {
      }
    }
  }

  [*(v1 + v4) cancel];
  [*(v1 + v4) close];
  v16 = *(v1 + v4);
  *(v1 + v4) = 0;

  *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_currentMatchedService) = 0;
  v17 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_notificationPointer;
  v18 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_notificationPointer);
  if (v18)
  {
    IONotificationPortDestroy(v18);
    *(v1 + v17) = 0;
  }
}

void sub_100006BF8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown;
  v3 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown);
  sub_10000A170();
  v4 = *sub_100009418();
  if (v3 == 1)
  {
    sub_10000A0D0();
  }

  else
  {
    sub_10000A0D0();

    (*((swift_isaMask & *v1) + 0x1C0))();
    *(v1 + v2) = 1;
  }
}

uint64_t sub_100006D1C(unint64_t a1)
{
  v3 = sub_10000A0C0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback + 8);

    v7(v9, BYTE2(a1));
    sub_100005CBC(v7, v8);
  }

  v10 = a1 >> 16;
  v22 = HIBYTE(a1);
  v11 = HIDWORD(a1);
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  [v12 setDateStyle:1];
  [v12 setTimeStyle:3];
  sub_10000A0B0();
  isa = sub_10000A0A0().super.isa;
  v14 = [v12 stringFromDate:isa];

  v15 = sub_10000A130();
  v17 = v16;

  sub_1000055F4(&qword_100016158, &qword_10000BE00);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10000BDB0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100008604();
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 96) = &type metadata for UInt8;
  *(v18 + 104) = &protocol witness table for UInt8;
  *(v18 + 72) = v10;
  *(v18 + 136) = &type metadata for UInt8;
  *(v18 + 144) = &protocol witness table for UInt8;
  *(v18 + 112) = v11;
  *(v18 + 176) = &type metadata for UInt8;
  *(v18 + 184) = &protocol witness table for UInt8;
  *(v18 + 152) = v22;
  v19 = sub_10000A140();

  (*(v4 + 8))(v6, v3);
  return v19;
}

void sub_100006F80(void *a1)
{
  v3 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeSessionInfo;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
    [a1 getBytes:&v13 length:26];
    v4 = (*((swift_isaMask & *v1) + 0x1D0))(v13, v14, v15, v16);
    v6 = v5;
    v7 = sub_10000A170();
    v8 = *sub_100009418();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136380675;
      v12 = sub_100007B28(v4, v6, &v17);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v9, v7, "HID report { SPHIDReportString=%{private}s }", v10, 0xCu);
      sub_100008550(v11);
    }

    else
    {
    }
  }
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A0E0();
  v18 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A110();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A170();
  v11 = *sub_100009418();
  sub_10000A0D0();

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_100008658;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000092AC;
  aBlock[3] = &unk_100010A20;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_10000A0F0();
  v19 = &_swiftEmptyArrayStorage;
  sub_100008930(&qword_100016168, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000055F4(&qword_100016170, &qword_10000BE08);
  sub_100008978(&qword_100016178, &qword_100016170, &qword_10000BE08);
  sub_10000A1D0();
  sub_10000A1A0();
  _Block_release(v13);
  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_100007474(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000074D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A0E0();
  v18 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A110();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A170();
  v16 = sub_100009418();
  v11 = *v16;
  sub_10000A0D0();

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_100008A10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000092AC;
  aBlock[3] = &unk_100010A70;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_10000A0F0();
  v19 = &_swiftEmptyArrayStorage;
  sub_100008930(&qword_100016168, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000055F4(&qword_100016170, &qword_10000BE08);
  sub_100008978(&qword_100016178, &qword_100016170, &qword_10000BE08);
  sub_10000A1D0();
  sub_10000A1A0();
  _Block_release(v13);
  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);

  sub_10000A170();
  v15 = *v16;
  sub_10000A0D0();
}

uint64_t sub_100007830(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100009034(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000078D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_10000A130();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id SPAudioAccessoryDeviceHIDClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPAudioAccessoryDeviceHIDClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100007A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000055F4(&qword_1000161B0, "t3");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100007B28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007BF4(v11, 0, 0, 1, a1, a2);
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
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008550(v11);
  return v7;
}

unint64_t sub_100007BF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007D00(a5, a6);
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
    result = sub_10000A1F0();
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

char *sub_100007D00(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007D4C(a1, a2);
  sub_100007E7C(&off_100010930);
  return v3;
}

char *sub_100007D4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007F68(v5, 0);
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

  result = sub_10000A1F0();
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
        v10 = sub_10000A160();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007F68(v10, 0);
        result = sub_10000A1E0();
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

uint64_t sub_100007E7C(uint64_t result)
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

  result = sub_100007FDC(result, v11, 1, v3);
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

void *sub_100007F68(uint64_t a1, uint64_t a2)
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

  sub_1000055F4(&qword_1000161B8, "v3");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007FDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000055F4(&qword_1000161B8, "v3");
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

uint64_t sub_1000080E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100008128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = sub_10000A170();
  v12 = sub_100009418();
  v13 = *v12;
  if (os_log_type_enabled(*v12, v11))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v14, v11, "Received report. { reporterID=%ld }", v15, 0xCu);
  }

  if (a4 == 2)
  {
    v16 = sub_10000A170();
    v17 = *v12;
    if (os_log_type_enabled(*v12, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136315138;
      v21 = sub_10000A070();
      v23 = sub_100007B28(v21, v22, &v40);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v18, v16, "setReportInputHandler report contents { report=%s }", v19, 0xCu);
      sub_100008550(v20);
    }

    sub_10000A170();
    v24 = *v12;
    sub_10000A0D0();

    swift_beginAccess();
    v25 = *(v9 + 16);
    v39 = 0;
    v26 = [v8 setReport:v9 + 16 reportLength:5 withIdentifier:v25 forType:2 error:&v39];
    v37 = v39;
    swift_endAccess();
    if (v26)
    {

      v27 = v37;
    }

    else
    {
      v28 = v37;
      sub_10000A060();

      swift_willThrow();
      v29 = sub_10000A170();
      v30 = *v12;
      if (os_log_type_enabled(v30, v29))
      {
        v31 = v30;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39 = v33;
        *v32 = 136380675;
        swift_getErrorValue();
        v34 = sub_10000A220();
        v36 = sub_100007B28(v34, v35, &v39);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v31, v29, "Error attempting to set report. { error=%{private}s }", v32, 0xCu);
        sub_100008550(v33);
      }

      else
      {
      }
    }
  }

  else
  {
    isa = sub_10000A080().super.isa;
    (*((swift_isaMask & *v10) + 0x1D8))();
  }
}

uint64_t sub_100008538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008550(void *a1)
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

uint64_t sub_10000859C(uint64_t a1)
{
  v2 = sub_1000055F4(&qword_100016150, &qword_10000BDF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008604()
{
  result = qword_100016160;
  if (!qword_100016160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100016160);
  }

  return result;
}

uint64_t sub_100008658()
{
  v5 = v1;
  v6 = *(v1 + 16);
  v7 = *(v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
LABEL_15:
    v2 = sub_100007A1C(0, *(v2 + 2) + 1, 1, v2);
    *(v6 + v4) = v2;
    goto LABEL_11;
  }

  v11 = *(v5 + 24);
  v10 = *(v5 + 32);
  *(v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions) = v9;
  if (v9 == 1)
  {
    if ((*(v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown) & 1) == 0)
    {
      *(v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown) = 1;
    }

    if (*(v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_hidDevice))
    {
      v12 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_iter;
      swift_beginAccess();
      (*((swift_isaMask & *v6) + 0x1B0))(*(v6 + v12));
    }

    else
    {
      (*((swift_isaMask & *v6) + 0x1A8))();
    }
  }

  v13 = (v6 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeAppName);
  *v13 = v11;
  v13[1] = v10;

  v14 = sub_10000A170();
  v15 = *sub_100009418();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136380675;
    v19 = *v13;
    v20 = v13[1];

    v21 = sub_100007B28(v19, v20, v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v16, v14, "Starting session. { appName=%{private}s }", v17, 0xCu);
    sub_100008550(v18);
  }

  v3 = *v13;
  v0 = v13[1];
  v4 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeSessionInfo;
  swift_beginAccess();
  v2 = *(v6 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v4) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_100007A1C((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v25 = &v2[16 * v24];
  *(v25 + 4) = v3;
  *(v25 + 5) = v0;
  *(v6 + v4) = v2;
  return swift_endAccess();
}

uint64_t sub_100008930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008978(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000563C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000089D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100008A10(uint64_t a1)
{
  v2 = v1[2];
  v3 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions;
  v4 = *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_numActiveSessions) = v6;
    v9 = sub_10000A170();
    v10 = sub_100009418();
    v11 = *v10;
    if (os_log_type_enabled(*v10, v9))
    {
      v12 = v11;
      v13 = v2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45[0] = v15;
      *v14 = 136380931;
      *(v14 + 4) = sub_100007B28(v8, v7, v45);
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v2 + v3);

      _os_log_impl(&_mh_execute_header, v12, v9, "Stopping session. { appName=%{private}s, numActiveSessions=%ld }", v14, 0x16u);
      sub_100008550(v15);
    }

    v16 = OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeSessionInfo;
    swift_beginAccess();
    v17 = *(v2 + v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v17 + 40);
      while (1)
      {
        v21 = *(v20 - 1) == v8 && *v20 == v7;
        if (v21 || (sub_10000A210() & 1) != 0)
        {
          break;
        }

        ++v19;
        v20 += 2;
        if (v18 == v19)
        {
          goto LABEL_12;
        }
      }

      swift_beginAccess();
      sub_100007830(v19);
      swift_endAccess();

      v27 = *(v2 + v16);
      v30 = *(v27 + 16);
      v28 = v27 + 16;
      v29 = v30;
      if (v30)
      {
        v31 = (v28 + 16 * v29);
        v33 = *v31;
        v32 = v31[1];
        v34 = (v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeAppName);
        *v34 = v33;
        v34[1] = v32;
      }

      v35 = sub_10000A170();
      v36 = *v10;
      v37 = os_log_type_enabled(*v10, v35);
      if (v37)
      {
        v38 = v36;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v44[0] = v40;
        *v39 = 136380675;
        v41 = *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeAppName);
        v42 = *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_activeAppName + 8);

        v43 = sub_100007B28(v41, v42, v44);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v38, v35, "Updated activeAppName. { activeAppName=%{private}s }", v39, 0xCu);
        sub_100008550(v40);
      }

      if (!*(v2 + v3))
      {
        *(v2 + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_cancelHIDTeardown) = 0;
        (*((swift_isaMask & *v2) + 0x1C8))(v37);
      }
    }

    else
    {
LABEL_12:
      v22 = sub_10000A170();
      v23 = *v10;
      if (os_log_type_enabled(*v10, v22))
      {
        v24 = v23;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v44[0] = v26;
        *v25 = 136380675;
        *(v25 + 4) = sub_100007B28(v8, v7, v44);
        _os_log_impl(&_mh_execute_header, v24, v22, "Couldn't find appName in sessionInfo. { appName=%{private}s }", v25, 0xCu);
        sub_100008550(v26);
      }
    }
  }
}

uint64_t sub_100008E08(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100008E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

void type metadata accessor for SPHIDReport()
{
  if (!qword_1000161A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000161A8);
    }
  }
}

uint64_t sub_100008EBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100008F04(uint64_t a1, uint64_t a2)
{
  sub_10000A230();
  sub_10000A150();
  v4 = sub_10000A240();

  return sub_100008F7C(a1, a2, v4);
}

unint64_t sub_100008F7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A210())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000904C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000090A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000090FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000055F4(&qword_1000161D0, qword_10000BEA0);
    v3 = sub_10000A200();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000920C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100008F04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000927C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000055F4(&qword_1000161C8, &qword_10000BE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000927C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000092E8()
{
  sub_1000094FC();
  result = sub_10000A1C0();
  qword_100016230 = result;
  return result;
}

uint64_t *sub_10000933C()
{
  if (qword_100016218 != -1)
  {
    swift_once();
  }

  return &qword_100016230;
}

uint64_t sub_1000093B0()
{
  sub_1000094FC();
  result = sub_10000A1C0();
  qword_100016238 = result;
  return result;
}

uint64_t *sub_100009418()
{
  if (qword_100016220 != -1)
  {
    swift_once();
  }

  return &qword_100016238;
}

id sub_10000948C(void *a1, void **a2, uint64_t a3)
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

unint64_t sub_1000094FC()
{
  result = qword_1000161D8;
  if (!qword_1000161D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000161D8);
  }

  return result;
}

void sub_100009950()
{
  v0 = +[NSDate now];
  LogPrintF();
}

void sub_1000099B4()
{
  v0 = +[NSDate now];
  LogPrintF();
}

void sub_100009B10(void *a1)
{
  v1 = [a1 arrivalDate];
  LogPrintF();
}

void sub_100009E3C(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}