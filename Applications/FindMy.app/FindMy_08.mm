void sub_1000DCBA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a2, v9);
  v34 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v6;
    v20 = v19;
    v36 = v19;
    *v18 = 136315138;
    v21 = FMIPItem.name.getter();
    v32 = v5;
    v22 = v7;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_100005B4C(v21, v24, &v36);
    v7 = v22;
    v5 = v32;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDevicesActionController: User selected a part %s", v18, 0xCu);
    sub_100006060(v20);
    v6 = v33;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  FMIPItem.location.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &unk_1006C0220, qword_100553770);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMDevicesActionController: User selected a part with not location - THIS SHOULD NEVER HAPPEN", v28, 2u);
    }
  }

  else
  {
    v29 = v35;
    (*(v7 + 32))(v35, v5, v6);
    v30 = FMIPLocation.location.getter();
    sub_1000E0F8C(v30);

    (*(v7 + 8))(v29, v6);
  }
}

void sub_1000DCFCC(unint64_t a1, uint64_t a2)
{
  if (a2 || !a1)
  {
    goto LABEL_10;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v12 = a1;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v12;
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "FMDevicesActionController: reverse geocode failed while getting directions", v16, 2u);
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*(v2 + 16))
  {
    v3 = *(a1 + 32);
LABEL_8:
    v4 = v3;
    v5 = [objc_allocWithZone(MKPlacemark) initWithPlacemark:v3];
    v6 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v5];
    sub_10007EBC0(&qword_1006B0E90, &qword_10055EBD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 56) = v9;
    v10 = sub_100153A44(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B0E98, &unk_100553500);
    sub_1000F0BF0(v10);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openInMapsWithLaunchOptions:isa];

    return;
  }

  __break(1u);
}

double sub_1000DD274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = __chkstk_darwin(v8);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  type metadata accessor for FMIPCancelEraseAction();
  swift_allocObject();
  v12 = FMIPCancelEraseAction.init(device:)();
  v13 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  [v13 setPresentingViewController:a2];

  v14 = v13;
  dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_100062900(a3, a4);
  sub_1000D7218(v12, sub_1000E3830, v15);

  return result;
}

void sub_1000DD460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a8;
  v59 = a2;
  v66 = a5;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v14 - 8);
  v65 = v14;
  __chkstk_darwin(v14);
  v62 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for FMIPActionStatus();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v55 = v19;
  v56 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v50[-v21];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  v54 = *(v18 + 16);
  v54(v22, a1, v17);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = v18;
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v24, v26);
  v57 = a1;
  if (!v27)
  {

    (*(v25 + 8))(v22, v17);
    v30 = v25;
    v39 = v66;
    if (!v66)
    {
      return;
    }

    goto LABEL_7;
  }

  v28 = swift_slowAlloc();
  v52 = a7;
  v29 = v28;
  v53 = swift_slowAlloc();
  aBlock[0] = v53;
  *v29 = 136315394;
  sub_100009EC8(&unk_1006B0580, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  v51 = v26;
  v30 = v25;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = a6;
  v34 = v33;
  (*(v30 + 8))(v22, v17);
  v35 = sub_100005B4C(v31, v34, aBlock);
  a6 = v32;

  *(v29 + 4) = v35;
  *(v29 + 12) = 2080;
  v67 = a3;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
  v36 = String.init<A>(describing:)();
  v38 = sub_100005B4C(v36, v37, aBlock);

  *(v29 + 14) = v38;
  _os_log_impl(&_mh_execute_header, v24, v51, v52, v29, 0x16u);
  swift_arrayDestroy();

  v39 = v66;
  if (v66)
  {
LABEL_7:
    sub_100003E90();
    v40 = a6;

    v53 = static OS_dispatch_queue.main.getter();
    v41 = v56;
    v54(v56, v57, v17);
    v42 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v43 = (v55 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v39;
    *(v44 + 24) = v40;
    (*(v30 + 32))(v44 + v42, v41, v17);
    *(v44 + v43) = v59;
    aBlock[4] = a9;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = a10;
    v45 = _Block_copy(aBlock);
    sub_100062900(v39, v40);

    v46 = v60;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v47 = v62;
    v48 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v53;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    sub_10001835C(v39, v40);
    (*(v64 + 8))(v47, v48);
    (*(v61 + 8))(v46, v63);
  }
}

double sub_1000DDAF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v32 = a5;
  v33 = a6;
  v34 = a2;
  v35 = a3;
  v31 = type metadata accessor for FMIPNotifyActionType();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FMIPDevice();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPDeviceState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  v21 = FMIPDevice.state.getter();
  a4(v21);
  sub_100009EC8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  (*(v11 + 16))(v13, a1, v29);
  (*(v9 + 104))(v30, *v32, v31);
  type metadata accessor for FMIPNotifyAction();
  swift_allocObject();
  v23 = FMIPNotifyAction.init(device:type:enabled:)();
  v24 = swift_allocObject();
  v25 = v34;
  v26 = v35;
  *(v24 + 16) = v34;
  *(v24 + 24) = v26;
  sub_100062900(v25, v26);
  sub_1000D7218(v23, v36, v24);

  return result;
}

double sub_1000DDE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v23[2] = a2;
  v24 = a4;
  v23[1] = a3;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDeviceState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isShowContactDetailsEnabled.getter();
  sub_100009EC8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v17(v16, v10);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for FMIPShowContactDetailsAction();
  swift_allocObject();

  v18 = FMIPShowContactDetailsAction.init(device:phoneNumber:enabled:)();
  v19 = swift_allocObject();
  v20 = v24;
  v21 = v25;
  *(v19 + 16) = v24;
  *(v19 + 24) = v21;
  sub_100062900(v20, v21);
  sub_1000D7218(v18, sub_1000E3724, v19);

  return result;
}

double sub_1000DE0C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v21 = a1;
  v22 = type metadata accessor for FMIPNotifyActionType();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = a3;
    *v16 = 67109120;
    *(v16 + 4) = v23 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMDevicesActionController: performing separation action, enabled?: %{BOOL}d", v16, 8u);
    a3 = v20;
  }

  (*(v10 + 16))(v12, v21, v9);
  (*(v6 + 104))(v8, enum case for FMIPNotifyActionType.whenSeparated(_:), v22);
  type metadata accessor for FMIPNotifyAction();
  swift_allocObject();
  v17 = FMIPNotifyAction.init(device:type:enabled:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_100062900(a3, a4);
  sub_1000D7218(v17, sub_1000E36D4, v18);

  return result;
}

double sub_1000DE3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v33 = a3;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v12 = *(v7 + 16);
  v12(&v31 - v13, a1, v6, v11);
  type metadata accessor for FMIPRepairDeviceAction();
  swift_allocObject();
  v14 = FMIPRepairDeviceAction.init(device:)();
  v15 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  [v15 setPresentingViewController:a2];

  v16 = v15;
  dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  (v12)(v9, a1, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v16;
    v22 = v21;
    v35 = v21;
    *v20 = 136315138;
    v23 = FMIPDevice.name.getter();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    v26 = sub_100005B4C(v23, v25, &v35);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMDevicesActionController: Repair device action for device: %s", v20, 0xCu);
    sub_100006060(v22);
    v16 = v32;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v27 = swift_allocObject();
  v28 = v33;
  v29 = v34;
  *(v27 + 16) = v33;
  *(v27 + 24) = v29;
  sub_100062900(v28, v29);
  sub_1000D7218(v14, sub_1000E3684, v27);

  return result;
}

double sub_1000DE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = __chkstk_darwin(v8);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  type metadata accessor for FMIPRemoveDeviceAction();
  swift_allocObject();
  v12 = FMIPRemoveDeviceAction.init(device:)();
  v13 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  [v13 setPresentingViewController:a2];

  v14 = v13;
  dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_100062900(a3, a4);
  sub_1000D7218(v12, sub_1000E3618, v15);

  return result;
}

void sub_1000DE8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a7;
  v67 = a6;
  v60 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPActionStatus();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v59 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v57 = *(v17 + 16);
  v58 = v17 + 16;
  v57(v21, a1, v16);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  LODWORD(v55) = v24;
  if (!os_log_type_enabled(v23, v24))
  {

    (*(v17 + 8))(v21, v16);
    if (!a5)
    {
      return;
    }

    goto LABEL_7;
  }

  v25 = swift_slowAlloc();
  v54 = a5;
  v26 = v25;
  v53 = swift_slowAlloc();
  aBlock[0] = v53;
  *v26 = 136315394;
  sub_100009EC8(&unk_1006B0580, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  v52 = v23;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = a3;
  v30 = v29;
  (*(v17 + 8))(v21, v16);
  v31 = sub_100005B4C(v27, v30, aBlock);
  a3 = v28;

  *(v26 + 4) = v31;
  *(v26 + 12) = 2080;
  v68 = v28;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
  v32 = String.init<A>(describing:)();
  v34 = sub_100005B4C(v32, v33, aBlock);

  *(v26 + 14) = v34;
  v35 = v52;
  _os_log_impl(&_mh_execute_header, v52, v55, v56, v26, 0x16u);
  swift_arrayDestroy();

  a5 = v54;

  if (a5)
  {
LABEL_7:
    v36 = a5;
    v54 = a9;
    v55 = a10;
    sub_100003E90();
    v37 = v67;

    v56 = static OS_dispatch_queue.main.getter();
    v38 = v59;
    v57(v59, a1, v16);
    v39 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v40 = v18 + v39 + 7;
    v41 = a3;
    v42 = v40 & 0xFFFFFFFFFFFFFFF8;
    v43 = v17;
    v44 = ((v40 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v37;
    (*(v43 + 32))(v45 + v39, v38, v16);
    *(v45 + v42) = v41;
    *(v45 + v44) = v60;
    aBlock[4] = v54;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = v55;
    v46 = _Block_copy(aBlock);
    swift_errorRetain();
    v47 = v36;
    sub_100062900(v36, v37);

    v48 = v61;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v49 = v63;
    v50 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v51 = v56;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

    sub_10001835C(v47, v37);
    (*(v65 + 8))(v49, v50);
    (*(v62 + 8))(v48, v64);
  }
}

void sub_1000DEF40(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v42 = a3;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = v6;
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v9 = FMIPItem.owner.getter();
  v11 = v10;
  v12 = [objc_opt_self() SPOwner];
  v13 = [v12 destination];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {

    v19 = 4;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      v19 = 4;
    }

    else
    {
      v19 = 5;
    }
  }

  v20 = *(v5 + 16);
  v20(v7, v8, v4);
  v21 = objc_allocWithZone(type metadata accessor for FMItemSharingLandingViewController(0));
  v38 = v4;
  v22 = v41;

  v39 = sub_1003C494C(v7, v22, 0, v19);
  v23 = swift_allocObject();
  swift_weakInit();
  v20(v7, v8, v4);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = (v40 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  (*(v5 + 32))(v27 + v24, v7, v38);
  *(v27 + v25) = v22;
  v28 = v42;
  *(v27 + v26) = v42;
  v29 = v39;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v30 = &v29[qword_1006D48B0];
  v31 = v29;
  v32 = *&v29[qword_1006D48B0];
  v33 = *&v29[qword_1006D48B0 + 8];
  *v30 = sub_1000E3114;
  v30[1] = v27;

  v34 = v28;
  v35 = v31;
  sub_10001835C(v32, v33);

  objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v36 = v35;
  v37 = sub_1000CC510(v36, 2);
  [v34 presentViewController:v37 animated:1 completion:0];
}

void sub_1000DF28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a5;
    sub_1000E22B0(a2, a3, a4, v10, v11);
  }
}

BOOL sub_1000DF324(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v9 = static UUID.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  FMIPBeaconShare.delegatedSharesURL.getter();
  v10 = type metadata accessor for URL();
  v11 = (*(*(v10 - 8) + 48))(v4, 1, v10) != 1;
  sub_100012DF0(v4, &unk_1006B0120, &qword_100552B60);
  return v11;
}

double sub_1000DF4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v43 = a1;
  v44 = a7;
  v46 = a5;
  v47 = a2;
  v9 = type metadata accessor for FMIPItem();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPItemActionStatus();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v42 = v16;
    v21(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v41 = a6;
    v23 = v22;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    v38 = v23;
    swift_unknownObjectWeakInit();

    v25 = *(v12 + 16);
    v39 = v11;
    v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25(v40, v43, v11);
    v26 = v45;
    (*(v45 + 16))(v48, v44, v9);
    type metadata accessor for MainActor();
    swift_errorRetain();

    v44 = v19;

    v27 = static MainActor.shared.getter();
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 17) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v26 + 80);
    v43 = v9;
    v32 = (v31 + v30 + 8) & ~v31;
    v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v27;
    *(v34 + 24) = &protocol witness table for MainActor;
    (*(v12 + 32))(v34 + v28, v40, v39);
    v35 = v34 + v29;
    v36 = v48;
    *v35 = v47;
    *(v35 + 8) = v46 & 1;
    *(v35 + 9) = v41 & 1;
    v37 = v43;
    *(v34 + v30) = v44;
    (*(v26 + 32))(v34 + v32, v36, v37);
    *(v34 + v33) = v49;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

    sub_100170C90(0, 0, v42, &unk_1005534E8, v34);
  }

  return result;
}

uint64_t sub_1000DF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 216) = v17;
  *(v8 + 200) = v16;
  *(v8 + 184) = a5;
  *(v8 + 192) = a8;
  *(v8 + 289) = a7;
  *(v8 + 288) = a6;
  *(v8 + 176) = a4;
  v9 = type metadata accessor for FMIPItem();
  *(v8 + 224) = v9;
  v10 = *(v9 - 8);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 + 64);
  *(v8 + 248) = swift_task_alloc();
  v11 = type metadata accessor for FMIPItemActionStatus();
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 280) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFA38, v13, v12);
}

uint64_t sub_1000DFA38()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];

  v4 = enum case for FMIPItemActionStatus.success(_:);
  v5 = *(v3 + 104);
  v5(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_100009EC8(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v6)
  {
    goto LABEL_41;
  }

  if (!v0[23])
  {
    goto LABEL_20;
  }

  v8 = v5;
  swift_getErrorValue();
  v9 = v0[12];
  v10 = v0[13];
  swift_errorRetain();
  v11 = sub_100271E80(v9, v10);
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_10:
    swift_getErrorValue();
    if (sub_100271D20(v0[15], v0[16]) == 15)
    {
      v17 = *(v0 + 288);
      v18 = objc_opt_self();
      v19 = [v18 mainBundle];
      v20 = *(v0 + 289);
      if (v17 == 1)
      {
        v21 = "P_SHARE_ERROR_SUBTITLE_SHAREE";
        v22 = "_ERROR_TITLE_SHAREE_AIRTAG";
        v23 = v20 == 0;
        if (*(v0 + 289))
        {
          v24 = 0xD00000000000001CLL;
        }

        else
        {
          v24 = 0xD00000000000002ALL;
        }

        if (*(v0 + 289))
        {
          v25 = "SHARE_ERROR_SUBTITLE_OWNER";
        }

        else
        {
          v25 = "SHARE_STOP_SHARE_ERROR_TITLE";
        }

        v26 = 0xD00000000000002CLL;
        v80 = 0x800000010057D3F0;
        v27 = 0xD00000000000002DLL;
      }

      else
      {
        v21 = "VE_FORCED_CANCEL";
        v22 = "_ERROR_TITLE_SHAREE_ITEM";
        v23 = v20 == 0;
        if (*(v0 + 289))
        {
          v24 = 0xD00000000000001CLL;
        }

        else
        {
          v24 = 0xD000000000000028;
        }

        if (*(v0 + 289))
        {
          v25 = "SHARE_ERROR_SUBTITLE_OWNER";
        }

        else
        {
          v25 = "g FAILURE_MESSAGE";
        }

        v26 = 0xD00000000000002ALL;
        v80 = 0x800000010057D3F0;
        v27 = 0xD00000000000002BLL;
      }

      if (v23)
      {
        v36 = v27;
      }

      else
      {
        v36 = v26;
      }

      if (v23)
      {
        v37 = v22;
      }

      else
      {
        v37 = v21;
      }

      v38 = v25 | 0x8000000000000000;
      v39.value._object = 0x800000010057D3D0;
      v40 = 0xD000000000000018;
      v39.value._countAndFlagsBits = 0xD000000000000013;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v24, v39, v19, v41, *(&v80 - 1));

      v42 = *(v0 + 289);
      v43 = [v18 mainBundle];
      v87._object = 0x800000010057D3F0;
      v44._object = (v37 | 0x8000000000000000);
      v45.value._object = 0x800000010057D3D0;
      v87._countAndFlagsBits = 0xD000000000000018;
      v44._countAndFlagsBits = v36;
      v45.value._countAndFlagsBits = 0xD000000000000013;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v87);

      v47 = String._bridgeToObjectiveC()();

      v48 = String._bridgeToObjectiveC()();

      v49 = [objc_opt_self() alertControllerWithTitle:v47 message:v48 preferredStyle:1];

      if (v42 == 1)
      {
        v50 = [objc_opt_self() mainBundle];
        v88._object = 0x8000000100579B60;
        v51._countAndFlagsBits = 0x4F545455425F4B4FLL;
        v51._object = 0xEF454C5449545F4ELL;
        v88._countAndFlagsBits = 0xD000000000000021;
        v52._countAndFlagsBits = 0;
        v52._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v88);

        v53 = String._bridgeToObjectiveC()();

        v54 = [objc_opt_self() actionWithTitle:v53 style:0 handler:0];

        [v49 addAction:v54];
      }

      else
      {
        v55 = v0[31];
        v84 = v0[30];
        v57 = v0[28];
        v56 = v0[29];
        v82 = v0[27];
        v81 = v0[26];
        v59 = v0[24];
        v58 = v0[25];
        v83 = objc_opt_self();
        v60 = [v83 mainBundle];
        v89._object = 0x800000010057D3F0;
        v61._countAndFlagsBits = 0xD000000000000021;
        v61._object = 0x800000010057D4E0;
        v62.value._object = 0x800000010057D3D0;
        v89._countAndFlagsBits = 0xD000000000000018;
        v62.value._countAndFlagsBits = 0xD000000000000013;
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v89);

        (*(v56 + 16))(v55, v58, v57);
        v64 = (*(v56 + 80) + 24) & ~*(v56 + 80);
        v65 = (v84 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = swift_allocObject();
        *(v66 + 16) = v59;
        (*(v56 + 32))(v66 + v64, v55, v57);
        *(v66 + v65) = v81;
        *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v82;

        v67 = String._bridgeToObjectiveC()();

        v0[6] = sub_1000E356C;
        v0[7] = v66;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_100017328;
        v0[5] = &unk_100625CD0;
        v68 = _Block_copy(v0 + 2);

        v69 = objc_opt_self();
        v70 = [v69 actionWithTitle:v67 style:0 handler:v68];
        _Block_release(v68);

        v71 = [v83 mainBundle];
        v90._object = 0x800000010057D3F0;
        v72._countAndFlagsBits = 0xD000000000000020;
        v72._object = 0x800000010057D510;
        v73.value._object = 0x800000010057D3D0;
        v90._countAndFlagsBits = 0xD000000000000018;
        v73.value._countAndFlagsBits = 0xD000000000000013;
        v74._countAndFlagsBits = 0;
        v74._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, v90);

        v75 = String._bridgeToObjectiveC()();

        v54 = [v69 actionWithTitle:v75 style:1 handler:0];

        [v49 addAction:v54];
        [v49 addAction:v70];
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v77 = Strong;
        [Strong presentViewController:v49 animated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_41;
    }

    goto LABEL_19;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_10;
  }

LABEL_19:

  v5 = v8;
LABEL_20:
  v28 = v0[34];
  v29 = v0[32];
  v5(v28, v4, v29);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7(v28, v29);
  if ((v30 & 1) == 0)
  {
    v31 = [objc_opt_self() mainBundle];
    v86._object = 0x800000010057D450;
    v32._countAndFlagsBits = 0x5F4552554C494146;
    v32._object = 0xEF4547415353454DLL;
    v86._countAndFlagsBits = 0xD000000000000021;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v86);

    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    sub_1000E2EC8(v34._countAndFlagsBits, v34._object, v35);
  }

LABEL_41:

  v78 = v0[1];

  return v78();
}

void sub_1000E03B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000E0428(a3, a4, Strong);
}

void sub_1000E0428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v40 - v9;
  v10 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v45 = a1;
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100012DF0(v12, &unk_1006B20C0, &unk_100552E10);
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4CD8);
    (*(v5 + 16))(v7, v45, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315138;
      v25 = FMIPItem.identifier.getter();
      v27 = v26;
      (*(v5 + 8))(v7, v4);
      v28 = sub_100005B4C(v25, v27, &v46);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to construct UUID for item with identifier: %s", v23, 0xCu);
      sub_100006060(v24);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMDevicesActionController: Force Stop sharing", v32, 2u);
    }

    v40 = v19;

    v42 = *(*(v42 + 24) + 32);
    (*(v14 + 16))(v16, v19, v13);
    type metadata accessor for FMIPStopSharingAction();
    swift_allocObject();

    v41 = FMIPStopSharingAction.init(beaconIdentifier:force:)();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = v44;
    (*(v5 + 16))(v44, v45, v4);
    v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v37 = v4;
    v38 = (v6 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    (*(v5 + 32))(v39 + v36, v35, v37);
    *(v39 + v38) = v33;

    sub_1000D9C84(v41, sub_1000E2200, v39);

    (*(v14 + 8))(v40, v13);
  }
}

double sub_1000E0A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[1] = a5;
  v6 = type metadata accessor for FMIPProductType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v11 + 104))(v13, enum case for FMIPItemActionStatus.success(_:), v10);
    sub_100009EC8(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if (v15)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100005B14(v16, qword_1006D4630);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "FMDevicesActionController: Force Stop sharing completed successfully", v19, 2u);
      }
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100005B14(v20, qword_1006D4630);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        if (a2)
        {
          swift_errorRetain();
          v25 = _swift_stdlib_bridgeErrorToNSError();
          v26 = v25;
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        *(v23 + 4) = v25;
        *v24 = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "FMDevicesActionController: Force Stop sharing completed with error: %@", v23, 0xCu);
        sub_100012DF0(v24, &unk_1006AF760, &qword_100552DB0);
      }

      FMIPItem.productType.getter();
      v27 = FMIPProductType.isAirTag.getter();
      (*(v7 + 8))(v9, v6);
      if (v27)
      {
        v28 = "FMLocalizedSharingString";
      }

      else
      {
        v28 = "T_TRUSTED_MESSAGE";
      }

      if (v27)
      {
        v29 = 0xD00000000000001DLL;
      }

      else
      {
        v29 = 0xD00000000000001BLL;
      }

      v30 = [objc_opt_self() mainBundle];
      v37._object = 0x800000010057D3F0;
      v31._object = (v28 | 0x8000000000000000);
      v32.value._object = 0x800000010057D3D0;
      v37._countAndFlagsBits = 0xD000000000000018;
      v31._countAndFlagsBits = v29;
      v32.value._countAndFlagsBits = 0xD000000000000013;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v37);

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000E2EC8(v34._countAndFlagsBits, v34._object, Strong);
    }
  }

  return result;
}

uint64_t sub_1000E0F4C()
{

  return swift_deallocClassInstance();
}

void sub_1000E0F8C(void *a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100005B4C(v9, v11, v15);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMDevicesActionController: Navigation to location: %s", v6, 0xCu);
    sub_100006060(v7);
  }

  v13 = [objc_allocWithZone(CLGeocoder) init];
  v15[4] = sub_1000DCFCC;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100485DE8;
  v15[3] = &unk_100626090;
  v14 = _Block_copy(v15);
  [v13 reverseGeocodeLocation:v3 completionHandler:v14];
  _Block_release(v14);
}

void sub_1000E11B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_1004A6880(a1);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];

  v19 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
  v20 = type metadata accessor for FMIPDevice();
  (*(*(v20 - 8) + 16))(v16, a1, v20);
  sub_100007204(a2, &v16[v19], &qword_1006B07D0, qword_100552820);
  swift_storeEnumTagMultiPayload();
  if ((v17 & 0xC0) != 0)
  {
    sub_100267C64(v34);
    v21 = objc_allocWithZone(type metadata accessor for FMLostModeUpdateViewController(0));
    v22 = qword_1006BB818;
    *&v21[v22] = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:0 action:0];
    sub_1000970F8(v16, v13);
    *&v21[qword_1006B8820] = 0;
    *&v21[qword_1006D4360] = 0;
    v23 = &v21[qword_1006D4358];
    v23[64] = v35;
    v24 = v34[3];
    *(v23 + 2) = v34[2];
    *(v23 + 3) = v24;
    v25 = v34[1];
    *v23 = v34[0];
    *(v23 + 1) = v25;
    sub_1000970F8(v13, v10);
    *&v21[qword_1006B3A80] = 0;
    sub_1000970F8(v10, &v21[qword_1006D3E00]);

    v27 = sub_1003C3E60(v26);
    sub_10009715C(v13);
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for FMLostModeLandingViewController(0));
    v29 = qword_1006B4360;
    v30 = objc_opt_self();

    *&v28[v29] = [v30 boldButton];
    sub_1000970F8(v16, v13);
    *&v28[qword_1006B3A80] = 0;
    sub_1000970F8(v13, &v28[qword_1006D3E00]);
    v27 = sub_1003C3E8C(a3);
    v10 = v16;
    v16 = v13;
  }

  sub_10009715C(v10);
  sub_10009715C(v16);
  v31 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v27];

  v32 = v31;
  [v32 setModalPresentationStyle:2];
  [v32 setPreferredContentSize:{0.0, 0.0}];
  [a4 presentViewController:v32 animated:1 completion:0];
}

void sub_1000E158C(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = sub_10007EBC0(&unk_1006C1D10, &qword_1005534B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = sub_1000F39B8(a1, 0);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v23 = [objc_opt_self() mainScreen];
  [v23 bounds];

  if ((v22 & 8) != 0)
  {
    v52 = v9;
    v53 = a2;
    v54 = a3;
    FMIPItem.lostMetadata.getter();
    v30 = type metadata accessor for FMIPItemLostModeMetadata();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v21, 1, v30) == 1)
    {
      sub_100012DF0(v21, &unk_1006C1D10, &qword_1005534B8);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v33 = FMIPItemLostModeMetadata.message.getter();
      v50 = v34;
      v51 = v33;
      (*(v31 + 8))(v21, v30);
    }

    FMIPItem.lostMetadata.getter();
    if (v32(v18, 1, v30) == 1)
    {
      sub_100012DF0(v18, &unk_1006C1D10, &qword_1005534B8);
      v49 = 0;
      v35 = 0;
    }

    else
    {
      v49 = FMIPItemLostModeMetadata.ownerNumber.getter();
      v35 = v36;
      (*(v31 + 8))(v18, v30);
    }

    FMIPItem.lostMetadata.getter();
    if (v32(v15, 1, v30) == 1)
    {
      sub_100012DF0(v15, &unk_1006C1D10, &qword_1005534B8);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = FMIPItemLostModeMetadata.email.getter();
      v38 = v39;
      (*(v31 + 8))(v15, v30);
    }

    v40 = v52;
    v41 = type metadata accessor for FMIPItem();
    (*(*(v41 - 8) + 16))(v12, a1, v41);
    swift_storeEnumTagMultiPayload();
    v42 = objc_allocWithZone(type metadata accessor for FMLostModeUpdateViewController(0));
    v43 = qword_1006BB818;
    *&v42[v43] = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:0 action:0];
    sub_1000970F8(v12, v40);
    *&v42[qword_1006B8820] = 0;
    *&v42[qword_1006D4360] = 0;
    v44 = &v42[qword_1006D4358];
    v45 = v50;
    *v44 = v51;
    *(v44 + 1) = v45;
    *(v44 + 2) = v49;
    *(v44 + 3) = v35;
    *(v44 + 4) = v37;
    *(v44 + 5) = v38;
    v44[64] = 0;
    *(v44 + 6) = 0;
    *(v44 + 7) = 0;
    v29 = v55;
    sub_1000970F8(v40, v55);
    *&v42[qword_1006B3A80] = 0;
    sub_1000970F8(v29, &v42[qword_1006D3E00]);

    v28 = sub_1003C3E60(v46);
    sub_10009715C(v40);
    a3 = v54;
  }

  else
  {
    v24 = type metadata accessor for FMIPItem();
    (*(*(v24 - 8) + 16))(v12, a1, v24);
    swift_storeEnumTagMultiPayload();
    v25 = objc_allocWithZone(type metadata accessor for FMLostModeLandingViewController(0));
    v26 = qword_1006B4360;
    v27 = objc_opt_self();

    *&v25[v26] = [v27 boldButton];
    sub_1000970F8(v12, v9);
    *&v25[qword_1006B3A80] = 0;
    sub_1000970F8(v9, &v25[qword_1006D3E00]);
    v28 = sub_1003C3E8C(a2);
    v29 = v12;
    v12 = v9;
  }

  sub_10009715C(v29);
  sub_10009715C(v12);
  v47 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v28];

  v48 = v47;
  [v48 setModalPresentationStyle:2];
  [v48 setPreferredContentSize:{0.0, 0.0}];
  [a3 presentViewController:v48 animated:1 completion:0];
}

void sub_1000E1BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMDeviceEraseViewController(0);
  (*(v6 + 16))(v8, a1, v5);

  v10 = sub_1002E0D10(v9, v8);
  v11 = [objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController()) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  [v11 setPreferredContentSize:{fmin(v14, 520.0), fmin(v16, 720.0)}];
  [a3 presentViewController:v11 animated:1 completion:0];
}

void sub_1000E1DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = FMIPItem.owner.getter();
  v10 = v9;
  v11 = [objc_opt_self() SPOwner];
  v12 = [v11 destination];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v8 == v13 && v10 == v15)
  {

    goto LABEL_14;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_14:
    v22 = type metadata accessor for FMIPItem();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v7, a1, v22);
    (*(v23 + 56))(v7, 0, 1, v22);
    v24 = objc_allocWithZone(type metadata accessor for FMRemoveItemViewController(0));

    v26 = sub_1001CFAB0(v25);
    v27 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
    swift_beginAccess();
    sub_1000E211C(v7, v26 + v27);
    swift_endAccess();
    v28 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v26];
    [v28 setModalPresentationStyle:2];
    [a3 presentViewController:v28 animated:1 completion:0];

    return;
  }

  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4CD8);
  v29 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v29, v19, "FMDevicesActionController: Attempted to remove shared item.", v20, 2u);
  }

  v21 = v29;
}

uint64_t sub_1000E211C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1000E2200(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPItem() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1000E0A40(a1, a2, v8, v2 + v6, v7);
}

void sub_1000E22B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v110 = a5;
  v107 = a3;
  v108 = a4;
  v112 = a2;
  v6 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v91[-v7];
  v111 = type metadata accessor for FMIPBeaconShare();
  v100 = *(v111 - 8);
  __chkstk_darwin(v111);
  v95 = &v91[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v99 = &v91[-v11];
  __chkstk_darwin(v12);
  v102 = &v91[-v13];
  v98 = type metadata accessor for FMIPProductType();
  v14 = *(v98 - 8);
  __chkstk_darwin(v98);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for FMIPItem();
  v113 = *(v17 - 8);
  v114 = v17;
  __chkstk_darwin(v17);
  v104 = &v91[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v96 = &v91[-v20];
  v103 = v21;
  __chkstk_darwin(v22);
  v24 = &v91[-v23];
  v25 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v25 - 8);
  v27 = &v91[-v26];
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v101 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v91[-v32];
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100012DF0(v27, &unk_1006B20C0, &unk_100552E10);
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4CD8);
    v36 = v113;
    v35 = v114;
    (*(v113 + 16))(v24, a1, v114);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v115[0] = v40;
      *v39 = 136315138;
      v41 = FMIPItem.identifier.getter();
      v43 = v42;
      (*(v36 + 8))(v24, v35);
      v44 = sub_100005B4C(v41, v43, v115);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to construct UUID for item with identifier: %s", v39, 0xCu);
      sub_100006060(v40);
    }

    else
    {

      (*(v36 + 8))(v24, v35);
    }
  }

  else
  {
    v105 = v29;
    v106 = v28;
    (*(v29 + 32))(v33, v27, v28);
    v109 = a1;
    v45 = FMIPItem.owner.getter();
    v47 = v46;
    v48 = [objc_opt_self() SPOwner];
    v49 = [v48 destination];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = v33;
    if (v45 == v50 && v47 == v52)
    {
      v94 = 1;
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v54 = v112;
    v55 = v99;

    v56 = v109;
    FMIPItem.productType.getter();
    LODWORD(v99) = FMIPProductType.isAirTag.getter();
    v57 = (*(v14 + 8))(v16, v98);
    v58 = *(v54 + 24);
    v59 = *(v58 + 64);
    __chkstk_darwin(v57);
    *&v91[-16] = v53;

    sub_100110880(sub_1000E31BC, v59, v8);

    v60 = v100;
    v61 = v111;
    v62 = (*(v100 + 48))(v8, 1, v111);
    v97 = v53;
    if (v62 == 1)
    {
      sub_100012DF0(v8, &unk_1006C0240, &unk_1005534D0);
      (*(v105 + 16))(v101, v53, v106);
      type metadata accessor for FMIPStopSharingAction();
      swift_allocObject();
      v63 = FMIPStopSharingAction.init(beaconIdentifier:force:isDelegated:)();
    }

    else
    {
      v98 = v58;
      v64 = v102;
      (*(v60 + 32))(v102, v8, v61);
      if (qword_1006AED68 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100005B14(v65, qword_1006D4CD8);
      v66 = *(v60 + 16);
      v66(v55, v64, v61);
      v67 = v55;
      v68 = v113;
      v69 = v114;
      v70 = v96;
      (*(v113 + 16))(v96, v109, v114);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v115[0] = v93;
        *v73 = 136315651;
        v92 = v72;
        v66(v95, v67, v111);
        v74 = String.init<A>(describing:)();
        v76 = v75;
        v77 = *(v60 + 8);
        v77(v67, v111);
        v78 = sub_100005B4C(v74, v76, v115);

        *(v73 + 4) = v78;
        *(v73 + 12) = 2160;
        *(v73 + 14) = 1752392040;
        *(v73 + 22) = 2081;
        v79 = FMIPItem.identifier.getter();
        v81 = v80;
        (*(v68 + 8))(v70, v69);
        v82 = sub_100005B4C(v79, v81, v115);

        *(v73 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v71, v92, "Found delegated share %s for item: %{private,mask.hash}s", v73, 0x20u);
        swift_arrayDestroy();

        v61 = v111;
      }

      else
      {

        (*(v68 + 8))(v70, v69);
        v77 = *(v60 + 8);
        v77(v67, v61);
      }

      (*(v105 + 16))(v101, v97, v106);
      type metadata accessor for FMIPStopSharingAction();
      swift_allocObject();
      v63 = FMIPStopSharingAction.init(beaconIdentifier:force:isDelegated:)();
      v77(v102, v61);
      v56 = v109;
    }

    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = swift_allocObject();
    swift_weakInit();
    v86 = v113;
    v85 = v114;
    v87 = v104;
    (*(v113 + 16))(v104, v56, v114);
    v88 = (*(v86 + 80) + 34) & ~*(v86 + 80);
    v89 = (v103 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    *(v90 + 16) = v84;
    *(v90 + 24) = v83;
    *(v90 + 32) = v99 & 1;
    *(v90 + 33) = v94 & 1;
    (*(v86 + 32))(v90 + v88, v87, v85);
    *(v90 + v89) = v112;

    sub_1000D9C84(v63, sub_1000E31DC, v90);

    [v110 dismissViewControllerAnimated:1 completion:0];

    (*(v105 + 8))(v97, v106);
  }
}

void sub_1000E2EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v18._object = 0x800000010057D3F0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x800000010057D430;
  v7.value._object = 0x800000010057D3D0;
  v18._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v18);

  v9 = [v4 mainBundle];
  v19._object = 0x8000000100579B60;
  v10._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v10._object = 0xEF454C5449545F4ELL;
  v19._countAndFlagsBits = 0xD000000000000021;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v19);

  v12 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v16];
  if (a3)
  {
    [a3 presentViewController:v15 animated:1 completion:0];
  }
}

void sub_1000E3114()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  sub_1000DF28C(v8, v0 + v2, v5, v6, v7);
}

double sub_1000E31DC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPItem() - 8);
  v6 = (*(v5 + 80) + 34) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 33);
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000DF4D4(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t sub_1000E3294(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for FMIPItem();
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v7 = v1 + v5;
  v8 = *(v1 + v5);
  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  v11 = *(v1 + v6);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000E3478;

  return sub_1000DF8C0(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1000E3478()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1000E356C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1000E03B4(a1, v8, v1 + v4, v6, v7);
}

void sub_1000E3880(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000DCBA0(a1, v4);
}

void sub_1000E391C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPItem() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_1000DB324(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000E39A8()
{
  v1 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPItem() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  return (*(v0 + 16))(v0 + v2, v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000E3AA8()
{
  v1 = *(type metadata accessor for FMIPActionStatus() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000DB034(v5, v6, v0 + v2, v7, v8, v9);
}

uint64_t sub_1000E3C90(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v5 + 8))(v2 + v7, v4);
  a2(*(v2 + v8));

  return _swift_deallocObject(v2, v8 + 8, v6 | 7);
}

uint64_t sub_1000E3D80(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  return (*(v1 + 16))(v1 + v3, *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000E3EE8()
{
  v1 = type metadata accessor for FMIPActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000E3FE8()
{
  v1 = *(type metadata accessor for FMIPActionStatus() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + 16))(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000E4128(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v7 + 8))(v3 + v9, v6);
  a2(*(v3 + v10));
  a3(*(v3 + v11));

  return _swift_deallocObject(v3, v11 + 8, v8 | 7);
}

uint64_t sub_1000E4238(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v1 + 16))(v1 + v3, *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000E4334(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v9 = type metadata accessor for FMIPItemActionStatus();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = *(v10 + 64);
  v14 = *(sub_10007EBC0(a1, a2) - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v17 = *(v14 + 64);

  (*(v10 + 8))(v4 + v12, v9);
  v18 = a3(0);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v4 + v16, 1, v18))
  {
    (*(v19 + 8))(v4 + v16, v18);
  }

  v20 = (v17 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  a4(*(v4 + v20));

  return _swift_deallocObject(v4, v20 + 8, v11 | v15 | 7);
}

uint64_t sub_1000E451C(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007EBC0(a1, a2) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return (*(v2 + 16))(v2 + v6, v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

FindMy::FMIPType_optional __swiftcall FMIPType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100621DB0, v2);

  if (v3 == 1)
  {
    v4.value = FindMy_FMIPType_item;
  }

  else
  {
    v4.value = FindMy_FMIPType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t FMIPType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_1000E4784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1835365481;
  }

  else
  {
    v3 = 0x656369766564;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1835365481;
  }

  else
  {
    v5 = 0x656369766564;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

unint64_t sub_1000E4824()
{
  result = qword_1006B0EE8;
  if (!qword_1006B0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0EE8);
  }

  return result;
}

Swift::Int sub_1000E4878()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E48F0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000E4954(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E49C8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100621DB0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000E4A28(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (!*v1)
  {
    v2 = 0x656369766564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FMPersonImageSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPersonImageSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1000E4BAC()
{
  v0 = type metadata accessor for FMIPUnknownItemAlertState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v35 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v23 - v4;
  v39 = type metadata accessor for FMIPUnknownItem();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24 = &v23 - v8;
  result = FMIPManager.unknownItems.getter();
  v30 = result[2];
  if (v30)
  {
    v10 = 0;
    v27 = v5 + 16;
    v26 = enum case for FMIPUnknownItemAlertState.triggered(_:);
    v32 = (v1 + 8);
    v33 = (v1 + 104);
    v25 = enum case for FMIPUnknownItemAlertState.cleared(_:);
    v23 = (v5 + 8);
    v31 = (v5 + 32);
    v11 = _swiftEmptyArrayStorage;
    v12 = v24;
    v28 = result;
    v29 = v5;
    while (v10 < result[2])
    {
      v38 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v37 = *(v5 + 72);
      (*(v5 + 16))(v12, result + v38 + v37 * v10, v39);
      v13 = v34;
      FMIPUnknownItem.alertState.getter();
      v14 = *v33;
      v15 = v35;
      (*v33)(v35, v26, v0);
      sub_10000DA0C(&unk_1006AF8D0, &type metadata accessor for FMIPUnknownItemAlertState, &protocol conformance descriptor for FMIPUnknownItemAlertState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v16 = *v32;
      (*v32)(v15, v0);
      v16(v13, v0);
      if (v41 == v40 || (v17 = v34, FMIPUnknownItem.alertState.getter(), v18 = v35, v14(v35, v25, v0), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v16(v18, v0), v16(v17, v0), v41 == v40))
      {
        v19 = *v31;
        (*v31)(v36, v12, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100167118(0, v11[2] + 1, 1);
          v12 = v24;
          v11 = v42;
        }

        v22 = v11[2];
        v21 = v11[3];
        if (v22 >= v21 >> 1)
        {
          sub_100167118((v21 > 1), v22 + 1, 1);
          v12 = v24;
          v11 = v42;
        }

        v11[2] = v22 + 1;
        v19(v11 + v38 + v22 * v37, v36, v39);
      }

      else
      {
        (*v23)(v12, v39);
      }

      ++v10;
      v5 = v29;
      result = v28;
      if (v30 == v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_14:

    return v11;
  }

  return result;
}

void sub_1000E503C()
{
  if ((FMIPManager.isInitialized.getter() & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100005B14(v0, qword_1006D4630);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "FMDevicesProvider: retry initialize", v3, 2u);
    }

    FMIPManager.initialize()();
  }
}

uint64_t sub_1000E5180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v27 = a3;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  result = FMIPManager.devices.getter();
  v36 = *(result + 16);
  if (v36)
  {
    v11 = 0;
    v34 = v5 + 16;
    v32 = (v5 + 32);
    v30 = (v5 + 8);
    v12 = _swiftEmptyArrayStorage;
    v28 = a1;
    v29 = v4;
    v35 = result;
    while (1)
    {
      if (v11 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      v15 = v5;
      (*(v5 + 16))(v9, result + v13 + v14 * v11, v4);
      v16 = FMIPDevice.baIdentifier.getter();
      if (v17)
      {
        if (v16 == a1 && v17 == v31)
        {

LABEL_11:
          v19 = *v32;
          (*v32)(v33, v9, v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100167008(0, v12[2] + 1, 1);
            v12 = v37;
          }

          v22 = v12[2];
          v21 = v12[3];
          if (v22 >= v21 >> 1)
          {
            sub_100167008((v21 > 1), v22 + 1, 1);
            v12 = v37;
          }

          v12[2] = v22 + 1;
          v23 = v12 + v13 + v22 * v14;
          v4 = v29;
          v19(v23, v33, v29);
          a1 = v28;
          goto LABEL_4;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_11;
        }
      }

      (*v30)(v9, v4);
LABEL_4:
      ++v11;
      result = v35;
      v5 = v15;
      if (v36 == v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_17:

  if (v12[2])
  {
    v24 = v27;
    (*(v5 + 16))(v27, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v24 = v27;
  }

  return (*(v5 + 56))(v24, v25, 1, v4);
}

uint64_t sub_1000E5498@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v26 = type metadata accessor for FMIPDeviceState();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for FMIPDevice();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FMIPManager.devices.getter();
  v24 = *(result + 16);
  if (v24)
  {
    v10 = 0;
    v11 = (v1 + 8);
    v22 = (v27 + 8);
    v23 = v27 + 16;
    v12 = v25;
    while (v10 < *(result + 16))
    {
      v13 = result;
      (*(v27 + 16))(v8, result + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v10, v6);
      FMIPDevice.state.getter();
      static FMIPDeviceState.isThisDevice.getter();
      sub_10000DA0C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
      v14 = v26;
      v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v16 = *v11;
      (*v11)(v12, v14);
      v16(v5, v14);
      if (v15)
      {

        v19 = v21;
        (*(v27 + 32))(v21, v8, v6);
        v18 = v19;
        v17 = 0;
        return (*(v27 + 56))(v18, v17, 1, v6);
      }

      ++v10;
      (*v22)(v8, v6);
      result = v13;
      if (v24 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v17 = 1;
    v18 = v21;
    return (*(v27 + 56))(v18, v17, 1, v6);
  }

  return result;
}

uint64_t sub_1000E5794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v57 = a1;
  v41 = a3;
  v3 = type metadata accessor for FMIPItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v47 = type metadata accessor for FMIPDevice();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  result = FMIPManager.devices.getter();
  v16 = result;
  v51 = *(result + 16);
  if (v51)
  {
    v17 = 0;
    v50 = v10 + 16;
    v54 = v14;
    v55 = v4 + 16;
    v18 = (v4 + 8);
    v43 = (v10 + 32);
    v44 = (v10 + 8);
    v46 = _swiftEmptyArrayStorage;
    v19 = v47;
    v48 = result;
    v49 = v10;
    v42 = v9;
    while (v17 < *(v16 + 16))
    {
      v53 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v52 = *(v10 + 72);
      v20 = v54;
      (*(v10 + 16))(v54, v16 + v53 + v52 * v17, v19);
      v21 = v19;
      FMIPDevice.itemGroup.getter();
      v22 = type metadata accessor for FMIPItemGroup();
      v23 = v9;
      v24 = *(v22 - 8);
      if ((*(v24 + 48))(v23, 1, v22) == 1)
      {
        (*v44)(v20, v21);
        result = sub_100012DF0(v23, &unk_1006BB1C0, &unk_1005534F0);
        v9 = v23;
        v19 = v21;
        v16 = v48;
        v10 = v49;
      }

      else
      {
        v25 = FMIPItemGroup.items.getter();
        result = (*(v24 + 8))(v23, v22);
        v26 = 0;
        v27 = *(v25 + 16);
        while (1)
        {
          if (v27 == v26)
          {

            v19 = v47;
            result = (*v44)(v54, v47);
            v16 = v48;
            v10 = v49;
            v9 = v42;
            goto LABEL_4;
          }

          if (v26 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          (*(v4 + 16))(v6, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26, v3);
          if (FMIPItem.identifier.getter() == v57 && v29 == v56)
          {
            break;
          }

          ++v26;
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = (*v18)(v6, v3);
          if (v28)
          {
            goto LABEL_14;
          }
        }

        (*v18)(v6, v3);
LABEL_14:

        v30 = *v43;
        (*v43)(v45, v54, v47);
        v31 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100167008(0, v31[2] + 1, 1);
          v31 = v58;
        }

        v16 = v48;
        v34 = v31[2];
        v33 = v31[3];
        v35 = v31;
        if (v34 >= v33 >> 1)
        {
          sub_100167008((v33 > 1), v34 + 1, 1);
          v35 = v58;
        }

        v35[2] = v34 + 1;
        v46 = v35;
        v19 = v47;
        result = v30(v35 + v53 + v34 * v52, v45, v47);
        v10 = v49;
        v9 = v42;
      }

LABEL_4:
      if (++v17 == v51)
      {
        goto LABEL_21;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    v19 = v47;
LABEL_21:
    v36 = v19;

    if (v46[2])
    {
      v37 = v41;
      v38 = v36;
      (*(v10 + 16))(v41, v46 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v36);
      v39 = v10;
      v40 = 0;
    }

    else
    {
      v39 = v10;
      v40 = 1;
      v37 = v41;
      v38 = v36;
    }

    return (*(v39 + 56))(v37, v40, 1, v38);
  }

  return result;
}

uint64_t sub_1000E5D44()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == FMIPItem.identifier.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000E5EB4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = FMIPItem.identifier.getter();
  v6 = v5;
  FMIPBeaconShare.beaconIdentifier.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1000E607C(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  LOBYTE(a3) = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1000E6178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v41 = a3;
  v47 = a2;
  v48 = a1;
  v34 = a5;
  v44 = type metadata accessor for FMIPProductType();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  result = FMIPManager.items.getter();
  v14 = result;
  v46 = *(result + 16);
  if (v46)
  {
    v15 = 0;
    v45 = v8 + 16;
    v42 = (v5 + 8);
    v38 = (v8 + 8);
    v39 = (v8 + 32);
    v16 = _swiftEmptyArrayStorage;
    v35 = v7;
    v36 = result;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      (*(v8 + 16))(v12, v14 + v17 + v18 * v15, v7);
      if (FMIPItem.serialNumber.getter() == v48 && v19 == v47)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v21 = v43;
      FMIPItem.productType.getter();
      FMIPProductType.productInformation.getter();
      (*v42)(v21, v44);
      if (v50)
      {
        sub_1000244BC(v49, v50);
        v22 = dispatch thunk of FMIPAnyProductInformation.manufacturerName.getter();
        v24 = v23;
        sub_100006060(v49);
        if (v22 == v41 && v24 == v37)
        {

LABEL_16:
          v26 = *v39;
          (*v39)(v40, v12, v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10016704C(0, v16[2] + 1, 1);
            v16 = v51;
          }

          v29 = v16[2];
          v28 = v16[3];
          if (v29 >= v28 >> 1)
          {
            sub_10016704C((v28 > 1), v29 + 1, 1);
            v16 = v51;
          }

          v16[2] = v29 + 1;
          v30 = v16 + v17 + v29 * v18;
          v7 = v35;
          result = (v26)(v30, v40, v35);
          v14 = v36;
          goto LABEL_5;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v36;
        if (v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_100012DF0(v49, &qword_1006B1328, &qword_100557F30);
      }

LABEL_4:
      result = (*v38)(v12, v7);
LABEL_5:
      if (v46 == ++v15)
      {
        goto LABEL_22;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_22:

  if (v16[2])
  {
    v31 = v34;
    (*(v8 + 16))(v34, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v32 = v7;
    v33 = 0;
  }

  else
  {
    v32 = v7;
    v33 = 1;
    v31 = v34;
  }

  return (*(v8 + 56))(v31, v33, 1, v32);
}

uint64_t sub_1000E6640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(__n128)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(BOOL, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v41 = a5;
  v42 = a2;
  v34 = a7;
  v9 = a3(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v45 = &v33 - v14;
  result = a4(v13);
  v16 = result;
  v40 = *(result + 16);
  if (v40)
  {
    v17 = 0;
    v39 = v10 + 16;
    v35 = (v10 + 8);
    v43 = (v10 + 32);
    v18 = _swiftEmptyArrayStorage;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v20 = *(v10 + 72);
      v21 = (*(v10 + 16))(v45, v16 + v19 + v20 * v17, v9);
      if (v41(v21) == a1 && v22 == v42)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_10;
      }

      result = (*v35)(v45, v9);
LABEL_4:
      if (v40 == ++v17)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v24 = v10;
    v25 = a1;
    v26 = *v43;
    (*v43)(v44, v45, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36(0, v18[2] + 1, 1);
      v18 = v46;
    }

    v29 = v18[2];
    v28 = v18[3];
    if (v29 >= v28 >> 1)
    {
      v36(v28 > 1, v29 + 1, 1);
      v18 = v46;
    }

    v18[2] = v29 + 1;
    v30 = v18 + v19 + v29 * v20;
    v9 = v38;
    result = (v26)(v30, v44, v38);
    a1 = v25;
    v10 = v24;
    v16 = v37;
    goto LABEL_4;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_16:

  if (v18[2])
  {
    v31 = v34;
    (*(v10 + 16))(v34, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v34;
  }

  return (*(v10 + 56))(v31, v32, 1, v9);
}

void sub_1000E698C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for FMIPLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPSafeLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - v13;
  sub_100007204(a2, &v36 - v13, &unk_1006C0220, qword_100553770);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_100012DF0(v14, &unk_1006C0220, qword_100553770);
    (*(v9 + 56))(v36, 1, 1, v8);
  }

  else
  {
    v15 = FMIPLocation.location.getter();
    v44 = v5;
    v45 = v15;
    v42 = *(v6 + 8);
    v43 = v6 + 8;
    v42(v14, v5);
    v16 = FMIPManager.safeLocations.getter();
    __chkstk_darwin(v16);
    *(&v36 - 2) = a1;
    sub_100104844(sub_1000EC490, (&v36 - 4), v17);
    v19 = v18;
    v20 = v8;
    v41 = *(v18 + 16);
    if (v41)
    {
      v21 = 0;
      v37 = (v9 + 8);
      v38 = v9 + 16;
      v39 = v18;
      v40 = v9;
      while (v21 < *(v19 + 16))
      {
        (*(v9 + 16))(v11, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v20);
        v22 = v46;
        FMIPSafeLocation.location.getter();
        v23 = FMIPLocation.location.getter();
        v24 = v44;
        v25 = v42;
        v42(v22, v44);
        [v23 horizontalAccuracy];
        v27 = v26;

        v28 = v45;
        [v45 horizontalAccuracy];
        v30 = v27 + v29;
        FMIPSafeLocation.location.getter();
        v31 = FMIPLocation.location.getter();
        v25(v22, v24);
        [v28 distanceFromLocation:v31];
        v33 = v32;

        if (v33 < v30)
        {

          v34 = v40;
          v35 = v36;
          (*(v40 + 32))(v36, v11, v20);
          (*(v34 + 56))(v35, 0, 1, v20);
          return;
        }

        ++v21;
        (*v37)(v11, v20);
        v9 = v40;
        v19 = v39;
        if (v41 == v21)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      (*(v9 + 56))(v36, 1, 1, v20);
    }
  }
}

BOOL sub_1000E6DF8()
{
  v0 = type metadata accessor for FMIPSafeLocationType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPSafeLocation.type.getter();
  sub_10000DA0C(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType, &protocol conformance descriptor for FMIPSafeLocationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  return v5[3] == v5[1];
}

void sub_1000E6F4C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v11 = v6;
    if (a1)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (a1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10 = sub_100005B4C(0, 0xE000000000000000, &v11);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDevicesProvider: updateLastLocationStatus %s", v5, 0xCu);
    sub_100006060(v6);
  }

  FMIPManager.updateLastLocationStatus(enabled:)(a1 & 1);
}

double sub_1000E70E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDevicesProvider: handle URL", v10, 2u);
  }

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a2;
  v11[4] = a3;

  FMIPManager.handle(url:completion:)();

  return result;
}

uint64_t sub_1000E7248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a1;
  v27 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B1310, &unk_100553750);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v26 - v15;
  sub_100003E90();
  v30 = static OS_dispatch_queue.main.getter();
  sub_100007204(v26, v16, &qword_1006B1310, &unk_100553750);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1000EC36C(v16, v20 + v17);
  *(v20 + v18) = a3;
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_1000EC3DC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006267E8;
  v23 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000DA0C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v30;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v8, v6);
  return (*(v31 + 8))(v11, v32);
}

uint64_t sub_1000E75FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v103 = a4;
  v104 = a3;
  v7 = type metadata accessor for FMIPPlaySoundMethod();
  v86 = *(v7 - 8);
  v87 = v7;
  __chkstk_darwin(v7);
  v88 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B1318, &unk_100553760);
  __chkstk_darwin(v9 - 8);
  v97 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = v85 - v12;
  v13 = type metadata accessor for FMIPURLAction();
  v100 = *(v13 - 8);
  v101 = v13;
  __chkstk_darwin(v13);
  v93 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = v85 - v16;
  __chkstk_darwin(v17);
  v89 = v85 - v18;
  __chkstk_darwin(v19);
  v91 = v85 - v20;
  v21 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v21 - 8);
  v23 = v85 - v22;
  v24 = type metadata accessor for FMIPDevice();
  v25 = *(v24 - 8);
  v98 = v24;
  v99 = v25;
  __chkstk_darwin(v24);
  v90 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = v85 - v28;
  v29 = sub_10007EBC0(&qword_1006B1310, &unk_100553750);
  __chkstk_darwin(v29 - 8);
  v96 = v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v85 - v32;
  __chkstk_darwin(v34);
  v36 = v85 - v35;
  __chkstk_darwin(v37);
  v39 = v85 - v38;
  v106 = a1;
  sub_100007204(a1, v85 - v38, &qword_1006B1310, &unk_100553750);
  v40 = type metadata accessor for FMIPURLInfo();
  v41 = *(v40 - 8);
  v105 = *(v41 + 48);
  if (v105(v39, 1, v40) == 1)
  {
    v42 = &qword_1006B1310;
    v43 = &unk_100553750;
    v44 = v39;
LABEL_11:
    sub_100012DF0(v44, v42, v43);
    goto LABEL_12;
  }

  v85[1] = a2;
  v45 = FMIPURLInfo.identifier.getter();
  v47 = v46;
  v85[0] = *(v41 + 8);
  (v85[0])(v39, v40);
  if (v47)
  {
    sub_1000E512C(v45, v47, v23);

    v49 = v98;
    v48 = v99;
    if ((*(v99 + 48))(v23, 1, v98) == 1)
    {
      v42 = &unk_1006BBCE0;
      v43 = &unk_1005534C0;
      v44 = v23;
    }

    else
    {
      v50 = v95;
      (*(v48 + 32))(v95, v23, v49);
      v51 = v106;
      sub_100007204(v106, v36, &qword_1006B1310, &unk_100553750);
      if (v105(v36, 1, v40) == 1)
      {
        (*(v48 + 8))(v50, v49);
        sub_100012DF0(v36, &qword_1006B1310, &unk_100553750);
        v52 = v94;
        (*(v100 + 56))(v94, 1, 1, v101);
      }

      else
      {
        v52 = v94;
        FMIPURLInfo.action.getter();
        (v85[0])(v36, v40);
        v54 = v100;
        v53 = v101;
        if ((*(v100 + 48))(v52, 1, v101) != 1)
        {
          v73 = v52;
          v74 = v91;
          (*(v54 + 32))(v91, v73, v53);
          v75 = v89;
          (*(v54 + 16))(v89, v74, v53);
          if ((*(v54 + 88))(v75, v53) == enum case for FMIPURLAction.playSound(_:))
          {
            v76 = v99;
            (*(v99 + 16))(v90, v95, v49);
            (*(v86 + 104))(v88, enum case for FMIPPlaySoundMethod.classic(_:), v87);
            sub_10007EBC0(&qword_1006AF788, &qword_1005523C0);
            v77 = type metadata accessor for FMIPPlaySoundChannels();
            v78 = *(v77 - 8);
            v79 = *(v78 + 72);
            v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_100552210;
            v82 = v81 + v80;
            v83 = *(v78 + 104);
            v83(v82, enum case for FMIPPlaySoundChannels.left(_:), v77);
            v83(v82 + v79, enum case for FMIPPlaySoundChannels.right(_:), v77);
            type metadata accessor for FMIPPlaySoundDeviceAction();
            swift_allocObject();
            FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)();
            FMIPManager.perform(action:completion:)();
            v104(v106, v102);

            (*(v54 + 8))(v91, v53);
            return (*(v76 + 8))(v95, v98);
          }

          else
          {
            v104(v51, v102);
            v84 = *(v54 + 8);
            v84(v74, v53);
            (*(v99 + 8))(v95, v49);
            return (v84)(v75, v53);
          }
        }

        (*(v99 + 8))(v95, v49);
      }

      v42 = &qword_1006B1318;
      v43 = &unk_100553760;
      v44 = v52;
    }

    goto LABEL_11;
  }

LABEL_12:
  v55 = v106;
  sub_100007204(v106, v33, &qword_1006B1310, &unk_100553750);
  v56 = v105;
  if (v105(v33, 1, v40) == 1)
  {
    v57 = &qword_1006B1310;
    v58 = &unk_100553750;
    v59 = v33;
LABEL_19:
    sub_100012DF0(v59, v57, v58);
    return (v104)(v55, v102);
  }

  FMIPURLInfo.identifier.getter();
  v61 = v60;
  v62 = *(v41 + 8);
  v62(v33, v40);
  if (!v61)
  {
    return (v104)(v55, v102);
  }

  v63 = v96;
  sub_100007204(v55, v96, &qword_1006B1310, &unk_100553750);
  if (v56(v63, 1, v40) == 1)
  {
    sub_100012DF0(v63, &qword_1006B1310, &unk_100553750);
    v64 = v97;
    (*(v100 + 56))(v97, 1, 1, v101);
LABEL_18:
    v57 = &qword_1006B1318;
    v58 = &unk_100553760;
    v59 = v64;
    goto LABEL_19;
  }

  v64 = v97;
  FMIPURLInfo.action.getter();
  v62(v63, v40);
  v66 = v100;
  v65 = v101;
  if ((*(v100 + 48))(v64, 1, v101) == 1)
  {
    goto LABEL_18;
  }

  v68 = v92;
  (*(v66 + 32))(v92, v64, v65);
  v69 = v93;
  (*(v66 + 16))(v93, v68, v65);
  v70 = (*(v66 + 88))(v69, v65);
  v71 = enum case for FMIPURLAction.lowBattery(_:);
  v104(v55, v102);
  v72 = *(v66 + 8);
  result = v72(v68, v65);
  if (v70 != v71 && v70 != enum case for FMIPURLAction.localnotifywhenfound(_:))
  {
    return v72(v69, v65);
  }

  return result;
}

void sub_1000E8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "FMDevicesProvider: Play Sound from URL completed with error? %s", v5, 0xCu);
    sub_100006060(v6);
  }

  else
  {
  }
}

uint64_t sub_1000E82EC(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  sub_100007204(a1, aBlock - v10, &unk_1006BBCE0, &unk_1005534C0);
  FMIPManager.selectedDevice.setter();
  sub_100007204(a1, v8, &unk_1006BBCE0, &unk_1005534C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_100012DF0(v8, &unk_1006BBCE0, &unk_1005534C0);
  }

  (*(v3 + 32))(v5, v8, v2);
  type metadata accessor for LocateDeviceIntent();
  v12 = FMIPDevice.identifier.getter();
  v14 = v13;
  v15 = FMIPDevice.locateDeviceClass.getter();
  v16 = FMIPDevice.name.getter();
  v18 = LocateDeviceIntent.__allocating_init(identifier:class:name:)(v12, v14, v15, v16, v17);
  v19 = [objc_allocWithZone(INInteraction) initWithIntent:v18 response:0];
  aBlock[4] = sub_1001C4924;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A44B4;
  aBlock[3] = &unk_100626770;
  v20 = _Block_copy(aBlock);

  [v19 donateInteractionWithCompletion:v20];
  _Block_release(v20);

  return (*(v3 + 8))(v5, v2);
}

void sub_1000E85D0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      v6 = String.init<A>(describing:)();
      v8 = sub_100005B4C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error during locate device donation - %s", v4, 0xCu);
      sub_100006060(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1000E8790(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDeviceProvider: refreshShares", v5, 2u);
  }

  return FMIPManager.refreshShares(completion:)();
}

void sub_1000E888C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v44 = a2;
  v5 = type metadata accessor for FMIPBeaconShare();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v38 - v9;
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v38 = v13;
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v17 - 8);
  v43 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v38 - v20;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v6 + 16;
  v48 = v6 + 32;
  v46 = (v6 + 8);

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      (*(v6 + 16))(v16, *(a1 + 48) + *(v6 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v5);
      v27 = *(v6 + 32);
      v27(v12, v16, v5);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        break;
      }

      v23 &= v23 - 1;
      (*v46)(v12, v5);
      v25 = v26;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    v29 = v45;
    v27(v45, v12, v5);
    v28 = 0;
LABEL_12:
    (*(v6 + 56))(v29, v28, 1, v5);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v31 = v43;
    if (!Strong)
    {
      goto LABEL_15;
    }

    sub_100007204(v29, v43, &unk_1006C0240, &unk_1005534D0);
    if ((*(v6 + 48))(v31, 1, v5) == 1)
    {

      sub_100012DF0(v31, &unk_1006C0240, &unk_1005534D0);
LABEL_15:
      v41(v29);
      sub_100012DF0(v29, &unk_1006C0240, &unk_1005534D0);
      return;
    }

    v32 = *(v6 + 32);
    v33 = v40;
    v32(v40, v31, v5);
    v34 = v39;
    (*(v6 + 16))(v39, v33, v5);
    v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v36 = swift_allocObject();
    v37 = v42;
    *(v36 + 16) = v41;
    *(v36 + 24) = v37;
    v32((v36 + v35), v34, v5);

    FMIPManager.refreshBeacons(completion:)();

    (*(v6 + 8))(v40, v5);
    sub_100012DF0(v29, &unk_1006C0240, &unk_1005534D0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v28 = 1;
        v29 = v45;
        goto LABEL_12;
      }

      v23 = *(a1 + 56 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000E8D58(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for FMIPBeaconShare();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7);
  return sub_100012DF0(v7, &unk_1006C0240, &unk_1005534D0);
}

void sub_1000E8E84(unint64_t *a1, uint64_t a2)
{

  v4 = sub_1000EA08C(a1, a2);

  if (*a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= v4)
    {
LABEL_3:
      sub_1003CE8A0(v4, v5);
      return;
    }
  }

  __break(1u);
}

void sub_1000E8F1C()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDevicesProvider: fmipManagerDidInitialize", v5, 2u);
  }

  v6 = FMIPManager.devices.getter();
  sub_1001C4454(v6);

  v7 = *(v1 + 16);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v8 + 8 * i + 32);
    }

    v14 = v13 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v1, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000E9154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = FMIPManager.debugDescription.getter();
    v10 = sub_100005B4C(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100005B4C(v11, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: initializationDidFail: %s error: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if ((FMIPManager.isInitialized.getter() & 1) == 0)
  {
    v14 = *(v2 + 16);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));

    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_8:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v15 + 8 * i + 32);
          }

          v21 = v20 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v21 + 8);
            ObjectType = swift_getObjectType();
            (*(v18 + 16))(v3, ObjectType, v18);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1000E9450(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = FMIPManager.debugDescription.getter();
    v10 = sub_100005B4C(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMDevicesProvider: request last location %s", v6, 0xCu);
    sub_100006060(v7);
  }

  v11 = *(v1 + 16);

  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);

  os_unfair_lock_unlock((v11 + 24));

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v12 + 8 * i + 32);
    }

    v18 = v17 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 56))(v2, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000E96D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = FMIPManager.debugDescription.getter();
    v12 = sub_100005B4C(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesProvider: didReceive receive server alert %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = *(v2 + 16);

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v14 + 8 * i + 32);
    }

    v20 = v19 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 48))(v3, a2, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000E9968(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    type metadata accessor for FMIPUnknownItem();
    v9 = Array.description.getter();
    v11 = sub_100005B4C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: update detectedUnknownItems %s", v7, 0xCu);
    sub_100006060(v8);
  }

  *(v2 + OBJC_IVAR____TtC6FindMy17FMDevicesProvider_unknownItemsDetectedNearYou) = a1;

  v12 = *(v2 + 16);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v13 + 8 * i + 32);
    }

    v19 = v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 96))(v2, a1, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

char *sub_1000E9C20()
{

  v1 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
  v2 = type metadata accessor for FMIPBeaconSharingLimits();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000E9CC0()
{
  sub_1000E9C20();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E9E74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000E9EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FMDevicesSubscription(0);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = a4;
  swift_unknownObjectWeakAssign();
  v7 = *(a2 + 16);

  os_unfair_lock_lock((v7 + 24));
  sub_10000E7C0((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  return v6;
}

unint64_t sub_1000E9F78(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000EA08C(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = sub_1000E9F78(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1000C1EE4();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = sub_1000C1EE4();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1000EA314(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: deviceDidChange %%", v7, 2u);
  }

  v8 = *(v2 + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v9 + 8 * i + 32);
    }

    v15 = v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 32))(v2, a1, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000EA530(uint64_t a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    type metadata accessor for FMIPPerson();
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v3 + 4) = v5;
    v4->super.isa = v5.super.isa;
    _os_log_impl(&_mh_execute_header, oslog, v2, "FMDevicesProvider: ownerDidChange %@", v3, 0xCu);
    sub_100012DF0(v4, &unk_1006AF760, &qword_100552DB0);
  }
}

void sub_1000EA690(uint64_t a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = FMIPManager.debugDescription.getter();
    v7 = sub_100005B4C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "FMDevicesProvider: fmipManagerDidRefresh %s", v3, 0xCu);
    sub_100006060(v4);
  }
}

uint64_t sub_1000EA7F4(uint64_t a1, unint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005B4C(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: didReceive imageVersionChanged %s", v7, 0xCu);
    sub_100006060(v8);
  }

  return dispatch thunk of FMImageCache.purge()();
}

void sub_1000EA950(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPConfigValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315138;
    v12 = FMIPConfigValue.rawValue.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100005B4C(v12, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMDevicesProvider: serverConfigurationChanged key %s", v11, 0xCu);
    sub_100006060(v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v2 + 16);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_18:

    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v17 + 8 * i + 32);
      }

      v23 = v22 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v23 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 64))(v2, a1, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1000EAC9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315138;
    v12 = FMIPItem.debugDescription.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100005B4C(v12, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMDevicesProvider: itemDidChange item: %s", v11, 0xCu);
    sub_100006060(v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v2 + 16);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_18:

    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v17 + 8 * i + 32);
      }

      v23 = v22 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v23 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 104))(v2, a1, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1000EAFE8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), const char *a4, ...)
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v8 + 16))(v10, a1, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = a3();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = sub_100005B4C(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xCu);
    sub_100006060(v15);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1000EB224(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: didReceive unknownItems: %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(v2 + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v9 + 8 * i + 32);
    }

    v15 = v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 72))(v2, a1, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

void sub_1000EB470(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPSeparationMonitoringState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v14;
    v16 = v15;
    v31 = swift_slowAlloc();
    v33 = v31;
    *v16 = 136315138;
    v12(v7, v10, v4);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v5 + 8))(v10, v4);
    v20 = sub_100005B4C(v17, v19, &v33);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v32, "FMDevicesProvider: separationMonitoringStateDidChange: %s", v16, 0xCu);
    sub_100006060(v31);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v21 = *(v2 + 16);

  os_unfair_lock_lock((v21 + 24));
  v22 = *(v21 + 16);

  os_unfair_lock_unlock((v21 + 24));

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_17:

    return;
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
      Strong = swift_unknownObjectWeakLoadStrong();
      v28 = *(v26 + 8);

      if (Strong)
      {
        ObjectType = swift_getObjectType();
        (*(v28 + 144))(v2, a1, ObjectType, v28);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_1000EB800(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    type metadata accessor for FMIPItemGroup();
    v9 = Array.description.getter();
    v11 = sub_100005B4C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: itemGroupsDidChange: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = *(v2 + 16);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v13 + 8 * i + 32);
    }

    v19 = v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 88))(v2, a1, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000EBA98(uint64_t a1, const char *a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_1000EBB88(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    type metadata accessor for FMIPSafeLocation();
    v9 = Array.description.getter();
    v11 = sub_100005B4C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: didUpdate safe locations %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = *(v2 + 16);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v13 + 8 * i + 32);
    }

    v19 = v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 136))(v2, a1, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000EBE20(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    type metadata accessor for FMIPBeaconShare();
    v9 = Array.description.getter();
    v11 = sub_100005B4C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: didUpdate shares %s", v7, 0xCu);
    sub_100006060(v8);
  }

  *(v2 + 64) = a1;

  v12 = *(v2 + 16);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v13 + 8 * i + 32);
    }

    v19 = v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 152))(v2, a1, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

uint64_t sub_1000EC0D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPBeaconSharingLimits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
    (*(v5 + 8))(v7, v4);
    *(v11 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMDevicesProvider: didUpdate sharingLimits, maxCircleMembers = %lu", v11, 0xCu);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v13 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v13, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000EC2FC()
{
  v1 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1000E8D58(v2, v3, v4);
}

uint64_t sub_1000EC36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B1310, &unk_100553750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC3DC()
{
  v1 = *(sub_10007EBC0(&qword_1006B1310, &unk_100553750) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_1000E75FC(v0 + v2, v5, v7, v8, v6);
}

id sub_1000EC4B8()
{
  v0 = [objc_allocWithZone(CNContactFormatter) init];
  [v0 setStyle:0];
  [v0 setFallbackStyle:-1];
  result = [v0 setIgnoresOrganization:1];
  qword_1006D3D28 = v0;
  return result;
}

BOOL sub_1000EC530()
{
  v1 = [objc_allocWithZone(CNContactStore) init];
  v2 = [v0 identifier];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  sub_10007EBC0(&qword_1006AF180, &qword_100550ED0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  v4 = [v1 unifiedContactWithIdentifier:v2 keysToFetch:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4 == 0;
}

id sub_1000EC68C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(CNMutableContact) init];
  v3 = objc_allocWithZone(NSString);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];

  if (String.isEmail.getter())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = objc_allocWithZone(CNLabeledValue);
    v7 = v5;
    v8 = String._bridgeToObjectiveC()();

    v9 = [v6 initWithLabel:v8 value:v7];

    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1005528C0;
    *(v10 + 32) = v9;
    v11 = v9;
    sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setEmailAddresses:v12.super.isa];
  }

  else
  {
    v13 = objc_allocWithZone(CNPhoneNumber);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithStringValue:v14];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = objc_allocWithZone(CNLabeledValue);
    v17 = v15;
    v18 = String._bridgeToObjectiveC()();

    v19 = [v16 initWithLabel:v18 value:v17];

    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1005528C0;
    *(v20 + 32) = v19;
    v11 = v19;
    sub_10007EBC0(&unk_1006BC970, &unk_1005542E0);
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setPhoneNumbers:v12.super.isa];
  }

  return v2;
}

uint64_t sub_1000EC97C(uint64_t a1)
{
  v1 = FMFFriend.identifier.getter();
  v3 = v2;
  if (v1 == FMFFriend.identifier.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000ECA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for ContinuousClock();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v6;
  v3[13] = v5;

  return _swift_task_switch(sub_1000ECB10, v6, v5);
}

uint64_t sub_1000ECB10()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[7];
    v2 = v0[5];

    sub_1000F753C(v1, v2);
  }

  static Clock<>.continuous.getter();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000ECC58;

  return sub_1005149A8(0x158E460913D00000, 1, 0, 0, 1);
}

uint64_t sub_1000ECC58()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1000EE758;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1000ECDEC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000ECDEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ECE54(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_1000ECF48, v5, v4);
}

uint64_t sub_1000ECF48()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 48);

    sub_1000FAEC0(v1);
  }

  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1000ED084;

  return sub_1005149A8(0x158E460913D00000, 1, 0, 0, 1);
}

uint64_t sub_1000ED084()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1000EE75C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1000ED218;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000ED218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for ContinuousClock();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v6;
  v3[13] = v5;

  return _swift_task_switch(sub_1000ED378, v6, v5);
}

uint64_t sub_1000ED378()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[7];
    v2 = v0[5];

    sub_1000F753C(v1, v2);
  }

  static Clock<>.continuous.getter();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000ED4C0;

  return sub_1005149A8(0x158E460913D00000, 1, 0, 0, 1);
}

uint64_t sub_1000ED4C0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {
  }

  (*(v5 + 8))(v4, v6);
  v7 = v3[12];
  v8 = v3[13];

  return _swift_task_switch(sub_1000EE758, v7, v8);
}

uint64_t sub_1000ED654(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_1000ED748, v5, v4);
}

uint64_t sub_1000ED748()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 48);

    sub_1000FAB74(v1);
  }

  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1000ED884;

  return sub_1005149A8(0x158E460913D00000, 1, 0, 0, 1);
}

uint64_t sub_1000ED884()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {
  }

  (*(v5 + 8))(v4, v6);
  v7 = v3[11];
  v8 = v3[12];

  return _swift_task_switch(sub_1000EE75C, v7, v8);
}

uint64_t sub_1000EDA18(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  v3 = type metadata accessor for FMPeopleCellViewModel(0);
  type metadata accessor for Date();
  sub_10002C228(&qword_1006B1480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v3[7]));
  if (*(v1 + v3[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v3[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v1 + v3[10]);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v2 + v3[11]);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v7 = v6;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = *(v2 + v3[12]);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    v9 = v8;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = *(v2 + v3[13]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  Hasher._combine(_:)(*(v2 + v3[14]));
  Hasher._combine(_:)(*(v2 + v3[15]));
  v11 = *(v2 + v3[16]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v2 + v3[17]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + v3[19]));
  Hasher._combine(_:)(*(v2 + v3[20]));
  Hasher._combine(_:)(*(v2 + v3[21]));
  Hasher._combine(_:)(*(v2 + v3[22]));
  Hasher._combine(_:)(*(v2 + v3[23]));
  if (*(v2 + v3[24] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v3[25] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v3[26]));
  Hasher._combine(_:)(*(v2 + v3[27]));
  Hasher._combine(_:)(*(v2 + v3[28]));
  Hasher._combine(_:)(*(v2 + v3[29]));
  Hasher._combine(_:)(*(v2 + v3[30]));
  Hasher._combine(_:)(*(v2 + v3[31]));
  type metadata accessor for PeopleListPersonRow.State();
  sub_10002C228(&qword_1006B1488, &type metadata accessor for PeopleListPersonRow.State, &protocol conformance descriptor for PeopleListPersonRow.State);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000EDDF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 96));

  return v2;
}

uint64_t sub_1000EDE2C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));

  return v2;
}

Swift::Int sub_1000EDE7C()
{
  Hasher.init(_seed:)();
  sub_1000EDA18(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000EDEC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000EDA18(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000EDF0C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMFLocationSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyRelative = type metadata accessor for FindMyRelativeDate.RecencyKey();
  v10 = *(MyRelative - 8);
  __chkstk_darwin(MyRelative);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v27 = *a1;
  FMFLocation.locationSource.getter();
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for FMFLocationSource.legacy(_:) || v16 == enum case for FMFLocationSource.secureProactiveShallow(_:))
  {
    goto LABEL_6;
  }

  if (v16 == enum case for FMFLocationSource.secureLive(_:))
  {
    if (qword_1006AEA78 != -1)
    {
      swift_once();
    }

    v18 = qword_1006D3CD8;
LABEL_13:
    v19 = sub_100005B14(MyRelative, v18);
    v20 = *(v10 + 16);
    v20(v15, v19, MyRelative);
    goto LABEL_14;
  }

  if (v16 == enum case for FMFLocationSource.stewie(_:))
  {
LABEL_6:
    if (qword_1006AEA70 != -1)
    {
      swift_once();
    }

    v18 = qword_1006D3CC0;
    goto LABEL_13;
  }

  if (qword_1006AEA70 != -1)
  {
    swift_once();
  }

  v25 = sub_100005B14(MyRelative, qword_1006D3CC0);
  v20 = *(v10 + 16);
  v20(v15, v25, MyRelative);
  (*(v6 + 8))(v8, v5);
LABEL_14:
  v21 = [v27 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v20(v12, v15, MyRelative);
  v22 = v29;
  FindMyRelativeDate.init(date:recencyKey:)();
  (*(v10 + 8))(v15, MyRelative);
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  return (*(*(MyRelativeDate - 8) + 56))(v22, 0, 1, MyRelativeDate);
}

uint64_t sub_1000EE324(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_1000ED280(a1, v6, v1 + v5);
}

uint64_t sub_1000EE404()
{
  v2 = *(type metadata accessor for FMFFriend() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000EE760;

  return sub_1000ED654(v4, v0 + v3);
}

uint64_t sub_1000EE4DC(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E3478;

  return sub_1000ECA18(a1, v6, v1 + v5);
}

uint64_t sub_1000EE5BC()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000EE680()
{
  v2 = *(type metadata accessor for FMFFriend() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000EE760;

  return sub_1000ECE54(v4, v0 + v3);
}

id sub_1000EE780()
{
  v0[OBJC_IVAR____TtC6FindMy16FMPlusSignButton_isRTLLanguage] = 0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for FMPlusSignButton();
  v1 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v4 = v1;
  [v4 setImage:v3 forState:0];
  v5 = [v4 imageView];
  if (v5)
  {
    v6 = v5;
    [v5 setContentMode:0];
  }

  v7 = objc_opt_self();
  v8 = [v7 secondaryLabelColor];
  [v4 setTintColor:v8];

  [v4 setContentEdgeInsets:{0.0, 0.0, 10.0, 0.0}];
  v9 = [v4 titleLabel];

  if (v9)
  {
    v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightMedium;
    v12 = UIFontWeightTrait;
    v13 = sub_10002AB84(inited);
    swift_setDeallocating();
    sub_10002AC74(inited + 32);
    v14 = sub_10002ACDC(v13);

    [v9 setFont:v14];
  }

  v15 = [v7 secondaryLabelColor];
  [v4 setTitleColor:v15 forState:0];

  return v4;
}

id sub_1000EEAD0()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 userInterfaceLayoutDirection];

  v0[OBJC_IVAR____TtC6FindMy16FMPlusSignButton_isRTLLanguage] = v2 == 1;
  if (v2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v0 setContentHorizontalAlignment:v3];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMPlusSignButton();
  return objc_msgSendSuper2(&v5, "layoutSubviews");
}

id sub_1000EEDF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPlusSignButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000EEE68()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMDiscoveredAccessoryImageOperation: Running operation", v4, 2u);
  }

  v5 = *(v0 + 16);

  (*(v5 + qword_1006B1528))();
  if (v6)
  {
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

void sub_1000EEFE4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMAccessoryProductImageCacheFetchOperation(0);
  objc_msgSendSuper2(&v5, "cancel");
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMDiscoveredAccessoryImageOperation: Cancelling operation", v4, 2u);
  }
}

void sub_1000EF0E0(void *a1)
{
  v1 = a1;
  sub_1000EEFE4();
}

id sub_1000EF16C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryProductImageCacheFetchOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMAccessoryProductImageCacheFetchOperation(uint64_t a1)
{
  result = qword_1006B1558;
  if (!qword_1006B1558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EF24C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000EF2DC;

  return sub_1000EEE48();
}

uint64_t sub_1000EF2DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void sub_1000EF3F4(uint64_t a1)
{
  *(a1 + qword_1006B1698 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000EF468(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v12 = "ITEM_DETAIL_REMOVE_BUTTON";
      v13 = "SHARE_ITEM_STOP_SHARE_ERROR";
      v22 = 0x800000010057D3F0;
      v14 = 0xD00000000000001FLL;
LABEL_9:
      v16 = v12 | 0x8000000000000000;
      v17.value._object = (v13 | 0x8000000000000000);
      v18 = 0xD000000000000018;
      v17.value._countAndFlagsBits = 0xD000000000000013;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, v17, v4, v19, *(&v22 - 1));
      countAndFlagsBits = v20._countAndFlagsBits;
      object = v20._object;

      v23[3] = &type metadata for SolariumFeatureFlag;
      v23[4] = sub_10000BD04();
      v21 = isFeatureEnabled(_:)();
      sub_100006060(v23);
      v11 = v21 ^ 1;
      goto LABEL_10;
    }

    v12 = "Module";
    v13 = "SHARE_ITEM_STOP_SHARE_ERROR";
    v15 = "FMLocalizedSharingString";
LABEL_8:
    v22 = (v15 - 32) | 0x8000000000000000;
    v14 = 0xD000000000000019;
    goto LABEL_9;
  }

  if (a1)
  {
    v12 = "Module";
    v13 = "CLEAR_TAGS_MESSAGE";
    v15 = "FMLocalizedHawkeyeString";
    goto LABEL_8;
  }

  v24._object = 0x8000000100579A00;
  v5._countAndFlagsBits = 0xD000000000000019;
  v5._object = 0x800000010057DDE0;
  v6.value._object = 0x80000001005799E0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v24);
  countAndFlagsBits = v8._countAndFlagsBits;
  object = v8._object;

  v11 = 0;
LABEL_10:
  *a2 = countAndFlagsBits;
  *(a2 + 8) = object;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
}

Swift::Int sub_1000EF65C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000EF728(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000EF7E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000EF8A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F0448(*a1);
  *a2 = result;
  return result;
}

void sub_1000EF8D8(unint64_t *a1@<X8>)
{
  v2 = 0x7449656D616E6572;
  v3 = 0xD000000000000010;
  v4 = 0x8000000100578BA0;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000100578BC0;
  }

  if (*v1)
  {
    v2 = 0x744965766F6D6572;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xEA00000000006D65;
  }

  else
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
}

double sub_1000EF960@<D0>(uint64_t a1@<X8>)
{
  sub_1000EF468(*v1, v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

void sub_1000EF9B0(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552EE0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 whiteColor];
  *(v6 + 40) = [v7 grayColor];
  sub_1000F0494();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v4 configurationWithPaletteColors:isa];

  *(&v67 + 1) = &type metadata for SolariumFeatureFlag;
  *&v68 = sub_10000BD04();
  LOBYTE(v6) = isFeatureEnabled(_:)();
  sub_100006060(&v66);
  v62 = v9;
  v63 = v5;
  if (v6)
  {
    v10 = v5;
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    if (!v12)
    {
      v12 = [objc_allocWithZone(UIImage) init];
    }

    v60 = v12;
    v59 = [v7 grayColor];
  }

  else
  {
    v13 = [v5 configurationByApplyingConfiguration:v9];
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    if (!v15)
    {
      v15 = [objc_allocWithZone(UIImage) init];
    }

    v59 = 0;
    v60 = v15;
  }

  v16 = [objc_opt_self() mainBundle];
  v70._object = 0x800000010057DE50;
  v17._countAndFlagsBits = 0xD000000000000021;
  v17._object = 0x800000010057DE20;
  v70._countAndFlagsBits = 0xD000000000000033;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v70);

  v20 = v3 + qword_1006C2B70;
  v21 = *(v3 + qword_1006C2B70 + 16);
  v66 = *(v3 + qword_1006C2B70);
  v67 = v21;
  v68 = *(v3 + qword_1006C2B70 + 32);
  v69 = *(v3 + qword_1006C2B70 + 48);
  v64 = v3;
  v23 = *(v3 + qword_1006C2B70);
  v22 = *(v20 + 8);
  v24 = *(v20 + 16);
  v25 = *(v20 + 24);
  v27 = *(v20 + 32);
  v26 = *(v20 + 40);
  *v20 = v60;
  *(v20 + 8) = v59;
  *(v20 + 16) = v19;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  v28 = v59;
  sub_1000F04E0(&v66, v65);
  v29 = v60;
  v30 = v28;

  v31 = v24;
  v32 = v27;
  v33 = v29;
  v34 = v64;
  sub_1000F0550(v23, v22, v31, v25, v32, v26);
  sub_1003DC464(&v66);
  sub_1000F05AC(&v66);

  v35 = type metadata accessor for FMItemDetailViewModel(0);
  if (*(a1 + *(v35 + 80) + 1))
  {
    v39 = *(v64 + qword_1006C2B78);
    *(v64 + qword_1006C2B78) = _swiftEmptyArrayStorage;
    sub_100244D50(_swiftEmptyArrayStorage, v39);
    v41 = v40;

    v37 = v62;
    if (v41)
    {
      goto LABEL_14;
    }

LABEL_13:

    sub_10037D318(v42);

    goto LABEL_14;
  }

  v36 = *(a1 + *(v35 + 56));
  v37 = v62;
  if ((v36 & 0x200) == 0)
  {
    v38 = _swiftEmptyArrayStorage;
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v38 = sub_10008BB40(0, 1, 1, _swiftEmptyArrayStorage);
  v44 = *(v38 + 2);
  v43 = *(v38 + 3);
  if (v44 >= v43 >> 1)
  {
    v38 = sub_10008BB40((v43 > 1), v44 + 1, 1, v38);
  }

  *(v38 + 2) = v44 + 1;
  v38[v44 + 32] = 0;
  if ((v36 & 0x100) != 0)
  {
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_10008BB40(0, *(v38 + 2) + 1, 1, v38);
    }

    v46 = *(v38 + 2);
    v45 = *(v38 + 3);
    if (v46 >= v45 >> 1)
    {
      v38 = sub_10008BB40((v45 > 1), v46 + 1, 1, v38);
    }

    *(v38 + 2) = v46 + 1;
    v38[v46 + 32] = 1;
  }

LABEL_23:
  if (v36 & 0x40) != 0 || (a2)
  {
    v47 = *(v64 + qword_1006B16A0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v47 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_10008BB40(0, *(v38 + 2) + 1, 1, v38);
      }

      v50 = *(v38 + 2);
      v49 = *(v38 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v38 = sub_10008BB40((v49 > 1), v50 + 1, 1, v38);
      }

      v52 = 2;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_10008BB40(0, *(v38 + 2) + 1, 1, v38);
      }

      v50 = *(v38 + 2);
      v53 = *(v38 + 3);
      v51 = v50 + 1;
      if (v50 >= v53 >> 1)
      {
        v38 = sub_10008BB40((v53 > 1), v50 + 1, 1, v38);
      }

      v52 = 3;
    }

    *(v38 + 2) = v51;
    v38[v50 + 32] = v52;
    v34 = v64;
  }

  v54 = *(v34 + qword_1006C2B78);
  *(v34 + qword_1006C2B78) = v38;

  sub_100244D50(v55, v54);
  v57 = v56;

  if ((v57 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
}

id sub_1000F0044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemBottomActionsModule(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMItemBottomActionsModule(uint64_t a1)
{
  result = qword_1006B16D0;
  if (!qword_1006B16D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F0124(unsigned __int8 *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((v1 - 2) >= 2)
    {
      if (v1)
      {
        sub_1003A05F8();
      }

      else
      {
        sub_1003A1DFC();
      }
    }

    else
    {
      sub_1003A225C();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMPlatterButtonAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPlatterButtonAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000F02F8(uint64_t a1)
{
  result = sub_1000F0320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F0320()
{
  result = qword_1006B1908;
  if (!qword_1006B1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1908);
  }

  return result;
}

unint64_t sub_1000F0374(uint64_t a1)
{
  result = sub_1000F039C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F039C()
{
  result = qword_1006B1910;
  if (!qword_1006B1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1910);
  }

  return result;
}

unint64_t sub_1000F03F4()
{
  result = qword_1006B1918;
  if (!qword_1006B1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1918);
  }

  return result;
}

unint64_t sub_1000F0448(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100621E90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000F0494()
{
  result = qword_1006C0000;
  if (!qword_1006C0000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C0000);
  }

  return result;
}

uint64_t sub_1000F04E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B1920, &qword_10055EB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1000F0550(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F05AC(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B1920, &qword_10055EB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0614(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000F673C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000F06AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F0710@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = _HashTable.startBucket.getter();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1000F304C(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1000F07E4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000F6E08(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000F6E08(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000F3110(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000F6E08(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000F0914(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007EBC0(&qword_1006B1AF8, &qword_100554198);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v15 = *(*(a1 + 56) + v13);
    *&v32[0] = *(*(a1 + 48) + v13);
    v14 = *&v32[0];
    type metadata accessor for Key(0);
    v16 = v14;
    v15;
    swift_dynamicCast();
    sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000072E4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000072E4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000072E4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1000F0BF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007EBC0(&qword_1006B1B00, &unk_1005541A0);
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
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1000072E4(&v22, v24);
        sub_1000072E4(v24, v25);
        sub_1000072E4(v25, &v23);
        result = sub_10000726C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100006060(v11);
          result = sub_1000072E4(&v23, v11);
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
          result = sub_1000072E4(&v23, (v2[7] + 32 * result));
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

_OWORD *sub_1000F0E5C(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    sub_10007EBC0(&qword_1006B1AB8, &unk_100554160);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  v10 = 0;
  while (v6)
  {
LABEL_15:
    v13 = (v10 << 9) | (8 * __clz(__rbit64(v6)));
    v14 = *(*(a1 + 48) + v13);
    v30 = *(*(a1 + 56) + v13);
    v15 = v30;
    sub_10000905C(0, a2, a3);
    v16 = v14;
    v17 = v15;
    swift_dynamicCast();
    sub_1000072E4((v31 + 8), v29);
    sub_1000072E4(v29, v31);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();

    v19 = -1 << v3[32];
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v8[8 * (v20 >> 6)]) == 0)
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
        v25 = *&v8[8 * v21];
        if (v25 != -1)
        {
          v11 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v20) & ~*&v8[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v8[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v6 &= v6 - 1;
    *(*(v3 + 6) + 8 * v11) = v16;
    result = sub_1000072E4(v31, (*(v3 + 7) + 32 * v11));
    ++*(v3 + 2);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000F1248@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000811A0();

  *a2 = v3;
  return result;
}

uint64_t FMItemBatteryStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6563616C706572;
  if (a1 != 5)
  {
    v2 = 1684104548;
  }

  v3 = 0x66694C796C726165;
  if (a1 != 3)
  {
    v3 = 0x6566694C6574616CLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6873657266;
  if (a1 != 1)
  {
    v4 = 0x65776F5068676968;
  }

  if (a1)
  {
    v1 = v4;
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

uint64_t sub_1000F1410(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000F1520@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s6FindMy19FMItemBatteryStatusO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1000F1550(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6563616C706572;
  if (v2 != 5)
  {
    v6 = 1684104548;
    v5 = 0xE400000000000000;
  }

  v7 = 0x66694C796C726165;
  v8 = 0xE800000000000000;
  if (v2 == 3)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x6566694C6574616CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6873657266;
  if (v2 != 1)
  {
    v10 = 0x65776F5068676968;
    v9 = 0xE900000000000072;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

id sub_1000F1628()
{
  result = sub_1000F1648();
  qword_1006B1928 = result;
  return result;
}

id sub_1000F1648()
{
  v0 = [objc_allocWithZone(MKDistanceFormatter) init];
  if (qword_1006AEC58 != -1)
  {
    swift_once();
  }

  v1 = qword_1006D48A8;
  if ([qword_1006D48A8 measurementSystem] != 1)
  {
    if ([v1 measurementSystem] == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    [v0 setUnits:v2];
  }

  return v0;
}

void sub_1000F1704(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>)
{
  v147 = a8;
  v155 = a6;
  v156 = a7;
  v164 = a5;
  v154 = a4;
  v169 = a3;
  v12 = sub_10007EBC0(&unk_1006C1D10, &qword_1005534B8);
  __chkstk_darwin(v12 - 8);
  v146 = &v132 - v13;
  v144 = type metadata accessor for FMIPConfigValue();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FMIPProductType();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170[0] = type metadata accessor for Date();
  v165 = *(v170[0] - 8);
  __chkstk_darwin(v170[0]);
  v157 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for FMIPItemState();
  v152 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v132 - v19;
  v162 = type metadata accessor for FMIPItemBatteryStatus();
  v148 = *(v162 - 1);
  __chkstk_darwin(v162);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v23 - 8);
  v159 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v132 - v26;
  __chkstk_darwin(v28);
  v30 = &v132 - v29;
  v31 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v31 - 8);
  v141 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v153 = &v132 - v34;
  __chkstk_darwin(v35);
  v37 = &v132 - v36;
  v38 = (*(*(a1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) & 1) == 0;
  v145 = a1;
  v136 = sub_1000F5684(a2, v38, a1);
  v150 = v39;
  v137 = v40;
  v149 = v41;
  v161 = sub_1000F4104();
  FMIPItem.location.getter();
  v42 = type metadata accessor for FMIPLocation();
  v43 = *(v42 - 8);
  v166 = *(v43 + 48);
  v167 = v43 + 48;
  v44 = v166(v30, 1, v42);
  v168 = v42;
  v158 = v43;
  if (v44 == 1)
  {
    sub_100012DF0(v30, &unk_1006C0220, qword_100553770);
    v45 = 1;
  }

  else
  {
    v46 = FMIPLocation.location.getter();
    (*(v43 + 8))(v30, v42);
    v47 = [v46 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = 0;
  }

  v48 = *(v165 + 56);
  v163 = v37;
  v140 = v165 + 56;
  v139 = v48;
  v48(v37, v45, 1, v170[0]);
  FMIPItem.batteryStatus.getter();
  v49 = v148;
  v50 = v162;
  v51 = (*(v148 + 88))(v22, v162);
  v52 = v160;
  v53 = v152;
  v54 = v151;
  if (v51 == enum case for FMIPItemBatteryStatus.unknown(_:))
  {
    goto LABEL_5;
  }

  if (v51 == enum case for FMIPItemBatteryStatus.highPower(_:))
  {
    v138 = 0;
    v55 = 2;
LABEL_14:
    v56 = &v171;
    goto LABEL_15;
  }

  if (v51 == enum case for FMIPItemBatteryStatus.fresh(_:))
  {
    v138 = 0;
    v55 = 1;
    goto LABEL_14;
  }

  if (v51 == enum case for FMIPItemBatteryStatus.earlyLife(_:))
  {
    v138 = 0;
    v55 = 3;
    goto LABEL_14;
  }

  if (v51 == enum case for FMIPItemBatteryStatus.lateLife(_:))
  {
    v138 = 0;
    v55 = 4;
    goto LABEL_14;
  }

  if (v51 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    LODWORD(v148) = 5;
    v55 = 1;
  }

  else
  {
    if (v51 != enum case for FMIPItemBatteryStatus.dead(_:))
    {
      (*(v49 + 8))(v22, v50);
LABEL_5:
      v138 = 0;
      LODWORD(v148) = 0;
      goto LABEL_16;
    }

    LODWORD(v148) = 6;
    v55 = 2;
  }

  v56 = v170 + 4;
LABEL_15:
  *(v56 - 64) = v55;
LABEL_16:
  v135 = sub_1004FB6E0(a2, 0);
  v58 = v57;
  FMIPItem.location.getter();
  v59 = v168;
  if (v166(v27, 1, v168) == 1)
  {
    sub_100012DF0(v27, &unk_1006C0220, qword_100553770);
  }

  else
  {
    v60 = FMIPLocation.isOld.getter();
    (*(v158 + 8))(v27, v59);
    if (v60)
    {
      v61 = &selRef_systemRedColor;
      goto LABEL_21;
    }
  }

  v61 = &selRef_systemGreenColor;
LABEL_21:
  v162 = [objc_opt_self() *v61];
  FMIPItem.state.getter();
  static FMIPItemState.isLocating.getter();
  sub_1000F6DC0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v63 = *(v53 + 8);
  v63(v54, v52);
  v63(v20, v52);
  if (v62)
  {
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    v64 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v63(v54, v52);
    v63(v20, v52);
    LODWORD(v160) = v64 ^ 1;
  }

  else
  {
    LODWORD(v160) = 0;
  }

  v65 = v150;
  object = v149;
  v67 = sub_1000F5878(a2, v169, v154, v164, v155, v156);
  v155 = v68;
  v156 = v67;
  v70 = v69;

  v164 = a2;
  if (FMIPItem.isFirmwareUpdateMandatory.getter())
  {

    v71 = [objc_opt_self() mainBundle];
    v172._object = 0x8000000100579A00;
    v72._countAndFlagsBits = 0xD000000000000028;
    v72._object = 0x800000010057DEC0;
    v73.value._object = 0x80000001005799E0;
    v172._countAndFlagsBits = 0xD000000000000018;
    v73.value._countAndFlagsBits = 0xD000000000000013;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, v172);
    countAndFlagsBits = v75._countAndFlagsBits;
    object = v75._object;

    v77 = 0;
    v65 = 0;
    v78 = 0;
    v58 = 0;
    v161 = 768;
    v79 = v170[0];
  }

  else
  {
    v79 = v170[0];
    countAndFlagsBits = v137;
    v77 = v136;
    v78 = v135;
  }

  *a9 = FMIPItem.identifier.getter();
  *(a9 + 1) = v80;
  v81 = v155;
  v82 = v156;
  if (!v70)
  {
    v81 = 0;
    v82 = -1;
  }

  *(a9 + 2) = v81;
  *(a9 + 3) = v70;
  *(a9 + 4) = v82;
  *(a9 + 12) = FMIPItem.name.getter();
  *(a9 + 13) = v83;
  *(a9 + 5) = countAndFlagsBits;
  *(a9 + 6) = object;
  *(a9 + 7) = v77;
  *(a9 + 8) = v65;
  *(a9 + 9) = v78;
  *(a9 + 10) = v58;
  v84 = v163;
  *(a9 + 11) = v162;
  v85 = v153;
  sub_100007204(v84, v153, &unk_1006B0000, &unk_100552AA0);
  v86 = v165;
  v87 = *(v165 + 48);
  if (v87(v85, 1, v79) == 1)
  {
    v88 = v157;
    static Date.distantFuture.getter();
    v89 = v87(v85, 1, v79);
    v90 = v88;
    v91 = v169;
    if (v89 != 1)
    {
      sub_100012DF0(v85, &unk_1006B0000, &unk_100552AA0);
    }
  }

  else
  {
    v90 = v157;
    (*(v86 + 32))(v157, v85, v79);
    v91 = v169;
  }

  v92 = type metadata accessor for FMItemDetailViewModel(0);
  (*(v86 + 32))(&a9[v92[12]], v90, v79);
  v93 = v148;
  *&a9[v92[22]] = dbl_1005541B0[v148];
  *&a9[v92[14]] = v161;
  v94 = v164;
  FMIPItem.productType.getter();
  a9[v92[16]] = FMIPItem.isFirmwareUpdateMandatory.getter() & 1;
  v95 = FMIPItem.systemVersion.getter();
  v96 = &a9[v92[17]];
  *v96 = v95;
  *(v96 + 1) = v97;
  *&a9[v92[20]] = sub_1000F39B8(v94, v91);
  v98 = *(FMIPItem.safeLocations.getter() + 16);

  *&a9[v92[21]] = v98;
  a9[v92[23]] = v93;
  if (v93 != 5)
  {
    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v100)
    {
      v101 = 1;
      v102 = v147;
      v103 = v146;
      v104 = v159;
      v99 = v138;
LABEL_48:
      a9[v92[25]] = v101 & 1;
      goto LABEL_50;
    }

    if (v93 <= 2)
    {
      if (v93)
      {
        v99 = v138;
        v102 = v147;
        v103 = v146;
LABEL_44:
        v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v105)
        {
          v101 = 1;
        }

        else
        {
          v106 = v132;
          FMIPItem.productType.getter();
          v107 = FMIPProductType.isAirTag.getter();
          (*(v133 + 8))(v106, v134);
          v101 = v107 ^ 1;
        }

        v104 = v159;
        goto LABEL_48;
      }
    }

    else if (v93 > 4)
    {

      a9[v92[25]] = 1;
      v99 = 2;
      goto LABEL_49;
    }

    v102 = v147;
    v103 = v146;
    v99 = v138;
    goto LABEL_44;
  }

  v99 = 1;
  a9[v92[25]] = 1;
LABEL_49:
  v102 = v147;
  v103 = v146;
  v104 = v159;
LABEL_50:
  a9[v92[24]] = v99;
  a9[v92[18]] = v160 & 1;
  FMIPItem.location.getter();
  v108 = v168;
  if (v166(v104, 1, v168) == 1)
  {
    sub_100012DF0(v104, &unk_1006C0220, qword_100553770);
    v109 = 0.0;
    goto LABEL_55;
  }

  v110 = FMIPLocation.location.getter();
  (*(v158 + 8))(v104, v108);
  [v110 horizontalAccuracy];
  v109 = v111;
  v112 = v111;

  if ((*&v112 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    return;
  }

  if (v109 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v109 < 9.22337204e18)
  {
LABEL_55:
    v113 = v143;
    v114 = v142;
    v115 = v144;
    (*(v143 + 104))(v142, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v144);
    v170[1] = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v113 + 8))(v114, v115);
    a9[v92[19]] = v170[2] < v109;
    if (v102)
    {
      v116 = [objc_allocWithZone(NSAttributedString) init];
    }

    else
    {
      v116 = sub_1000F5E0C(v94);
    }

    v117 = v141;
    *&a9[v92[26]] = v116;
    FMIPItem.lostMetadata.getter();
    v118 = type metadata accessor for FMIPItemLostModeMetadata();
    v119 = *(v118 - 8);
    if ((*(v119 + 48))(v103, 1, v118) == 1)
    {
      sub_100012DF0(v103, &unk_1006C1D10, &qword_1005534B8);
      v120 = 1;
    }

    else
    {
      FMIPItemLostModeMetadata.timestamp.getter();
      (*(v119 + 8))(v103, v118);
      v120 = 0;
    }

    v139(v117, v120, 1, v170[0]);
    sub_100035318(v117, &a9[v92[13]], &unk_1006B0000, &unk_100552AA0);
    v121 = FMIPItem.owner.getter();
    v122 = &a9[v92[28]];
    *v122 = v121;
    *(v122 + 1) = v123;
    v124 = FMIPItem.serialNumber.getter();
    v125 = &a9[v92[29]];
    *v125 = v124;
    *(v125 + 1) = v126;
    a9[v92[27]] = v102 & 1;
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_62:
  v127 = type metadata accessor for Logger();
  sub_100005B14(v127, qword_1006D4630);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 67109120;
    *(v130 + 4) = v160 & 1;
    _os_log_impl(&_mh_execute_header, v128, v129, "FMItemDetailViewModel: isLocating? %{BOOL}d", v130, 8u);
  }

  v131 = type metadata accessor for FMIPItem();
  (*(*(v131 - 8) + 8))(v94, v131);
  sub_100012DF0(v163, &unk_1006B0000, &unk_100552AA0);
}

uint64_t sub_1000F2A14(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  String.hash(into:)();
  if (v1[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v1[4]);
  String.hash(into:)();
  if (v1[8])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[10])
    {
LABEL_6:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_9;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[10])
    {
      goto LABEL_6;
    }
  }

  Hasher._combine(_:)(0);
LABEL_9:
  NSObject.hash(into:)();
  String.hash(into:)();
  v9 = type metadata accessor for FMItemDetailViewModel(0);
  sub_1000F6DC0(&qword_1006B1480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_100007204(v1 + v9[13], v8, &unk_1006B0000, &unk_100552AA0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  Hasher._combine(_:)(*(v1 + v9[14]));
  type metadata accessor for FMIPProductType();
  sub_1000F6DC0(&qword_1006B1AF0, &type metadata accessor for FMIPProductType, &protocol conformance descriptor for FMIPProductType);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[16]));
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[18]));
  Hasher._combine(_:)(*(v1 + v9[19]));
  Hasher._combine(_:)(*(v1 + v9[20]));
  Hasher._combine(_:)(*(v1 + v9[21]));
  v10 = *(v1 + v9[22]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + v9[24]));
  Hasher._combine(_:)(*(v1 + v9[25]));
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[27]));
  String.hash(into:)();
  return String.hash(into:)();
}

uint64_t sub_1000F2F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1000F2FB0()
{
  Hasher.init(_seed:)();
  sub_1000F2A14(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F2FF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000F2A14(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000F304C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_1000F3110(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1000F3334(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10007EBC0(&unk_1006B00E0, &qword_100554190);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v15)
  {
    goto LABEL_56;
  }

  if (a1[4] != a2[4] || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  v16 = a1[8];
  v17 = a2[8];
  if (v16)
  {
    if (!v17 || (a1[7] != a2[7] || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v17)
  {
    goto LABEL_56;
  }

  v18 = a1[10];
  v19 = a2[10];
  if (v18)
  {
    if (!v19 || (a1[9] != a2[9] || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v19)
  {
    goto LABEL_56;
  }

  v20 = sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  v21 = type metadata accessor for FMItemDetailViewModel(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  v42 = v20;
  v43 = v21;
  v22 = *(v21 + 52);
  v23 = *(v11 + 48);
  sub_100007204(a1 + v22, v13, &unk_1006B0000, &unk_100552AA0);
  sub_100007204(a2 + v22, &v13[v23], &unk_1006B0000, &unk_100552AA0);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    sub_100007204(v13, v10, &unk_1006B0000, &unk_100552AA0);
    if (v24(&v13[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_38;
    }

    (*(v5 + 32))(v7, &v13[v23], v4);
    sub_1000F6DC0(&qword_1006C1DC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v10, v4);
    sub_100012DF0(v13, &unk_1006B0000, &unk_100552AA0);
    if (v25)
    {
      goto LABEL_40;
    }

LABEL_56:
    v32 = 0;
    return v32 & 1;
  }

  if (v24(&v13[v23], 1, v4) != 1)
  {
LABEL_38:
    sub_100012DF0(v13, &unk_1006B00E0, &qword_100554190);
    goto LABEL_56;
  }

  sub_100012DF0(v13, &unk_1006B0000, &unk_100552AA0);
LABEL_40:
  v27 = v43;
  if (*(a1 + v43[14]) != *(a2 + v43[14]) || (static FMIPProductType.== infix(_:_:)() & 1) == 0 || *(a1 + v27[16]) != *(a2 + v27[16]))
  {
    goto LABEL_56;
  }

  v28 = v27[17];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  if (*(a1 + v27[18]) != *(a2 + v27[18]) || *(a1 + v27[19]) != *(a2 + v27[19]) || *(a1 + v43[20]) != *(a2 + v43[20]) || *(a1 + v43[21]) != *(a2 + v43[21]) || *(a1 + v43[22]) != *(a2 + v43[22]) || (sub_1002526D0() & 1) == 0 || *(a1 + v43[24]) != *(a2 + v43[24]) || *(a1 + v43[25]) != *(a2 + v43[25]) || (static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + v43[27]) != *(a2 + v43[27]))
  {
    goto LABEL_56;
  }

  v34 = v43[28];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_56;
  }

  v38 = v43[29];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if (v39 == *v41 && v40 == v41[1])
  {
    v32 = 1;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v32 & 1;
}

uint64_t sub_1000F39B8(uint64_t a1, void *a2)
{
  v42 = a2;
  v2 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for FMIPLocation();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItemState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  FMIPItem.state.getter();
  static FMIPItemState.normal.getter();
  sub_1000F6DC0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v14(v13, v7);
  FMIPItem.state.getter();
  static FMIPItemState.soundPlaying.getter();
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  FMIPItem.state.getter();
  static FMIPItemState.soundPending.getter();
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v17)
  {
    v16 |= 4uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.soundError.getter();
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v18)
  {
    v16 |= 0x800uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.markLostActive.getter();
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v19)
  {
    v16 |= 8uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.separationWarningActive.getter();
  v20 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v20)
  {
    v16 |= 0x10uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v21)
  {
    v16 |= 0x20uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.isNotifyWhenFoundActive.getter();
  v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v22)
  {
    v16 |= 0x80uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.isFirmwareUpdating.getter();
  v23 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v23)
  {
    v16 |= 0x100uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.isFirmwareUpdatePending.getter();
  v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v10, v7);
  v14(v13, v7);
  if (v24)
  {
    v16 |= 0x200uLL;
  }

  FMIPItem.state.getter();
  static FMIPItemState.isOldShare.getter();
  v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v26 = v10;
  v27 = v44;
  v14(v26, v7);
  v14(v13, v7);
  if (v25)
  {
    v28 = v16 | 0x1000;
  }

  else
  {
    v28 = v16;
  }

  v29 = v45;
  FMIPItem.location.getter();
  if ((*(v27 + 48))(v4, 1, v29) == 1)
  {
    sub_100012DF0(v4, &unk_1006C0220, qword_100553770);
  }

  else
  {
    v30 = v43;
    (*(v27 + 32))(v43, v4, v29);
    if (v42)
    {
      v31 = v42;
      FMIPItem.rangeDistanceInMeters.getter();
      v33 = v32;
      v34 = FMIPLocation.location.getter();
      [v34 distanceFromLocation:v31];
      v36 = v35;
      [v34 horizontalAccuracy];
      v38 = v37;
      [v31 horizontalAccuracy];
      v40 = v39;

      (*(v27 + 8))(v30, v29);
      if (v36 / sqrt(v33 * v33 + v38 * v38 + v40 * v40) < 1.5)
      {
        return v28 | 0x40;
      }
    }

    else
    {
      (*(v27 + 8))(v30, v29);
    }
  }

  return v28;
}

uint64_t sub_1000F4104()
{
  v0 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = type metadata accessor for FMItemCapabilities();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canEnableLostMode.getter();
  sub_1000F6DC0(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canEnableLeashing.getter();
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v13)
  {
    v12 |= 0x10uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canEnableSharing.getter();
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v14)
  {
    v12 |= 0x20uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canDisableSharing.getter();
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v15)
  {
    v12 |= 0x40uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canEnableDelegatedShares.getter();
  v16 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v16 & 1) != 0 && (FMIPItem.isOwner.getter())
  {
    v12 |= 0x1000uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canInteractWithDelegatedShares.getter();
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if ((v17 & 1) != 0 && (FMIPItem.isOwner.getter() & 1) == 0)
  {
    v12 |= 0x2000uLL;
  }

  FMIPItem.location.getter();
  v18 = type metadata accessor for FMIPLocation();
  v19 = (*(*(v18 - 8) + 48))(v2, 1, v18);
  sub_100012DF0(v2, &unk_1006C0220, qword_100553770);
  if (v19 == 1)
  {
    v20 = v12;
  }

  else
  {
    v20 = v12 | 0x80;
  }

  if (FMIPItem.canEnableNotifyWhenFound()())
  {
    v20 |= 8uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canR1.getter();
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v21)
  {
    v20 |= 0x400uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canBTFinding.getter();
  v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v22)
  {
    v20 |= 0x800uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canEnableLeashing.getter();
  v23 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v23)
  {
    v20 |= 0x10uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canPlaySound.getter();
  v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v24)
  {
    v20 |= 4uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canRemove.getter();
  v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v25)
  {
    v20 |= 0x100uLL;
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canRename.getter();
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11(v6, v3);
  v11(v9, v3);
  if (v26 & 1) != 0 && (FMIPItem.isOwner.getter())
  {
    return v20 | 0x200;
  }

  return v20;
}

void *sub_1000F4790(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B1AC0, &unk_10055DF70);
  v105 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = &v98 - v5;
  v106 = sub_10007EBC0(&qword_1006B1AC8, &unk_100554170);
  v100 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v98 - v6;
  v104 = sub_10007EBC0(&qword_1006B1AD0, &qword_10055DF80);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v98 - v7;
  v8 = sub_10007EBC0(&unk_1006B0670, &unk_100554180);
  __chkstk_darwin(v8 - 8);
  v123 = &v98 - v9;
  v10 = sub_10007EBC0(&qword_1006B1AD8, &unk_1005642E0);
  __chkstk_darwin(v10 - 8);
  v117 = &v98 - v11;
  v116 = type metadata accessor for FMIPRangingParameters();
  v12 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v14 - 8);
  v16 = &v98 - v15;
  v126 = type metadata accessor for FMFFriend();
  v17 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v114 = &v98 - v20;
  __chkstk_darwin(v21);
  v108 = &v98 - v22;
  v23 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v23 - 8);
  v25 = &v98 - v24;
  FMIPItem.location.getter();
  v26 = type metadata accessor for FMIPLocation();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_100012DF0(v25, &unk_1006C0220, qword_100553770);
    return 0;
  }

  v98 = v4;
  v113 = FMIPLocation.location.getter();
  (*(v27 + 8))(v25, v26);
  result = sub_1000BE020(a1, a2);
  v29 = result;
  v122 = result[2];
  if (v122)
  {
    v112 = a2;
    v30 = 0;
    v121 = v17 + 16;
    v31 = (v12 + 48);
    v107 = (v12 + 32);
    v111 = (v12 + 8);
    v119 = (v17 + 8);
    v125 = _swiftEmptyArrayStorage;
    v110 = (v17 + 32);
    v32 = v126;
    v33 = v108;
    v120 = result;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v34 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v124 = *(v17 + 72);
      (*(v17 + 16))(v33, v29 + v34 + v124 * v30, v32);
      FMFFriend.location.getter();
      v35 = type metadata accessor for FMFLocation();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v16, 1, v35) == 1)
      {
        (*v119)(v33, v32);
        result = sub_100012DF0(v16, &qword_1006AF740, &unk_100552330);
      }

      else
      {
        v37 = FMFLocation.location.getter();
        (*(v36 + 8))(v16, v35);
        if (v37)
        {
          v118 = v34;
          v38 = v117;
          FMIPManager.rangingParameters.getter();
          v39 = *v31;
          v40 = v116;
          if ((*v31)(v38, 1, v116) == 1)
          {
            v41 = v16;
            v42 = v17;
            v43 = v115;
            FMIPRangingParameters.init()();
            v44 = v39(v38, 1, v40);
            v45 = v43;
            v17 = v42;
            v16 = v41;
            v33 = v108;
            if (v44 != 1)
            {
              sub_100012DF0(v38, &qword_1006B1AD8, &unk_1005642E0);
            }
          }

          else
          {
            v45 = v115;
            (*v107)(v115, v38, v40);
          }

          FMIPRangingParameters.inBTRangeDistanceInMeters.getter();
          v47 = v46;
          (*v111)(v45, v40);
          v48 = v113;
          [v37 distanceFromLocation:v113];
          v50 = v49;
          [v37 horizontalAccuracy];
          v52 = v51;
          [v48 horizontalAccuracy];
          v54 = v53;

          if (v50 / sqrt(v47 * v47 + v52 * v52 + v54 * v54) < 1.5)
          {
            v55 = *v110;
            v32 = v126;
            (*v110)(v114, v33, v126);
            v56 = v125;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v129 = v56;
            v29 = v120;
            v109 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001671C0(0, v56[2] + 1, 1);
              v32 = v126;
              v56 = v129;
            }

            v59 = v56[2];
            v58 = v56[3];
            v60 = v56;
            if (v59 >= v58 >> 1)
            {
              sub_1001671C0((v58 > 1), v59 + 1, 1);
              v32 = v126;
              v60 = v129;
            }

            v60[2] = v59 + 1;
            v125 = v60;
            result = v109(v60 + v118 + v59 * v124, v114, v32);
            goto LABEL_7;
          }
        }

        v32 = v126;
        result = (*v119)(v33, v126);
      }

      v29 = v120;
LABEL_7:
      if (v122 == ++v30)
      {
        goto LABEL_23;
      }
    }
  }

  v125 = _swiftEmptyArrayStorage;
LABEL_23:

  v61 = v125[2];
  if (!v61)
  {

    v63 = _swiftEmptyArrayStorage;
LABEL_43:
    v83 = v98;
    if (v63[2])
    {
      v128 = v63;
      v84 = v100;
      v85 = v99;
      (*(v100 + 104))(v99, enum case for ListFormatStyle.ListType.and<A, B>(_:), v106);
      v86 = v105;
      v87 = v102;
      (*(v105 + 104))(v102, enum case for ListFormatStyle.Width.standard<A, B>(_:), v83);
      sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
      sub_100004098(&qword_1006B1AE0, &qword_1006C0C10, &qword_100556FC0, &protocol conformance descriptor for [A]);
      v88 = v101;
      static FormatStyle.list<A>(type:width:)();
      (*(v86 + 8))(v87, v83);
      (*(v84 + 8))(v85, v106);
      sub_100004098(&qword_1006B1AE8, &qword_1006B1AD0, &qword_10055DF80, &protocol conformance descriptor for ListFormatStyle<A, B>);
      v89 = v104;
      Sequence.formatted<A>(_:)();
      (*(v103 + 8))(v88, v89);

      v90 = v129;
      v91 = v130;
      v92 = [objc_opt_self() mainBundle];
      v131._object = 0x800000010057D3F0;
      v93._object = 0x800000010057DF70;
      v94.value._countAndFlagsBits = 0xD000000000000013;
      v94.value._object = 0x800000010057D3D0;
      v131._countAndFlagsBits = 0xD000000000000018;
      v93._countAndFlagsBits = 0xD000000000000010;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v94, v92, v95, v131);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_100552220;
      *(v96 + 56) = &type metadata for String;
      *(v96 + 64) = sub_10008EE84();
      *(v96 + 32) = v90;
      *(v96 + 40) = v91;
      v97 = String.init(format:_:)();

      return v97;
    }

    return 0;
  }

  v129 = _swiftEmptyArrayStorage;
  sub_10016715C(0, v61, 0);
  v62 = 0;
  v63 = v129;
  v64 = v126;
  v124 = v125 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  result = v125;
  v121 = v61;
  v122 = v17 + 16;
  while (v62 < result[2])
  {
    (*(v17 + 16))(v127, &v124[*(v17 + 72) * v62], v64);
    v65 = v123;
    FMFFriend.contact.getter();
    v66 = type metadata accessor for FMFContact();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      sub_100012DF0(v65, &unk_1006B0670, &unk_100554180);
      result = FMFFriend.contactHandles.getter();
      v68 = 0;
      v69 = 0;
      v70 = 1 << *(result + 32);
      v64 = v126;
      while (1)
      {
        v71 = result[v69 + 7];
        if (v71)
        {
          break;
        }

        ++v69;
        v68 -= 64;
        if ((v70 + 63) >> 6 == v69)
        {
          goto LABEL_33;
        }
      }

      v77 = __clz(__rbit64(v71));
      if (v77 - v70 == v68)
      {
LABEL_33:

        v74 = 0;
        v76 = 0xE000000000000000;
        goto LABEL_38;
      }

      if (-v68 < 0)
      {
        goto LABEL_49;
      }

      v78 = v77 - v68;
      if (v78 >= v70)
      {
        goto LABEL_49;
      }

      if (((result[(v69 & 0x3FFFFFFFFFFFFFFLL) + 7] >> v77) & 1) == 0)
      {
        goto LABEL_50;
      }

      v79 = (result[6] + 16 * v78);
      v74 = *v79;
      v76 = v79[1];

      v64 = v126;
    }

    else
    {
      v72 = FMFContact.displayName.getter();
      v73 = v65;
      v74 = v72;
      v76 = v75;
      (*(v67 + 8))(v73, v66);
      v64 = v126;
    }

LABEL_38:
    (*(v17 + 8))(v127, v64);
    v129 = v63;
    v81 = v63[2];
    v80 = v63[3];
    if (v81 >= v80 >> 1)
    {
      sub_10016715C((v80 > 1), v81 + 1, 1);
      v64 = v126;
      v63 = v129;
    }

    ++v62;
    v63[2] = v81 + 1;
    v82 = &v63[2 * v81];
    v82[4] = v74;
    v82[5] = v76;
    result = v125;
    if (v62 == v121)
    {

      goto LABEL_43;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000F5684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v3 = a2;
  v5 = type metadata accessor for FMIPItemState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v20 = sub_1004FA9E0(a1, v3);
  v22 = v12;
  v23 = v13;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_1000F6DC0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  if ((v14 & 1) == 0)
  {
    v16 = sub_1000F4790(a1, v19);
    if (v17)
    {
      v21._countAndFlagsBits = 10;
      v21._object = 0xE100000000000000;
      String.append(_:)(*&v16);

      String.append(_:)(v21);
    }
  }

  return v20;
}

uint64_t sub_1000F5878(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v45 = *&a5;
  v8 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for FMIPItemState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_1000F6DC0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  if (v18)
  {
    v20 = [objc_opt_self() mainBundle];
    v46._object = 0x8000000100579A00;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    v21._object = 0x800000010057DF50;
    v22.value._object = 0x80000001005799E0;
    v46._countAndFlagsBits = 0xD000000000000018;
    v22.value._countAndFlagsBits = 0xD000000000000013;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v46);

    return -1;
  }

  FMIPItem.location.getter();
  v25 = type metadata accessor for FMIPLocation();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_100012DF0(v10, &unk_1006C0220, qword_100553770);
    return 0;
  }

  v27 = FMIPLocation.location.getter();
  (*(v26 + 8))(v10, v25);
  if (a2)
  {
    v28 = qword_1006AEC58;
    v29 = a2;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = [qword_1006D48A8 localizedDistanceFromLocation:v27 toLocation:{v29, v44}];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v27 distanceFromLocation:v29];
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v31 > -9.22337204e18)
    {
      if (v31 < 9.22337204e18)
      {
        v17 = v31;
        if (!a4)
        {
          goto LABEL_15;
        }

        *&v32 = COERCE_DOUBLE(sub_1000FF754(v45));
        if (!v33)
        {
          goto LABEL_15;
        }

        a4 = v33;
        v45 = *&v32;

        v31 = *&v44;
        if (qword_1006AEA98 == -1)
        {
LABEL_14:
          v34 = [qword_1006B1928 stringFromDistance:?];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = [objc_opt_self() mainBundle];
          v47._object = 0x800000010057DF30;
          v39._countAndFlagsBits = 0x415045535F415445;
          v39._object = 0xED0000524F544152;
          v47._countAndFlagsBits = 0xD00000000000001FLL;
          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v47);

          sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_100552210;
          *(v41 + 56) = &type metadata for String;
          v42 = sub_10008EE84();
          *(v41 + 32) = v35;
          *(v41 + 40) = v37;
          *(v41 + 96) = &type metadata for String;
          *(v41 + 104) = v42;
          v43 = v45;
          *(v41 + 64) = v42;
          *(v41 + 72) = v43;
          *(v41 + 80) = a4;
          String.init(format:_:)();

LABEL_15:

          return v17;
        }

LABEL_20:
        *&v44 = v31;
        swift_once();
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  return 0;
}

id sub_1000F5E0C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B1AA8, &qword_100554140);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  sub_10007EBC0(&unk_1006BA700, &qword_100554148);
  inited = swift_initStackObject();
  v74 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSForegroundColorAttributeName;
  v13 = objc_opt_self();
  v14 = NSForegroundColorAttributeName;
  *(inited + 40) = [v13 secondaryLabelColor];
  v73 = sub_1001532F8(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B1AB0, &unk_100554150);
  v15 = objc_allocWithZone(NSMutableAttributedString);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithString:v16];

  v72 = a1;
  FMIPItem.productType.getter();
  v18 = (*(v3 + 88))(v5, v2);
  v66 = v17;
  if (v18 != enum case for FMIPProductType.b389(_:))
  {
    (*(v3 + 8))(v5, v2);
LABEL_5:
    v21 = v73;
    v22 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
    goto LABEL_6;
  }

  (*(v3 + 96))(v5, v2);
  sub_100035318(v5, v11, &qword_1006B1AA8, &qword_100554140);
  sub_100007204(v11, v8, &qword_1006B1AA8, &qword_100554140);
  v19 = type metadata accessor for FMIPB389ProductInformation();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_100012DF0(v11, &qword_1006B1AA8, &qword_100554140);
    sub_100012DF0(v8, &qword_1006B1AA8, &qword_100554140);
    goto LABEL_5;
  }

  v56 = FMIPB389ProductInformation.modelName.getter();
  v58 = v57;
  (*(v20 + 8))(v8, v19);
  v59 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v59 = v56 & 0xFFFFFFFFFFFFLL;
  }

  v22 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
  if (v59)
  {
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = String._bridgeToObjectiveC()();

    v62 = [v60 initWithString:v61];

    [v17 appendAttributedString:v62];
    v63 = objc_allocWithZone(NSAttributedString);
    v64 = String._bridgeToObjectiveC()();
    v65 = [v63 initWithString:v64];

    [v17 appendAttributedString:v65];
    sub_100012DF0(v11, &qword_1006B1AA8, &qword_100554140);
  }

  else
  {
    sub_100012DF0(v11, &qword_1006B1AA8, &qword_100554140);
  }

  v21 = v73;
LABEL_6:
  v70 = objc_opt_self();
  v23 = [v70 mainBundle];
  v69 = 0x8000000100579A00;
  v77._object = 0x8000000100579A00;
  v24._countAndFlagsBits = 0xD000000000000019;
  v24._object = 0x800000010057DEF0;
  v71 = "CLEAR_TAGS_MESSAGE";
  v25.value._object = 0x80000001005799E0;
  v77._countAndFlagsBits = 0xD000000000000018;
  v25.value._countAndFlagsBits = 0xD000000000000013;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v77);

  v68 = sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v27 = swift_allocObject();
  *(v27 + 16) = v74;
  v28 = FMIPItem.serialNumber.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v67 = sub_10008EE84();
  *(v27 + 64) = v67;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v76[2] = String.init(format:_:)();
  v76[3] = v31;
  v76[0] = 48;
  v76[1] = 0xE100000000000000;
  v75[0] = 12045360;
  v75[1] = 0xA300000000000000;
  v32 = sub_100035F3C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v76, v75, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v32, v32, v32);

  v33 = objc_allocWithZone(v22[448]);
  v34 = String._bridgeToObjectiveC()();

  v73 = [v33 initWithString:v34];

  sub_1000F0E5C(v21, &qword_1006C0000, UIColor_ptr);
  type metadata accessor for Key(0);
  sub_1000F6DC0(&qword_1006AF370, type metadata accessor for Key, &unk_100551F90);
  v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = String.count.getter();

  if (__OFSUB__(v36, 2))
  {
    __break(1u);
  }

  else
  {
    [v73 addAttributes:v35.super.isa range:{0, v36 - 2}];

    v38 = [v70 mainBundle];
    v78._object = v69;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    v39._object = 0x800000010057DF10;
    v40.value._object = (v71 | 0x8000000000000000);
    v78._countAndFlagsBits = 0xD000000000000018;
    v40.value._countAndFlagsBits = 0xD000000000000013;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v78);

    v42 = swift_allocObject();
    *(v42 + 16) = v74;
    v43 = FMIPItem.systemVersion.getter();
    v44 = v67;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v44;
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    String.init(format:_:)();
    v46 = objc_allocWithZone(v22[448]);
    v47 = String._bridgeToObjectiveC()();

    v48 = [v46 initWithString:v47];

    sub_1000F0E5C(v21, &qword_1006C0000, UIColor_ptr);

    v49.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = String.count.getter();

    if (!__OFSUB__(v50, 2))
    {
      [v48 addAttributes:v49.super.isa range:{0, v50 - 2}];

      v51 = v66;
      v52 = v73;
      [v66 appendAttributedString:v73];
      v53 = objc_allocWithZone(NSAttributedString);
      v54 = String._bridgeToObjectiveC()();
      v55 = [v53 initWithString:v54];

      [v51 appendAttributedString:v55];
      [v51 appendAttributedString:v48];

      return v51;
    }
  }

  __break(1u);
  return result;
}