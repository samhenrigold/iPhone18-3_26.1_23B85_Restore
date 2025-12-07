void sub_1000992FC(uint64_t a1)
{
  if (a1)
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A570(v1, qword_1001231C0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Scan Failed", v3, 2u);
    }
  }
}

void sub_1000993EC()
{
  v8[3] = &type metadata for AudioAccessoryFeatures;
  v8[4] = sub_10009B230();
  LOBYTE(v8[0]) = 1;
  v1 = isFeatureEnabled(_:)();
  sub_10000EA94(v8);
  if (v1)
  {
    [*(v0 + 80) pause];
    [*(v0 + 56) setDiscoveryFlags:0];
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_1001231C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Scan Stopped";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Feature Flag is disabled";
      goto LABEL_10;
    }
  }
}

void sub_1000995B4()
{
  v1 = v0;
  v15[3] = &type metadata for AudioAccessoryFeatures;
  v15[4] = sub_10009B230();
  LOBYTE(v15[0]) = 1;
  v2 = isFeatureEnabled(_:)();
  sub_10000EA94(v15);
  if (v2)
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_1001231C0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      swift_beginAccess();
      *(v6 + 4) = *(*(v1 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "Total number of devices nearby: %ld", v6, 0xCu);
    }

    else
    {
    }

    v12 = String._bridgeToObjectiveC()();
    sub_100008438(&qword_10011F688, &qword_1000D9620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001000E19E0;
    swift_beginAccess();
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1000A3988(inited);
    swift_setDeallocating();
    sub_10000E950(inited + 32, &unk_10011F690, &qword_1000D9628);
    sub_1000084D4(0, &qword_10011E0A0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    [*(v1 + 56) invalidate];
    [*(v1 + 80) invalidate];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Scan Invalidated";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Feature Flag is disabled";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
    }
  }
}

double sub_100099938()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v2);
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_1001231C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Scheduling NISession creation", v6, 2u);
  }

  aBlock[4] = sub_10009BB94;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100107A98;
  _Block_copy(aBlock);
  sub_10009BAF8(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10009BB40(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v7 = DispatchWorkItem.init(flags:block:)();

  v8 = *(v1 + 88);
  *(v1 + 88) = v7;
  if (v8)
  {
    swift_retain_n();
    dispatch thunk of DispatchWorkItem.cancel()();

    v9 = *(v1 + 48);
    if (v9)
    {
LABEL_7:
      v10 = v9;
      OS_dispatch_queue.async(execute:)();

      return result;
    }
  }

  else
  {

    v9 = *(v1 + 48);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Dispatch Queue Failed", v14, 2u);
  }

  return result;
}

void sub_100099C90(uint64_t a1)
{
  v2 = [objc_allocWithZone(NISession) init];
  v3 = *(a1 + 80);
  *(a1 + 80) = v2;
  v4 = v2;
  [v3 invalidate];

  sub_100099DC8();
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_1001231C0);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession created", v7, 2u);
  }
}

void sub_100099DC8()
{
  v1 = objc_allocWithZone(NIRegionPredicate);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithName:v2 devicePresencePreset:1];

  v4 = objc_allocWithZone(NIRegionPredicate);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithName:v5 devicePresencePreset:5];

  v7 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v20 = 0;
  v8 = v3;
  v9 = v6;
  v10 = [v7 initWithInnerBoundary:v8 outerBoundary:v9 error:&v20];
  if (v10)
  {
    v11 = v10;
    v12 = v20;

    [v11 setAllowedDevices:8];
    [v11 setMonitoringOption:1];
    [*(v0 + 80) setDelegate:*(v0 + 40)];
    [*(v0 + 80) setDelegateQueue:*(v0 + 48)];
    [*(v0 + 80) runWithConfiguration:v11];
  }

  else
  {
    v13 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A570(v14, qword_1001231C0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "NIDevicePresenceConfiguration failed with %@", v17, 0xCu);
      sub_10000E950(v18, &unk_10011D820, &qword_1000D7280);
    }

    else
    {
    }
  }
}

double sub_10009A0E0(Swift::Int a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 72);
  if (v14)
  {
    v15 = *(v2 + 64) == a1 && v14 == a2;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return result;
    }
  }

  v55 = a2;
  v56 = a1;
  v51 = v9;
  v52 = v6;
  v53 = v5;
  v54 = v2;
  v16 = [*(v2 + 56) discoveredDevices];
  sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v10;
  v50 = v8;
  v48 = v13;
  if (v17 >> 62)
  {
LABEL_35:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_36:

    return result;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_9:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v23 = [v20 identifier];
    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v56 && v27 == v55)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      v30 = v55;
      goto LABEL_24;
    }

LABEL_10:

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_36;
    }
  }

  v30 = v55;

LABEL_24:

  v31 = v54;
  swift_beginAccess();

  v32 = v31;
  sub_1000A63DC(v58, v56, v30);
  swift_endAccess();

  if (sub_10009B188([v21 proximityPairingProductID]) || sub_10009B1A8(objc_msgSend(v21, "proximityPairingProductID")))
  {
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000A570(v33, qword_1001231C0);
    v34 = v55;

    v35 = v21;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v38 = 138412546;
      *(v38 + 4) = v35;
      *v39 = v35;
      *(v38 + 12) = 2080;
      v41 = v35;
      *(v38 + 14) = sub_100078978(v56, v34, aBlock);
      _os_log_impl(&_mh_execute_header, v36, v37, "***DETECTED*** Found nearby device: %@ with identifier: %s", v38, 0x16u);
      sub_10000E950(v39, &unk_10011D820, &qword_1000D7280);

      sub_10000EA94(v40);
    }

    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v42 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10009BAF0;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100107A70;
    v43 = _Block_copy(aBlock);

    v44 = v48;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10009BAF8(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10009BB40(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v45 = v50;
    v46 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v52 + 8))(v45, v46);
    (*(v49 + 8))(v44, v51);
  }

  return result;
}

uint64_t sub_10009A778(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000CBCA4();

    return swift_unknownObjectRelease();
  }

  return result;
}

id *sub_10009A7C8()
{

  sub_100008598((v0 + 3));

  return v0;
}

uint64_t sub_10009A820()
{
  sub_10009A7C8();

  return swift_deallocClassInstance();
}

void sub_10009A944(void *a1, uint64_t a2)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_1001231C0);
  v4 = a1;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v7 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v10 = v4;
    v11 = String.init<A>(reflecting:)();
    v13 = sub_100078978(v11, v12, v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "NISession %s Invalidated: %@", v7, 0x16u);
    sub_10000E950(v8, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v9);
  }

  v19[3] = &type metadata for AudioAccessoryFeatures;
  v19[4] = sub_10009B230();
  LOBYTE(v19[0]) = 1;
  v15 = isFeatureEnabled(_:)();
  sub_10000EA94(v19);
  if (v15)
  {
    if (swift_weakLoadStrong())
    {
      sub_100099938();
    }
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Feature Flag is disabled", v18, 2u);
    }
  }
}

void sub_10009ACDC(void *a1, uint64_t a2, char a3)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_1001231C0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315650;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v10, 0x1Cu);
    sub_10000EA94(v11);
  }

  v20[3] = &type metadata for AudioAccessoryFeatures;
  v20[4] = sub_10009B230();
  LOBYTE(v20[0]) = 1;
  v16 = isFeatureEnabled(_:)();
  sub_10000EA94(v20);
  if (v16)
  {
    if (swift_weakLoadStrong())
    {
      sub_100099938();
    }
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Feature Flag is disabled", v19, 2u);
    }
  }
}

id sub_10009B0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NISessionDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009B130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009B1D0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_10009B230()
{
  result = qword_10011F660;
  if (!qword_10011F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F660);
  }

  return result;
}

void sub_10009B284(void *a1)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001231C0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v7 = v3;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100078978(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "NISession %s Running", v5, 0xCu);
    sub_10000EA94(v6);
  }

  else
  {
  }
}

void sub_10009B428(void *a1, uint64_t a2)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_1001231C0);
  v4 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v9 = v4;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_100078978(v10, v11, &v15);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "NISession %s Failed: %@", v6, 0x16u);
    sub_10000E950(v7, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v8);
  }

  else
  {
  }
}

void sub_10009B648(void *a1, uint64_t a2)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_1001231C0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v9 = v5;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_100078978(v10, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession %s Suspended: %ld", v7, 0x16u);
    sub_10000EA94(v8);
  }

  else
  {
  }
}

uint64_t sub_10009B800(void *a1)
{
  v1 = [a1 deviceIdentifer];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_1001231C0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nearby Device: (nil)", v7, 2u);
    }

    return 0;
  }

  return v3;
}

double sub_10009B918(void *a1, void *a2)
{
  v3 = sub_10009B800(a1);
  if (v4)
  {
    v6 = v4;
    if (a2)
    {
      v7 = v3;
      if ([a2 devicePresencePreset] == 1)
      {
        if (qword_10011C720 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000A570(v8, qword_1001231C0);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v13 = v12;
          *v11 = 136315138;
          *(v11 + 4) = sub_100078978(v7, v6, &v13);
          _os_log_impl(&_mh_execute_header, v9, v10, "Found inner-boundary device: %s", v11, 0xCu);
          sub_10000EA94(v12);
        }

        if (swift_weakLoadStrong())
        {
          sub_10009A0E0(v7, v6);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009BAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009BB40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10009BBB4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_10009BD98(a2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_10009BF2C(v5, &v13);
      v10[0] = v13;
      v10[1] = v14;
      v11 = v15;
      if (*(&v14 + 1))
      {
        sub_10000E9B0(v10, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000CC9E4(0, v6[2] + 1, 1, v6);
        }

        v8 = v6[2];
        v7 = v6[3];
        if (v8 >= v7 >> 1)
        {
          v6 = sub_1000CC9E4((v7 > 1), v8 + 1, 1, v6);
        }

        v6[2] = v8 + 1;
        sub_10000E9B0(v12, &v6[5 * v8 + 4]);
      }

      else
      {
        sub_10009BF9C(v10);
      }

      v5 += 40;
      --v4;
    }

    while (v4);

    if (v6[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_12:
      sub_10000E9C8((v6 + 4), a1);

      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10009BD24()
{
  type metadata accessor for HeadphoneDevice();
  [objc_allocWithZone(CBDevice) init];
  type metadata accessor for Headphone_Manager();
  static Headphone_Manager.shared.getter();
  result = HeadphoneDevice.__allocating_init(cbDevice:delegate:)();
  qword_1001231D8 = result;
  return result;
}

uint64_t sub_10009BD98(uint64_t a1)
{
  sub_100008438(&qword_10011F700, qword_1000D9630);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D8C40;
  if (qword_10011C728 != -1)
  {
    swift_once();
  }

  v2 = qword_1001231D8;
  v3 = type metadata accessor for B698FeatureContent();
  swift_allocObject();
  v4 = v2;
  v5 = B698FeatureContent.init(id:headphoneDevice:)();
  if (v5)
  {
    v6 = &protocol witness table for B698FeatureContent;
  }

  else
  {
    v3 = 0;
    v6 = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  *(v1 + 32) = v5;
  *(v1 + 56) = v3;
  *(v1 + 64) = v6;
  v7 = qword_1001231D8;
  v8 = type metadata accessor for B788FeatureContent();
  swift_allocObject();
  v9 = v7;
  v10 = B788FeatureContent.init(id:headphoneDevice:)();
  if (v10)
  {
    v11 = &protocol witness table for B788FeatureContent;
  }

  else
  {
    v8 = 0;
    v11 = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

  *(v1 + 72) = v10;
  *(v1 + 96) = v8;
  *(v1 + 104) = v11;
  v12 = qword_1001231D8;
  v13 = type metadata accessor for B768FeatureContent();
  swift_allocObject();
  v14 = v12;
  v15 = B768FeatureContent.init(id:headphoneDevice:)();
  if (v15)
  {
    v16 = &protocol witness table for B768FeatureContent;
  }

  else
  {
    v13 = 0;
    v16 = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
  }

  *(v1 + 112) = v15;
  *(v1 + 136) = v13;
  *(v1 + 144) = v16;
  return v1;
}

uint64_t sub_10009BF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CB48, &qword_1000D85B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BF9C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011CB48, &qword_1000D85B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C004()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_10000E390(v0 + v5, v4);
  v6 = *&v4[*(v2 + 144)];
  v7 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isAirPods];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1000130C4(v6);
  sub_10000E8F4(v4);
  v11 = v9 | v10;
  if (v11 != 1)
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A570(v17, qword_100123040);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v11 = 0;
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "WhatsNew2025FlowController: Device not airpods so cannot show whats new";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_18:

    return v11;
  }

  if (sub_1000A9D50())
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A570(v12, qword_100123040);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v11 = 1;
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "WhatsNew2025FlowController: Showing initial card";
    goto LABEL_14;
  }

  return 0;
}

id sub_10009C27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WhatsNew2025FlowController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WhatsNew2025FlowController(uint64_t a1)
{
  result = qword_10011F730;
  if (!qword_10011F730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10009C340@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000CD1FC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10003CE5C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_10009C3A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

    *(v0 + 16) = v4;
    v1 = v4;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10009C4C4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10009C520()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F740);
  v1 = sub_10000A570(v0, qword_10011F740);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009C5E8(uint64_t a1)
{
  if (qword_10011C730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011F740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_100078978(v7, v8, v32);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Decoding %s", v5, 0xCu);
    sub_10000EA94(v6);
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v10 = sub_1000CD1FC(v32), (v11 & 1) == 0))
  {
    sub_100047824(v32);
LABEL_31:
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Cert list is missing";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  sub_10003CE5C(*(a1 + 56) + 32 * v10, v33);
  sub_100047824(v32);
  sub_100008438(&qword_10011F7F8, &qword_1000D96F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v12 = sub_1000CD1FC(v32), (v13 & 1) == 0))
  {
    sub_100047824(v32);
    goto LABEL_36;
  }

  sub_10003CE5C(*(a1 + 56) + 32 * v12, v33);
  sub_100047824(v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Model is missing";
      goto LABEL_33;
    }

LABEL_34:

    return;
  }

  v31 = MEMORY[0xD00000000000002C];
  if (MEMORY[0xD00000000000002C])
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= MEMORY[0xD00000000000002C])
      {
        __break(1u);
        return;
      }

      v15 = *(8 * v14 - 0x2FFFFFFFFFFFFFC4);

      AnyHashable.init<A>(_:)();
      if (!*(v15 + 16) || (v16 = sub_1000CD1FC(v32), (v17 & 1) == 0))
      {

        sub_100047824(v32);
        goto LABEL_41;
      }

      sub_10003CE5C(*(v15 + 56) + 32 * v16, v33);
      sub_100047824(v32);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_41:

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_34;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Serial missing";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

        goto LABEL_34;
      }

      v33[0] = 0xD000000000000011;
      v33[1] = 0x80000001000E1AE0;
      AnyHashable.init<A>(_:)();
      if (!*(v15 + 16))
      {
        break;
      }

      v18 = sub_1000CD1FC(v32);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_10003CE5C(*(v15 + 56) + 32 * v18, v33);
      sub_100047824(v32);

      if (!swift_dynamicCast())
      {
        goto LABEL_22;
      }

      v20 = 0xD000000000000013;
      v21 = 0x80000001000E1AC0;
LABEL_23:
      sub_10007CE0C(v20, v21);
      v22 = String._bridgeToObjectiveC()();

      v23 = String._bridgeToObjectiveC()();
      if (v21 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100047878(v20, v21);
      }

      v25 = [objc_allocWithZone(AMSDeviceOfferRegistrationItem) initWithSerialNumber:v22 model:v23 validationData:isa];

      v26 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100047878(v20, v21);

      if (v31 == v14)
      {
        goto LABEL_38;
      }
    }

    sub_100047824(v32);
LABEL_22:
    v20 = 0;
    v21 = 0xF000000000000000;
    goto LABEL_23;
  }

LABEL_38:
}

unint64_t sub_10009CCD8()
{
  result = qword_10011F800;
  if (!qword_10011F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F800);
  }

  return result;
}

void sub_10009CD34()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v103 = &v98 - v6;
  v106.receiver = v0;
  v106.super_class = ObjectType;
  objc_msgSendSuper2(&v106, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    sub_1000145EC(v8 + 16, v104);
    swift_unknownObjectRelease();
    v9 = v105;
    if (v105)
    {
      v10 = sub_10000E7E4(v104, v105);
      v11 = *(v9 - 8);
      __chkstk_darwin(v10);
      v13 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v13);
      sub_10001465C(v104);
      v14 = *v13;
      v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v14 + v15, v5);
      (*(v11 + 8))(v13, v9);
      sub_10000E828(v5, v103);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v18 = [v0 traitCollection];
      [v18 userInterfaceStyle];

      v19 = objc_allocWithZone(BSUICAPackageView);
      v20 = v17;
      v21 = String._bridgeToObjectiveC()();
      v22 = [v19 initWithPackageName:v21 inBundle:v20];

      if (v22)
      {
        v23 = String._bridgeToObjectiveC()();

        [v22 setState:v23 animated:1];

        v24 = v22;
        [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
        v25 = [v0 contentView];
        [v25 addSubview:v24];

        v26 = [v0 contentView];
        v98 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel;
        [v26 addSubview:*&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel]];

        v27 = [v0 contentView];
        v102 = v20;
        v100 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel;
        [v27 addSubview:*&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel]];

        v101 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1000D6A60;
        v29 = v28;
        v30 = [v24 topAnchor];
        v31 = [v0 contentView];
        v32 = [v31 mainContentGuide];

        v33 = [v32 topAnchor];
        v34 = [v30 constraintGreaterThanOrEqualToAnchor:v33 constant:0.0];

        v29[4] = v34;
        v35 = [v24 heightAnchor];
        v36 = [v35 constraintEqualToConstant:240.0];

        v29[5] = v36;
        v37 = [v24 widthAnchor];
        v38 = [v37 constraintEqualToConstant:240.0];

        v29[6] = v38;
        v39 = v29;
        v40 = [v24 leadingAnchor];
        v41 = [v0 contentView];
        v42 = [v41 mainContentGuide];

        v43 = [v42 leadingAnchor];
        v44 = [v40 constraintEqualToAnchor:v43];

        v29[7] = v44;
        v45 = [v24 trailingAnchor];
        v46 = [v0 contentView];
        v47 = [v46 mainContentGuide];

        v48 = [v47 trailingAnchor];
        v49 = [v45 constraintEqualToAnchor:v48];

        v29[8] = v49;
        v50 = v98;
        v51 = [*&v0[v98] topAnchor];
        v99 = v24;
        v52 = [v24 bottomAnchor];

        v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52 constant:PRXMainContentMargin];
        v39[9] = v53;
        v54 = [*&v0[v50] leadingAnchor];
        v55 = [v0 contentView];
        v56 = [v55 mainContentGuide];

        v57 = [v56 leadingAnchor];
        v58 = [v54 constraintEqualToAnchor:v57];

        v39[10] = v58;
        v59 = [*&v0[v50] trailingAnchor];
        v60 = [v0 contentView];
        v61 = [v60 mainContentGuide];

        v62 = [v61 trailingAnchor];
        v63 = [v59 constraintEqualToAnchor:v62];

        v39[11] = v63;
        v64 = v100;
        v65 = [*&v0[v100] topAnchor];
        v66 = [*&v0[v50] bottomAnchor];
        v67 = [v65 constraintEqualToAnchor:v66 constant:PRXMinimumInterItemMargin];

        v39[12] = v67;
        v68 = [*&v0[v64] leadingAnchor];
        v69 = [v0 contentView];
        v70 = [v69 mainContentGuide];

        v71 = [v70 leadingAnchor];
        v72 = [v68 constraintEqualToAnchor:v71];

        v39[13] = v72;
        v73 = [*&v0[v64] trailingAnchor];
        v74 = [v0 contentView];
        v75 = [v74 mainContentGuide];

        v76 = [v75 trailingAnchor];
        v77 = [v73 constraintEqualToAnchor:v76];

        v39[14] = v77;
        v78 = [*&v0[v64] bottomAnchor];
        v79 = [v0 contentView];
        v80 = [v79 mainContentGuide];

        v81 = [v80 bottomAnchor];
        v82 = [v78 constraintEqualToAnchor:v81];

        v39[15] = v82;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v101 activateConstraints:isa];

        type metadata accessor for HeadphoneProxFeatureManager();
        static HeadphoneProxFeatureManager.shared.getter();
        v84 = v103;
        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v85 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v86 = *(v85 - 8);
        v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1000D5250;
        (*(v86 + 104))(v88 + v87, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.heartRateMonitor(_:), v85);
        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        v89 = v84;
      }

      else
      {

        if (qword_10011C638 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_10000A570(v94, qword_100123040);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "Heart Rate: micaFile is invalid, exiting", v97, 2u);
        }

        v89 = v103;
      }

      sub_10000E8F4(v89);
      return;
    }

    sub_10001465C(v104);
  }

  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_10000A570(v90, qword_100123040);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "Heart Rate: Headphone Model is nil, exiting", v93, 2u);
  }
}

void sub_10009DAD4()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  [v0 setShouldCenterAlignText:1];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();
  v10[4] = sub_10009DE64;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000C034;
  v10[3] = &unk_100107BF8;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() actionWithTitle:v6 style:1 handler:v7];

  _Block_release(v7);

  v9 = [v0 addAction:v8];
}

void sub_10009DCC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B90DC();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10009DE2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10009DE84(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_trainingView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_horizontalConstraint] = 0;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel;
  v5 = [objc_allocWithZone(PRXLabel) initWithStyle:4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTextAlignment:1];
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel;
  v7 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextAlignment:1];
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_type] = 29;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t sub_10009DFCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(HPConnectionInfoDelegate) init];
  v3 = type metadata accessor for AMSMarketingOffersClient();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v14[3] = v3;
  v14[4] = &off_100107AE8;
  v14[0] = v4;
  v5 = type metadata accessor for HeadphoneUpsellClient();
  v6 = swift_allocObject();
  v7 = sub_1000A06AC(v14, v3);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_1000A06FC(v2, *v9, v6);
  result = sub_10000EA94(v14);
  a1[3] = v5;
  a1[4] = &off_100103B00;
  *a1 = v11;
  return result;
}

void sub_10009E128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10009E1A0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F870);
  v1 = sub_10000A570(v0, qword_10011F870);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10009E268()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  v5 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager;
  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager);
  v7 = v6;
  if (v6 == 1)
  {
    v8 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
    swift_beginAccess();
    v9 = v8[3];
    if (v9)
    {
      v10 = *sub_10000E7E4(v8, v9);
      v11 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v10 + v11, v4);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = type metadata accessor for HeadphoneModel(0);
    (*(*(v13 - 8) + 56))(v4, v12, 1, v13);
    type metadata accessor for USBHeadphoneConnectionManager();
    swift_allocObject();
    v7 = sub_100040B90(v4);
    v14 = *(v1 + v5);
    *(v1 + v5) = v7;

    sub_1000A0644(v14);
  }

  sub_1000A0654(v6);
  return v7;
}

id sub_10009E3F8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter];
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *&v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager] = 1;
  v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed] = 0;
  v9 = [objc_allocWithZone(type metadata accessor for HeadphoneRouter()) init];
  v10 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
  *v10 = v9;
  v10[1] = &off_100105398;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

void *sub_10009E610(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for HeadphoneModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v103 - v12;
  v14 = [a1 userInfo];
  if (v14)
  {
    v106 = v13;
    v104 = a2;
    v105 = a3;
    v15 = v14;
    v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_10011C738 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A570(v17, qword_10011F870);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v20 + 4) = v22;
      v21->super.isa = v22.super.isa;
      _os_log_impl(&_mh_execute_header, v18, v19, "Launched with userInfo: %@", v20, 0xCu);
      sub_10000E950(v21, &unk_10011D820, &qword_1000D7280);
    }

    v23 = v106;
    sub_100043278(v16, v106);
    if (*(v23 + *(v8 + 132)))
    {
      sub_10000E390(v23, v11);
      type metadata accessor for HeadphoneFakePairingSession();
      swift_allocObject();
      sub_1000816E8();
      v25 = v24;
      sub_10009DFCC(&v110);
      v26 = sub_1000A06AC(&v110, *(&v111 + 1));
      v103 = &v103;
      __chkstk_darwin(v26);
      v28 = v23;
      v29 = (&v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29);
      v31 = *v29;
      v32 = type metadata accessor for HeadphoneUpsellClient();
      v108 = v32;
      v109 = &off_100103B00;
      v107[0] = v31;
      v33 = type metadata accessor for HeadphoneInteractor(0);
      v34 = swift_allocObject();
      v35 = sub_1000A06AC(v107, v32);
      __chkstk_darwin(v35);
      v37 = (&v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v38 + 16))(v37);
      v39 = sub_1000A09A0(v11, v25, *v37, v34, &off_100106E98, sub_1000A2634, &stru_100107D70, sub_1000A2638, &stru_100107D98, sub_1000A2654, &unk_100107DC0, sub_1000A263C, &unk_100107DE8, sub_1000A264C, &stru_100107E10, sub_1000A2640, sub_1000A2644, sub_1000A2648);
    }

    else
    {
      sub_10000E390(v23, v11);
      v45 = [objc_allocWithZone(SFBluetoothPairingSession) init];
      sub_10009DFCC(&v110);
      v46 = sub_1000A06AC(&v110, *(&v111 + 1));
      v103 = &v103;
      __chkstk_darwin(v46);
      v48 = (&v103 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v49 + 16))(v48);
      v50 = *v48;
      v51 = type metadata accessor for HeadphoneUpsellClient();
      v108 = v51;
      v109 = &off_100103B00;
      v107[0] = v50;
      v28 = v23;
      v33 = type metadata accessor for HeadphoneInteractor(0);
      v52 = swift_allocObject();
      v53 = sub_1000A06AC(v107, v51);
      __chkstk_darwin(v53);
      v55 = (&v103 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v56 + 16))(v55);
      v39 = sub_1000A09A0(v11, v45, *v55, v52, &off_100106DD0, sub_1000A2560, &stru_100107CA8, sub_1000A2580, &stru_100107CD0, sub_1000A2588, &unk_100107CF8, sub_1000A2590, &unk_100107D20, sub_1000A25B8, &stru_100107D48, sub_1000A2598, sub_1000A25A8, sub_1000A25B0);
    }

    v57 = v39;
    sub_10000EA94(v107);
    sub_10000EA94(&v110);
    *(&v111 + 1) = v33;
    v112 = &off_100106330;
    *&v110 = v57;
    v58 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
    swift_beginAccess();
    sub_10000EA2C(&v110, v4 + v58, &qword_10011FBC0, &unk_1000D5EF0);
    swift_endAccess();
    v59 = *(v28 + *(v8 + 192));
    v60 = v28;
    if (v59)
    {
      v61 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
      swift_beginAccess();
      v62 = v61[3];
      if (v62)
      {
        v63 = sub_10000E7E4(v61, v61[3]);
        v103 = &v103;
        v64 = *(v62 - 8);
        __chkstk_darwin(v63);
        v66 = &v103 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v64 + 16))(v66);
        type metadata accessor for HeadphoneInteractor(0);
        v67 = v59;
        sub_100078158();
        v60 = v106;
        (*(v64 + 8))(v66, v62);
        dispatch thunk of AADBatteryInfoVM.updateBatteryInfo(_:)();
      }
    }

    sub_10000E390(v60, v11);
    type metadata accessor for HeadphonePresenter(0);
    swift_allocObject();
    v68 = sub_1000B5040(v11);
    v69 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter);
    *v69 = v68;
    v69[1] = &off_1001087B0;
    v69[2] = &off_1001087F0;
    swift_unknownObjectRelease();
    v70 = *v69;
    if (*v69)
    {
      v71 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
      swift_beginAccess();
      sub_10000E88C(v4 + v71, &v110, &qword_10011FBC0, &unk_1000D5EF0);
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_10000EA2C(&v110, v70 + 16, &qword_10011FBC0, &unk_1000D5EF0);
      swift_endAccess();
      swift_unknownObjectRelease();
      if (*v69)
      {
        *(*v69 + 64) = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router + 8);
        swift_unknownObjectWeakAssign();
        if (*v69)
        {
          sub_1000B54C8();
        }
      }
    }

    v72 = sub_10009E268();
    if (!v72)
    {
LABEL_31:
      v76 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager;
      v77 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager);
      if (v77)
      {
        if (*v69 && object_getClass(*v69) == _TtC20HeadphoneProxService18HeadphonePresenter)
        {
          swift_unknownObjectRetain();
          v78 = &off_100108770;
        }

        else
        {
          v78 = 0;
        }

        *(v77 + 56) = v78;
        swift_unknownObjectWeakAssign();
        sub_1000A0654(v77);
        swift_unknownObjectRelease();
        sub_1000A0644(v77);
      }

      v79 = *v69;
      if (*v69)
      {
        if (object_getClass(*v69) != _TtC20HeadphoneProxService18HeadphonePresenter)
        {
          v80 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
          v81 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
LABEL_43:
          v83 = v69[2];
          *(&v111 + 1) = swift_getObjectType();
          v112 = *(v83 + 16);
          *&v110 = v79;
LABEL_44:
          v84 = OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter;
          swift_beginAccess();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_10000EA2C(&v110, v81 + v84, &unk_10011E0C0, qword_1000D7D50);
          swift_endAccess();
          swift_unknownObjectRelease();
          *(*v80 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_delegate + 8) = &off_100107C20;
          swift_unknownObjectWeakAssign();
          v85 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
          swift_beginAccess();
          v86 = v85[3];
          if (v86)
          {
            v87 = *v69 ? v69[1] : 0;
            v88 = v85[4];
            sub_1000A06AC(v85, v85[3]);
            v89 = *(v88 + 16);
            v90 = swift_unknownObjectRetain();
            v89(v90, v87, v86, v88);
            v91 = v85[3];
            if (v91)
            {
              v92 = v80[1];
              v93 = v85[4];
              sub_1000A06AC(v85, v85[3]);
              v94 = *(v93 + 40);
              v95 = swift_unknownObjectRetain();
              v94(v95, v92, v91, v93);
            }
          }

          swift_endAccess();
          v96 = v85[3];
          v97 = v106;
          if (v96)
          {
            v98 = *(*sub_10000E7E4(v85, v96) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);
            if (*v69 && object_getClass(*v69) == _TtC20HeadphoneProxService18HeadphonePresenter)
            {
              swift_unknownObjectRetain();
              v99 = &off_100108760;
            }

            else
            {
              v99 = 0;
            }

            *(v98 + 32) = v99;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          if (v85[3])
          {
            sub_10000E9C8(v85, &v110);
            swift_endAccess();
            sub_10000E7E4(&v110, *(&v111 + 1));
            v100 = swift_allocObject();
            v101 = v104;
            v102 = v105;
            *(v100 + 16) = v104;
            *(v100 + 24) = v102;
            sub_100062D70(v101, v102);
            sub_1000693EC(sub_1000A249C, v100);

            sub_10000E8F4(v97);
            return sub_10000EA94(&v110);
          }

          else
          {
            sub_10000E8F4(v97);
            return swift_endAccess();
          }
        }

        v82 = *(v4 + v76);
        v79[11] = v82;
        swift_unknownObjectRetain();
        sub_1000A0654(v82);
        swift_unknownObjectRelease();

        v79 = *v69;
        v80 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        v81 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        if (*v69)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v80 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        v81 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
      }

      v112 = 0;
      v110 = 0u;
      v111 = 0u;
      goto LABEL_44;
    }

    v73 = v72;
    v74 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
    swift_beginAccess();
    sub_10000E88C(v4 + v74, &v110, &qword_10011FBC0, &unk_1000D5EF0);
    if (*(&v111 + 1))
    {
      sub_100008438(&qword_10011F968, &unk_1000D98A0);
      type metadata accessor for HeadphoneInteractor(0);
      if (swift_dynamicCast())
      {
        v75 = &off_100106318;
LABEL_30:
        v73[5] = v75;
        swift_unknownObjectWeakAssign();

        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    else
    {
      sub_10000E950(&v110, &qword_10011FBC0, &unk_1000D5EF0);
    }

    v75 = 0;
    goto LABEL_30;
  }

  if (qword_10011C738 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000A570(v40, qword_10011F870);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Received nil when trying to unwrap userInfo", v43, 2u);
  }

  result = sub_10003E658();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10009F6A8(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v3 = sub_10003E658();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_10003E658();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  result = sub_10003E658();
  if (result)
  {
    v6 = result;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v7 = result;
      homeButtonType = MobileGestalt_get_homeButtonType();

      if (homeButtonType >= 0)
      {
        v9 = 16 * (homeButtonType != 2);
      }

      else
      {
        v9 = 16;
      }

      [v6 setDesiredHardwareButtonEvents:v9];
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009F800(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v40 - v13;
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewWillAppear:", a1 & 1);
  v17 = &v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor];
  result = swift_beginAccess();
  v19 = *(v17 + 3);
  if (v19)
  {
    v20 = *sub_10000E7E4(v17, v19);
    v21 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    sub_10000E390(v20 + v21, v14);
    sub_10000E828(v14, v16);
    if (v16[136] != 4)
    {
      goto LABEL_15;
    }

    if (qword_10011C738 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011F870);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Whats New 20205 flow check", v25, 2u);
    }

    sub_10000E390(v16, v11);
    v26 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter];
    if (v26)
    {
      swift_beginAccess();
      sub_10000E88C(v26 + 16, v43, &qword_10011FBC0, &unk_1000D5EF0);
    }

    else
    {
      v44 = 0;
      memset(v43, 0, sizeof(v43));
    }

    v40[1] = &v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
    v27 = objc_allocWithZone(type metadata accessor for WhatsNew2025FlowController(0));
    sub_100008438(&qword_10011F960, &qword_1000D9898);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000D9820;
    *(v28 + 32) = type metadata accessor for HeadphoneWhatsNew2025ViewController(0);
    *(v28 + 40) = &off_100103508;
    *(v28 + 48) = &off_1001034B8;
    *(v28 + 56) = type metadata accessor for HeadphoneLiveTranslationViewController(0);
    *(v28 + 64) = &off_100103320;
    *(v28 + 72) = &off_1001032D0;
    *(v28 + 80) = type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController(0);
    *(v28 + 88) = &off_100106CF0;
    *(v28 + 96) = &off_100106CA0;
    *(v28 + 104) = type metadata accessor for HeadphonePauseMediaOnSleepViewController(0);
    *(v28 + 112) = &off_1001046D0;
    *(v28 + 120) = &off_100104680;
    *(v28 + 128) = type metadata accessor for ChargingCaseViewController(0);
    *(v28 + 136) = &off_1001042A8;
    *(v28 + 144) = &off_100104258;
    sub_10000E390(v11, v8);
    sub_10000E88C(v43, v42, &qword_10011FBC0, &unk_1000D5EF0);
    *&v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController] = 0;
    v29 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_analyticsController;
    type metadata accessor for HeadphoneAnalyticsController(0);
    v30 = swift_allocObject();
    sub_10004D5F8((v30 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics));
    *&v27[v29] = v30;
    v31 = &v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = 0;
    *&v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter__underlyingCards] = v28;
    *&v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards] = v28;
    sub_10000E390(v8, &v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel]);
    if (*(v8 + 19))
    {
      v32 = *(v8 + 18);
      v33 = *(v8 + 19);
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = &v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address];
    *v34 = v32;
    *(v34 + 1) = v33;
    v35 = &v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_hostingController];
    *v35 = v2;
    *(v35 + 1) = &off_100107C20;
    sub_10000E88C(v42, &v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor], &qword_10011FBC0, &unk_1000D5EF0);
    type metadata accessor for HeadphoneRouter();
    *&v27[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_router] = swift_dynamicCastClassUnconditional();
    v36 = type metadata accessor for ModernFlowPresenter(0);
    v41.receiver = v27;
    v41.super_class = v36;
    swift_unknownObjectRetain();

    v37 = v2;
    v38 = objc_msgSendSuper2(&v41, "init");
    sub_10000E950(v42, &qword_10011FBC0, &unk_1000D5EF0);
    sub_10000E8F4(v8);
    sub_10000E950(v43, &qword_10011FBC0, &unk_1000D5EF0);
    sub_10000E8F4(v11);
    v39 = sub_10009C004();

    if ((v39 & 1) == 0)
    {
LABEL_15:
      swift_unknownObjectRetain();
      sub_10004B6D0(v2, v16);
      swift_unknownObjectRelease();
    }

    return sub_10000E8F4(v16);
  }

  return result;
}

void sub_10009FE2C(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000084D4(0, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr);
    sub_10001C19C(&unk_10011F950, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v27;
    v2 = v28;
    v3 = v29;
    v4 = v30;
    v5 = v31;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  do
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000084D4(0, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v12 = v26) == 0))
      {
LABEL_29:
        sub_10001C2C4(v1);
        return;
      }
    }

    else
    {
      v10 = v4;
      v11 = v5;
      if (!v5)
      {
        while (1)
        {
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            goto LABEL_29;
          }

          v11 = *(v2 + 8 * v4);
          ++v10;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_22;
      }

LABEL_14:
      v5 = (v11 - 1) & v11;
      v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    v13 = [v12 events];
  }

  while ((v13 & 0x10) == 0);
  sub_10001C2C4(v1);
  v4 = v25;
  v14 = (v25 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
  swift_beginAccess();
  v15 = v14[3];
  if (v15)
  {
    v16 = *sub_10000E7E4(v14, v15) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    if (*(v16 + 136) == 13)
    {
      return;
    }
  }

  if (qword_10011C738 != -1)
  {
    goto LABEL_33;
  }

LABEL_22:
  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011F870);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Home button pressed", v20, 2u);
  }

  v21 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed;
  if ((*(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed) & 1) != 0 || MKBGetDeviceLockState() - 1 > 1)
  {
    swift_unknownObjectRetain();
    sub_100047C68();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "ignoring first home button press to unlock", v24, 2u);
    }

    *(v4 + v21) = 1;
  }
}

double sub_1000A0430()
{
  v1 = v0;
  if (qword_10011C738 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011F870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadphoneFlowViewController.didCompleteFlow", v5, 2u);
  }

  v6 = sub_10009E268();
  if (v6)
  {
    [v6[2] invalidate];
  }

  v7 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
  swift_beginAccess();
  v8 = v7[3];
  if (v8)
  {
    v9 = sub_10000E7E4(v7, v8);
    v10 = *v9;
    [*(*v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) invalidate];
    [*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery) invalidate];
    if (*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
    {
      [*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) invalidate];
    }

    sub_1000995B4();

    sub_10006B1F0(0, v11);
  }

  v12 = sub_10003E658();
  if (v12)
  {
    [v12 dismiss];
    swift_unknownObjectRelease();
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  dispatch thunk of HeadphoneProxFeatureManager.notShownFeatures2025.setter();

  return result;
}

double sub_1000A0644(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1000A0654(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000A0664()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A06AC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000A06FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v6 - 8);
  v14 = v6;
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v20 = sub_1000084D4(0, &unk_10011FA10, off_100101340);
  v21 = &off_100104640;
  *&v19 = a1;
  v17 = type metadata accessor for AMSMarketingOffersClient();
  v18 = &off_100107AE8;
  *&v16 = a2;
  v12 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000A24D0();
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10001C3D8(&qword_10011F650, &qword_10011F648, &qword_1000D98F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *(a3 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 104) = 0;
  sub_10000E9B0(&v19, a3 + 16);
  sub_10000E9B0(&v16, a3 + 56);
  return a3;
}

uint64_t sub_1000A09A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, ValueMetadata *a7, void *a8, ValueMetadata *a9, char *a10, uint64_t a11, char *a12, uint64_t a13, unint64_t a14, ValueMetadata *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v145 = a8;
  v144 = a7;
  v143 = a6;
  v146 = a5;
  v142 = a2;
  v166 = a1;
  v20 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  __chkstk_darwin(v20 - 8);
  v135 = &v134 - v21;
  v22 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  __chkstk_darwin(v22 - 8);
  v161 = &v134 - v23;
  v157 = sub_100008438(&qword_10011F978, &qword_1000D98C0);
  __chkstk_darwin(v157);
  v156 = &v134 - v24;
  v150 = sub_100008438(&qword_10011F980, &qword_1000D98C8);
  v162 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v134 - v25;
  v155 = sub_100008438(&qword_10011F988, &qword_1000D98D0);
  v26 = __chkstk_darwin(v155);
  v151 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v149 = &v134 - v29;
  v30 = __chkstk_darwin(v28);
  v165 = &v134 - v31;
  v32 = __chkstk_darwin(v30);
  v164 = &v134 - v33;
  __chkstk_darwin(v32);
  v163 = &v134 - v34;
  v154 = sub_100008438(&qword_10011F990, &qword_1000D98D8);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v134 - v35;
  v160 = sub_100008438(&qword_10011F998, &unk_1000D98E0);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v134 - v36;
  v141 = sub_100008438(&qword_10011F9A0, &qword_1000D8968);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v134 - v37;
  v147 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v138 = *(v147 - 8);
  __chkstk_darwin(v147);
  v137 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v39);
  v40 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v40 - 8);
  v174[3] = type metadata accessor for HeadphoneUpsellClient();
  v174[4] = &off_100103B00;
  v174[0] = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_wantsTemporaryPairing) = 0;
  v136 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue;
  v41 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000A24D0();
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10001C3D8(&qword_10011F650, &qword_10011F648, &qword_1000D98F0, &protocol conformance descriptor for [A]);
  v42 = v166;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v138 + 104))(v137, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v147);
  v147 = v41;
  *(a4 + v136) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery;
  *(a4 + v44) = [objc_allocWithZone(CBDiscovery) init];
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = 0;
  v45 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager;
  *(a4 + v45) = [objc_allocWithZone(AADeviceManager) init];
  v46 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient;
  *(a4 + v46) = [objc_allocWithZone(AudioAccessoryAssetManagementClient) init];
  v47 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter;
  *(a4 + v47) = [objc_allocWithZone(ProxCardTranslationAssets) init];
  v48 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_nwPathMonitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(a4 + v48) = NWPathMonitor.init()();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager) = 0;
  v49 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager) = 0;
  v50 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner;
  type metadata accessor for HeadphoneDisambiguationScanner();
  swift_allocObject();
  *(a4 + v50) = sub_100098310();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 0;
  v51 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_settings;
  v52 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 initWithStoreIdentifier:v53 type:1];

  [v54 synchronize];
  *(a4 + v51) = v54;
  v55 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
  v56 = type metadata accessor for Date();
  (*(*(v56 - 8) + 56))(a4 + v55, 1, 1, v56);
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager) = 0;
  v57 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor__batteryInfo;
  type metadata accessor for AADBatteryInfoVM();
  swift_allocObject();
  aBlock = AADBatteryInfoVM.init(with:)();
  v58 = v139;
  Published.init(initialValue:)();
  (*(v140 + 32))(a4 + v57, v58, v141);
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_listeners) = &_swiftEmptySetSingleton;
  v59 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
  v60 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  (*(*(v60 - 8) + 56))(a4 + v59, 1, 1, v60);
  sub_10000E390(v42, a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
  v61 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v62 = v146;
  *v61 = v142;
  v61[1] = v62;
  sub_10000E9C8(v174, a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient);
  v63 = [objc_opt_self() currentNotificationSettingsCenter];
  v64 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
  v64[3] = sub_1000084D4(0, &unk_10011F9A8, UNNotificationSettingsCenter_ptr);
  v64[4] = &off_100108CF8;
  *v64 = v63;
  v65 = type metadata accessor for HeadphoneModel(0);
  v66 = 0;
  if (*(v42 + *(v65 + 88)) == 1)
  {
    v67 = objc_allocWithZone(PowerUISmartChargeClientAudioAccessories);
    v68 = String._bridgeToObjectiveC()();
    v66 = [v67 initWithClientName:v68];
  }

  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_smartChargeClient) = v66;
  type metadata accessor for HeadphoneProxFeatureManager();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager) = static HeadphoneProxFeatureManager.shared.getter();
  v69 = *(v42 + *(v65 + 136));
  if (*(v42 + 152))
  {
    v70 = String._bridgeToObjectiveC()();
  }

  else
  {
    v70 = 0;
  }

  v71 = objc_allocWithZone(HPHeadphoneFeatureManager);
  LODWORD(v141) = v69;
  v72 = [v71 initWithBluetoothAddress:v70 productID:v69];

  v73 = *(a4 + v49);
  *(a4 + v49) = v72;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v136 = v65;
  v146 = a17;
  v142 = a16;
  v140 = a13;
  v139 = a12;
  v138 = a11;
  v137 = a10;
  v74 = type metadata accessor for Logger();
  sub_10000A570(v74, qword_10011E7A0);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "Initialized Headphone Feature Manager", v77, 2u);
  }

  v78 = [objc_allocWithZone(CBDiscovery) init];
  v79 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery) = v78;
  [v78 setDiscoveryFlags:0x80000200000];
  [*(a4 + v79) setBleScanRate:50];
  v80 = [objc_allocWithZone(SFDeviceDiscovery) init];
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) = v80;
  [v80 setChangeFlags:13];
  v81 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery;
  [*(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) setDiscoveryFlags:2];
  [*(a4 + v81) setScanRate:40];
  v82 = *(a4 + v81);
  v83 = swift_allocObject();
  swift_weakInit();
  v172 = v143;
  v173 = v83;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_1000A2630;
  v171 = v144;
  v84 = _Block_copy(&aBlock);
  v85 = v82;

  [v85 setDeviceFoundHandler:v84];
  _Block_release(v84);

  v86 = *(a4 + v81);
  v87 = swift_allocObject();
  swift_weakInit();
  v172 = v145;
  v173 = v87;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_1000A2630;
  v171 = a9;
  v88 = _Block_copy(&aBlock);
  v89 = v86;

  [v89 setDeviceLostHandler:v88];
  _Block_release(v88);

  v90 = *(a4 + v81);
  v91 = swift_allocObject();
  swift_weakInit();
  v172 = v137;
  v173 = v91;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_10009E128;
  v171 = v138;
  v92 = _Block_copy(&aBlock);
  v93 = v90;

  [v93 setDeviceChangedHandler:v92];
  _Block_release(v92);

  v94 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery);
  v95 = swift_allocObject();
  swift_weakInit();
  v172 = v139;
  v173 = v95;
  aBlock = _NSConcreteStackBlock;
  v169 = 1107296256;
  v170 = sub_1000A2630;
  v171 = v140;
  v96 = _Block_copy(&aBlock);
  v97 = v94;

  [v97 setDeviceFoundHandler:v96];
  _Block_release(v96);

  v171 = &type metadata for AudioAccessoryFeatures;
  v172 = sub_10009B230();
  LOBYTE(aBlock) = 0;
  LOBYTE(v96) = isFeatureEnabled(_:)();
  sub_10000EA94(&aBlock);
  v98 = v141;
  if ((v96 & 1) != 0 && sub_1000A25C0(v141) && sub_1000130C4(v98))
  {
    v99 = *(v166 + 136) == 9;
    *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = v99;
    if (v99)
    {
      v100 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery;
      [*(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0x82000004000];
      [*(a4 + v100) setBleScanRate:50];
      [*(a4 + v100) clearDuplicateFilterCache];
      v101 = *(a4 + v100);
      v102 = swift_allocObject();
      swift_weakInit();
      v172 = a14;
      v173 = v102;
      aBlock = _NSConcreteStackBlock;
      v169 = 1107296256;
      v170 = sub_1000A2630;
      v171 = a15;
      v103 = _Block_copy(&aBlock);
      v104 = v101;

      [v104 setDeviceFoundHandler:v103];
      _Block_release(v103);
    }
  }

  else
  {
    *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = 0;
  }

  swift_allocObject();
  swift_weakInit();

  dispatch thunk of HeadphoneProxFeatureManager.batteryChangeHandler.setter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v105 = v148;
  dispatch thunk of AADBatteryInfoVM.$batteryCase.getter();

  v106 = v150;
  v107 = Published.Publisher.didSet.getter();
  v162 = *(v162 + 8);
  (v162)(v105, v106);
  aBlock = v107;
  v108 = sub_100008438(&qword_10011F9B8, &qword_1000D9940);
  v145 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v109 = sub_10001C3D8(&qword_10011F9C0, &qword_10011F9B8, &qword_1000D9940, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001C19C(&qword_10011F9C8, &qword_10011F9D0, AABattery_ptr, &protocol conformance descriptor for NSObject);
  v143 = v108;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryLeft.getter();

  v110 = Published.Publisher.didSet.getter();
  v111 = v162;
  (v162)(v105, v106);
  aBlock = v110;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryRight.getter();

  v112 = Published.Publisher.didSet.getter();
  v111(v105, v106);
  aBlock = v112;
  v144 = v109;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryCombinedLeftRight.getter();

  v113 = Published.Publisher.didSet.getter();
  v111(v105, v106);
  aBlock = v113;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryMain.getter();

  v114 = Published.Publisher.didSet.getter();
  (v162)(v105, v106);
  aBlock = v114;
  Publisher<>.removeDuplicates()();

  sub_10001C3D8(&qword_10011F9D8, &qword_10011F988, &qword_1000D98D0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publishers.CombineLatest.init(_:_:)();
  sub_10001C3D8(&qword_10011F9E0, &qword_10011F978, &qword_1000D98C0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v115 = v152;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_10001C3D8(&qword_10011F9E8, &qword_10011F990, &qword_1000D98D8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v116 = v154;
  v117 = Publisher.eraseToAnyPublisher()();
  (*(v153 + 8))(v115, v116);
  aBlock = v117;
  v118 = static OS_dispatch_queue.main.getter();
  v167 = v118;
  v119 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v120 = v161;
  (*(*(v119 - 8) + 56))(v161, 1, 1, v119);
  sub_100008438(&qword_10011F9F0, &qword_1000D9948);
  sub_10001C3D8(&qword_10011F9F8, &qword_10011F9F0, &qword_1000D9948, v145);
  sub_10001C19C(&qword_10011FA00, &qword_10011D240, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v121 = v158;
  Publisher.receive<A>(on:options:)();
  sub_10000E950(v120, &qword_10011F970, &qword_1000D64C8);

  swift_allocObject();
  swift_weakInit();

  sub_10001C3D8(&qword_10011FA08, &qword_10011F998, &unk_1000D98E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v122 = v160;
  Publisher<>.sink(receiveValue:)();

  (*(v159 + 8))(v121, v122);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v123 = v166;
  v124 = *(v166 + 136);
  if (v124 > 9)
  {
    if (v124 != 10 && v124 != 14)
    {
      goto LABEL_28;
    }

LABEL_27:
    sub_10006901C();

    sub_100062D70(a18, a4);
    NWPathMonitor.pathUpdateHandler.setter();

    NWPathMonitor.start(queue:)();
    goto LABEL_28;
  }

  if (v124 == 4)
  {
    goto LABEL_27;
  }

  if (v124 == 9)
  {
    v125 = v135;
    sub_10000E88C(v166 + *(v136 + 48), v135, &qword_10011DE28, &unk_1000D98B0);
    v126 = type metadata accessor for UUID();
    v127 = *(v126 - 8);
    v128 = (*(v127 + 48))(v125, 1, v126);

    if (v128 == 1)
    {
      sub_10000E950(v125, &qword_10011DE28, &unk_1000D98B0);
      v129 = 0;
      v130 = 0xE000000000000000;
    }

    else
    {
      v131 = UUID.uuidString.getter();
      v130 = v132;
      (*(v127 + 8))(v125, v126);
      v129 = v131;
    }

    sub_100098F00(v129, v130);

    goto LABEL_27;
  }

LABEL_28:
  sub_10000EA94(v174);
  sub_10000E8F4(v123);
  return a4;
}

uint64_t sub_1000A245C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A249C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A24D0()
{
  result = qword_10011F640;
  if (!qword_10011F640)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F640);
  }

  return result;
}

uint64_t sub_1000A2528()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000A2658(float a1, float a2)
{
  if (a1 == 0.0)
  {
    v4 = _swiftEmptyArrayStorage;
    if (a2 == 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
  v7 = objc_opt_self();
  *v19 = a1;
  *&v19[4] = *(&CAColorMatrixIdentity + 4);
  v20 = *(&CAColorMatrixIdentity + 5);
  *v21 = a1;
  *&v21[4] = *(&CAColorMatrixIdentity + 28);
  v22 = *(&CAColorMatrixIdentity + 11);
  v23 = a1;
  *v24 = *(&CAColorMatrixIdentity + 52);
  *&v24[12] = *(&CAColorMatrixIdentity + 4);
  v8 = [v7 valueWithCAColorMatrix:v19];
  v9 = String._bridgeToObjectiveC()();
  [v6 setValue:v8 forKey:v9];

  *v21 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
  *v19 = v6;
  v4 = sub_1000CC584(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1000CC584((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  sub_10004D3D8(v19, &v4[32 * v11 + 32]);
  if (a2 != 0.0)
  {
LABEL_7:
    v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterBias];
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v12 setValue:isa forKey:v14];

    *v21 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
    *v19 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1000CC584(0, *(v4 + 2) + 1, 1, v4);
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1000CC584((v15 > 1), v16 + 1, 1, v4);
    }

    *(v4 + 2) = v16 + 1;
    sub_10004D3D8(v19, &v4[32 * v16 + 32]);
  }

LABEL_12:
  v17 = [v2 layer];
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setFilters:v18];
}

id sub_1000A2978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100008480();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v18 = v8;
  v19 = v10;
  v17[3] = 35;
  v17[4] = 0xE100000000000000;
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v18 = 0;
  v11 = objc_allocWithZone(NSScanner);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithString:v12];

  LODWORD(v12) = [v13 scanHexLongLong:&v18];
  if (v12)
  {
    v14 = String.count.getter();

    if (v14 == 6)
    {
      v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      return [v15 initWithRed:BYTE2(v18) / 255.0 green:BYTE1(v18) / 255.0 blue:v18 / 255.0 alpha:1.0];
    }
  }

  else
  {
  }

  return 0;
}

void sub_1000A2C08(void *a1)
{
  v3 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D6000;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_1000A2F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v38 = a3;
  static CharacterSet.newlines.getter();
  sub_100008480();
  v10 = StringProtocol.components(separatedBy:)();
  (*(v7 + 8))(v9, v6);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = *(v10 + 32);
  v12 = objc_opt_self();

  v13 = [v12 _preferredFontForTextStyle:a1 variant:256];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  v35 = v11;
  v36 = a3;

  v15 = [v14 fontDescriptor];
  v16 = [v15 fontDescriptorWithSymbolicTraits:2];

  if (v16)
  {
    [v14 pointSize];
    v17 = [v12 fontWithDescriptor:v16 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v33 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v19 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v19;
    *(inited + 40) = v17;
    v20 = NSFontAttributeName;
    v34 = v17;
    sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000E950(inited + 32, &qword_10011C900, &unk_1000D6750);
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 rangeOfString:v22];
    v35 = v24;

    v25 = swift_initStackObject();
    *(v25 + 16) = v33;
    *(v25 + 32) = v20;
    *(v25 + 64) = v19;
    *(v25 + 40) = v14;
    v26 = v14;
    sub_1000A3410(v25);
    swift_setDeallocating();
    sub_10000E950(v25 + 32, &qword_10011C900, &unk_1000D6750);
    v27 = objc_allocWithZone(NSMutableAttributedString);
    v28 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10003CDAC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = [v27 initWithString:v28 attributes:isa];

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v30 addAttributes:v31 range:{v23, v35}];

    return v30;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1000A3410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA20, &qword_1000D9950);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v11, &qword_10011C900, &unk_1000D6750);
      v5 = v11;
      result = sub_1000CE8DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D3D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000A3538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA30, &qword_1000D9960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v13, &qword_10011FA28, &qword_1000D9958);
      v5 = v13;
      v6 = v14;
      result = sub_1000CD118(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D3D8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000A3764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA38, &qword_1000D9968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA48, &qword_1000D9978);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v11, &qword_10011FA50, qword_1000D9980);
      v5 = v11;
      result = sub_1000CE8DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D3D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000A3988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011E310, &unk_1000D7F30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000CD118(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1000A3A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA40, &qword_1000D9970);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_1000A3BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011D308, &qword_1000D6760);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = [a4 attributedText];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 string];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v28 = v15;
    v29 = v17;
    v26 = a2;
    v27 = a3;
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    sub_100008480();
    v19 = StringProtocol.range<A>(of:options:range:locale:)();
    v21 = v20;
    v23 = v22;
    sub_10000E950(v11, &qword_10011D308, &qword_1000D6760);
    if (v23)
    {
    }

    else
    {
      v28 = v19;
      v29 = v21;
      v26 = v15;
      v27 = v17;
      sub_100008438(&qword_10011D310, qword_1000D6768);
      sub_10001E5B0();
      v24 = _NSRange.init<A, B>(_:in:)();
      if (sub_10001DF68(a4, v24, v25))
      {
        (*(a5 + 16))(a5);
      }
    }
  }
}

uint64_t sub_1000A3DCC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FA60);
  v1 = sub_10000A570(v0, qword_10011FA60);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A3F9C(char a1, SEL *a2, const char *a3, SEL *a4)
{
  v8 = v4;
  v15.receiver = v8;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, *a2, a1 & 1);
  if (qword_10011C740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A570(v10, qword_10011FA60);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 2u);
  }

  result = *&v8[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView];
  if (result)
  {
    return [result *a4];
  }

  return result;
}

uint64_t sub_1000A413C(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v77 - v4;
  v6 = type metadata accessor for HeadphoneAssets(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadphoneViewModel(0);
  v82 = *(v10 - 8);
  v11 = v82[8];
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(__chkstk_darwin(v10) + 56));
  v14 = v13[11];
  v15 = v13[13];
  v101 = v13[12];
  v102 = v15;
  v16 = v13[13];
  v103 = v13[14];
  v17 = v13[7];
  v18 = v13[9];
  v97 = v13[8];
  v98 = v18;
  v20 = v13[9];
  v19 = v13[10];
  v21 = v19;
  v100 = v13[11];
  v99 = v19;
  v22 = v13[3];
  v23 = v13[5];
  v93 = v13[4];
  v94 = v23;
  v25 = v13[5];
  v24 = v13[6];
  v26 = v24;
  v96 = v13[7];
  v95 = v24;
  v27 = v13[1];
  v89 = *v13;
  v90 = v27;
  v28 = v13[2];
  v30 = *v13;
  v29 = v13[1];
  v92 = v13[3];
  v91 = v28;
  v116 = v101;
  v117 = v16;
  v118 = v13[14];
  v112 = v97;
  v113 = v20;
  v115 = v14;
  v114 = v21;
  v108 = v93;
  v109 = v25;
  v111 = v17;
  v110 = v26;
  v104 = v30;
  v105 = v29;
  v107 = v22;
  v106 = v28;
  result = sub_100026134(&v104);
  if (result != 1)
  {
    v79 = v7;
    v80 = v5;
    v81 = v6;
    v77 = v9;
    v88[12] = v116;
    v88[13] = v117;
    v88[14] = v118;
    v88[8] = v112;
    v88[9] = v113;
    v88[11] = v115;
    v88[10] = v114;
    v88[4] = v108;
    v88[5] = v109;
    v88[7] = v111;
    v88[6] = v110;
    v88[0] = v104;
    v88[1] = v105;
    v88[3] = v107;
    v88[2] = v106;
    v86[12] = v101;
    v86[13] = v102;
    v86[14] = v103;
    v86[8] = v97;
    v86[9] = v98;
    v86[11] = v100;
    v86[10] = v99;
    v86[5] = v94;
    v86[7] = v96;
    v86[6] = v95;
    v86[0] = v89;
    v86[1] = v90;
    v86[3] = v92;
    v86[4] = v93;
    v86[2] = v91;
    sub_10000A304(v86, v87);
    v32 = String._bridgeToObjectiveC()();
    [v1 setTitle:v32];

    v33 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v33];

    v78 = v10;
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000944B8(a1, &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = v1;
    v36 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v37 = (v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v38 + v36;
    v40 = v35;
    sub_1000A5590(v12, v39, type metadata accessor for HeadphoneViewModel);
    *(v38 + v37) = v34;

    v41 = String._bridgeToObjectiveC()();
    v87[2].n128_u64[0] = sub_1000A5464;
    v87[2].n128_u64[1] = v38;
    v87[0].n128_u64[0] = _NSConcreteStackBlock;
    v87[0].n128_u64[1] = 1107296256;
    v87[1].n128_u64[0] = sub_10000C034;
    v87[1].n128_u64[1] = &unk_100107EC8;
    v42 = _Block_copy(v87);
    v43 = objc_opt_self();
    v44 = [v43 actionWithTitle:v41 style:0 handler:v42];

    _Block_release(v42);

    v82 = v44;

    v45 = v78;
    if ((*(a1 + *(v78 + 64)) & 1) == 0)
    {
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v47 = String._bridgeToObjectiveC()();
      v87[2].n128_u64[0] = sub_1000A5518;
      v87[2].n128_u64[1] = v46;
      v87[0].n128_u64[0] = _NSConcreteStackBlock;
      v87[0].n128_u64[1] = 1107296256;
      v87[1].n128_u64[0] = sub_10000C034;
      v87[1].n128_u64[1] = &unk_100107EF0;
      v48 = _Block_copy(v87);
      v49 = [v43 actionWithTitle:v47 style:1 handler:v48];

      _Block_release(v48);

      v50 = [v35 addAction:v49];
    }

    v51 = a1 + *(v45 + 44);
    v52 = v80;
    sub_1000A5520(v51, v80);
    if ((*(v79 + 48))(v52, 1, v81) == 1)
    {

      sub_10000E950(&v89, &unk_10011FF80, &qword_1000D8590);
      v53 = &qword_10011CCF0;
      v54 = qword_1000D61B0;
      v55 = v52;
    }

    else
    {
      v56 = v77;
      sub_1000A5590(v52, v77, type metadata accessor for HeadphoneAssets);
      v57 = [objc_allocWithZone(SFMediaPlayerView) init];
      v58 = [objc_opt_self() currentTraitCollection];
      v59 = [v58 userInterfaceStyle];

      if (v59 == 2)
      {
        v61 = 1;
      }

      else
      {
        v61 = 2;
      }

      URL._bridgeToObjectiveC()(v60);
      v63 = v62;
      [v57 updateViewForAssetType:v61 adjustmentsURL:v62];

      v64 = objc_allocWithZone(SFMediaPlayerItem);
      URL._bridgeToObjectiveC()(v65);
      v67 = v66;
      v68 = [v64 initWithURL:v66];

      [v68 setShouldLoop:1];
      [v57 addMovieItem:v68];
      v69 = v57;
      sub_1000AC67C(v69, v88, 0, v87);
      memcpy(v83, v87, sizeof(v83));
      v70 = [v35 contentView];
      v71 = v87[0].n128_u64[0];
      [v87[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v70 addLayoutGuide:v87[0].n128_u64[1]];
      [v70 addSubview:v71];
      [v70 sendSubviewToBack:v71];

      v72 = objc_opt_self();
      v73 = [v35 contentView];
      v74 = [v73 mainContentGuide];

      sub_1000ABDA8(v74);
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v72 activateConstraints:isa];

      sub_1000A55F8(v56);
      v76 = *&v40[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView];
      *&v40[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView] = v69;

      memcpy(v84, v83, sizeof(v84));
      nullsub_1();
      memcpy(v85, &v40[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieContainer], sizeof(v85));
      memcpy(&v40[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieContainer], v84, 0x130uLL);
      v53 = &qword_10011E760;
      v54 = &qword_1000D8598;
      v55 = v85;
    }

    return sub_10000E950(v55, v53, v54);
  }

  return result;
}

void sub_1000A4AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + *(type metadata accessor for HeadphoneViewModel(0) + 64)) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();

      if (v5)
      {
        sub_1000B70B4();
LABEL_8:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        sub_1000B90EC(1);
        goto LABEL_8;
      }
    }
  }
}

void sub_1000A4BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B90EC(0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A4D78(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v2];
  }
}

uint64_t sub_1000A4DDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4E14()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + v2[11];
  v8 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v40 = v5;
    v43 = (v3 + 16) & ~v3;
    v46 = v3;
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v11 = *(v10 + 8);
    v11(v7, v9);
    v11(v7 + v8[5], v9);
    v12 = v8[6];
    if (!(*(v10 + 48))(v7 + v12, 1, v9))
    {
      v11(v7 + v12, v9);
    }

    v13 = v7 + v8[7];
    v14 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v11(v13, v9);
    }

    v4 = v43;
    v3 = v46;
    v5 = v40;
  }

  v15 = v6 + v2[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v33 = type metadata accessor for HeadphoneBatteryInfo(0);
    v34 = *(v33 + 28);
    v45 = v4;
    v49 = v3;
    v35 = type metadata accessor for BatteryIconStyle();
    v36 = *(*(v35 - 8) + 8);
    v42 = v5;
    v36(v15 + v34, v35);
    v20 = (v33 + 32);

    v15 += *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v37 = v35;
    v3 = v49;
    v36(v15 + *(v33 + 28), v37);
LABEL_18:
    v5 = v42;
    v4 = v45;
    goto LABEL_19;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v21 = type metadata accessor for HeadphoneBatteryInfo(0);
      v22 = *(v21 + 28);
      v47 = v3;
      v23 = type metadata accessor for BatteryIconStyle();
      v41 = v5;
      v24 = *(*(v23 - 8) + 8);
      v24(v15 + v22, v23);
      v20 = (v21 + 32);

      v44 = v4;
      v25 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v26 = v15 + *(v25 + 48);
      v24(v26 + *(v21 + 28), v23);

      v15 += *(v25 + 64);
      v27 = v23;
      v4 = v44;
      v3 = v47;
      v24(v15 + *(v21 + 28), v27);
      v5 = v41;
      goto LABEL_19;
    case 3:
      v28 = type metadata accessor for HeadphoneBatteryInfo(0);
      v29 = *(v28 + 28);
      v45 = v4;
      v48 = v3;
      v30 = type metadata accessor for BatteryIconStyle();
      v31 = *(*(v30 - 8) + 8);
      v42 = v5;
      v31(v15 + v29, v30);
      v20 = (v28 + 32);

      v15 += *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v32 = v30;
      v3 = v48;
      v31(v15 + *(v28 + 28), v32);
      goto LABEL_18;
    case 4:
LABEL_14:
      v17 = type metadata accessor for HeadphoneBatteryInfo(0);
      v18 = *(v17 + 28);
      v19 = type metadata accessor for BatteryIconStyle();
      (*(*(v19 - 8) + 8))(v15 + v18, v19);
      v20 = (v17 + 32);
LABEL_19:

      break;
  }

LABEL_20:
  if (*(v6 + v2[13] + 8))
  {
  }

  if (*(v6 + v2[14] + 176))
  {
  }

  v38 = v6 + v2[19];
  if (*(v38 + 8))
  {
  }

  if (*(v6 + v2[20]))
  {
  }

  return _swift_deallocObject(v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1000A5464(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000A4AD0(a1, v1 + v4, v5);
}

uint64_t sub_1000A5500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A5520(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A55F8(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A566C(int a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 arrayForKey:v4];

  if (v5 && (v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v5, v7 = sub_1000A5EA0(v6), , v7))
  {
    if (v7[2])
    {
      if (qword_10011C748 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000A570(v8, qword_10011FAC0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136315138;
        v13 = Array.description.getter();
        v15 = sub_100078978(v13, v14, &v24);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "User has seen tutorial cards for: %s", v11, 0xCu);
        sub_10000EA94(v12);
      }
    }

    v16 = v7[2];
    v17 = 32;
    while (v16)
    {
      v18 = *(v7 + v17);
      v17 += 4;
      --v16;
      if (v18 == a1)
      {

        return 1;
      }
    }
  }

  else
  {
    if (qword_10011C748 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A570(v20, qword_10011FAC0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No seen tutorial product IDs found", v23, 2u);
    }
  }

  return 0;
}

void sub_1000A594C(int a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 arrayForKey:v4];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000A5EA0(v6);

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = sub_1000A7FF8(v7);

  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_6:

LABEL_7:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  v10 = sub_1000A5FAC(*(v8 + 16), 0);
  v11 = sub_1000A7CAC(&v33, v10 + 8, v9, v8);
  sub_10001C2C4(v33);
  if (v11 != v9)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_8:
  v12 = v10[2];
  v13 = 32;
  v14 = v12;
  while (v14)
  {
    v15 = *(v10 + v13);
    v13 += 4;
    --v14;
    if (v15 == a1)
    {
      goto LABEL_21;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1000CCC48(0, v12 + 1, 1, v10);
  }

  v17 = v10[2];
  v16 = v10[3];
  if (v17 >= v16 >> 1)
  {
    v10 = sub_1000CCC48((v16 > 1), v17 + 1, 1, v10);
  }

  v10[2] = v17 + 1;
  *(v10 + v17 + 8) = a1;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = String._bridgeToObjectiveC()();
  [a2 setObject:isa forKey:v19];

  if (qword_10011C748 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A570(v20, qword_10011FAC0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;

    v25 = Array.description.getter();
    v27 = v26;

    v28 = sub_100078978(v25, v27, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saved seen tutorial product IDs as %s", v23, 0xCu);
    sub_10000EA94(v24);
  }

LABEL_21:
  v29 = String._bridgeToObjectiveC()();
  v30 = [a2 longLongForKey:v29];

  if (v30)
  {
  }

  else
  {
    v31 = Int._bridgeToObjectiveC()().super.super.isa;
    v32 = String._bridgeToObjectiveC()();
    [a2 setObject:v31 forKey:v32];
  }
}

uint64_t sub_1000A5D4C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FAC0);
  v1 = sub_10000A570(v0, qword_10011FAC0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A5E14()
{
  v0 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStoreIdentifier:v1 type:1];

  v3 = v2;
  [v3 synchronize];

  qword_1001231E0 = v3;
}

void *sub_1000A5EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1000CD5E4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10003CE5C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000CD5E4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      *(v3 + v6 + 8) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000A5FAC(uint64_t a1, uint64_t a2)
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

  sub_100008438(&unk_100120050, &qword_1000D9A48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1000A6034(uint64_t a1, uint64_t a2)
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

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_1000A60BC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000A652C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000A671C(v20 + 1);
    }

    v18 = v8;
    sub_1000A6DCC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000A6E50(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1000A62F4(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
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
    sub_1000A6FC0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000A63DC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000A70E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000A652C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008438(&qword_10011D258, &qword_1000D64E8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000A671C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1000A671C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011D258, &qword_1000D64E8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000A6944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000A6B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1000A6DCC(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1000A6E50(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000A671C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000A7264();
      goto LABEL_12;
    }

    sub_1000A7650(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A6FC0(uint64_t result, unint64_t a2, char a3)
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
    sub_1000A6944(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000A73B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000A7864(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A70E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000A6B6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000A74F4();
      goto LABEL_16;
    }

    sub_1000A7A58(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A7264()
{
  v1 = v0;
  sub_100008438(&qword_10011D258, &qword_1000D64E8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_1000A73B4()
{
  v1 = v0;
  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1000A74F4()
{
  v1 = v0;
  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1000A7650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011D258, &qword_1000D64E8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_1000A7864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1000A7A58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
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
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void *sub_1000A7CAC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_1000A7DC8(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000084D4(0, a5, a6);
  sub_1000A806C(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000084D4(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1000A7FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000A62F4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000A806C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000084D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A80C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FAF0);
  v1 = sub_10000A570(v0, qword_10011FAF0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A81EC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29[-v6];
  v8 = type metadata accessor for HeadphoneAssets(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewWillAppear:", a1 & 1);
  v12 = &v2[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel];
  swift_beginAccess();
  v13 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_10000E950(v7, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_5;
  }

  sub_10000E88C(&v12[*(v13 + 44)], v7, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  sub_1000A9BF0(v7, v11);
  v20 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  v21 = *&v2[v20];
  if (v21)
  {
    swift_endAccess();
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 currentTraitCollection];
    v25 = [v24 userInterfaceStyle];

    if (v25 == 2)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    URL._bridgeToObjectiveC()(1);
    v28 = v27;
    [v23 updateViewForAssetType:v26 adjustmentsURL:v27];

    sub_1000A55F8(v11);
  }

  else
  {
    sub_1000A55F8(v11);
    swift_endAccess();
  }

LABEL_5:
  if (qword_10011C758 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A570(v14, qword_10011FAF0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Playing movie", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  result = *&v2[v18];
  if (result)
  {
    return [result play];
  }

  return result;
}

id sub_1000A8604(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if (qword_10011C758 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FAF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping movie", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  result = *&v2[v8];
  if (result)
  {
    return [result stop];
  }

  return result;
}

id sub_1000A8798(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &v124 - v4;
  v6 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v124 - v7;
  v9 = type metadata accessor for HeadphoneAssets(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadphoneViewModel(0);
  v14 = (a1 + *(v13 + 56));
  v15 = v14[11];
  v16 = v14[13];
  v151 = v14[12];
  v152 = v16;
  v17 = v14[7];
  v18 = v14[9];
  v147 = v14[8];
  v148 = v18;
  v19 = v14[9];
  v20 = v14[11];
  v149 = v14[10];
  v150 = v20;
  v21 = v14[3];
  v22 = v14[5];
  v143 = v14[4];
  v144 = v22;
  v23 = v14[5];
  v24 = v14[7];
  v145 = v14[6];
  v146 = v24;
  v25 = v14[1];
  v139 = *v14;
  v140 = v25;
  v26 = v14[3];
  v28 = *v14;
  v27 = v14[1];
  v141 = v14[2];
  v142 = v26;
  v165 = v15;
  v166 = v151;
  v29 = v14[14];
  v167 = v14[13];
  v168 = v14[14];
  v161 = v17;
  v162 = v147;
  v163 = v19;
  v164 = v149;
  v157 = v21;
  v158 = v143;
  v159 = v23;
  v160 = v145;
  v153 = v29;
  v154 = v28;
  v155 = v27;
  v156 = v141;
  result = sub_100026134(&v154);
  if (result != 1)
  {
    v138[12] = v166;
    v138[13] = v167;
    v138[14] = v168;
    v138[8] = v162;
    v138[9] = v163;
    v138[10] = v164;
    v138[11] = v165;
    v138[4] = v158;
    v138[5] = v159;
    v138[6] = v160;
    v138[7] = v161;
    v138[2] = v156;
    v138[3] = v157;
    v138[0] = v154;
    v138[1] = v155;
    sub_10000E88C(a1 + *(v13 + 44), v8, &qword_10011CCF0, qword_1000D61B0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_10000E950(v8, &qword_10011CCF0, qword_1000D61B0);
    }

    sub_1000A9BF0(v8, v12);
    sub_1000944B8(a1, v5);
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    v31 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel;
    swift_beginAccess();
    v136[12] = v151;
    v136[13] = v152;
    v136[14] = v153;
    v136[8] = v147;
    v136[9] = v148;
    v136[10] = v149;
    v136[11] = v150;
    v136[4] = v143;
    v136[5] = v144;
    v136[6] = v145;
    v136[7] = v146;
    v136[0] = v139;
    v136[1] = v140;
    v136[2] = v141;
    v136[3] = v142;
    sub_10000A304(v136, v137);
    sub_10004D3E8(v5, &v1[v31]);
    swift_endAccess();
    v32 = String._bridgeToObjectiveC()();
    [v1 setTitle:v32];

    v33 = v1;
    v34 = [objc_allocWithZone(PRXLabel) initWithStyle:5];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setTextAlignment:1];
    v35 = String._bridgeToObjectiveC()();
    [v34 setText:v35];

    v36 = [v1 contentView];
    [v36 addSubview:v34];

    v37 = [objc_allocWithZone(SFMediaPlayerView) init];
    v38 = objc_allocWithZone(SFMediaPlayerItem);
    v128 = v12;
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v42 = [v38 initWithURL:v40];

    [v42 setShouldLoop:1];
    v130 = v37;
    v127 = v42;
    [v37 addMovieItem:v42];
    v129 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1000D5C90;
    v44 = [v34 leadingAnchor];
    v45 = [v33 contentView];
    v46 = [v45 mainContentGuide];

    v47 = [v46 leadingAnchor];
    v48 = [v44 constraintEqualToAnchor:v47];

    *(v43 + 32) = v48;
    v49 = [v34 trailingAnchor];
    v50 = [v33 contentView];
    v51 = [v50 mainContentGuide];

    v52 = [v51 trailingAnchor];
    v53 = [v49 constraintEqualToAnchor:v52];

    *(v43 + 40) = v53;
    v126 = v34;
    v54 = [v34 bottomAnchor];
    v55 = [v33 contentView];
    v56 = [v55 mainContentGuide];

    v57 = [v56 bottomAnchor];
    v58 = [v54 constraintEqualToAnchor:v57];

    *(v43 + 48) = v58;
    v135 = v43;
    if (v162.n128_u8[0] == 1)
    {
      sub_10000E88C(&v139, v137, &unk_10011FF80, &qword_1000D8590);
      sub_1000AC67C(v130, v138, 1u, v137);
      memcpy(v134, v137, sizeof(v134));
      result = [v33 view];
      if (result)
      {
        v59 = result;
        v60 = [v33 contentView];
        v61 = v137[0].n128_u64[0];
        [v137[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
        [v60 addLayoutGuide:v137[0].n128_u64[1]];
        [v59 addSubview:v61];
        v124 = v61;
        [v59 sendSubviewToBack:v61];

        v62 = [v33 contentView];
        v125 = v33;
        v63 = objc_opt_self();
        v64 = [v63 clearColor];
        [v62 setBackgroundColor:v64];

        v65 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
        v66 = [v65 CGColor];

        v67 = [objc_allocWithZone(CAGradientLayer) init];
        [v61 bounds];
        [v67 setFrame:?];
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1000D6000;
        sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
        *(v68 + 32) = NSNumber.init(floatLiteral:)(0.01);
        *(v68 + 40) = NSNumber.init(floatLiteral:)(0.32);
        *(v68 + 48) = NSNumber.init(floatLiteral:)(0.7);
        *(v68 + 56) = NSNumber.init(floatLiteral:)(0.99);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v67 setLocations:isa];

        sub_100008438(&unk_10011DC30, &unk_1000D7D30);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1000D5FF0;
        type metadata accessor for CGColor(0);
        v72 = v71;
        *(v70 + 56) = v71;
        *(v70 + 32) = v66;
        v73 = v66;
        v74 = [v63 whiteColor];
        v75 = [v74 CGColor];

        *(v70 + 88) = v72;
        *(v70 + 64) = v75;
        v76 = [v63 whiteColor];
        v77 = [v76 CGColor];

        *(v70 + 96) = v77;
        v78 = v125;
        *(v70 + 152) = v72;
        *(v70 + 120) = v72;
        *(v70 + 128) = v73;
        v129 = v73;
        v79 = Array._bridgeToObjectiveC()().super.isa;

        [v67 setColors:v79];

        v80 = [v124 layer];
        [v80 setMask:v67];

        v81 = *&v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer];
        *&v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer] = v67;
        v82 = v67;

        memcpy(v132, v134, sizeof(v132));
        nullsub_1();
        memcpy(v133, &v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], sizeof(v133));
        memcpy(&v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], v132, 0x130uLL);
        sub_10006207C(v137, &v131);
        sub_10000E950(v133, &qword_10011E760, &qword_1000D8598);
        result = [v78 view];
        if (result)
        {
          v83 = result;
          v84 = [v78 contentView];
          v85 = [v84 mainContentGuide];

          v86 = sub_1000AC264(v83, v85);
          sub_100009D2C(v86);
          v87 = v126;
          v88 = [v126 topAnchor];

          v89 = [v78 contentView];
          v90 = [v89 mainContentGuide];

          v91 = [v90 topAnchor];
          v92 = [v88 constraintGreaterThanOrEqualToAnchor:v91 constant:v161.n128_f64[1]];
          sub_10000E950(&v139, &unk_10011FF80, &qword_1000D8590);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v93 = v128;
          if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10000A3B4(v137);

          goto LABEL_11;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v94 = [objc_allocWithZone(UILayoutGuide) init];
    v95 = [v33 contentView];
    [v95 addLayoutGuide:v94];

    sub_1000AC67C(v130, v138, 1u, v137);
    memcpy(v132, v137, sizeof(v132));
    v96 = [v33 contentView];
    v78 = v33;
    v97 = v137[0].n128_u64[0];
    [v137[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v96 addLayoutGuide:v137[0].n128_u64[1]];
    [v96 addSubview:v97];
    [v96 sendSubviewToBack:v97];

    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1000D6000;
    v99 = [v94 topAnchor];
    v100 = [v78 contentView];
    v101 = [v100 mainContentGuide];

    v102 = [v101 topAnchor];
    v103 = [v99 constraintEqualToAnchor:v102];

    *(v98 + 32) = v103;
    v104 = [v94 leadingAnchor];
    v105 = [v78 contentView];
    v106 = [v105 mainContentGuide];

    v107 = [v106 leadingAnchor];
    v108 = [v104 constraintEqualToAnchor:v107];

    *(v98 + 40) = v108;
    v109 = [v94 trailingAnchor];
    v110 = [v78 contentView];
    v111 = [v110 mainContentGuide];

    v112 = [v111 trailingAnchor];
    v113 = [v109 constraintEqualToAnchor:v112];

    *(v98 + 48) = v113;
    v114 = [v94 bottomAnchor];
    v87 = v126;
    v115 = [v126 topAnchor];

    v116 = [v114 constraintEqualToAnchor:v115 constant:-PRXMainContentMargin];
    *(v98 + 56) = v116;
    sub_100009D2C(v98);
    v117 = sub_1000ABDA8(v94);
    sub_100009D2C(v117);

    memcpy(v133, v132, sizeof(v133));
    nullsub_1();
    memcpy(v134, &v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], sizeof(v134));
    memcpy(&v78[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], v133, 0x130uLL);
    sub_10000E950(v134, &qword_10011E760, &qword_1000D8598);
    v93 = v128;
LABEL_11:
    v118 = v130;
    v119 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
    swift_beginAccess();
    v120 = *&v78[v119];
    *&v78[v119] = v118;
    v121 = v118;

    v122 = objc_opt_self();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v123 = Array._bridgeToObjectiveC()().super.isa;

    [v122 activateConstraints:v123];

    return sub_1000A55F8(v93);
  }

  return result;
}

void sub_1000A98E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer;
    memcpy(v9, (v0 + OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer), sizeof(v9));
    if (sub_1000627F8(v9) == 1)
    {
      v3 = v1;
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
    }

    else
    {
      v8 = *(v0 + v2);
      v3 = v1;
      [v8 bounds];
    }

    [v3 setFrame:{v4, v5, v6, v7}];
  }
}

uint64_t type metadata accessor for HeadphoneRepairViewController(uint64_t a1)
{
  result = qword_10011FB50;
  if (!qword_10011FB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A9B24(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000A9BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000A9C54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer;
  sub_100062284(__src);
  memcpy(&v1[v4], __src, 0x130uLL);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_type] = 21;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithContentView:", a1);
}

uint64_t sub_1000A9D50()
{
  v1 = v0;
  v37 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v37);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  v7 = sub_1000AA014();
  v9 = v8;
  ObjectType = swift_getObjectType();
  v39 = v7;
  v12 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address);
  v11 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address + 8);
  v13 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_10000E390(v13, v4);
  v14 = (*(v9 + 8))(v6, v12, v11, v4, ObjectType, v9);
  sub_1000AB47C(v4, type metadata accessor for HeadphoneModel);

  sub_1000AB47C(v6, type metadata accessor for HeadphoneModel);
  if (v14)
  {
    v15 = (v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard);
    v16 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard);
    v17 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard + 8);
    v18 = swift_getObjectType();
    v19 = *(v17 + 32);
    v20 = v16;
    v21 = v19(v18, v17);

    v22 = *v15;
    v23 = v15[1];
    v24 = swift_getObjectType();
    v25 = *(v23 + 32);
    v26 = v22;
    LOBYTE(v23) = v25(v24, v23);

    swift_beginAccess();
    v27 = *(v37 + 196);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v13 + v27);
    *(v13 + v27) = 0x8000000000000000;
    sub_100097468(v23, 0, 3, v21, isUniquelyReferenced_nonNull_native);
    *(v13 + v27) = v38;
    swift_endAccess();
    v29 = [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_hostingController) presentProxCardFlowWithDelegate:v1 initialViewController:*v15];
    v30 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController;
    v31 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController);
    *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController) = v29;

    v32 = *(v1 + v30);
    if (v32)
    {
      v33 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_router);
      v34 = *(v33 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v33 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v32;
      v35 = v32;
    }
  }

  return v14 & 1;
}

id sub_1000AA014()
{
  v1 = &v0[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
  }

  else
  {
    v4 = sub_1000AAC64(v0);
    v5 = *v1;
    *v1 = v4;
    *(v1 + 1) = v6;
    *(v1 + 2) = v7;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1000AA094(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v88 = type metadata accessor for HeadphoneModel(0);
  v12 = *(v88 - 8);
  v13 = __chkstk_darwin(v88);
  v96 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v83 - v15;
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000A570(v16, qword_100123040);
  sub_10004F924(a1, v4);
  v98 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_100097708(a1, v4);
  v20 = os_log_type_enabled(v18, v19);
  v86 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v102 = v22;
    *v21 = 136315138;
    v23 = v4 == 1;
    if (v4 == 1)
    {
      v24 = 0x2064657070696B53;
    }

    else
    {
      v24 = 0x65756E69746E6F43;
    }

    LODWORD(v100) = v4;
    v4 = v11;
    v25 = v8;
    v26 = a1;
    if (v23)
    {
      v27 = 0xEC0000006D657449;
    }

    else
    {
      v27 = 0xEE00776F6C462064;
    }

    v28 = sub_100078978(v24, v27, &v102);
    a1 = v26;
    v8 = v25;
    v11 = v4;
    LOBYTE(v4) = v100;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "FlowPresenter: %s", v21, 0xCu);
    sub_10000EA94(v22);
  }

  v29 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController;
  v30 = *&v3[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController];
  if (v30)
  {
    v31 = [v30 topViewController];
    if (v31)
    {
      v87 = v31;
      ObjectType = swift_getObjectType();
      v33 = swift_conformsToProtocol2();
      if (v33)
      {
        v34 = v33;
        v83 = v29;
        v84 = v11;
        v85 = v8;
        v35 = *(v33 + 32);
        v36 = v35(ObjectType, v33);
        v37 = v35(ObjectType, v34);
        v38 = &v3[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel];
        swift_beginAccess();
        v39 = *(v88 + 196);
        sub_10004F924(a1, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v38 + v39);
        *(v38 + v39) = 0x8000000000000000;
        sub_100097468(v37, a1, v4, v36, isUniquelyReferenced_nonNull_native);
        v95 = v38;
        *(v38 + v39) = v101;
        swift_endAccess();
        v41 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards;
        v42 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address;
        swift_beginAccess();
        v44 = *&v3[v41];
        v45 = *(v44 + 2);
        if (v45)
        {
          v93 = &v3[v42];
          v92 = -24;
          *&v43 = 136315138;
          v89 = v43;
          v94 = v3;
          v90 = v41;
          while (1)
          {
            v99 = *(v44 + 2);
            v100 = *(v44 + 6);
            v46 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v41] = v44;
            if (!v46 || (v45 - 1) > *(v44 + 3) >> 1)
            {
              v44 = sub_1000CC694(v46, v45, 1, v44);
              *&v3[v41] = v44;
            }

            v47 = *(v44 + 2);
            memmove(v44 + 32, v44 + 56, v92 + 24 * v47);
            *(v44 + 2) = v47 - 1;
            *&v3[v41] = v44;
            swift_endAccess();
            v91 = v99;
            v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
            v49 = swift_getObjectType();
            *&v102 = v48;
            v50 = *v93;
            v51 = *(v93 + 1);
            v52 = v96;
            sub_10000E390(v95, v96);
            v53 = v100;
            v54 = *(v100 + 8);
            v55 = v48;
            v56 = v97;
            LOBYTE(v48) = v54(v97, v50, v51, v52, v49, v53);
            sub_1000AB47C(v52, type metadata accessor for HeadphoneModel);

            sub_1000AB47C(v56, type metadata accessor for HeadphoneModel);
            if (v48)
            {
              break;
            }

            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v101 = v60;
              *v59 = v89;
              v102 = v99;
              v103 = v100;
              sub_100008438(&qword_10011FBC8, &qword_1000D9CB0);
              v61 = String.init<A>(describing:)();
              v63 = sub_100078978(v61, v62, &v101);

              *(v59 + 4) = v63;
              _os_log_impl(&_mh_execute_header, v57, v58, "FlowPresenter: %s shouldShow returned false for should show", v59, 0xCu);
              sub_10000EA94(v60);
            }

            v3 = v94;
            v41 = v90;
            swift_beginAccess();
            v44 = *&v3[v41];
            v45 = *(v44 + 2);
            if (!v45)
            {
              goto LABEL_23;
            }
          }

          *&v102 = v55;
          v68 = v100;
          v69 = *(v100 + 24);
          v70 = v94;
          v71 = v94;
          v69(v70, v49, v68);
          v72 = v102;
          v73 = v95;
          v74 = v84;
          sub_10000E390(v95, v84);
          (*(v86 + 56))(v74, 0, 1, v88);
          v75 = swift_getObjectType();
          *&v102 = v72;
          (*(v68 + 48))(v74, v75, v68);
          v76 = v102;
          v77 = swift_getObjectType();
          *&v102 = v76;
          v78 = v97;
          sub_10000E390(v73, v97);
          v79 = *(v68 + 72);
          v80 = v76;
          v81 = v85;
          v79(v78);
          sub_1000AB47C(v78, type metadata accessor for HeadphoneModel);
          (*(v68 + 64))(v81, v77, v68);
          sub_1000AB47C(v81, type metadata accessor for HeadphoneViewModel);

          v82 = *&v70[v83];
          if (v82)
          {
            [v82 pushViewController:v80 animated:1];
          }
        }

        else
        {
LABEL_23:
          swift_endAccess();
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&_mh_execute_header, v64, v65, "FlowPresenter: Reached end of flow calling dismissFlow", v66, 2u);
          }

          sub_1000AA9CC();
        }
      }

      else
      {
        v67 = v87;
      }
    }
  }
}

void sub_1000AA9CC()
{
  v1 = v0;
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_100123040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100078978(0x467373696D736964, 0xED00002928776F6CLL, v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "FlowPresenter: %s called", v5, 0xCu);
    sub_10000EA94(v6);
  }

  v7 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v14[4] = sub_1000AB434;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100019340;
    v14[3] = &unk_100108048;
    v9 = _Block_copy(v14);
    v10 = v7;
    v11 = v1;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  v12 = String._bridgeToObjectiveC()();

  sub_10004D7D4();
  sub_10004CE78();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

id sub_1000AAC64(char *a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  v12 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards;
  swift_beginAccess();
  v13 = *&a1[v12];
  if (v13[2])
  {
    v14 = v13[4];
    v26[1] = v13[5];
    v15 = v13[6];
    sub_1000AB4DC(0, 1);
    swift_endAccess();
    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
    v17 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
    swift_beginAccess();
    sub_10000E390(&a1[v17], v11);
    (*(v3 + 56))(v11, 0, 1, v2);
    ObjectType = swift_getObjectType();
    v27 = v16;
    v15[6](v11, ObjectType, v15);
    v19 = v27;
    v20 = swift_getObjectType();
    v27 = v19;
    sub_10000E390(&a1[v17], v5);
    v21 = v15[9];
    v22 = v19;
    v21(v5, v14, v15);
    sub_1000AB47C(v5, type metadata accessor for HeadphoneModel);
    v15[8](v8, v20, v15);
    sub_1000AB47C(v8, type metadata accessor for HeadphoneViewModel);

    v27 = v22;
    v23 = v15[3];
    v24 = a1;
    v23(a1, v20, v15);
    return v27;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

id sub_1000AAFB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernFlowPresenter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ModernFlowPresenter(uint64_t a1)
{
  result = qword_10011FBB0;
  if (!qword_10011FBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB128(uint64_t a1)
{
  result = type metadata accessor for HeadphoneModel(319);
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

uint64_t sub_1000AB210(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 sub_1000AB22C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000AB240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AB288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1000AB2DC(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_1000AA9CC();
  }
}

uint64_t sub_1000AB2E8(uint64_t a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E390(a1, v5);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_1000AB398(v5, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_1000AB398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB3FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AB47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000AB4DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000CC694(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000AF798(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1000AB59C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000AB5B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AB5F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AB63C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000AB66C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_1000AB6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AB754(void *a1, void *a2)
{
  v3 = v2;
  v64 = *(v2 + 160);
  v65 = *(v2 + 176);
  v6 = *(v2 + 152);
  v7 = *(v2 + 160);
  v8 = *(v2 + 256);
  sub_10002B2D0();
  v10 = v9;
  if (v8 == 2)
  {
    v6 = *(&v64 + 1);
    v7 = *&v65;
  }

  v11 = *(v2 + 8);
  v12 = [*(v3 + 8) centerYAnchor];
  v60 = a1;
  v13 = [a1 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [v11 topAnchor];
  v16 = [a2 topAnchor];
  v62 = [v15 constraintEqualToAnchor:v16];

  v17 = [v11 topAnchor];
  v18 = [a1 topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];

  v20 = *v3;
  v21 = [*v3 centerYAnchor];
  v22 = [v11 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v10];

  v24 = [v20 topAnchor];
  v25 = [v11 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000D5C90;
  *(v27 + 32) = v23;
  *(v27 + 40) = v14;
  *(v27 + 48) = v19;
  v28 = v23;
  v29 = v14;
  v58 = v19;

  *(v3 + 272) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000D5DA0;
  *(v30 + 32) = v62;
  *(v30 + 40) = v26;
  v61 = v62;
  v63 = v26;

  *(v3 + 280) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000D78E0;
  *(v31 + 32) = v29;
  v32 = v29;

  *(v3 + 288) = v31;

  *(v3 + 296) = _swiftEmptyArrayStorage;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000D9D50;
  v34 = [v20 heightAnchor];
  v35 = [v34 constraintEqualToConstant:v7];

  *(v33 + 32) = v35;
  v36 = [v20 widthAnchor];
  v37 = [v36 constraintEqualToConstant:v6];

  *(v33 + 40) = v37;
  *(v33 + 48) = v28;
  v59 = v28;
  v38 = [v20 centerXAnchor];
  v39 = [v11 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v33 + 56) = v40;
  *(v33 + 64) = v58;
  v41 = v58;
  v42 = [v11 bottomAnchor];
  v43 = [v60 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

  v45 = *(v3 + 264);
  *(v33 + 72) = v44;
  *(v33 + 80) = v45;
  *(v33 + 88) = v32;
  v46 = v32;
  v47 = v45;
  v48 = [v11 centerXAnchor];
  v49 = [v60 centerXAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v33 + 96) = v50;
  v51 = [v11 leadingAnchor];
  v52 = [v60 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v33 + 104) = v53;
  v54 = [v11 trailingAnchor];
  v55 = [v60 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v33 + 112) = v56;
  return v33;
}

uint64_t sub_1000ABDA8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 224);
  v66 = *(v1 + 208);
  v67 = v4;
  v68 = *(v1 + 240);
  v5 = *(v1 + 160);
  v62 = *(v1 + 144);
  v63 = v5;
  v6 = *(v1 + 192);
  v64 = *(v1 + 176);
  v65 = v6;
  v7 = *(v1 + 96);
  v58 = *(v1 + 80);
  v59 = v7;
  v8 = *(v1 + 128);
  v60 = *(v1 + 112);
  v61 = v8;
  v9 = *(v1 + 32);
  v54 = *(v1 + 16);
  v55 = v9;
  v10 = *(v1 + 64);
  v56 = *(v1 + 48);
  v57 = v10;
  v11 = *(v1 + 256);
  sub_10002B2D0();
  v13 = v12;
  v15 = v14;
  v16 = 136;
  if (v11 == 2)
  {
    v16 = 152;
  }

  v17 = *(&v54 + v16);
  v18 = 144;
  if (v11 == 2)
  {
    v18 = 160;
  }

  v19 = *(&v54 + v18);
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D9D50;
  v21 = *v2;
  v22 = [*v2 heightAnchor];
  v23 = [v22 constraintEqualToConstant:v19];

  *(v20 + 32) = v23;
  v24 = [v21 widthAnchor];
  v25 = [v24 constraintEqualToConstant:v17];

  *(v20 + 40) = v25;
  v26 = [v21 centerYAnchor];
  v27 = *(v2 + 8);
  v28 = [v27 centerYAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:v15];

  *(v20 + 48) = v29;
  v30 = [v21 centerXAnchor];
  v31 = [v27 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  v33 = [v27 topAnchor];
  v34 = [a1 topAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34];

  *(v20 + 64) = v35;
  v36 = [v27 bottomAnchor];
  v37 = [a1 bottomAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37];

  *(v20 + 72) = v38;
  v39 = [v27 heightAnchor];
  v40 = [v39 constraintEqualToConstant:v13];

  *(v20 + 80) = v40;
  v41 = [v27 centerYAnchor];
  v42 = [a1 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v20 + 88) = v43;
  v44 = [v27 centerXAnchor];
  v45 = [a1 centerXAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v20 + 96) = v46;
  v47 = [v27 leadingAnchor];
  v48 = [a1 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v20 + 104) = v49;
  v50 = [v27 trailingAnchor];
  v51 = [a1 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v20 + 112) = v52;
  return v20;
}

uint64_t sub_1000AC264(void *a1, void *a2)
{
  v5 = 152;
  if (*(v2 + 256) == 2)
  {
    v5 = 168;
  }

  v6 = 160;
  if (*(v2 + 256) == 2)
  {
    v6 = 176;
  }

  v7 = *(v2 + v6);
  v8 = *(v2 + v5);
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D9D50;
  v10 = *v2;
  v11 = [*v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant:v7];

  *(v9 + 32) = v12;
  v13 = [v10 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v8];

  *(v9 + 40) = v14;
  v15 = [v10 topAnchor];
  v16 = [a1 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v9 + 48) = v17;
  v18 = [v10 centerXAnchor];
  v19 = [a1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v9 + 56) = v20;
  v21 = *(v2 + 8);
  v22 = [v21 topAnchor];
  v23 = [a2 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = [v21 bottomAnchor];
  v26 = [a2 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26];

  *(v9 + 72) = v27;
  v28 = [v21 centerYAnchor];
  v29 = [a2 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  v31 = *(v2 + 264);
  *(v9 + 80) = v30;
  *(v9 + 88) = v31;
  v32 = v31;
  v33 = [v21 centerXAnchor];
  v34 = [a2 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v9 + 96) = v35;
  v36 = [v21 leadingAnchor];
  v37 = [a2 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v9 + 104) = v38;
  v39 = [v21 trailingAnchor];
  v40 = [a2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v9 + 112) = v41;
  return v9;
}

__n128 sub_1000AC67C@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v8 = a2[13];
  v41 = a2[12];
  v42 = v8;
  v43 = a2[14];
  v9 = a2[9];
  v37 = a2[8];
  v38 = v9;
  v10 = a2[11];
  v39 = a2[10];
  v40 = v10;
  v11 = a2[5];
  v33 = a2[4];
  v34 = v11;
  v12 = a2[7];
  v35 = a2[6];
  v36 = v12;
  v13 = a2[1];
  v29 = *a2;
  v30 = v13;
  v14 = a2[3];
  v31 = a2[2];
  v32 = v14;
  v15 = objc_allocWithZone(UILayoutGuide);
  sub_10000A304(a2, &v28);
  v16 = [v15 init];
  sub_10002B2D0();
  v18 = v17;
  sub_10000A360(a2);
  v19 = [v16 heightAnchor];

  v20 = [v19 constraintEqualToConstant:v18];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = v16;
  v21 = v42;
  a4[13] = v41;
  a4[14] = v21;
  a4[15] = v43;
  v22 = v38;
  a4[9] = v37;
  a4[10] = v22;
  v23 = v40;
  a4[11] = v39;
  a4[12] = v23;
  v24 = v34;
  a4[5] = v33;
  a4[6] = v24;
  v25 = v36;
  a4[7] = v35;
  a4[8] = v25;
  v26 = v30;
  a4[1] = v29;
  a4[2] = v26;
  result = v32;
  a4[3] = v31;
  a4[4] = result;
  a4[16].n128_u8[0] = a3;
  a4[16].n128_u64[1] = v20;
  a4[17].n128_u64[0] = _swiftEmptyArrayStorage;
  a4[17].n128_u64[1] = _swiftEmptyArrayStorage;
  a4[18].n128_u64[0] = _swiftEmptyArrayStorage;
  a4[18].n128_u64[1] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000AC7FC(void *a1)
{
  v2 = v1;
  *v42 = *(v1 + 144);
  *&v42[16] = *(v1 + 160);
  *&v42[32] = *(v1 + 176);
  v4 = *(v1 + 256);
  sub_10002B2D0();
  v6 = v5;
  v8 = v7;
  if (v4 == 2)
  {
    v41 = *&v42[24];
    v38 = [objc_opt_self() mainScreen];
    [v38 bounds];
    v40 = v39;

    v9 = 1.0;
    if (v40 < 375.0)
    {
      v9 = 298.0 / *&v42[24];
    }
  }

  else
  {
    v9 = 1.0;
    v41 = *&v42[8];
  }

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000D5260;
  v11 = *v2;
  v12 = [*v2 heightAnchor];
  v13 = [v12 constraintEqualToConstant:{vmuld_lane_f64(v9, v41, 1)}];

  *(v10 + 32) = v13;
  v14 = [v11 widthAnchor];
  v15 = [v14 constraintEqualToConstant:v9 * v41.f64[0]];

  *(v10 + 40) = v15;
  v16 = [v11 centerYAnchor];
  v17 = *(v2 + 8);
  v18 = [v17 centerYAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:v8 * v9];

  *(v10 + 48) = v19;
  v20 = [v11 centerXAnchor];
  v21 = [v17 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v10 + 56) = v22;
  v23 = [v17 topAnchor];
  v24 = [a1 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v10 + 64) = v25;
  v26 = [v17 heightAnchor];
  v27 = [v26 constraintEqualToConstant:v6 * v9];

  *(v10 + 72) = v27;
  v28 = [v17 centerXAnchor];
  v29 = [a1 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v10 + 80) = v30;
  v31 = [v17 leadingAnchor];
  v32 = [a1 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v10 + 88) = v33;
  v34 = [v17 trailingAnchor];
  v35 = [a1 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v10 + 96) = v36;
  return v10;
}

void *sub_1000ACC6C()
{
  v8[4] = [v0 titleView];
  v1 = [v0 bodyView];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView];
  v8[5] = v1;
  v8[6] = v2;
  result = v2;
  v4 = 0;
LABEL_2:
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  while (1)
  {
    if (v4 == 3)
    {
      sub_100008438(&qword_10011D148, &qword_1000D6430);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v5 == v4)
    {
      break;
    }

    v6 = v8[v4++ + 4];
    if (v6)
    {
      v7 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1000ACDB4()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = [objc_allocWithZone(ControlCenterTrainingView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = [v0 contentView];
  v4 = [v3 mainContentGuide];

  v5 = [v1 centerXAnchor];
  v6 = [v4 centerXAnchor];
  v29 = [v5 constraintEqualToAnchor:v6 constant:195.0];

  v7 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5C90;
  v9 = [v1 topAnchor];
  v10 = [v4 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v1 bottomAnchor];

  v28 = v4;
  v13 = [v4 bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

  *(v8 + 40) = v14;
  *(v8 + 48) = v29;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v15 = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  v17 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView] = v1;
  v18 = v1;

  v19 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint] = v15;
  v20 = v15;

  v21 = sub_1000ACC6C();
  v22 = v21;
  if (v21 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v25 setAlpha:0.0];

      ++v24;
      if (v27 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1000AD1C8()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000AE174;
  v21 = v2;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100019340;
  v19 = &unk_100108230;
  v3 = _Block_copy(&v16);

  [v1 animateWithDuration:0 delay:v3 options:0 animations:0.5 completion:0.0];
  _Block_release(v3);
  v4 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v5) = 1041865114;
  LODWORD(v6) = 0.75;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1041865114;
  v9 = [v4 initWithControlPoints:v5 :v6 :v8 :v7];
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setAnimationTimingFunction:v9];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000AE194;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100019340;
  v19 = &unk_100108258;
  v12 = _Block_copy(&v16);

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v20 = sub_1000AE1D4;
  v21 = v13;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000194C0;
  v19 = &unk_1001082A8;
  v14 = _Block_copy(&v16);
  v15 = v0;

  [v1 animateWithDuration:v12 animations:v14 completion:0.5];
  _Block_release(v14);
  _Block_release(v12);
  [v10 commit];
}

void sub_1000AD4E4()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitleText:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setBodyText:v2];

  [v0 setShouldCenterAlignText:1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v8[4] = sub_1000AE154;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000C034;
  v8[3] = &unk_100108208;
  v5 = _Block_copy(v8);
  v6 = [objc_opt_self() actionWithTitle:v4 style:3 handler:v5];

  _Block_release(v5);

  v7 = [v0 addAction:v6];
}

void sub_1000AD698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B9ADC();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000AD70C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint);
    if (v3)
    {
      v4 = v3;

      [v4 setConstant:0.0];
      v2 = v4;
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 contentView];

    [v7 layoutIfNeeded];
  }
}

uint64_t sub_1000AD7EC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v21 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000AE1DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_1001082D0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001C380();
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_100041EE4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
  return (v16)(v14, v21);
}

void sub_1000ADB64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView);
    if (v4)
    {
      v5 = v4;

      aBlock[4] = sub_1000AE1E4;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019340;
      aBlock[3] = &unk_1001082F8;
      v6 = _Block_copy(aBlock);

      [v5 animateToInitialStateWithCompletionHandler:v6];
      _Block_release(v6);
      v3 = v5;
    }
  }
}

void sub_1000ADC70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000ADCC4();
  }
}

void sub_1000ADCC4()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1000AE1EC;
  v10 = v1;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_100019340;
  v8 = &unk_100108320;
  v2 = _Block_copy(&v5);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1000AE20C;
  v10 = v3;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000194C0;
  v8 = &unk_100108348;
  v4 = _Block_copy(&v5);

  [v0 animateWithDuration:0 delay:v2 options:v4 animations:0.166666667 completion:0.0];
  _Block_release(v4);
  _Block_release(v2);
}

void sub_1000ADE60(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000ACC6C();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:a2];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_1000ADF84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B6720();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000AE11C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AE19C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000AE24C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  v5 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_60;
  }

  v101 = ObjectType;
  v8 = v6[4];
  v9 = v6[5];

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > v6[3] >> 1)
  {
    v6 = sub_1000CC450(isUniquelyReferenced_nonNull_native, v7, 1, v6);
    v127 = v6;
  }

  sub_1000AF850(0, 1, 0);
  if (v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows] != 1)
  {
    v40 = [v10 leftAnchor];
    v41 = [v1 leftAnchor];
    v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v43 = [v10 topAnchor];
    v44 = [v1 topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v46 = v10;
    v47 = [v10 bottomAnchor];
    v48 = [v1 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v50 = &unk_100116000;
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v51 = v6[2];
    if (!v51)
    {
      v27 = v46;
LABEL_56:

      v94 = [v27 rightAnchor];
      v95 = [v1 rightAnchor];
      v96 = [v94 constraintLessThanOrEqualToAnchor:v95];
      goto LABEL_57;
    }

    v52 = v9;
    v53 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
    v54 = v6 + 5;
    v55 = v46;
    v102 = v1;
    v103 = v3;
    while (1)
    {
      v107 = v51;
      v56 = v50;
      v57 = v54;
      v58 = *(v54 - 1);
      v59 = *v54;
      v60 = swift_getObjectType();
      v109 = v55;
      *&v112 = v55;
      v61 = v52;
      v62 = *(v52 + 40);
      v63 = v58;
      v105 = v60;
      v111 = v61;
      if (v62(v60, v61) > 1u)
      {
        v65 = v59;
        v27 = v63;
        v50 = v56;
        v67 = v57;
        v1 = v102;
      }

      else
      {
        v64 = swift_getObjectType();
        v65 = v59;
        v66 = (*(v59 + 40))(v64, v59);
        v27 = v63;
        if (!v66)
        {
          v50 = v56;
          v67 = v57;
          v1 = v102;
LABEL_42:
          v77 = *(v53 + 13);
          v124 = *(v53 + 12);
          v125 = v77;
          v126 = *(v53 + 14);
          v78 = *(v53 + 9);
          v120 = *(v53 + 8);
          v121 = v78;
          v79 = *(v53 + 11);
          v122 = *(v53 + 10);
          v123 = v79;
          v80 = *(v53 + 5);
          v116 = *(v53 + 4);
          v117 = v80;
          v81 = *(v53 + 7);
          v118 = *(v53 + 6);
          v119 = v81;
          v82 = *(v53 + 1);
          v112 = *v53;
          v113 = v82;
          v83 = *(v53 + 3);
          v114 = *(v53 + 2);
          v115 = v83;
          v75 = v65;
          v3 = v103;
          if (sub_100026134(&v112) != 1)
          {
            v76 = *(v53 + 25);
            goto LABEL_45;
          }

LABEL_43:
          v76 = 0.0;
          goto LABEL_45;
        }

        v50 = v56;
        v67 = v57;
        v1 = v102;
        if (v66 == 1)
        {
          goto LABEL_42;
        }
      }

      v68 = *(v53 + 13);
      v124 = *(v53 + 12);
      v125 = v68;
      v126 = *(v53 + 14);
      v69 = *(v53 + 9);
      v120 = *(v53 + 8);
      v121 = v69;
      v70 = *(v53 + 11);
      v122 = *(v53 + 10);
      v123 = v70;
      v71 = *(v53 + 5);
      v116 = *(v53 + 4);
      v117 = v71;
      v72 = *(v53 + 7);
      v118 = *(v53 + 6);
      v119 = v72;
      v73 = *(v53 + 1);
      v112 = *v53;
      v113 = v73;
      v74 = *(v53 + 3);
      v114 = *(v53 + 2);
      v115 = v74;
      v75 = v65;
      v3 = v103;
      if (sub_100026134(&v112) == 1)
      {
        goto LABEL_43;
      }

      v76 = *(v53 + 26);
LABEL_45:
      v84 = swift_getObjectType();
      *&v112 = v27;
      v85 = (*(v75 + 24))(v84, v75);
      v86 = (*(v111 + 32))(v105);
      v87 = [v85 constraintEqualToAnchor:v86 constant:v76];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v88 = [v27 topAnchor];
      v89 = [v1 topAnchor];
      v90 = [v88 v50[88]];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v91 = [v27 bottomAnchor];
      v92 = [v1 bottomAnchor];
      v93 = [v91 v50[88]];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v54 = v67 + 2;
      v55 = v27;
      v52 = v75;
      v51 = v107 - 1;
      if (v107 == 1)
      {
        goto LABEL_56;
      }
    }
  }

  v12 = [v10 topAnchor];
  v13 = [v1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v15 = [v10 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v18 = v10;
  v19 = [v10 trailingAnchor];
  v20 = [v1 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v22 = v6[2];
  if (v22)
  {
    v23 = v9;
    v24 = v6 + 5;
    v25 = v18;
    do
    {
      v110 = v23;
      v26 = *(v24 - 1);
      v108 = *v24;
      v106 = swift_getObjectType();
      v27 = v26;
      v28 = [v27 topAnchor];
      v104 = swift_getObjectType();
      v29 = [v25 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:20.0];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v31 = [v27 leadingAnchor];
      v32 = [v1 leadingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v34 = [v27 trailingAnchor];
      v35 = [v1 trailingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      *&v112 = v27;
      v37 = (*(v108 + 16))(v106, v108);
      v38 = (*(v110 + 16))(v104);
      v39 = [v37 constraintEqualToAnchor:v38];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v24 += 2;
      v25 = v27;
      v23 = v108;
      --v22;
    }

    while (v22);
  }

  else
  {
    v27 = v18;
  }

  v94 = [v27 bottomAnchor];
  v95 = [v1 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];
LABEL_57:
  v97 = v96;

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v98 = objc_opt_self();
  sub_10000F5A0();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v98 activateConstraints:isa];

  ObjectType = v101;
LABEL_60:
  v128.receiver = v1;
  v128.super_class = ObjectType;
  return objc_msgSendSuper2(&v128, "updateConstraints");
}

id sub_1000AF228(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows] = v3 & 1;
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints;
  swift_beginAccess();
  sub_10000F5A0();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  *&v1[v6] = _swiftEmptyArrayStorage;

  return [v1 setNeedsUpdateConstraints];
}

id sub_1000AF3E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  sub_10001309C(v23);
  v11 = v23[13];
  v10[12] = v23[12];
  v10[13] = v11;
  v10[14] = v23[14];
  v12 = v23[9];
  v10[8] = v23[8];
  v10[9] = v12;
  v13 = v23[11];
  v10[10] = v23[10];
  v10[11] = v13;
  v14 = v23[5];
  v10[4] = v23[4];
  v10[5] = v14;
  v15 = v23[7];
  v10[6] = v23[6];
  v10[7] = v15;
  v16 = v23[1];
  *v10 = v23[0];
  v10[1] = v16;
  v17 = v23[3];
  v10[2] = v23[2];
  v10[3] = v17;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints] = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows;
  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4[v18] = v19 & 1;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000AF55C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  sub_10001309C(v18);
  v5 = v18[13];
  v4[12] = v18[12];
  v4[13] = v5;
  v4[14] = v18[14];
  v6 = v18[9];
  v4[8] = v18[8];
  v4[9] = v6;
  v7 = v18[11];
  v4[10] = v18[10];
  v4[11] = v7;
  v8 = v18[5];
  v4[4] = v18[4];
  v4[5] = v8;
  v9 = v18[7];
  v4[6] = v18[6];
  v4[7] = v9;
  v10 = v18[1];
  *v4 = v18[0];
  v4[1] = v10;
  v11 = v18[3];
  v4[2] = v18[2];
  v4[3] = v11;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows;
  v13 = [objc_opt_self() currentTraitCollection];
  v14 = [v13 preferredContentSizeCategory];

  LOBYTE(v13) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v1[v12] = v13 & 1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

unint64_t sub_1000AF798(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AF850(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100008438(&qword_10011FC60, qword_1000D9EC0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AF920(uint64_t a1)
{
  v2 = sub_100008438(&unk_10011FF80, &qword_1000D8590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF988()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FC68);
  v1 = sub_10000A570(v0, qword_10011FC68);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000AFA50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1000145EC(v10 + 16, &v63);
    swift_unknownObjectRelease();
    v11 = v65;
    if (v65)
    {
      v12 = sub_10000E7E4(&v63, v65);
      v62 = &v62;
      v13 = *(v11 - 8);
      __chkstk_darwin(v12);
      v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v15);
      sub_10001465C(&v63);
      v16 = *v15;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v16 + v17, v6);
      (*(v13 + 8))(v15, v11);
      v18 = v8;
      sub_10000E828(v6, v8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v62}];
      v21 = [v1 traitCollection];
      v22 = [v21 userInterfaceStyle];

      v23 = v22 == 1;
      if (v22 == 1)
      {
        v24 = 0x746867694CLL;
      }

      else
      {
        v24 = 1802658116;
      }

      if (v23)
      {
        v25 = 0xE500000000000000;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      v26 = *&v8[*(v3 + 136)] - 8217;
      if (v26 <= 7 && ((1 << v26) & 0xA5) != 0)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v27 = 0x80000001000E2120;
        v28 = 0xD000000000000022;
      }

      else
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v27 = 0x80000001000E2100;
        v28 = 0xD00000000000001CLL;
      }

      v63 = v28;
      v64 = v27;
      v29._countAndFlagsBits = v24;
      v29._object = v25;
      String.append(_:)(v29);
      v30 = objc_allocWithZone(BSUICAPackageView);
      v31 = v20;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v30 initWithPackageName:v32 inBundle:v31];

      if (v33)
      {

        v34 = String._bridgeToObjectiveC()();
        [v33 setState:v34 animated:1];

        v35 = v33;
        [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
        v36 = [v1 contentView];
        [v36 addSubview:v35];

        v37 = [v1 contentView];
        v38 = [v37 mainContentGuide];

        v39 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1000D5C80;
        v41 = [v35 topAnchor];
        v42 = [v38 topAnchor];
        v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];

        *(v40 + 32) = v43;
        v44 = [v35 bottomAnchor];
        v45 = [v38 bottomAnchor];
        v46 = [v44 constraintLessThanOrEqualToAnchor:v45];

        *(v40 + 40) = v46;
        v47 = [v35 heightAnchor];
        v48 = [v47 constraintEqualToConstant:160.0];

        *(v40 + 48) = v48;
        v49 = [v35 widthAnchor];
        v50 = [v49 constraintEqualToConstant:320.0];

        *(v40 + 56) = v50;
        v51 = [v35 centerYAnchor];
        v52 = [v38 centerYAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];

        *(v40 + 64) = v53;
        v54 = [v35 centerXAnchor];

        v55 = [v38 centerXAnchor];
        v56 = [v54 constraintEqualToAnchor:v55];

        *(v40 + 72) = v56;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v39 activateConstraints:isa];

        sub_10000E8F4(v18);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    sub_10001465C(&v63);
  }

  if (qword_10011C760 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000A570(v58, qword_10011FC68);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Headphone Model is nil, exiting", v61, 2u);
  }
}

void sub_1000B0318()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_1000B074C;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_1001083D8;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000B0784;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100108400;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_1000B05D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7CC0(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B0714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B076C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000B07AC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:450.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1000B08D8()
{
  v1 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v1 - 8);
  v3 = v25 - v2 + 40;
  v4 = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  v27.receiver = v0;
  v27.super_class = v4;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1000145EC(v6 + 16, v25);
    swift_unknownObjectRelease();
    v7 = v26;
    if (v26)
    {
      v8 = sub_10000E7E4(v25, v26);
      v9 = *(v7 - 8);
      __chkstk_darwin(v8);
      v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v9 + 16))(v11);
      sub_10000E950(v25, &qword_10011FBC0, &unk_1000D5EF0);
      v12 = *v11;
      v13 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v12 + v13, v3);
      (*(v9 + 8))(v11, v7);
      v14 = type metadata accessor for HeadphoneModel(0);
      (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
      sub_10000E950(v3, &qword_10011EBD0, &unk_1000D5EE0);
      v15 = [v0 contentView];
      v16 = sub_1000B07AC();
      [v15 addSubview:v16];

      v17 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset];
      v18 = [v0 contentView];
      v19 = [v18 mainContentGuide];

      [v17 pinToOtherWithLayoutGuide:v19];
      goto LABEL_9;
    }

    sub_10000E950(v25, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v20 = type metadata accessor for HeadphoneModel(0);
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  sub_10000E950(v3, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A570(v21, qword_100123040);
  v19 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, v22, "HeadhponeHeartRateTutorial1ViewController: Headphone Model is nil, exiting", v23, 2u);
  }

LABEL_9:
}