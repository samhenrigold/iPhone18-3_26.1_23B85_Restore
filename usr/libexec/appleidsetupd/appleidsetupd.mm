int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Daemon();
  sub_100001928(v6, qword_100010280);
  v7 = sub_10000198C(v6, qword_100010280);
  v8 = objc_autoreleasePoolPush();
  sub_1000019C4(v7);
  objc_autoreleasePoolPop(v8);
  TaskPriority.init(rawValue:)();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100003178(0, 0, v5, &unk_10000A508, v10);

  sub_10000387C(v5, &qword_100010298, &qword_10000A4F8);
  v11 = [objc_opt_self() currentRunLoop];
  [v11 run];

  return 0;
}

uint64_t sub_1000018E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001928(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000198C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000019C4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for Logger();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AppleIDSetupFeature();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 104);
  v11(v10, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v7);
  v12 = AppleIDSetupFeature.isFeatureEnabled.getter();
  v13 = *(v8 + 8);
  v13(v10, v7);
  if (v12)
  {
    static AISLogger.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Registering client/server SK", v16, 2u);
    goto LABEL_7;
  }

  v11(v10, enum case for AppleIDSetupFeature.ageMigration(_:), v7);
  v17 = AppleIDSetupFeature.isFeatureEnabled.getter();
  v13(v10, v7);
  if (v17)
  {
    static AISLogger.daemon.getter();
    v14 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v18))
    {
      v6 = v4;
      goto LABEL_10;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v14, v18, "Registering client/server SK for age migration", v19, 2u);
    v6 = v4;
LABEL_7:

LABEL_10:

    (*(v22 + 8))(v6, v23);
    static RuntimeDependencies.configureV1AppleIDSetupClient(withInit:)();
    static RuntimeDependencies.configureV1AppleIDSetupServer(withInit:)();
  }

  return Daemon.init()();
}

uint64_t sub_100001D74(uint64_t a1)
{
  v2 = type metadata accessor for BLEDevice();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v54 - v6;
  v7 = type metadata accessor for DiscoveryModel.CodeType();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BleAdvertisementFlags();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v60 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v59 = AppleIDSetupBaseConfig.reversePairing.getter();
  v20 = AppleIDSetupBaseConfig.fixedPin.getter();
  v57 = v21;
  v58 = v20;
  v22 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v55 = v23;
  v56 = v22;
  v63 = v12;
  v24 = v16;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  v68 = v9;
  AppleIDSetupBaseConfig.pinType.getter();
  v25 = v64;
  (*(v5 + 16))(v64, a1, v4);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v61 = swift_allocObject();
  v62 = v5;
  (*(v5 + 32))(v61 + v26, v25, v4);
  sub_100003A88(0, &qword_1000102F8, SKSetupAppleIDSignInClient_ptr);
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000018E0(&qword_1000102E8, &unk_10000A598);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = *(*v28 + 192);
  v30 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v31 = sub_1000018E0(&qword_1000102D8, &qword_10000A590);
  v32 = v28 + v29;
  v33 = v30;
  v35 = v71;
  v34 = v72;
  (*(*(v31 - 8) + 104))(v32, v33, v31);
  *(v28 + 112) = v27;
  *(v28 + 120) = v19;
  v64 = v18;
  sub_100003814(v18, v24, &qword_1000102C8, &qword_10000A588);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    v36 = v27;
    v37 = v19;
    v38 = 0;
  }

  else
  {
    (*(v35 + 32))(v65, v24, v34);
    v39 = v27;
    v40 = v19;
    v41 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v43 = v42;
    v38 = [objc_allocWithZone(SKDevice) init];
    [v38 setBlePSM:v41];
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v38 setIdentifier:v44];

    (*(v71 + 8))(v65, v72);
  }

  *(v28 + 128) = v38;
  *(v28 + 136) = v60 & 1;
  *(v28 + 137) = v59 & 1;
  v45 = v57;
  *(v28 + 144) = v58;
  *(v28 + 152) = v45;
  v46 = v55;
  *(v28 + 160) = v56;
  *(v28 + 168) = v46;
  v47 = v66;
  v48 = v67;
  v49 = v63;
  (*(v66 + 16))(v28 + direct field offset for SetupBase.advertisementFlags, v63, v67);
  v50 = v68;
  v51 = DiscoveryModel.CodeType.into()();

  (*(v62 + 8))(a1, v4);
  (*(v69 + 8))(v50, v70);
  (*(v47 + 8))(v49, v48);
  sub_10000387C(v64, &qword_1000102C8, &qword_10000A588);
  *(v28 + 176) = v51;
  v52 = v61;
  *(v28 + 184) = sub_1000039BC;
  *(v28 + 192) = v52;
  return v28;
}

uint64_t sub_1000023DC(uint64_t a1)
{
  v2 = type metadata accessor for BLEDevice();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v54 - v6;
  v7 = type metadata accessor for DiscoveryModel.CodeType();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BleAdvertisementFlags();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v60 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v59 = AppleIDSetupBaseConfig.reversePairing.getter();
  v20 = AppleIDSetupBaseConfig.fixedPin.getter();
  v57 = v21;
  v58 = v20;
  v22 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v55 = v23;
  v56 = v22;
  v63 = v12;
  v24 = v16;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  v68 = v9;
  AppleIDSetupBaseConfig.pinType.getter();
  v25 = v64;
  (*(v5 + 16))(v64, a1, v4);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v61 = swift_allocObject();
  v62 = v5;
  (*(v5 + 32))(v61 + v26, v25, v4);
  sub_100003A88(0, &qword_1000102D0, SKSetupAppleIDSignInServer_ptr);
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000018E0(&qword_1000102B8, &qword_10000A580);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = *(*v28 + 192);
  v30 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v31 = sub_1000018E0(&qword_1000102D8, &qword_10000A590);
  v32 = v28 + v29;
  v33 = v30;
  v35 = v71;
  v34 = v72;
  (*(*(v31 - 8) + 104))(v32, v33, v31);
  *(v28 + 112) = v27;
  *(v28 + 120) = v19;
  v64 = v18;
  sub_100003814(v18, v24, &qword_1000102C8, &qword_10000A588);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    v36 = v27;
    v37 = v19;
    v38 = 0;
  }

  else
  {
    (*(v35 + 32))(v65, v24, v34);
    v39 = v27;
    v40 = v19;
    v41 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v43 = v42;
    v38 = [objc_allocWithZone(SKDevice) init];
    [v38 setBlePSM:v41];
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v38 setIdentifier:v44];

    (*(v71 + 8))(v65, v72);
  }

  *(v28 + 128) = v38;
  *(v28 + 136) = v60 & 1;
  *(v28 + 137) = v59 & 1;
  v45 = v57;
  *(v28 + 144) = v58;
  *(v28 + 152) = v45;
  v46 = v55;
  *(v28 + 160) = v56;
  *(v28 + 168) = v46;
  v47 = v66;
  v48 = v67;
  v49 = v63;
  (*(v66 + 16))(v28 + direct field offset for SetupBase.advertisementFlags, v63, v67);
  v50 = v68;
  v51 = DiscoveryModel.CodeType.into()();

  (*(v62 + 8))(a1, v4);
  (*(v69 + 8))(v50, v70);
  (*(v47 + 8))(v49, v48);
  sub_10000387C(v64, &qword_1000102C8, &qword_10000A588);
  *(v28 + 176) = v51;
  v52 = v61;
  *(v28 + 184) = sub_1000037F8;
  *(v28 + 192) = v52;
  return v28;
}

uint64_t sub_100002A74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, a1);
  v16 = a2(v14);
  a6[3] = sub_1000018E0(a3, a4);
  result = sub_100003AD0(a5, a3, a4, &protocol conformance descriptor for SetupBase<A, B>);
  a6[4] = result;
  *a6 = v16;
  return result;
}

uint64_t sub_100002BD8()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Daemon();
  sub_10000198C(v2, qword_100010280);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100002CDC;

  return Daemon.start()();
}

uint64_t sub_100002CDC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002E18, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100002E18(uint64_t a1)
{
  static AISLogger.daemon.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to start daemon: %@", v4, 0xCu);
    sub_10000387C(v5, &qword_1000102A8, &qword_10000A570);
  }

  else
  {
  }

  (*(v1[3] + 8))(v1[4], v1[2]);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100002FA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002FD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003084;

  return sub_100002BD8();
}

uint64_t sub_100003084()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003814(a3, v25 - v10, &qword_100010298, &qword_10000A4F8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000387C(v11, &qword_100010298, &qword_10000A4F8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t variable initialization expression of SetupBase.state@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BluetoothBaseState.unactivated<A>(_:);
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void type metadata accessor for CUPasswordType()
{
  if (!qword_1000102A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000102A0);
    }
  }
}

uint64_t sub_100003508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v13 = AppleIDSetupBaseConfig.stateHandler.getter();
  v15[3] = sub_1000018E0(a5, a6);
  v15[4] = sub_100003AD0(a7, a5, a6, &protocol conformance descriptor for SetupBase<A, B>);
  v15[0] = a1;

  v13(v15, a2, a3);

  return sub_1000038DC(v15);
}

_DWORD *sub_1000035E8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100003604()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000363C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003B20;

  return sub_100006FB0(a1, v4);
}

uint64_t sub_1000036F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003084;

  return sub_100006FB0(a1, v4);
}

uint64_t sub_1000037AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000018E0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000387C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000018E0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000038DC(void *a1)
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

uint64_t sub_100003928()
{
  v1 = sub_1000018E0(&qword_1000102B0, &qword_10000A578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003A88(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003AD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000037AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SetupBase.__allocating_init(with:)(uint64_t a1)
{
  v2 = sub_100008504(a1);
  v3 = type metadata accessor for AppleIDSetupBaseConfig();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

void *SetupBase.peerDevice.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t SetupBase.fixedPin.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t SetupBase.targetAuthTag.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t SetupBase.stateHandler.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t SetupBase.advertisementFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for SetupBase.advertisementFlags;
  v4 = type metadata accessor for BleAdvertisementFlags();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100003CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 192);
  swift_beginAccess();
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100003DB0(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for MessageSessionTransport();
  v4 = type metadata accessor for BluetoothBaseState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 23);
  v9 = *(v3 + 192);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v9], v4);
  v8(v1, a1, v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t SetupBase.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  type metadata accessor for MessageSessionTransport();
  v4 = type metadata accessor for BluetoothBaseState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100003FE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 96);
  type metadata accessor for AppleIDSetupBaseConfig();
  v9 = AppleIDSetupBaseConfig.stateHandler.getter();
  v11[3] = type metadata accessor for SetupBase(0, *(v6 + 80), v7, v8);
  v11[4] = swift_getWitnessTable();
  v11[0] = a1;

  v9(v11, a2, a3);

  return sub_1000038DC(v11);
}

uint64_t SetupBase.__allocating_init(base:queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = sub_10000843C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v15;
}

uint64_t SetupBase.init(base:queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = sub_100008024(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v15;
}

id SKDevice.init(blePsm:identifier:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setBlePSM:a1];
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setIdentifier:v6];

  return v5;
}

id *SetupBase.deinit()
{
  [v0[14] invalidate];

  v1 = direct field offset for SetupBase.advertisementFlags;
  v2 = type metadata accessor for BleAdvertisementFlags();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 24);
  type metadata accessor for MessageSessionTransport();
  v4 = type metadata accessor for BluetoothBaseState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SetupBase.__deallocating_deinit()
{
  SetupBase.deinit();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SetupBase.activate()()
{
  v34 = *v0;
  v1 = v34;
  v2 = v34[11];
  v35 = v34[12];
  v36 = v2;
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = v1[24];
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v10, v3);
  LODWORD(v1) = (*(v4 + 88))(v9, v3);
  v11 = enum case for BluetoothBaseState.unactivated<A>(_:);
  v12 = *(v4 + 8);
  v12(v9, v3);
  if (v1 == v11)
  {
    (*(v4 + 104))(v7, enum case for BluetoothBaseState.activating<A>(_:), v3);
    sub_100008808(v7);
    v12(v7, v3);
    v13 = *(v0 + 112);
    if (*(v0 + 152))
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v13 setPassword:v14];

    v16 = *(v0 + 168);
    if (v16)
    {
      v17 = *(v0 + 160);

      v18 = sub_100004980(v17, v16);
      v20 = v19;
      v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008CB8(v18, v20);
    }

    else
    {
      v21.super.isa = 0;
    }

    [v13 setAuthTagOverride:v21.super.isa];

    [v13 setPasswordType:*(v0 + 176)];
    v41 = sub_100008990;
    v42 = v0;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100004EA0;
    v40 = &unk_10000C950;
    v22 = _Block_copy(&aBlock);

    [v13 setEventHandler:v22];
    _Block_release(v22);
    v41 = sub_1000089AC;
    v42 = v0;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100004F08;
    v40 = &unk_10000C978;
    v23 = _Block_copy(&aBlock);

    [v13 setPasswordTypeChangedHandler:v23];
    _Block_release(v23);
    [v13 setBluetoothUseCase:393219];
    [v13 setDispatchQueue:*(v0 + 120)];
    [v13 setPeerDevice:*(v0 + 128)];
    [v13 setPersistentPairing:*(v0 + 136)];
    [v13 setReversePairing:*(v0 + 137)];
    v24 = String._bridgeToObjectiveC()();
    [v13 setLabel:v24];

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = v13;
      [v26 setNearbyActionType:95];
      sub_1000018E0(qword_100010308, &qword_10000A5F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10000A5D0;
      *(v28 + 32) = BleAdvertisementFlags.rawValue.getter();
      v29 = sub_100008C08(v28);
      v31 = v30;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008CB8(v29, v31);
      [v26 setNearbyActionExtraData:isa];
    }

    [v13 activate];
  }

  else
  {
    type metadata accessor for SetupBase.Failure(0, v34[10], v36, v35);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }
}

uint64_t sub_100004980(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_1000018E0(&qword_100010428, &qword_10000A878);
  if (swift_dynamicCast())
  {
    sub_1000098D8(__src, &v43);
    sub_1000098F0(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_1000038DC(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000387C(__src, &qword_100010430, &qword_10000A880);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10000782C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100008A68(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_1000078F4(sub_100009808, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100007F58(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100007F58(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_1000098C4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000098C4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100009870(*&__src[0], *(&__src[0] + 1));

  sub_100008CB8(v32, *(&v32 + 1));
  return v32;
}

void sub_100004EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100004F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100004F6C(void *a1)
{
  v43[1] = *v1;
  v3 = type metadata accessor for Logger();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = __chkstk_darwin(v3);
  v44 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v43 - v6;
  type metadata accessor for MessageSessionTransport();
  v8 = type metadata accessor for BluetoothBaseState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  v15 = [a1 eventType];
  if (v15 > 40)
  {
    if (v15 <= 119)
    {
      if (v15 != 41)
      {
        if (v15 == 110)
        {
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (!v20)
          {
            return;
          }

          v21 = v20;
          v46 = a1;
          sub_100005A48(v21);
          goto LABEL_25;
        }

        goto LABEL_32;
      }

      v19 = &enum case for BluetoothBaseState.connectionEnded<A>(_:);
    }

    else
    {
      if (v15 == 120)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (!v22)
        {
          return;
        }

        v23 = v22;
        v46 = a1;
        sub_100005C14(v23);
        goto LABEL_25;
      }

      if (v15 != 140)
      {
        if (v15 == 300)
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (!v16)
          {
            return;
          }

          v17 = v16;
          v46 = a1;
          sub_1000092A4(v17);
LABEL_25:
          v24 = v46;

          return;
        }

        goto LABEL_32;
      }

      __chkstk_darwin(v15);
      v43[-2] = v1;
      v43[-1] = a1;
      sub_1000018E0(&qword_100010410, &qword_10000A860);
      sub_10000560C(sub_100009738, v14);
      v19 = &enum case for BluetoothBaseState.paired<A>(_:);
    }

LABEL_30:
    (*(v9 + 104))(v14, *v19, v8);
    sub_100008808(v14);
    (*(v9 + 8))(v14, v8);
    return;
  }

  if (v15 > 29)
  {
    if (v15 == 30)
    {
      v19 = &enum case for BluetoothBaseState.invalidated<A>(_:);
      goto LABEL_30;
    }

    if (v15 == 40)
    {
      v19 = &enum case for BluetoothBaseState.connectionStarted<A>(_:);
      goto LABEL_30;
    }

LABEL_32:
    static AISLogger.setup.getter();
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not handling unexpected event: %@", v28, 0xCu);
      sub_10000387C(v29, &qword_1000102A8, &qword_10000A570);
    }

    v31 = v46;
    v32 = *(v45 + 8);
    v32(v7, v46);
    v33 = [v25 error];
    v34 = v44;
    if (v33)
    {
      v35 = v33;
      static AISLogger.setup.getter();
      v36 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v36;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&_mh_execute_header, v37, v38, "Received event with error: %@", v39, 0xCu);
        sub_10000387C(v40, &qword_1000102A8, &qword_10000A570);
      }

      else
      {
        v41 = v37;
        v37 = v36;
      }

      v32(v34, v31);
    }

    return;
  }

  if (v15 == 10)
  {
    v19 = &enum case for BluetoothBaseState.activated<A>(_:);
    goto LABEL_30;
  }

  if (v15 != 20)
  {
    goto LABEL_32;
  }

  v18 = [a1 error];
  if (v18)
  {
    swift_willThrow();
  }

  *v12 = v18;
  v12[8] = v18 != 0;
  (*(v9 + 104))(v12, enum case for BluetoothBaseState.completed<A>(_:), v8);
  sub_100008808(v12);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_10000560C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_1000057C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v20 = *a1;
  v21 = v4;
  v8 = v20[11];
  v9 = v20[12];
  v10 = type metadata accessor for MessageSessionTransport();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  if ([*(a1 + 112) messageSessionTemplate])
  {
    ProximityAppleIDSetupBaseIdentifier.getter();
    MessageSessionTransport.init(templateSession:identifier:)();
    v15 = *(v10 - 8);
    if ((*(v15 + 48))(v14, 1, v10) != 1)
    {
      return (*(v15 + 32))(a4, v14, v10);
    }

    (*(v12 + 8))(v14, v11);
  }

  v16 = [a2 error];
  if (!v16)
  {
    type metadata accessor for SetupBase.Failure(0, v20[10], v8, v9);
    swift_getWitnessTable();
    v16 = swift_allocError();
    *v17 = 0;
  }

  v18 = v16;
  result = swift_willThrow();
  *v22 = v18;
  return result;
}

id sub_100005A48(void *a1)
{
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  result = [a1 password];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [a1 passwordType];
    v13 = *(v1 + 176);
    if (v12)
    {
      v13 = v12;
    }

    *v6 = v9;
    *(v6 + 1) = v11;
    *(v6 + 4) = v13;
    v14 = enum case for BluetoothBasePairingState.present(_:);
    v15 = type metadata accessor for BluetoothBasePairingState();
    (*(*(v15 - 8) + 104))(v6, v14, v15);
    (*(v4 + 104))(v6, enum case for BluetoothBaseState.pairing<A>(_:), v3);
    sub_100008808(v6);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100005C14(void *a1)
{
  v3 = *v1;
  v23 = *(*v1 + 88);
  v22 = *(v3 + 96);
  type metadata accessor for MessageSessionTransport();
  v24 = type metadata accessor for BluetoothBaseState();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v21 - v5;
  v7 = [a1 passwordType];
  v8 = v1[44];
  v9 = [a1 pairingFlags];
  v10 = [a1 throttleSeconds];
  v11 = 1000000000000000000 * v10;
  v12 = (__PAIR128__(v10 >> 31, v10) * 0xDE0B6B3A7640000) >> 64;
  if (v7)
  {
    v8 = v7;
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v3 + 80);
  v15 = v22;
  v14[3] = v23;
  v14[4] = v15;
  v14[5] = v13;
  v14[6] = a1;
  *v6 = v8;
  *(v6 + 1) = v9;
  *(v6 + 1) = v11;
  *(v6 + 2) = v12;
  *(v6 + 3) = sub_100009290;
  *(v6 + 4) = v14;
  v16 = enum case for BluetoothBasePairingState.request(_:);
  v17 = type metadata accessor for BluetoothBasePairingState();
  (*(*(v17 - 8) + 104))(v6, v16, v17);
  v18 = v24;
  (*(v4 + 104))(v6, enum case for BluetoothBaseState.pairing<A>(_:), v24);

  v19 = a1;
  sub_100008808(v6);
  (*(v4 + 8))(v6, v18);
}

void sub_100005E94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000666C(a1, a5);
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(SKAuthenticationResponseEvent);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 initWithPassword:v10];

      [*(v8 + 112) postEvent:v11];
    }
  }
}

uint64_t sub_100005F94(int a1)
{
  v2 = v1;
  v57 = a1;
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v58 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v54 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v52 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  static AISLogger.setup.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v55 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v53 = v3;
    v21 = v20;
    v52 = swift_slowAlloc();
    v61[0] = v52;
    *v21 = 136315138;
    LODWORD(v60) = v57;
    type metadata accessor for CUPasswordType();
    v22 = String.init<A>(describing:)();
    v24 = sub_100007284(v22, v23, v61);

    *(v21 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Password type changed to %s", v21, 0xCu);
    sub_1000038DC(v52);

    v3 = v53;
  }

  v25 = *(v9 + 8);
  v25(v16, v8);
  v26 = *(*v2 + 192);
  swift_beginAccess();
  v27 = v58;
  (*(v58 + 16))(v7, v2 + v26, v3);
  v28 = (*(v27 + 88))(v7, v3);
  if (v28 == enum case for BluetoothBaseState.pairing<A>(_:))
  {
    v29 = v28;
    v53 = v25;
    (*(v27 + 96))(v7, v3);
    v30 = v3;
    v3 = type metadata accessor for BluetoothBasePairingState();
    v31 = *(v3 - 8);
    v32 = (*(v31 + 88))(v7, v3);
    if (v32 == enum case for BluetoothBasePairingState.present(_:))
    {
      v33 = v32;
      (*(v31 + 96))(v7, v3);
      v34 = *v7;
      v35 = *(v7 + 1);
      LODWORD(v56) = *(v7 + 4);
      v36 = v54;
      *v54 = v34;
      *(v36 + 8) = v35;
      *(v36 + 16) = v57;
      (*(v31 + 104))(v36, v33, v3);
      (*(v27 + 104))(v36, v29, v30);
      sub_100008808(v36);
      (*(v27 + 8))(v36, v30);
      v37 = v55;
      static AISLogger.setup.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v40 = 136315394;
        v59 = v56;
        type metadata accessor for CUPasswordType();
        v41 = String.init<A>(describing:)();
        v43 = sub_100007284(v41, v42, &v60);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        v59 = v57;
        v44 = String.init<A>(describing:)();
        v46 = sub_100007284(v44, v45, &v60);

        *(v40 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Updated password pairing type from %s to %s", v40, 0x16u);
        swift_arrayDestroy();
      }

      return v53(v37, v8);
    }

    v27 = v31;
    v25 = v53;
  }

  (*(v27 + 8))(v7, v3);
  v47 = v56;
  static AISLogger.setup.getter();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Unable to update password pairing type", v50, 2u);
  }

  return (v25)(v47, v8);
}

uint64_t sub_10000666C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AISLogger.setup.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Changing password to %d", v15, 8u);
  }

  (*(v10 + 8))(v12, v9);
  [*(v3 + 112) setPasswordType:a1];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v3;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;

  v18 = a2;
  sub_100006A18(0, 0, v8, &unk_10000A848, v17);
}

uint64_t sub_1000068C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_1000068EC, 0, 0);
}

uint64_t sub_1000068EC()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = [objc_allocWithZone(SKAuthenticationRequestEvent) initWithPasswordType:*(v0 + 40) pairingFlags:objc_msgSend(*(v0 + 24) throttleSeconds:{"pairingFlags"), objc_msgSend(*(v0 + 24), "throttleSeconds")}];

  return _swift_task_switch(sub_1000069AC, v1, 0);
}

uint64_t sub_1000069AC()
{
  v1 = *(v0 + 32);
  sub_100005C14(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100006A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000018E0(&qword_100010298, &qword_10000A4F8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003814(a3, v25 - v10, &qword_100010298, &qword_10000A4F8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000387C(v11, &qword_100010298, &qword_10000A4F8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000387C(a3, &qword_100010298, &qword_10000A4F8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000387C(a3, &qword_100010298, &qword_10000A4F8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Int sub_100006D50(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100006DB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100006D28(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_100006E2C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_100008504(a1);
  v6 = type metadata accessor for AppleIDSetupBaseConfig();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = v5;
  return result;
}

uint64_t sub_100006EA4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100006EC4, v2, 0);
}

uint64_t sub_100006EC4()
{
  SetupBase.activate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006F64(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100006FB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000070A8;

  return v6(a1);
}

uint64_t sub_1000070A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000071A0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100007200(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100007210(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_100007284(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007350(v11, 0, 0, 1, a1, a2);
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
    sub_1000091B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000038DC(v11);
  return v7;
}

unint64_t sub_100007350(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000745C(a5, a6);
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

char *sub_10000745C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000074A8(a1, a2);
  sub_1000075D8(&off_10000C840);
  return v3;
}

char *sub_1000074A8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000076C4(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000076C4(v10, 0);
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

uint64_t sub_1000075D8(uint64_t result)
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

  result = sub_100007738(result, v11, 1, v3);
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

void *sub_1000076C4(uint64_t a1, uint64_t a2)
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

  sub_1000018E0(qword_100010308, &qword_10000A5F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007738(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000018E0(qword_100010308, &qword_10000A5F0);
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

uint64_t *sub_10000782C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1000089B0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1000078F4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100008CB8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100008CB8(v7, v6);
    *v4 = xmmword_10000A5E0;
    sub_100008CB8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_100007D98(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100008CB8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_10000A5E0;
    sub_100008CB8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100007D98(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_100007C98@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000089B0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100008B08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100008B84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100007D2C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100007D98(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_100007E4C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100007E90(a1, v4);
}

unint64_t sub_100007E90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000097AC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009758(v8);
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

unint64_t sub_100007F58(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100007FD4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008024(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v53 = a4;
  v54 = a5;
  v61 = a12;
  v62 = a13;
  v58 = a11;
  v59 = a10;
  v51 = a2;
  v52 = a9;
  v17 = type metadata accessor for BLEDevice();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  __chkstk_darwin(v21 - 8);
  v23 = &v50 - v22;
  swift_defaultActor_initialize();
  v24 = *(*v14 + 192);
  v25 = enum case for BluetoothBaseState.unactivated<A>(_:);
  type metadata accessor for MessageSessionTransport();
  v26 = type metadata accessor for BluetoothBaseState();
  v27 = v14 + v24;
  v28 = v51;
  (*(*(v26 - 8) + 104))(v27, v25, v26);
  *(v14 + 112) = a1;
  *(v14 + 120) = v28;
  v60 = a3;
  v29 = a3;
  v30 = v18;
  sub_100003814(v29, v23, &qword_1000102C8, &qword_10000A588);
  if ((*(v18 + 48))(v23, 1, v17) == 1)
  {
    v31 = a1;
    v32 = v28;
    v33 = 0;
  }

  else
  {
    (*(v18 + 32))(v20, v23, v17);
    v34 = a1;
    v35 = v28;
    v36 = BLEDevice.proximityServicePSM.getter();
    BLEDevice.identifier.getter();
    v38 = v37;
    v33 = [objc_allocWithZone(SKDevice) init];
    [v33 setBlePSM:v36];
    if (v38)
    {
      v39 = String._bridgeToObjectiveC()();
    }

    else
    {
      v39 = 0;
    }

    [v33 setIdentifier:v39];

    (*(v30 + 8))(v20, v17);
  }

  *(v14 + 128) = v33;
  *(v14 + 136) = v53 & 1;
  *(v14 + 137) = v54 & 1;
  v40 = v56;
  *(v14 + 144) = v55;
  *(v14 + 152) = v40;
  v41 = v52;
  *(v14 + 160) = v57;
  *(v14 + 168) = v41;
  v42 = direct field offset for SetupBase.advertisementFlags;
  v43 = type metadata accessor for BleAdvertisementFlags();
  v44 = *(v43 - 8);
  v45 = v59;
  (*(v44 + 16))(v14 + v42, v59, v43);
  v46 = v58;
  LODWORD(v42) = DiscoveryModel.CodeType.into()();
  v47 = type metadata accessor for DiscoveryModel.CodeType();
  (*(*(v47 - 8) + 8))(v46, v47);
  (*(v44 + 8))(v45, v43);
  sub_10000387C(v60, &qword_1000102C8, &qword_10000A588);
  *(v14 + 176) = v42;
  v48 = v62;
  *(v14 + 184) = v61;
  *(v14 + 192) = v48;
  return v14;
}

uint64_t sub_10000843C(void *a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for SetupBase(0, v13[10], v13[11], v13[12]);
  swift_allocObject();
  return sub_100008024(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_100008504(uint64_t a1)
{
  v2 = v1;
  v4 = v2[11];
  v37 = v2[12];
  v38 = v4;
  v5 = type metadata accessor for AppleIDSetupBaseConfig();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DiscoveryModel.CodeType();
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BleAdvertisementFlags();
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000018E0(&qword_1000102C8, &qword_10000A588);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v36 = AppleIDSetupBaseConfig.queue.getter();
  AppleIDSetupBaseConfig.peerDevice.getter();
  v35 = AppleIDSetupBaseConfig.persistentPairing.getter();
  v34 = AppleIDSetupBaseConfig.reversePairing.getter();
  v18 = AppleIDSetupBaseConfig.fixedPin.getter();
  v32 = v19;
  v33 = v18;
  v20 = AppleIDSetupBaseConfig.targetAuthTag.getter();
  v30 = v21;
  v31 = v20;
  AppleIDSetupBaseConfig.advertisementFlags.getter();
  AppleIDSetupBaseConfig.pinType.getter();
  (*(v6 + 16))(v8, a1, v5);
  v22 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v37;
  v25 = v38;
  *(v23 + 2) = v2[10];
  *(v23 + 3) = v25;
  *(v23 + 4) = v24;
  (*(v6 + 32))(&v23[v22], v8, v5);
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = v36;
  v28 = sub_10000843C(v26, v36, v17, v35 & 1, v34 & 1, v33, v32, v31, v30, v14, v11, sub_100009A44, v23);

  return v28;
}

uint64_t sub_100008808(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for MessageSessionTransport();
  v4 = type metadata accessor for BluetoothBaseState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 192);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_100003DB0(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100008994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000089B0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100008A68(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100008B08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100008B84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100008C08(uint64_t a1)
{
  v9 = sub_1000018E0(&qword_100010438, &qword_10000A888);
  v10 = sub_100009954();
  v8[0] = a1;
  v2 = sub_1000098F0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100007C98(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000038DC(v8);
  return v5;
}

uint64_t sub_100008CB8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 sub_100008D78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100008D90(uint64_t a1)
{
  result = type metadata accessor for BleAdvertisementFlags();
  if (v2 <= 0x3F)
  {
    type metadata accessor for MessageSessionTransport();
    result = type metadata accessor for BluetoothBaseState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100008EF8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100008F88(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000906C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000090B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003084;

  return sub_1000068C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009180()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000091B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009218()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009250()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000092A4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 basicConfig];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v39 = 0x676E616C5FLL;
  *(&v39 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_100007E4C(&v37), (v10 & 1) == 0))
  {

    sub_100009758(&v37);
LABEL_12:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_13;
  }

  sub_1000091B8(*(v8 + 56) + 32 * v9, &v39);
  sub_100009758(&v37);

  if (!*(&v40 + 1))
  {
LABEL_13:
    sub_10000387C(&v39, &qword_100010418, &qword_10000A868);
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v37;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v38;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  v14 = [a1 basicConfig];
  if (!v14)
  {
LABEL_25:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_26;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v39 = 0x656C61636F6C5FLL;
  *(&v39 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_100007E4C(&v37), (v18 & 1) == 0))
  {

    sub_100009758(&v37);
    goto LABEL_25;
  }

  sub_1000091B8(*(v16 + 56) + 32 * v17, &v39);
  sub_100009758(&v37);

  if (!*(&v40 + 1))
  {
LABEL_26:
    sub_10000387C(&v39, &qword_100010418, &qword_10000A868);
    v20 = 0;
    v21 = 0;
    goto LABEL_27;
  }

  v19 = swift_dynamicCast();
  if (v19)
  {
    v20 = v37;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v38;
  }

  else
  {
    v21 = 0;
  }

LABEL_27:
  static AISLogger.common.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v35 = v5;
    *&v39 = v26;
    *v25 = 136315394;
    v37 = v12;
    v38 = v13;
    sub_1000018E0(&qword_100010420, &qword_10000A870);
    v27 = String.init<A>(describing:)();
    v29 = sub_100007284(v27, v28, &v39);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v37 = v20;
    v38 = v21;
    v30 = String.init<A>(describing:)();
    v32 = sub_100007284(v30, v31, &v39);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received basic config language code (%s) and locale (%s)", v25, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v35, v36);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void *sub_100009808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100007D2C(sub_100009934, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100009870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000098C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008CB8(result, a2);
  }

  return result;
}

uint64_t sub_1000098D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000098F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009954()
{
  result = qword_100010440;
  if (!qword_100010440)
  {
    sub_1000037AC(&qword_100010438, &qword_10000A888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010440);
  }

  return result;
}

uint64_t sub_1000099B8()
{
  v1 = type metadata accessor for AppleIDSetupBaseConfig();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009A44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppleIDSetupBaseConfig();

  return sub_100003FE4(a1, a2, a3);
}