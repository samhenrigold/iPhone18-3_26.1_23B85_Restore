void sub_1001B9D2C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() sharedRemoteAdminManager];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  aBlock = 0xD000000000000010;
  v14 = 0x8000000100465CF0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  v17 = sub_1001BC340;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1001BA05C;
  v16 = &unk_1004CA668;
  v11 = _Block_copy(&aBlock);

  [v6 connectToServer:0 initialClientRequestInfo:isa callback:v11];
  _Block_release(v11);
}

uint64_t sub_1001B9FE8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001BA05C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1001BA0C8(uint64_t a1, uint64_t a2, char *a3)
{
  v44 = a3;
  v5 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = type metadata accessor for ProvisioningDevice();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  __chkstk_darwin(v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001BC1A4(a2 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    (*(v6 + 16))(v8, a1, v5);
    v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = v44;
    *(v17 + 16) = v44;
    (*(v6 + 32))(v17 + v16, v8, v5);
    v50 = sub_1001BC508;
    v51 = v17;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1001BA734;
    v49 = &unk_1004CA6E0;
    v19 = _Block_copy(&aBlock);
    v20 = v18;

    [v15 removePass:v20 withCompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    (*(v45 + 32))(v11, v14, v9);
    v21 = [ProvisioningDevice.target.getter() respondsToSelector:"paymentWebService:removePass:withCompletionHandler:"];
    swift_unknownObjectRelease();
    if (v21)
    {
      v22 = ProvisioningDevice.target.getter();
      v23 = ProvisioningDevice.webService.getter();
      v24 = a1;
      v25 = v5;
      (*(v6 + 16))(v8, v24, v5);
      v26 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v27 = swift_allocObject();
      v28 = v44;
      *(v27 + 16) = v44;
      (*(v6 + 32))(v27 + v26, v8, v25);
      v50 = sub_1001BD29C;
      v51 = v27;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1001BA734;
      v49 = &unk_1004CA730;
      v29 = _Block_copy(&aBlock);
      v30 = v28;

      [v22 paymentWebService:v23 removePass:v30 withCompletionHandler:v29];
      _Block_release(v29);
      swift_unknownObjectRelease();

      (*(v45 + 8))(v11, v9);
    }

    else
    {
      v44 = v11;
      v31 = v45;
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000958E4(v32, qword_10051B240);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock = v36;
        *v35 = 136315138;
        v37 = Selector.description.getter();
        v39 = sub_1002FFA0C(v37, v38, &aBlock);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "%s not implemented by target device", v35, 0xCu);
        sub_1000752F4(v36);
      }

      v40 = v44;
      v41 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
      v42 = swift_allocError();
      *v43 = 0xD000000000000018;
      v43[1] = 0x8000000100465D50;
      (*(*(v41 - 8) + 104))(v43, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v41);
      aBlock = v42;
      CheckedContinuation.resume(throwing:)();
      (*(v31 + 8))(v40, v9);
    }
  }
}

void sub_1001BA734(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1001BA7AC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(returning:)();
    return;
  }

  swift_errorRetain();
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  swift_errorRetain();
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v20 = v10;
  *v8 = 138412546;
  swift_errorRetain();
  v11 = _swift_stdlib_bridgeErrorToNSError();
  *(v8 + 4) = v11;
  *v9 = v11;
  *(v8 + 12) = 2080;
  v12 = [v5 uniqueID];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v20);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deletion failed with error %@ for pkPass %s", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);

LABEL_9:

    v17 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    v18 = swift_allocError();
    *v19 = 0xD00000000000001ALL;
    v19[1] = 0x8000000100465D70;
    (*(*(v17 - 8) + 104))(v19, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v17);
    v20 = v18;
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(throwing:)();

    return;
  }

  __break(1u);
}

uint64_t sub_1001BAACC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = sub_100068FC4(&qword_100505C90, &qword_10040D938);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v53 = type metadata accessor for ProvisioningDevice();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() sharedService];
  if (v15)
  {
    v16 = v15;
    (*(v12 + 16))(v14, a1, v11);
    v17 = (*(v12 + 88))(v14, v11);
    if (v17 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:))
    {
      v51 = a1;
      v52 = v11;
      (*(v12 + 96))(v14, v11);
      v18 = *v14;
      v19 = enum case for ProvisioningDevice.DeviceType.phone(_:);
      v20 = type metadata accessor for ProvisioningDevice.DeviceType();
      v21 = v4;
      v22 = *(v20 - 8);
      (*(v22 + 104))(v8, v19, v20);
      (*(v22 + 56))(v8, 0, 1, v20);
      v4 = v21;
      v23 = v16;
      ProvisioningDevice.init(type:webService:)();
      v24 = v21 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration;
      v25 = v53;
      (*(v54 + 16))(v24, v10, v53);
      type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
      swift_storeEnumTagMultiPayload();
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot) = v18;
      v26 = v18;
      v27 = ProvisioningDevice.target.getter();
      if ([v27 respondsToSelector:"paymentWebService:passesOfType:"])
      {
        v28 = ProvisioningDevice.webService.getter();
        v29 = [v27 paymentWebService:v28 passesOfType:1];
        swift_unknownObjectRelease();
        if (v29)
        {
          sub_10009393C(0, &qword_100504708, PKPass_ptr);
          v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = sub_1000F1A7C(v30);

          v32 = v51;
          if (v31)
          {

            (*(v12 + 8))(v32, v52);
            (*(v54 + 8))(v10, v25);
LABEL_20:
            *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses) = v31;
            return v4;
          }

          goto LABEL_18;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v32 = v51;
LABEL_18:

      (*(v12 + 8))(v32, v52);
      (*(v54 + 8))(v10, v25);
      goto LABEL_19;
    }

    if (v17 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
    {
      v35 = *(v12 + 96);
      v52 = v11;
      v36 = v35(v14, v11);
      v37 = *v14;
      sub_1003F7018(v36);
      v39 = [objc_allocWithZone(*(v38 + 1360)) init];
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration) = v39;
      type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
      swift_storeEnumTagMultiPayload();
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot) = v37;
      v40 = v39;
      v41 = v37;
      v42 = [v40 passesOfType:1];
      if (v42)
      {
        v43 = v42;
        sub_10009393C(0, &qword_100504708, PKPass_ptr);
        v44 = a1;
        v45 = v4;
        v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = sub_1000F1A7C(v46);
        v4 = v45;
        a1 = v44;

        if (v31)
        {

          (*(v12 + 8))(v44, v52);
          goto LABEL_20;
        }
      }

      (*(v12 + 8))(a1, v52);
LABEL_19:

      v31 = _swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    *a2 = 0xD00000000000001FLL;
    a2[1] = 0x8000000100465CB0;
    v47 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v48 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v48 - 8) + 104))(a2, v47, v48);
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();

    v49 = *(v12 + 8);
    v49(a1, v11);
    v49(v14, v11);
  }

  else
  {
    *a2 = 0xD000000000000038;
    a2[1] = 0x8000000100465C70;
    v33 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v34 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v34 - 8) + 104))(a2, v33, v34);
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
    (*(v12 + 8))(a1, v11);
  }

  type metadata accessor for SEStorageManagementPassProvider(0);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1001BB294()
{
  sub_1001BC208(v0 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BB340(uint64_t a1)
{
  result = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(319);
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

void sub_1001BB45C(uint64_t a1)
{
  sub_1001BB4D0();
  if (v2 <= 0x3F)
  {
    sub_1001BB518(v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001BB4D0()
{
  if (!qword_100505C50)
  {
    v0 = type metadata accessor for ProvisioningDevice();
    if (!v1)
    {
      atomic_store(v0, &qword_100505C50);
    }
  }
}

void sub_1001BB518(double a1)
{
  if (!qword_100505C58)
  {
    sub_1003F703C(a1);
    v4 = sub_10009393C(v3, v2, (v1 + 1360));
    if (!v5)
    {
      atomic_store(v4, &qword_100505C58);
    }
  }
}

uint64_t sub_1001BB570()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BD2A0;

  return sub_1001B5090();
}

uint64_t sub_1001BB600(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BB698;

  return sub_1001B81A0(a1);
}

uint64_t sub_1001BB698(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1001BB798(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C288C;

  return sub_1001B8FD0(a1, a2, v7, v6);
}

uint64_t sub_1001BB84C()
{
  v1 = sub_1001BC760();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001BB8C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BD2A0;

  return sub_1001BC9A8(a1);
}

uint64_t sub_1001BB96C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10009393C(0, &qword_100505CB8, PKPaymentApplicationUsageSummary_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

unint64_t sub_1001BB9FC(unint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v25 = a1 & 0xC000000000000001;
  v22 = a1;
  v23 = a1 + 32;
  v31 = v26 + 16;
  v32 = (v26 + 8);
  while (1)
  {
    if (v6 == v27)
    {
      return 0;
    }

    v28 = v6;
    if (v25)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v24 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = *(v23 + 8 * v6);
    }

    v34 = v7;
    v8 = *(v29 + 16);
    if (v8)
    {
      break;
    }

LABEL_4:

    v6 = v28 + 1;
    a1 = v22;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_27;
    }
  }

  v9 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v30 = *(v26 + 72);
  v33 = *(v26 + 16);
  v33(v5, v9, v3);
  while (1)
  {
    v10 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
    v12 = v11;
    v13 = [v34 uniqueID];
    if (!v13)
    {

      (*v32)(v5, v3);
      goto LABEL_12;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v10 == v15 && v12 == v17)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v32)(v5, v3);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 += v30;
    if (!--v8)
    {
      goto LABEL_4;
    }

    v33(v5, v9, v3);
  }

  (*v32)(v5, v3);
LABEL_23:

  return v28;
}

unint64_t sub_1001BBD04(unint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = sub_1001BB9FC(*a1, a2);
  v45 = v2;
  if (v2)
  {
    return v3;
  }

  v46 = a1;
  if (v12)
  {
    if (v10 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v53 = v7 + 16;
  v54 = (v7 + 8);
  v47 = v7;
  v14 = v10;
  v49 = a2;
LABEL_11:
  if (v14 >> 62)
  {
    if (v13 == _CocoaArrayWrapper.endIndex.getter())
    {
      return v3;
    }
  }

  else if (v13 == *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v3;
  }

  v51 = v14;
  v52 = v3;
  v50 = v13;
  v48 = v14 & 0xC000000000000001;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    v15 = *(v14 + 8 * v13 + 32);
  }

  v57 = v15;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v18 = *(v47 + 16);
    v55 = *(v47 + 72);
    v56 = v18;
    v18(v9, v17, v6);
    while (1)
    {
      v19 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v21 = v20;
      v22 = [v57 uniqueID];
      if (v22)
      {
        v23 = v22;
        v24 = v9;
        v25 = v6;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v19 == v26 && v21 == v28)
        {

          v9 = v24;
          v6 = v25;
          (*v54)(v24, v25);
LABEL_33:

          a2 = v49;
          v32 = v50;
          v14 = v51;
          v3 = v52;
LABEL_48:
          v44 = __OFADD__(v32, 1);
          v13 = v32 + 1;
          if (v44)
          {
            goto LABEL_58;
          }

          goto LABEL_11;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v24;
        v6 = v25;
        (*v54)(v24, v25);
        if (v30)
        {
          goto LABEL_33;
        }
      }

      else
      {

        (*v54)(v9, v6);
      }

      v17 += v55;
      if (!--v16)
      {
        break;
      }

      v56(v9, v17, v6);
    }
  }

  v31 = v52;
  v32 = v50;
  if (v52 == v50)
  {
    a2 = v49;
    v14 = v51;
    v3 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
      goto LABEL_48;
    }
  }

  else
  {
    v14 = v51;
    if (v48)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v34 = v32;
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v36 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52 >= v36)
      {
        goto LABEL_62;
      }

      if (v50 >= v36)
      {
        goto LABEL_63;
      }

      v34 = v50;
      v37 = *(v51 + 32 + 8 * v50);
      v33 = *(v51 + 32 + 8 * v52);
      v35 = v37;
    }

    v38 = v35;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
    {
      v14 = sub_1001A291C(v14);
      v39 = (v14 >> 62) & 1;
    }

    else
    {
      LODWORD(v39) = 0;
    }

    v40 = v14 & 0xFFFFFFFFFFFFFF8;
    v41 = *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
    *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20) = v38;

    if ((v14 & 0x8000000000000000) == 0 && !v39)
    {
      v32 = v34;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v14 = sub_1001A291C(v14);
    v40 = v14 & 0xFFFFFFFFFFFFFF8;
    v32 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    if (v32 >= *(v40 + 16))
    {
      goto LABEL_60;
    }

    v42 = v40 + 8 * v32;
    v43 = *(v42 + 32);
    *(v42 + 32) = v33;

    *v46 = v14;
    a2 = v49;
    v44 = __OFADD__(v31, 1);
    v3 = v31 + 1;
    if (!v44)
    {
      goto LABEL_48;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001BC1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BC208(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BC264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BC2AC()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001BC340(uint64_t a1)
{
  sub_100068FC4(&qword_1005045B0, &qword_10040B978);

  return sub_1001B9FE8(a1);
}

uint64_t sub_1001BC3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BC3F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001BC43C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001B9878(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BC50C()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_1001BC678()
{
  result = qword_100505CB0;
  if (!qword_100505CB0)
  {
    sub_10009393C(255, &qword_100505CA8, PKPaymentApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505CB0);
  }

  return result;
}

uint64_t sub_1001BC6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1001BC760()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  type metadata accessor for SEStorageMockEntryStore();
  sub_100259A0C(v8);
  if (v0)
  {
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    (*(v3 + 32))(v9, v8, v2);
  }

  else
  {
    type metadata accessor for SEStorageMockEntryStore.Context();
    inited = swift_initStackObject();
    type metadata accessor for ModelContext();
    swift_allocObject();

    v11 = ModelContext.init(_:)();

    *(inited + 16) = v11;
    v1 = sub_100259EC4(v5);
  }

  return v1;
}

uint64_t sub_1001BC9A8(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for SERXPCInternalErrors();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for SESnapshot.TargetDevice();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001BCB2C, 0, 0);
}

uint64_t sub_1001BCB2C()
{
  v1 = v0[15];
  type metadata accessor for SEStorageMockEntryStore();
  sub_100259A0C(v1);
  v2 = v0[14];
  v3 = v0[5];
  type metadata accessor for SEStorageMockEntryStore.Context();
  inited = swift_initStackObject();
  type metadata accessor for ModelContext();
  swift_allocObject();

  v5 = ModelContext.init(_:)();

  *(inited + 16) = v5;
  sub_10025B6EC(v3, v2);

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1001BCDCC;

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t sub_1001BCDCC()
{

  if (v0)
  {

    v1 = sub_1001BD290;
  }

  else
  {
    v1 = sub_1001BCEE4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1001BCEE4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  type metadata accessor for SERXPCServer();
  (*(v2 + 104))(v1, enum case for SESnapshot.TargetDevice.currentDevice(_:), v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1001BCFC4;
  v5 = v0[11];
  v6 = v0[8];

  return sub_1002BC9B0(0, 0xF000000000000000, v5, v6);
}

uint64_t sub_1001BCFC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  v7 = (v5 + 8);
  if (v1)
  {
    (*v7)(*(v4 + 88), *(v4 + 72));

    return _swift_task_switch(sub_1001BD188, 0, 0);
  }

  else
  {
    (*v7)(*(v4 + 88), *(v4 + 72));

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1001BD188()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1001BC264(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001BD2A4()
{
  error = 0;
  v1 = *v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = SecKeyCreateSignature(v1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, &error);

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (qword_100501A50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100505CC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1001BDD98();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
    }

    else
    {
      v12 = 0xED0000726F727265;
      v10 = 0x206E776F6E6B6E55;
    }

    v13 = sub_1002FFA0C(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "SecKeyCreateSignature failed with error %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  sub_1001BDD44();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

void sub_1001BD548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100195DE8(a2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1001BE7CC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BDC18;
  aBlock[3] = &unk_1004CA7C8;
  v11 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v11);
}

void sub_1001BD730(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_100505CC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31[0] = v7;
      *v6 = 136446210;
      v8 = _convertErrorToNSError(_:)();
      v9 = [v8 debugDescription];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1002FFA0C(v10, v12, v31);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Device Identity Error %{public}s", v6, 0xCu);
      sub_1000752F4(v7);
    }

    sub_1001BDD44();
    v14 = swift_allocError();
    *v15 = 2;
    v31[0] = v14;
    sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    if (a2 && *(a2 + 16) == 2)
    {
      sub_1000754F0(a2 + 32, v31);
      type metadata accessor for SecCertificate(0);
      swift_dynamicCast();
      sub_1000754F0(a2 + 64, v31);
      swift_dynamicCast();
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10040DA10;
      *(v18 + 32) = v30;
      *(v18 + 40) = v30;
      v31[0] = a1;
      v31[1] = v18;
      sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (qword_100501A50 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_100505CC8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Device Identity returned nil/empty certificates", v22, 2u);
      }

      sub_1001BDD44();
      v23 = swift_allocError();
      *v24 = 2;
      v31[0] = v23;
      sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_100505CC8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Device Identity returned nil reference key", v28, 2u);
    }

    sub_1001BDD44();
    swift_allocError();
    *v29 = 2;
    sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001BDC18(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_1001BDCCC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100505CC8);
  sub_1000958E4(v2, qword_100505CC8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001BDD44()
{
  result = qword_100505CE0;
  if (!qword_100505CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505CE0);
  }

  return result;
}

unint64_t sub_1001BDD98()
{
  result = qword_100504A60;
  if (!qword_100504A60)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504A60);
  }

  return result;
}

uint64_t sub_1001BDDF0(uint64_t a1)
{
  *(v1 + 344) = a1;

  return _swift_task_switch(sub_1001BDE80, 0, 0);
}

uint64_t sub_1001BDE80()
{
  v44 = v0;
  *(v0 + 328) = 0;
  v1 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, (v0 + 328));
  *(v0 + 352) = v1;
  if (v1)
  {
    sub_100068FC4(&qword_100505CE8, &qword_10040DA28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = v3;
    *(inited + 48) = 60;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v4;
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = 43200;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v5;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 1;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v6;
    v7 = SecAccessControlCopyData();
    if (v7)
    {
      v15 = v7;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(inited + 216) = &type metadata for Data;
      *(inited + 192) = v16;
      *(inited + 200) = v18;
      *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 232) = v19;
      sub_100068FC4(&unk_100504720, &qword_100414C40);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10040AA50;
      *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 40) = v21;
      *(v20 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 56) = v22;
      *(v20 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 72) = v23;
      *(v20 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 88) = v24;
      *(v20 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 104) = v25;
      *(inited + 264) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      *(inited + 240) = v20;
      v26 = sub_100091D34(inited);
      *(v0 + 360) = v26;
      swift_setDeallocating();
      sub_100068FC4(&qword_100502CC8, &qword_100409DA8);
      swift_arrayDestroy();
      v27 = swift_task_alloc();
      *(v0 + 368) = v27;
      *(v27 + 16) = v26;
      v28 = swift_task_alloc();
      *(v0 + 376) = v28;
      v29 = sub_100068FC4(&qword_100505CF0, &qword_10040DA30);
      *v28 = v0;
      v28[1] = sub_1001BE3C0;
      v14 = v29;
      v12 = sub_1001BE730;
      v7 = v0 + 312;
      v11 = 0x8000000100465DB0;
      v8 = 0;
      v9 = 0;
      v10 = 0xD000000000000024;
      v13 = v27;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000958E4(v30, qword_100505CC8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      swift_beginAccess();
      v35 = *(v0 + 328);
      if (v35)
      {
        *(v0 + 336) = v35;
        type metadata accessor for CFError(0);
        sub_1001BDD98();
        v36 = Error.localizedDescription.getter();
        v38 = v37;
      }

      else
      {
        v38 = 0xE700000000000000;
        v36 = 0x6E776F6E6B6E55;
      }

      v39 = sub_1002FFA0C(v36, v38, &v43);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "SecAccessControlCreateWithFlags failed with error %s", v33, 0xCu);
      sub_1000752F4(v34);
    }

    sub_1001BDD44();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1001BE3C0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1001BE684;
  }

  else
  {

    v2 = sub_1001BE518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BE518()
{
  v2 = v0[39];
  v1 = v0[40];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = SecCertificateCopyData(v3);
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_13:
    __break(1u);
  }

  v9 = *(v1 + 40);
LABEL_8:
  v10 = v9;
  v12 = v0[43];
  v11 = v0[44];

  v13 = SecCertificateCopyData(v10);
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v12 = v2;
  v12[1] = v6;
  v12[2] = v8;
  v12[3] = v14;
  v12[4] = v16;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BE684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BE738()
{
  v1 = sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1001BE7CC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100068FC4(&qword_100505CF8, &qword_10040DA38);

  sub_1001BD730(a1, a2, a3);
}

uint64_t sub_1001BE860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BE888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001BE8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001BE92C()
{
  result = qword_100505D00;
  if (!qword_100505D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505D00);
  }

  return result;
}

void *sub_1001BE980(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10019F3E0(0, v4, 0);
    v34 = _swiftEmptyArrayStorage;
    v6 = v3 + 56;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v27 = v3 + 64;
    v28 = v4;
    v29 = v3 + 56;
    v30 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v31 = v8;
      v33 = *(v3 + 36);
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      sub_100069E2C(*v11, v13);
      v32 = v2;
      *&v35 = sub_100288788(v12, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;

      sub_10006A178(v12, v13);
      v17 = v34;
      v38 = v34;
      v19 = v34[2];
      v18 = v34[3];
      if (v19 >= v18 >> 1)
      {
        sub_10019F3E0((v18 > 1), v19 + 1, 1);
        v17 = v38;
      }

      v36 = &type metadata for String;
      v37 = &protocol witness table for String;
      *&v35 = v14;
      *(&v35 + 1) = v16;
      v34 = v17;
      v17[2] = v19 + 1;
      result = sub_1000BC104(&v35, &v17[5 * v19 + 4]);
      v3 = v30;
      v9 = 1 << *(v30 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v29;
      v20 = *(v29 + 8 * v10);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v33 != *(v30 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v2 = v32;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        v2 = v32;
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000937D4(v7, v33, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v7, v33, 0);
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v9;
      if (v31 + 1 == v28)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1001BEC7C(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10019F4A4(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_10008E990(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 publicKeyIdentifier];
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F4A4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_100068FC4(&unk_100505FB0, &unk_10040DDE0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1000937D4(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1000937D4(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1000937D4(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

unint64_t sub_1001BEFE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v55 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v72 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v4 & ~(v4 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (v55)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v7 = *(v3 + 36);
  }

  v69 = result;
  v70 = v7;
  v71 = v55 != 0;
  if ((v4 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v54 = v3;
    v8 = 0;
    v52 = v3 + 56;
    v51 = v3 + 64;
    v53 = v4;
    while (v8 < v4)
    {
      v10 = __OFADD__(v8, 1);
      v11 = v8 + 1;
      if (v10)
      {
        goto LABEL_42;
      }

      v56 = v11;
      v12 = v69;
      v59 = v70;
      v60 = v5;
      v58 = v71;
      v13 = sub_10008F590(v69, v70, v71, v3);
      v62 = 0xD000000000000010;
      v63 = 0x8000000100465F50;
      v61 = sub_100288788(v13[4], v13[5]);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;

      v64 = v14;
      v65 = v16;
      strcpy(v66, "keyIdentifier");
      HIWORD(v66[1]) = -4864;
      v57 = v2;
      v61 = sub_100288788(v13[2], v13[3]);
      v17 = BidirectionalCollection<>.joined(separator:)();
      v19 = v18;

      v67 = v17;
      v68 = v19;
      v20 = static _DictionaryStorage.allocate(capacity:)();

      v22 = v62;
      v21 = v63;
      v24 = v64;
      v23 = v65;

      result = sub_10008C908(v22, v21);
      if (v25)
      {
        goto LABEL_39;
      }

      *(v20 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v26 = (v20[6] + 16 * result);
      *v26 = v22;
      v26[1] = v21;
      v27 = (v20[7] + 16 * result);
      *v27 = v24;
      v27[1] = v23;
      v28 = v20[2];
      v10 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v10)
      {
        goto LABEL_40;
      }

      v20[2] = v29;
      v30 = v66[0];
      v31 = v66[1];
      v33 = v67;
      v32 = v68;

      result = sub_10008C908(v30, v31);
      if (v34)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      *(v20 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v35 = (v20[6] + 16 * result);
      *v35 = v30;
      v35[1] = v31;
      v36 = (v20[7] + 16 * result);
      *v36 = v33;
      v36[1] = v32;
      v37 = v20[2];
      v10 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v10)
      {
        goto LABEL_40;
      }

      v20[2] = v38;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v5 = v60;
      v72 = v60;
      v40 = v60[2];
      v39 = v60[3];
      if (v40 >= v39 >> 1)
      {
        result = sub_10019F464((v39 > 1), v40 + 1, 1);
        v5 = v72;
      }

      v5[2] = v40 + 1;
      v5[v40 + 4] = v20;
      if (v55)
      {
        v3 = v54;
        if (!v58)
        {
          goto LABEL_47;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v4 = v53;
        sub_100068FC4(&qword_100505FA8, &qword_10040DDD8);
        v9 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v9(&v61, 0);
      }

      else
      {
        v3 = v54;
        if (v58)
        {
          goto LABEL_48;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v41 = 1 << *(v54 + 32);
        if (v12 >= v41)
        {
          goto LABEL_43;
        }

        v42 = v12 >> 6;
        v43 = *(v52 + 8 * (v12 >> 6));
        if (((v43 >> v12) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(v54 + 36) != v59)
        {
          goto LABEL_45;
        }

        v44 = v43 & (-2 << (v12 & 0x3F));
        if (v44)
        {
          v41 = __clz(__rbit64(v44)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v45 = v42 << 6;
          v46 = v42 + 1;
          v47 = (v51 + 8 * v42);
          while (v46 < (v41 + 63) >> 6)
          {
            v49 = *v47++;
            v48 = v49;
            v45 += 64;
            ++v46;
            if (v49)
            {
              result = sub_1000937D4(v12, v59, 0);
              v41 = __clz(__rbit64(v48)) + v45;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v12, v59, 0);
        }

LABEL_36:
        v50 = *(v54 + 36);
        v69 = v41;
        v70 = v50;
        v71 = 0;
        v4 = v53;
      }

      v8 = v56;
      v2 = v57;
      if (v56 == v4)
      {
        sub_1000937D4(v69, v70, v71);
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001BF594(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
    swift_beginAccess();
    v16 = *(v4 + v15);
    if (*(v16 + 16) && (v17 = sub_10008C8DC(a2, a3), (v18 & 1) != 0))
    {
      sub_1000BC094(*(v16 + 56) + 40 * v17, &v21);
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }

    swift_endAccess();
    v19 = *(&v22 + 1);
    sub_100075768(&v21, &qword_100505FC0, &unk_10040DDF0);
    if (v19)
    {
      sub_100079E24();
      swift_allocError();
      *v20 = 0;
      return swift_willThrow();
    }

    else
    {
      sub_1000BC094(a1, &v21);
      swift_beginAccess();
      sub_100069E2C(a2, a3);
      sub_1000C5710(&v21, a2, a3);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BF7F8()
{
  type metadata accessor for DSKExpress(0);
  swift_allocObject();
  result = sub_1001BF838();
  qword_10051B3F0 = result;
  return result;
}

uint64_t sub_1001BF838()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - v4;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress;
  LOBYTE(aBlock[0]) = 0;
  v15 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v7 = aBlock[0];
  *(v1 + v6) = aBlock[0];
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_delegates) = _swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems) = _swiftEmptyDictionarySingleton;
  if ((v7 & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
  }

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1001C40D0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CA998;
  v11 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v11);
  return v1;
}

_DWORD *sub_1001BFB48()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress);
  v22 = &type metadata for Bool;
  LOBYTE(v21) = v1;
  sub_100075D50(&v21, v20);
  v2 = _swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v20, 0xD000000000000012, 0x8000000100465E60, isUniquelyReferenced_nonNull_native);

  v5 = sub_1001BEFE4(v4);

  v22 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v21 = v5;
  sub_100075D50(&v21, v20);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v20, 0x4B73736572707865, 0xEB00000000737965, v6);
  LOBYTE(v21) = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
  v7 = String.init<A>(describing:)();
  v22 = &type metadata for String;
  *&v21 = v7;
  *(&v21 + 1) = v8;
  sub_100075D50(&v21, v20);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v20, 0x5373736572707865, 0xEC00000065746174, v9);
  v10 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
  v22 = &type metadata for Bool;
  LOBYTE(v21) = v10;
  sub_100075D50(&v21, v20);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v20, 0x6E696E6E75527369, 0xE900000000000067, v11);
  swift_beginAccess();

  v13 = sub_1001384E4(v12);

  if (v13[2])
  {
    sub_100068FC4(&qword_100504770, &unk_10040BB10);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v21 = v2;

  sub_1001C40EC(v14, 1, &v21);

  v15 = v21;
  v22 = sub_100068FC4(&qword_100504778, &qword_10040DDD0);
  *&v21 = v15;
  sub_100075D50(&v21, v20);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v20, 0xD00000000000001BLL, 0x8000000100465EA0, v16);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = sub_100015DA0("dskexpress.state", isa);

  return v18;
}

void sub_1001BFEC0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
    v10 = Logger.logObject.getter();
    if (v9)
    {
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "DSKExpress is already running", v12, 2u);
      }
    }

    else
    {
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "Starting DSKExpress", v14, 2u);
      }

      *(v1 + v8) = 1;
      sub_1001C0100();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C0100()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v85 = *(v5 - 8);
  __chkstk_darwin(v5);
  v87 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    (*(v8 + 8))(v10, v7);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) != 1)
    {
      break;
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
    {
      return;
    }

    v83 = v5;
    v14 = objc_opt_self();
    v92[0] = 0;
    v15 = sub_100055A74(v14, v92);
    if (!v15)
    {
      v22 = v92[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v92[0] = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = Error.localizedDescription.getter();
        v29 = sub_1002FFA0C(v27, v28, v92);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to retrieve the express configuration %s", v25, 0xCu);
        sub_1000752F4(v26);
      }

      if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
      {
        *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
        sub_1001C1084();
      }

      return;
    }

    v16 = v15;
    v17 = v92[0];
    if ([v16 state] == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2 * ([v16 state] == 3);
    }

    v30 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressState;
    *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = v18;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v33 = os_log_type_enabled(v31, v32);
    v82 = v4;
    v84 = v30;
    v81 = v12;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v92[0] = v35;
      *v34 = 136315138;
      LOBYTE(aBlock[0]) = *(v1 + v84);
      v36 = String.init<A>(describing:)();
      v38 = sub_1002FFA0C(v36, v37, v92);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Express state %s", v34, 0xCu);
      sub_1000752F4(v35);
      v30 = v84;
    }

    if (!*(v1 + v30))
    {
      goto LABEL_36;
    }

    v39 = [v16 passConfigs];
    if (!v39 || (v40 = v39, sub_100068FC4(&unk_100503FB0, &unk_10040B300), v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v40, v5 = sub_1000F1724(v41), , !v5))
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Failed to retrieve pass configurations", v54, 2u);
      }

      *(v1 + v30) = 0;
LABEL_36:
      sub_1001C1084();

      return;
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v92[0] = v45;
      *v44 = 136315138;
      sub_100068FC4(&qword_100505FD0, &qword_10040B550);
      v46 = Array.description.getter();
      v48 = sub_1002FFA0C(v46, v47, v92);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Express passes %s", v44, 0xCu);
      sub_1000752F4(v45);
    }

    v74 = v16;
    v80 = v2;
    v49 = _swiftEmptyArrayStorage;
    v92[0] = _swiftEmptyArrayStorage;
    v50 = *(v5 + 16);
    if (v50)
    {
      v51 = 0;
      v10 = 0;
      while (v51 < *(v5 + 16))
      {
        aBlock[0] = *(v5 + 32 + 8 * v51);

        sub_1001C1518(aBlock, v1, v91);

        if (*&v91[0])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v49 = v92[0];
        }

        if (v50 == ++v51)
        {
          goto LABEL_38;
        }
      }

LABEL_53:
      __break(1u);
    }

    v10 = 0;
LABEL_38:

    v4 = sub_1000E01DC(v49);

    v79 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys;
    *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = v4;

    v7 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
    swift_beginAccess();
    v55 = *(v1 + v7);
    v56 = *(v55 + 64);
    v76 = v55 + 64;
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v75 = (v57 + 63) >> 6;
    v78 = v90;
    v77 = (v86 + 8);
    ++v85;
    v86 = v55;
    swift_bridgeObjectRetain_n();
    v2 = 0;
    if (v59)
    {
LABEL_41:
      v60 = v2;
      v8 = v84;
      goto LABEL_47;
    }

LABEL_42:
    v8 = v84;
    while (1)
    {
      v60 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v60 >= v75)
      {

        return;
      }

      v59 = *(v76 + 8 * v60);
      ++v2;
      if (v59)
      {
        v2 = v60;
LABEL_47:
        v61 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v62 = v61 | (v60 << 6);
        v63 = *(v86 + 48) + 16 * v62;
        v64 = *v63;
        v65 = *(v63 + 8);
        sub_1000BC094(*(v86 + 56) + 40 * v62, v93);
        v92[0] = v64;
        v92[1] = v65;
        v66 = *(v1 + v8);
        sub_100069E2C(v64, v65);
        sub_100069E2C(v64, v65);

        v68 = sub_1001C48C4(v67, v64, v65);
        sub_10006A178(v64, v65);

        v69 = sub_1000E0074(v68);

        sub_1000BC094(v93, v91);
        v70 = swift_allocObject();
        sub_1000BC104(v91, v70 + 16);
        *(v70 + 56) = v66;
        *(v70 + 64) = v69;
        v90[2] = sub_1001C5088;
        v90[3] = v70;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v90[0] = sub_100080830;
        v90[1] = &unk_1004CAA88;
        v4 = _Block_copy(aBlock);
        v71 = v87;
        static DispatchQoS.unspecified.getter();
        v88 = _swiftEmptyArrayStorage;
        sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v5 = v82;
        v72 = v80;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v7 = v81;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v4);
        (*v77)(v5, v72);
        (*v85)(v71, v83);

        sub_100075768(v92, &qword_100505FC8, &unk_10040DE00);
        if (v59)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}

void sub_1001C0DD4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
    v10 = Logger.logObject.getter();
    if (v9 == 1)
    {
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Stopping DSKExpress", v12, 2u);
      }

      if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
      {
        *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
        sub_1001C1084();
      }

      v13 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
      swift_beginAccess();
      *(v1 + v13) = _swiftEmptyDictionarySingleton;

      v14 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
      swift_beginAccess();
      *(v1 + v14) = _swiftEmptyDictionarySingleton;

      *(v1 + v8) = 0;
    }

    else
    {
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, v15, "DSKExpress is not running", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C1084()
{
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = &_swiftEmptySetSingleton;

  v5 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v22 = v31;
  v21 = (v1 + 8);
  v20 = (v3 + 8);
  v27 = v6;
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = v23;
  if (v10)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      do
      {
LABEL_8:
        sub_1000BC094(*(v27 + 56) + 40 * (__clz(__rbit64(v10)) | (v13 << 6)), v33);
        if (qword_100501D90 != -1)
        {
          swift_once();
        }

        v10 &= v10 - 1;
        v28 = qword_10051B7F0;
        sub_1000BC094(v33, v32);
        v16 = swift_allocObject();
        sub_1000BC104(v32, v16 + 16);
        v31[2] = sub_1001C4FF8;
        v31[3] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v31[0] = sub_100080830;
        v31[1] = &unk_1004CAA38;
        v17 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v29 = _swiftEmptyArrayStorage;
        sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v18 = v25;
        v19 = v26;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v17);
        (*v21)(v18, v19);
        (*v20)(v14, v24);
        sub_1000752F4(v33);
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

void *sub_1001C1518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_10008C908(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v8, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

LABEL_16:

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v46 = v43;
  v13 = sub_10008C908(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v13, v45);
  if ((swift_dynamicCast() & 1) == 0 || (v43 & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

LABEL_20:

    goto LABEL_21;
  }

  v18 = sub_10008C908(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v18, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = sub_10013044C(v43, v44);
  if (v22 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v23 = v21;
  v24 = v22;
  v25 = sub_10013044C(v46, v44);
  if (v26 >> 60 == 15)
  {
    sub_10006A2D0(v23, v24);
LABEL_21:

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 136315138;
      v32 = Dictionary.description.getter();
      v34 = sub_1002FFA0C(v32, v33, v45);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Malformed pass config %s", v30, 0xCu);
      sub_1000752F4(v31);
    }

    goto LABEL_17;
  }

  v35 = v26;
  v36 = v25;
  v37 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
  swift_beginAccess();
  v38 = *(a2 + v37);
  if (*(v38 + 16) && (v39 = sub_10008C8DC(v23, v24), (v40 & 1) != 0))
  {
    v41 = *(*(v38 + 56) + 8 * v39);
    swift_endAccess();

    v42 = sub_1001C4704(v5, v41);
  }

  else
  {
    swift_endAccess();
    v42 = 0;
  }

  type metadata accessor for DSKExpress.ExpressKey();
  result = swift_allocObject();
  result[2] = v36;
  result[3] = v35;
  result[4] = v23;
  result[5] = v24;
  result[6] = v42;
LABEL_18:
  *a3 = result;
  return result;
}

uint64_t sub_1001C18CC(void *a1, char a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000752B0(a1, v5);
  type metadata accessor for DSKExpress.ExpressReport();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;
  v8 = *(v6 + 8);

  v8(inited, v5, v6);
  swift_setDeallocating();
}

void sub_1001C1974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v14 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16) && (v16 = sub_10008C8DC(a2, a3), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  sub_100069E2C(a2, a3);

  sub_1000C56E4(v19, a2, a3);
  swift_endAccess();
  if (v18)
  {
    if (a1)
    {
      v20 = sub_10008C5E8(v18, a1);

      if (v20)
      {
        return;
      }
    }

    else
    {
    }

LABEL_15:
    sub_1001C0100();
    return;
  }

  if (a1)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1001C1BA4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_100069E2C(a1, a2);
    if (qword_1005019E8 == -1)
    {
LABEL_6:
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1001C4F80;
      *(v11 + 24) = v5;

      v12 = sub_1000CAA04();

      sub_1001BEC7C(v12);
      v14 = v13;

      v15 = sub_1000E0074(v14);

      v16 = 1;
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v17 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressState;
  if (*(v2 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
  {
    sub_100069E2C(a1, a2);

    v19 = sub_1001C48C4(v18, a1, a2);
    sub_10006A178(a1, a2);

    v15 = sub_1000E0074(v19);

    v16 = *(v2 + v17);
  }

  else
  {
    v16 = 0;
    v15 = &_swiftEmptySetSingleton;
  }

LABEL_10:
  type metadata accessor for DSKExpress.ExpressReport();
  result = swift_allocObject();
  *(result + 16) = v16;
  *(result + 24) = v15;
  return result;
}

unint64_t sub_1001C1E94(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 appletIdentifier];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(a3) = sub_10008FB4C(v6, v8, a2, a3);
  sub_10006A178(v6, v8);
  return a3 & 1;
}

uint64_t sub_1001C1F18(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v94 = a3;
  v90 = a2;
  v91 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_146;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
    }

    if (*(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
    {
      return 1;
    }

    v76 = v4;
    v83 = *(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
    if ((v83 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKExpress.ExpressKey();
      sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey, &unk_10040DD60);
      Set.Iterator.init(_cocoa:)();
      v13 = v97[3];
      v14 = v97[4];
      v15 = v97[5];
      v16 = v97[6];
      v7 = v97[7];
    }

    else
    {
      v17 = -1 << *(v83 + 32);
      v14 = v83 + 56;
      v15 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v7 = v19 & *(v83 + 56);
      v13 = v83;
      swift_bridgeObjectRetain_n();
      v16 = 0;
    }

    v9 = v91;
    v93 = 0;
    v82 = v15;
    v20 = (v15 + 64) >> 6;
    if (v91)
    {
      v21 = 0;
    }

    else
    {
      v21 = v90 == 0xC000000000000000;
    }

    v22 = !v21;
    v88 = v22;
    v4 = v90 >> 62;
    v23 = __OFSUB__(HIDWORD(v91), v91);
    v81 = v23;
    v80 = HIDWORD(v91) - v91;
    v87 = BYTE6(v90);
    if (v94)
    {
      v24 = 0;
    }

    else
    {
      v24 = a4 == 0xC000000000000000;
    }

    v25 = !v24;
    v85 = v25;
    v89 = a4 >> 62;
    v26 = __OFSUB__(HIDWORD(v94), v94);
    v78 = v26;
    v77 = HIDWORD(v94) - v94;
    v79 = a4;
    v84 = BYTE6(a4);
    v86 = v13;
    v92 = v90 >> 62;
    while (1)
    {
      v6 = v7;
      a4 = v16;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

      v31 = __CocoaSet.Iterator.next()();
      if (!v31 || (v96 = v31, type metadata accessor for DSKExpress.ExpressKey(), swift_dynamicCast(), v30 = v97[0], v29 = v6, v4 = v92, !v97[0]))
      {
LABEL_142:
        sub_100093854(v13);

        return 0;
      }

LABEL_41:
      v95 = v29;
      v32 = v30[2];
      v33 = v30[3];
      v34 = v33 >> 62;
      if (v33 >> 62 == 3)
      {
        if (v32)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33 == 0xC000000000000000;
        }

        v37 = !v35 || v4 < 3;
        if (((v37 | v88) & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_63:
        v38 = 0;
        if (v4 > 1)
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      if (v34 > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_63;
        }

        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        v41 = __OFSUB__(v39, v40);
        v38 = v39 - v40;
        if (v41)
        {
          goto LABEL_152;
        }

        if (v4 > 1)
        {
          goto LABEL_64;
        }
      }

      else if (v34)
      {
        LODWORD(v38) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_153;
        }

        v38 = v38;
        if (v4 > 1)
        {
LABEL_64:
          if (v4 != 2)
          {
            if (v38)
            {
              goto LABEL_31;
            }

            goto LABEL_92;
          }

          v44 = v9[2];
          v43 = v9[3];
          v41 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          if (v41)
          {
            goto LABEL_148;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v38 = BYTE6(v33);
        if (v4 > 1)
        {
          goto LABEL_64;
        }
      }

LABEL_60:
      v42 = v87;
      if (v4)
      {
        v42 = v80;
        if (v81)
        {
          goto LABEL_149;
        }
      }

LABEL_66:
      if (v38 != v42)
      {
        goto LABEL_31;
      }

      if (v38 >= 1)
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v45 = *(v32 + 16);
            v75 = *(v32 + 24);
            v46 = __DataStorage._bytes.getter();
            if (v46)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v45, v47))
              {
                goto LABEL_162;
              }

              v46 += v45 - v47;
            }

            if (__OFSUB__(v75, v45))
            {
              goto LABEL_159;
            }

LABEL_91:
            __DataStorage._length.getter();
            v52 = v46;
            v9 = v91;
            v53 = v93;
            sub_10019F024(v52, v91, v90, v97);
            v93 = v53;
            v13 = v86;
            v4 = v92;
            if ((v97[0] & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_92;
          }

          memset(v97, 0, 14);
        }

        else
        {
          if (v34)
          {
            v48 = v32;
            if (v32 >> 32 < v32)
            {
              goto LABEL_158;
            }

            v49 = __DataStorage._bytes.getter();
            if (v49)
            {
              v75 = v49;
              v50 = __DataStorage._offset.getter();
              if (__OFSUB__(v48, v50))
              {
                goto LABEL_163;
              }

              v46 = v48 - v50 + v75;
            }

            else
            {
              v46 = 0;
            }

            goto LABEL_91;
          }

          v97[0] = v30[2];
          LOWORD(v97[1]) = v33;
          BYTE2(v97[1]) = BYTE2(v33);
          BYTE3(v97[1]) = BYTE3(v33);
          BYTE4(v97[1]) = BYTE4(v33);
          BYTE5(v97[1]) = BYTE5(v33);
        }

        v51 = v93;
        sub_10019F024(v97, v9, v90, &v96);
        v93 = v51;
        v13 = v86;
        if ((v96 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_92:
      v54 = v30[4];
      v55 = v30[5];
      v56 = v55 >> 62;
      if (v55 >> 62 == 3)
      {
        if (v54)
        {
          v57 = 0;
        }

        else
        {
          v57 = v55 == 0xC000000000000000;
        }

        v58 = v89;
        v60 = !v57 || v89 < 3;
        if (((v60 | v85) & 1) == 0)
        {
LABEL_143:
          sub_100093854(v13);

          return *(v76 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
        }

LABEL_114:
        v61 = 0;
        if (v58 > 1)
        {
          goto LABEL_115;
        }

LABEL_111:
        v64 = v84;
        if (v58)
        {
          v64 = v77;
          if (v78)
          {
            goto LABEL_151;
          }
        }

LABEL_117:
        if (v61 != v64)
        {
          goto LABEL_31;
        }

        if (v61 < 1)
        {
          goto LABEL_143;
        }

        if (v56 > 1)
        {
          if (v56 != 2)
          {
            memset(v97, 0, 14);
            goto LABEL_137;
          }

          v67 = *(v54 + 16);
          v75 = *(v54 + 24);
          v68 = __DataStorage._bytes.getter();
          if (v68)
          {
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v67, v69))
            {
              goto LABEL_160;
            }

            v68 += v67 - v69;
          }

          if (__OFSUB__(v75, v67))
          {
            goto LABEL_157;
          }

LABEL_140:
          __DataStorage._length.getter();
          v74 = v93;
          sub_10019F024(v68, v94, v79, v97);
          v93 = v74;

          v9 = v91;
          v4 = v92;
          v13 = v86;
          v7 = v95;
          if (v97[0])
          {
LABEL_141:
            sub_100093854(v13);

            return *(v76 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
          }
        }

        else
        {
          if (v56)
          {
            v70 = v54;
            if (v54 >> 32 < v54)
            {
              goto LABEL_156;
            }

            v71 = __DataStorage._bytes.getter();
            if (v71)
            {
              v75 = v71;
              v72 = __DataStorage._offset.getter();
              if (__OFSUB__(v70, v72))
              {
                goto LABEL_161;
              }

              v68 = v70 - v72 + v75;
            }

            else
            {
              v68 = 0;
            }

            goto LABEL_140;
          }

          v97[0] = v30[4];
          LOWORD(v97[1]) = v55;
          BYTE2(v97[1]) = BYTE2(v55);
          BYTE3(v97[1]) = BYTE3(v55);
          BYTE4(v97[1]) = BYTE4(v55);
          BYTE5(v97[1]) = BYTE5(v55);
LABEL_137:
          v73 = v93;
          sub_10019F024(v97, v94, v79, &v96);
          v93 = v73;

          v13 = v86;
          v7 = v95;
          if (v96)
          {
            goto LABEL_141;
          }
        }
      }

      else
      {
        v58 = v89;
        if (v56 > 1)
        {
          if (v56 != 2)
          {
            goto LABEL_114;
          }

          v63 = *(v54 + 16);
          v62 = *(v54 + 24);
          v41 = __OFSUB__(v62, v63);
          v61 = v62 - v63;
          if (v41)
          {
            goto LABEL_154;
          }

          if (v89 <= 1)
          {
            goto LABEL_111;
          }
        }

        else if (v56)
        {
          LODWORD(v61) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            goto LABEL_155;
          }

          v61 = v61;
          if (v89 <= 1)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v61 = BYTE6(v55);
          if (v89 <= 1)
          {
            goto LABEL_111;
          }
        }

LABEL_115:
        if (v58 == 2)
        {
          v66 = *(v94 + 16);
          v65 = *(v94 + 24);
          v41 = __OFSUB__(v65, v66);
          v64 = v65 - v66;
          if (v41)
          {
            goto LABEL_150;
          }

          goto LABEL_117;
        }

        if (!v61)
        {
          goto LABEL_143;
        }

LABEL_31:

        v7 = v95;
      }
    }

    v27 = v16;
    v28 = v7;
    if (v7)
    {
LABEL_37:
      v29 = (v28 - 1) & v28;
      v30 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v28)))));

      if (!v30)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v16 >= v20)
      {
        goto LABEL_142;
      }

      v28 = *(v14 + 8 * v16);
      ++v27;
      if (v28)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_146:
    swift_once();
  }
}

uint64_t sub_1001C2924(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v92 = a3;
  v89 = a2;
  v90 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_143:
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
  }

  v84 = *(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
  if ((v84 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    v6 = __CocoaSet.makeIterator()();
    type metadata accessor for DSKExpress.ExpressKey();
    sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey, &unk_10040DD60);
    Set.Iterator.init(_cocoa:)();
    v9 = v97[3];
    v12 = v97[4];
    v13 = v97[5];
    v14 = v97[6];
    v7 = v97[7];
  }

  else
  {
    v15 = -1 << *(v84 + 32);
    v12 = v84 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v7 = v17 & *(v84 + 56);
    v9 = v84;
    swift_bridgeObjectRetain_n();
    v14 = 0;
  }

  v18 = v90;
  v93 = 0;
  v83 = v13;
  v19 = (v13 + 64) >> 6;
  if (v90)
  {
    v20 = 0;
  }

  else
  {
    v20 = v89 == 0xC000000000000000;
  }

  v21 = !v20;
  v91 = v21;
  v4 = v89 >> 62;
  v22 = __OFSUB__(HIDWORD(v90), v90);
  v82 = v22;
  v81 = HIDWORD(v90) - v90;
  v88 = BYTE6(v89);
  if (v92)
  {
    v23 = 0;
  }

  else
  {
    v23 = a4 == 0xC000000000000000;
  }

  v24 = !v23;
  v86 = v24;
  v94 = a4 >> 62;
  v25 = __OFSUB__(HIDWORD(v92), v92);
  v78 = v25;
  v77 = HIDWORD(v92) - v92;
  v80 = a4;
  v85 = BYTE6(a4);
  v87 = v9;
  while (1)
  {
    a4 = v14;
    if (v9 < 0)
    {
      break;
    }

    v26 = v14;
    v27 = v7;
    if (!v7)
    {
      while (1)
      {
        v14 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          goto LABEL_141;
        }

        v27 = *(v12 + 8 * v14);
        ++v26;
        if (v27)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_143;
    }

LABEL_35:
    v95 = (v27 - 1) & v27;
    v6 = *(*(v9 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v6)
    {
      goto LABEL_141;
    }

LABEL_39:
    v29 = v6[2];
    v30 = v6[3];
    v31 = v30 >> 62;
    if (v30 >> 62 == 3)
    {
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 == 0xC000000000000000;
      }

      v34 = !v32 || v4 < 3;
      if (((v34 | v91) & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_61:
      v35 = 0;
      if (v4 <= 1)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_61;
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_149;
      }

      if (v4 <= 1)
      {
        goto LABEL_58;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_150;
      }

      v35 = v35;
      if (v4 <= 1)
      {
LABEL_58:
        v39 = v88;
        if (v4)
        {
          v39 = v81;
          if (v82)
          {
            goto LABEL_146;
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v4 <= 1)
      {
        goto LABEL_58;
      }
    }

LABEL_62:
    if (v4 != 2)
    {
      if (v35)
      {
        goto LABEL_29;
      }

      goto LABEL_90;
    }

    v41 = *(v18 + 16);
    v40 = *(v18 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_145;
    }

LABEL_64:
    if (v35 != v39)
    {
      goto LABEL_29;
    }

    if (v35 < 1)
    {
      goto LABEL_90;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        memset(v97, 0, 14);
LABEL_86:
        v48 = v93;
        sub_10019F024(v97, v18, v89, &v96);
        v93 = v48;
        v9 = v87;
        if ((v96 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_90;
      }

      v79 = v4;
      v42 = *(v29 + 16);
      v76 = *(v29 + 24);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_159;
        }

        v43 += v42 - v44;
      }

      if (__OFSUB__(v76, v42))
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (!v31)
      {
        v97[0] = v6[2];
        LOWORD(v97[1]) = v30;
        BYTE2(v97[1]) = BYTE2(v30);
        BYTE3(v97[1]) = BYTE3(v30);
        BYTE4(v97[1]) = BYTE4(v30);
        BYTE5(v97[1]) = BYTE5(v30);
        goto LABEL_86;
      }

      v79 = v4;
      v45 = v29;
      if (v29 >> 32 < v29)
      {
        goto LABEL_155;
      }

      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v76 = v46;
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v47))
        {
          goto LABEL_160;
        }

        v43 = v45 - v47 + v76;
      }

      else
      {
        v43 = 0;
      }
    }

    __DataStorage._length.getter();
    v49 = v43;
    v18 = v90;
    v50 = v93;
    sub_10019F024(v49, v90, v89, v97);
    v93 = v50;
    v9 = v87;
    v4 = v79;
    if ((v97[0] & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_90:
    v51 = v6[4];
    v52 = v6[5];
    v53 = v52 >> 62;
    if (v52 >> 62 == 3)
    {
      if (v51)
      {
        v54 = 0;
      }

      else
      {
        v54 = v52 == 0xC000000000000000;
      }

      v56 = !v54 || v94 < 3;
      if (((v56 | v86) & 1) == 0)
      {
LABEL_140:
        sub_100093854(v9);

        v73 = v6[6];

        return v73;
      }

      v57 = 0;
LABEL_111:
      v58 = v94;
      if (v94 <= 1)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    }

    v58 = v94;
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v63 = *(v51 + 16);
        v62 = *(v51 + 24);
        v38 = __OFSUB__(v62, v63);
        v57 = v62 - v63;
        if (v38)
        {
          goto LABEL_151;
        }

        goto LABEL_111;
      }

      v57 = 0;
      if (v94 <= 1)
      {
        goto LABEL_112;
      }
    }

    else if (v53)
    {
      LODWORD(v57) = HIDWORD(v51) - v51;
      if (__OFSUB__(HIDWORD(v51), v51))
      {
        goto LABEL_152;
      }

      v57 = v57;
      if (v94 <= 1)
      {
LABEL_112:
        v64 = v58;
        v61 = v85;
        if (v64)
        {
          v61 = v77;
          if (v78)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_114;
      }
    }

    else
    {
      v57 = BYTE6(v52);
      if (v94 <= 1)
      {
        goto LABEL_112;
      }
    }

LABEL_105:
    if (v58 != 2)
    {
      if (!v57)
      {
        goto LABEL_140;
      }

      goto LABEL_29;
    }

    v60 = *(v92 + 16);
    v59 = *(v92 + 24);
    v38 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v38)
    {
      goto LABEL_147;
    }

LABEL_114:
    if (v57 != v61)
    {
      goto LABEL_29;
    }

    if (v57 < 1)
    {
      goto LABEL_140;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        memset(v97, 0, 14);
LABEL_136:
        v71 = v93;
        sub_10019F024(v97, v92, v80, &v96);
        v93 = v71;
        v9 = v87;
        if (v96)
        {
          goto LABEL_140;
        }

        goto LABEL_29;
      }

      v79 = v4;
      v65 = *(v51 + 16);
      v76 = *(v51 + 24);
      v66 = __DataStorage._bytes.getter();
      if (v66)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v65, v67))
        {
          goto LABEL_157;
        }

        v66 += v65 - v67;
      }

      if (__OFSUB__(v76, v65))
      {
        goto LABEL_154;
      }
    }

    else
    {
      if (!v53)
      {
        v97[0] = v6[4];
        LOWORD(v97[1]) = v52;
        BYTE2(v97[1]) = BYTE2(v52);
        BYTE3(v97[1]) = BYTE3(v52);
        BYTE4(v97[1]) = BYTE4(v52);
        BYTE5(v97[1]) = BYTE5(v52);
        goto LABEL_136;
      }

      v79 = v4;
      v68 = v51;
      if (v51 >> 32 < v51)
      {
        goto LABEL_153;
      }

      v69 = __DataStorage._bytes.getter();
      if (v69)
      {
        v76 = v69;
        v70 = __DataStorage._offset.getter();
        if (__OFSUB__(v68, v70))
        {
          goto LABEL_158;
        }

        v66 = v68 - v70 + v76;
      }

      else
      {
        v66 = 0;
      }
    }

    __DataStorage._length.getter();
    v72 = v93;
    sub_10019F024(v66, v92, v80, v97);
    v93 = v72;
    v18 = v90;
    v9 = v87;
    v4 = v79;
    if (v97[0])
    {
      goto LABEL_140;
    }

LABEL_29:

    v7 = v95;
  }

  v28 = __CocoaSet.Iterator.next()();
  if (v28)
  {
    v96 = v28;
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    v6 = v97[0];
    v95 = v7;
    if (v97[0])
    {
      goto LABEL_39;
    }
  }

LABEL_141:
  sub_100093854(v9);

  return 0;
}

uint64_t sub_1001C32F4(void *a1)
{
  v1 = a1[4];
  sub_1000752B0(a1, a1[3]);
  type metadata accessor for DSKExpress.ExpressReport();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = &_swiftEmptySetSingleton;
  (*(v1 + 8))();
  swift_setDeallocating();
}

uint64_t sub_1001C337C()
{
  BYTE8(v6) = 0;
  _StringGuts.grow(_:)(18);
  v1._countAndFlagsBits = 0x2073736572707845;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  *&v6 = *(v0 + 16);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x207379656B20;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);
  v4 = sub_1001BE980(*(v0 + 24));
  sub_100288EC8(v4);

  return *(&v6 + 1);
}

uint64_t sub_1001C3470()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

Swift::Int sub_1001C34B8()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C350C()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C3564(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced10DSKExpress_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKExpress(uint64_t a1)
{
  result = qword_100505D70;
  if (!qword_100505D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C3684(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001C3784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18[1] = qword_10051B7F0;
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1001C50E0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CAAD8;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_1001C3AA8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) == 1)
  {
    if (a2 == 0xD00000000000001ELL && 0x8000000100465FC0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = XPC_EVENT_KEY_NAME.getter();
      if (!xpc_dictionary_get_string(a4, v7))
      {
        goto LABEL_18;
      }

      v8 = String.init(cString:)();
      v10 = v9;
      if (v8 == 0x64616F6C796150 && v9 == 0xE700000000000000 || (v11 = v8, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v12 = String.utf8CString.getter();

        string = xpc_dictionary_get_string(a4, (v12 + 32));

        if (string)
        {
          v15 = String.init(cString:)();
          v16 = v14;
          if (v15 == 0xD00000000000002CLL && 0x8000000100466060 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "Received UWB express config change event", v19, 2u);
            }

            sub_1001C0100();
            return;
          }

          oslog = Logger.logObject.getter();
          v23 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(oslog, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v30 = v25;
            *v24 = 136315138;
            v28 = sub_1002FFA0C(v15, v16, &v30);

            *(v24 + 4) = v28;
            v26 = "Ignoring event string value %s";
            goto LABEL_30;
          }

          goto LABEL_32;
        }

LABEL_18:
        oslog = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(oslog, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Bad XPC event dictionary";
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v23))
      {
LABEL_32:

        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v27 = sub_1002FFA0C(v11, v10, &v30);

      *(v24 + 4) = v27;
      v26 = "Ignoring event string key %s";
    }

    else
    {

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(oslog, v23))
      {
        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1002FFA0C(a2, a3, &v30);
      v26 = "Ignoring stream %s";
    }

LABEL_30:
    _os_log_impl(&_mh_execute_header, oslog, v23, v26, v24, 0xCu);
    sub_1000752F4(v25);

    return;
  }

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Not running";
LABEL_20:
    _os_log_impl(&_mh_execute_header, oslog, v20, v22, v21, 2u);
  }

LABEL_21:
}

unint64_t sub_1001C4034()
{
  result = qword_100505F98;
  if (!qword_100505F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505F98);
  }

  return result;
}

uint64_t sub_1001C40D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C40EC(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_10008C908(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10030C7E8(v15, v5 & 1);
    v10 = sub_10008C908(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100312640();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000100466020;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_10008C908(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_10030C7E8(v30, 1);
        v26 = sub_10008C908(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v38 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t *sub_1001C4480(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1001C451C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_1001C451C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v28 = a3;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v28 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1000754F0(*(v28 + 56) + 32 * v13, v27);
    v25[0] = v15;
    v25[1] = v16;
    v17 = sub_1000754F0(v27, &v26);
    v24[0] = v15;
    v24[1] = v16;
    __chkstk_darwin(v17);
    v19[2] = v24;
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1002F784C(sub_10012E558, v19, v23);
    sub_100075768(v25, &qword_100505FD8, &unk_10040DE10);
    sub_1000752F4(v27);

    if (v15)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100332734(v21, v20, v22, v28);
      }
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
      return sub_100332734(v21, v20, v22, v28);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001C4704(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1001C4480(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1001C451C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

char *sub_1001C48C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKExpress.ExpressKey();
    sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey, &unk_10040DD60);
    v4 = v3;
    v7 = a3;
    Set.Iterator.init(_cocoa:)();
    v6 = v71[2];
    v8 = v71[3];
    v9 = v71[4];
    v10 = v71[5];
    v11 = v71[6];
  }

  else
  {
    v7 = a3;
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
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

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v7 == 0xC000000000000000;
  }

  v17 = !v16;
  v65 = v17;
  v68 = v7 >> 62;
  v18 = __OFSUB__(HIDWORD(a2), a2);
  v61 = v18;
  v60 = HIDWORD(a2) - a2;
  v64 = BYTE6(v7);
  v62 = _swiftEmptyArrayStorage;
  v66 = a2;
  v67 = v6;
  while (1)
  {
    v19 = v11;
    if (v6 < 0)
    {
      break;
    }

    v20 = v10;
    v21 = v11;
    if (!v11)
    {
      while (1)
      {
        v10 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v10 >= v15)
        {
          goto LABEL_84;
        }

        v21 = *(v8 + 8 * v10);
        ++v20;
        if (v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

LABEL_24:
    v69 = (v21 - 1) & v21;
    v22 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v22)
    {
      goto LABEL_84;
    }

LABEL_28:
    v24 = v22[4];
    v25 = v22[5];
    v26 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 == 0xC000000000000000;
      }

      v28 = v68;
      v30 = !v27 || v68 < 3;
      if (((v30 | v65) & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_50:
      v31 = 0;
      if (v28 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    v28 = v68;
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_50;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_90;
      }

      if (v68 > 1)
      {
        goto LABEL_51;
      }
    }

    else if (v26)
    {
      LODWORD(v31) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_89;
      }

      v31 = v31;
      if (v68 > 1)
      {
LABEL_51:
        if (v28 != 2)
        {
          if (!v31)
          {
            goto LABEL_79;
          }

          goto LABEL_18;
        }

        v37 = *(v66 + 16);
        v36 = *(v66 + 24);
        v34 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v34)
        {
          goto LABEL_88;
        }

        goto LABEL_53;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v68 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_47:
    v35 = v64;
    if (v28)
    {
      v35 = v60;
      if (v61)
      {
        goto LABEL_87;
      }
    }

LABEL_53:
    if (v31 != v35)
    {
      goto LABEL_18;
    }

    if (v31 < 1)
    {
      goto LABEL_79;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v39 = v7;
        v40 = *(v24 + 16);
        v58 = *(v24 + 24);
        sub_100069E2C(v66, v39);
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = __DataStorage._offset.getter();
          if (__OFSUB__(v40, v42))
          {
            goto LABEL_93;
          }

          v41 += v40 - v42;
        }

        if (__OFSUB__(v58, v40))
        {
          goto LABEL_92;
        }

        __DataStorage._length.getter();
        v43 = v41;
        v44 = v66;
        v45 = v66;
        v7 = a3;
        v46 = a3;
        v47 = v4;
        goto LABEL_73;
      }

      memset(v71, 0, 14);
      v44 = v66;
      sub_100069E2C(v66, v7);
      sub_10019F024(v71, v66, v7, &v70);
      if (v4)
      {
LABEL_95:
        v57 = v44;
LABEL_97:
        result = sub_10006A178(v57, v7);
        __break(1u);
        return result;
      }

      v4 = 0;
      v38 = v66;
LABEL_78:
      sub_10006A178(v38, v7);
      v6 = v67;
      if (v70)
      {
        goto LABEL_79;
      }

LABEL_18:

      v11 = v69;
    }

    else
    {
      if (!v26)
      {
        v71[0] = v22[4];
        LOWORD(v71[1]) = v25;
        BYTE2(v71[1]) = BYTE2(v25);
        BYTE3(v71[1]) = BYTE3(v25);
        BYTE4(v71[1]) = BYTE4(v25);
        BYTE5(v71[1]) = BYTE5(v25);
        sub_100069E2C(v66, v7);
        sub_10019F024(v71, v66, v7, &v70);
        if (v4)
        {
          v57 = v66;
          goto LABEL_97;
        }

        v4 = 0;
        v38 = v66;
        goto LABEL_78;
      }

      v59 = v4;
      v48 = v24;
      if (v24 >> 32 < v24)
      {
        goto LABEL_91;
      }

      sub_100069E2C(v66, a3);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v50))
        {
          goto LABEL_94;
        }

        v49 += v48 - v50;
      }

      __DataStorage._length.getter();
      v43 = v49;
      v44 = v66;
      v45 = v66;
      v7 = a3;
      v46 = a3;
      v47 = v59;
LABEL_73:
      sub_10019F024(v43, v45, v46, v71);
      if (v47)
      {
        goto LABEL_95;
      }

      v4 = 0;
      sub_10006A178(v44, v7);
      v6 = v67;
      if ((v71[0] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_79:
      v51 = v22[2];
      v52 = v22[3];
      sub_100069E2C(v51, v52);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_10012E5A4(0, *(v62 + 2) + 1, 1, v62);
      }

      v11 = v69;
      v54 = *(v62 + 2);
      v53 = *(v62 + 3);
      if (v54 >= v53 >> 1)
      {
        v62 = sub_10012E5A4((v53 > 1), v54 + 1, 1, v62);
      }

      *(v62 + 2) = v54 + 1;
      v55 = &v62[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v52;
      v7 = a3;
      v6 = v67;
    }
  }

  v23 = __CocoaSet.Iterator.next()();
  if (v23)
  {
    v70 = v23;
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    v22 = v71[0];
    v69 = v19;
    v6 = v67;
    if (!v71[0])
    {
      goto LABEL_84;
    }

    goto LABEL_28;
  }

  v6 = v67;
LABEL_84:
  sub_100093854(v6);
  return v62;
}

uint64_t sub_1001C4F48()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C4F88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C4FC0()
{
  sub_1000752F4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C5000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C5048()
{
  sub_1000752F4((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001C5098()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C5118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1001C51F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C52CC(uint64_t a1)
{
  sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001C5398(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C5458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C54FC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001C5598();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5598()
{
  if (!qword_1005060E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005060E0);
    }
  }
}

uint64_t sub_1001C55FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SESPeerIdentityData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001C5770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SESPeerIdentityData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_1001C58CC(uint64_t a1)
{
  type metadata accessor for SESPeerIdentityData(319);
  if (v1 <= 0x3F)
  {
    sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C5990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001C5AEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001C5C30(uint64_t a1)
{
  sub_1001C5D00(319, &unk_100506220, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1001C5D00(319, &qword_100506048, type metadata accessor for CreationMetadata);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1001C5D54@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_100068FC4(&qword_1005062F0, &qword_10040E020);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v7 = type metadata accessor for SESTLKRecordData(0);
  v8 = [v1 recordData];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1001C87DC(&qword_1005062F8, type metadata accessor for SESTLKRecordData, &unk_10040DF34);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    sub_10006A178(v9, v11);

    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_100075768(v6, &qword_1005062F0, &qword_10040E020);
    v12 = [v1 recordData];
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = *(v7 + 20);
    v17 = type metadata accessor for CreationMetadata(0);
    result = (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
    *a1 = v13;
    a1[1] = v15;
  }

  else
  {
    sub_10006A178(v9, v11);

    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    return sub_1001C8B90(v6, a1, type metadata accessor for SESTLKRecordData);
  }

  return result;
}

void sub_1001C5FF8(uint64_t *a1@<X8>)
{
  *a1 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 3227953, 0xE300000000000000);
  a1[1] = v2;
  v3 = type metadata accessor for CreationMetadata(0);
  static Date.now.getter();
  v4 = sub_1001C7DE0(0x536C65646F4D5748, 0xEA00000000007274, 0x6E776F6E6B6E553CLL, 0xE90000000000003ELL);
  v5 = (a1 + v3[6]);
  *v5 = v4;
  v5[1] = v6;
  v7 = sub_1001C7DE0(0x754E6C6169726553, 0xEC0000007265626DLL, 0x6E776F6E6B6E553CLL, 0xE90000000000003ELL);
  v8 = (a1 + v3[7]);
  *v8 = v7;
  v8[1] = v9;
  if (os_variant_has_internal_diagnostics() && (v10 = [objc_opt_self() aaPrimaryAppleAccount]) != 0)
  {
    v11 = v10;
    v12 = [v10 username];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v19 = (a1 + v3[8]);
    *v19 = v14;
    v19[1] = v16;
    v20 = [v11 aa_altDSID];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {

      v22 = 0;
      v24 = 0;
    }

    v25 = (a1 + v3[9]);
    *v25 = v22;
    v25[1] = v24;
  }

  else
  {
    v17 = (a1 + v3[8]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (a1 + v3[9]);
    *v18 = 0;
    v18[1] = 0;
  }
}

uint64_t sub_1001C61D4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005062C0, &qword_10040E000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8940();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100069E2C(v12, v9);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10006A178(v12, v13);
  if (!v2)
  {
    type metadata accessor for SESTLKRecordData(0);
    LOBYTE(v12) = 1;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata, &unk_10040DEBC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001C63B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v4 - 8);
  v19 = &v17 - v5;
  v20 = sub_100068FC4(&qword_1005062B0, &qword_10040DFF8);
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SESTLKRecordData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 28);
  sub_1001C5FF8(&v10[v12]);
  v13 = type metadata accessor for CreationMetadata(0);
  (*(*(v13 - 8) + 56))(&v10[v12], 0, 1, v13);
  sub_1000752B0(a1, a1[3]);
  sub_1001C8940();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
    return sub_100075768(&v10[v12], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v14 = v18;
    v22 = 0;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v10 = v21;
    LOBYTE(v21) = 1;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata, &unk_10040DEE4);
    v15 = v20;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v14 + 8))(v7, v15);
    sub_100147EA4(v19, &v10[v12], &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v10, v17, type metadata accessor for SESTLKRecordData);
    sub_1000752F4(a1);
    return sub_1001C88E0(v10, type metadata accessor for SESTLKRecordData);
  }
}

uint64_t sub_1001C6718()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x5464657070617277;
  }
}

uint64_t sub_1001C675C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5464657070617277 && a2 == 0xEA00000000004B4CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001C6854(uint64_t a1)
{
  v2 = sub_1001C8940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C6890(uint64_t a1)
{
  v2 = sub_1001C8940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C68FC(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506298, &qword_10040DFF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1001C8788();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v15 = 0;
  sub_100069E2C(v16, v9);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_10006A178(v16, v17);
  }

  else
  {
    sub_10006A178(v16, v17);
    v10 = v3[3];
    v16 = v3[2];
    v17 = v10;
    v15 = 1;
    sub_100069E2C(v16, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v16, v17);
    v12 = v3[5];
    v16 = v3[4];
    v17 = v12;
    v15 = 2;
    sub_100069E2C(v16, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v16, v17);
    v13 = v3[7];
    v16 = v3[6];
    v17 = v13;
    v15 = 3;
    sub_100069E2C(v16, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v16, v17);
    type metadata accessor for SESPeerIdentityData(0);
    LOBYTE(v16) = 4;
    type metadata accessor for Date();
    sub_1001C87DC(&qword_1005062A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 5;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata, &unk_10040DEBC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001C6C38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v3 - 8);
  v31 = &v29 - v4;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_100068FC4(&qword_100506260, &qword_10040DFD8);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for SESPeerIdentityData(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 40);
  static Date.now.getter();
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v36 = v16;
  v18(&v15[v16], 0, 1, v17);
  v19 = *(v13 + 44);
  sub_1001C5FF8(&v15[v19]);
  v20 = type metadata accessor for CreationMetadata(0);
  v21 = *(*(v20 - 8) + 56);
  v37 = v19;
  v21(&v15[v19], 0, 1, v20);
  v22 = a1[3];
  v38 = a1;
  sub_1000752B0(a1, v22);
  sub_1001C8788();
  v34 = v11;
  v23 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v25 = v36;
    sub_1000752F4(v38);
    sub_100075768(&v15[v25], &qword_1005031F0, &unk_10040C4C0);
    return sub_100075768(&v15[v37], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v35 = v17;
    v40 = 0;
    sub_1000B87D4();
    v24 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v15 = v39;
    v40 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v36;
    *(v15 + 1) = v39;
    v40 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + 2) = v39;
    v40 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + 3) = v39;
    LOBYTE(v39) = 4;
    sub_1001C87DC(&qword_100506270, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100147EA4(v7, &v15[v26], &qword_1005031F0, &unk_10040C4C0);
    LOBYTE(v39) = 5;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata, &unk_10040DEE4);
    v27 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v33 + 8))(v34, v24);
    sub_100147EA4(v27, &v15[v37], &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v15, v30, type metadata accessor for SESPeerIdentityData);
    sub_1000752F4(v38);
    return sub_1001C88E0(v15, type metadata accessor for SESPeerIdentityData);
  }
}

unint64_t sub_1001C7288()
{
  v1 = *v0;
  v2 = 0x6E65644972656570;
  v3 = 0x7472654364736163;
  v4 = 0x6E6F697461657263;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1001C7374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001C9060(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001C739C(uint64_t a1)
{
  v2 = sub_1001C8788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C73D8(uint64_t a1)
{
  v2 = sub_1001C8788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C7444(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005062E0, &qword_10040E018);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1001C8824();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for SESPeerIdentityData(0);
  sub_1001C87DC(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SESTLKShareData(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 2;
    sub_100069E2C(v13, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v13, v14);
    LOBYTE(v13) = 3;
    type metadata accessor for CreationMetadata(0);
    sub_1001C87DC(&qword_1005062A8, type metadata accessor for CreationMetadata, &unk_10040DEBC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001C76DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v32 = type metadata accessor for SESPeerIdentityData(0);
  __chkstk_darwin(v32);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = v26 - v9;
  v31 = sub_100068FC4(&qword_100506288, &qword_10040DFE8);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = v26 - v10;
  v12 = type metadata accessor for SESTLKShareData(0);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 28);
  sub_1001C5FF8(&v14[v16]);
  v17 = type metadata accessor for CreationMetadata(0);
  v18 = *(*(v17 - 8) + 56);
  v35 = v14;
  v36 = v16;
  v18(&v14[v16], 0, 1, v17);
  sub_1000752B0(a1, a1[3]);
  sub_1001C8824();
  v33 = v11;
  v19 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_1000752F4(a1);
    return sub_100075768(&v35[v36], &qword_100504F08, &unk_10040DE20);
  }

  else
  {
    v26[1] = v17;
    v27 = v5;
    v20 = v29;
    v34 = a1;
    LOBYTE(v37) = 0;
    sub_1001C87DC(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
    v21 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v21;
    v23 = v35;
    sub_1001C8B90(v22, v35, type metadata accessor for SESPeerIdentityData);
    LOBYTE(v37) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001C8B90(v7, v23 + *(v12 + 20), type metadata accessor for SESPeerIdentityData);
    v38 = 2;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + *(v12 + 24)) = v37;
    LOBYTE(v37) = 3;
    sub_1001C87DC(&qword_100506278, type metadata accessor for CreationMetadata, &unk_10040DEE4);
    v24 = v27;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v33, v31);
    sub_100147EA4(v24, v23 + v36, &qword_100504F08, &unk_10040DE20);
    sub_1001C8878(v23, v28, type metadata accessor for SESTLKShareData);
    sub_1000752F4(v34);
    return sub_1001C88E0(v23, type metadata accessor for SESTLKShareData);
  }
}

unint64_t sub_1001C7C6C()
{
  v1 = 0x6574707972636E65;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C7D04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001C927C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001C7D38(uint64_t a1)
{
  v2 = sub_1001C8824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C7D74(uint64_t a1)
{
  v2 = sub_1001C8824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C7DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();
  MGCopyAnswer();

  sub_100068FC4(&qword_100506280, &qword_10040DFE0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  return a3;
}

uint64_t sub_1001C7E7C(void *a1)
{
  v3 = sub_100068FC4(&qword_1005062D8, &qword_10040E010);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000752B0(a1, a1[3]);
  sub_1001C8994();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CreationMetadata(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_1001C87DC(&qword_1005062A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001C80F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for Date();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100068FC4(&qword_1005062C8, &qword_10040E008);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CreationMetadata(0);
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v39 = a1;
  sub_1000752B0(a1, v12);
  sub_1001C8994();
  v38 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(v39);
  }

  v13 = v35;
  v14 = v36;
  v45 = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v15;
  v33 = v11;
  v44 = 1;
  sub_1001C87DC(&qword_100506270, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v33 + v9[5], v6, v4);
  v43 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v33;
  v18 = (v33 + v9[6]);
  *v18 = v16;
  v18[1] = v19;
  v42 = 3;
  v32 = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v9;
  v22 = (v17 + v9[7]);
  *v22 = v20;
  v22[1] = v23;
  v41 = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = (v17 + v9[8]);
  *v25 = v24;
  v25[1] = v26;
  v40 = 5;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  (*(v13 + 8))(v38, v37);
  v30 = (v17 + v21[9]);
  *v30 = v27;
  v30[1] = v29;
  sub_1001C8878(v17, v34, type metadata accessor for CreationMetadata);
  sub_1000752F4(v39);
  return sub_1001C88E0(v17, type metadata accessor for CreationMetadata);
}

uint64_t sub_1001C8604()
{
  v1 = *v0;
  v2 = 0x6F69737265567773;
  v3 = 0x656369766564;
  v4 = 1684632420;
  if (v1 != 4)
  {
    v4 = 0x44495344746C61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x6C65646F6DLL;
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

uint64_t sub_1001C86AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001C93F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001C86E0(uint64_t a1)
{
  v2 = sub_1001C8994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C871C(uint64_t a1)
{
  v2 = sub_1001C8994();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001C8788()
{
  result = qword_100506268;
  if (!qword_100506268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506268);
  }

  return result;
}

uint64_t sub_1001C87DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001C8824()
{
  result = qword_100506290;
  if (!qword_100506290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506290);
  }

  return result;
}

uint64_t sub_1001C8878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C88E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C8940()
{
  result = qword_1005062B8;
  if (!qword_1005062B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005062B8);
  }

  return result;
}

unint64_t sub_1001C8994()
{
  result = qword_1005062D0;
  if (!qword_1005062D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005062D0);
  }

  return result;
}

id sub_1001C89E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();
  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for SESTLKShareData(0);
  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001C87DC(&qword_1005062E8, type metadata accessor for SESTLKShareData, &unk_10040DE94);
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v13 = v10;
    v14 = v11;

    v15 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v13, v14);
    v17 = [v15 withView:v6 tlkUUID:v7.super.isa sourcePeerIdentifier:v8.super.isa targetPeerIdentifier:v9.super.isa shareData:isa];

    return v17;
  }
}

uint64_t sub_1001C8B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001C8C44()
{
  result = qword_100506300;
  if (!qword_100506300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506300);
  }

  return result;
}

unint64_t sub_1001C8C9C()
{
  result = qword_100506308;
  if (!qword_100506308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506308);
  }

  return result;
}

unint64_t sub_1001C8CF4()
{
  result = qword_100506310;
  if (!qword_100506310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506310);
  }

  return result;
}

unint64_t sub_1001C8D4C()
{
  result = qword_100506318;
  if (!qword_100506318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506318);
  }

  return result;
}

unint64_t sub_1001C8DA4()
{
  result = qword_100506320;
  if (!qword_100506320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506320);
  }

  return result;
}

unint64_t sub_1001C8DFC()
{
  result = qword_100506328;
  if (!qword_100506328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506328);
  }

  return result;
}

unint64_t sub_1001C8E54()
{
  result = qword_100506330;
  if (!qword_100506330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506330);
  }

  return result;
}

unint64_t sub_1001C8EAC()
{
  result = qword_100506338;
  if (!qword_100506338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506338);
  }

  return result;
}

unint64_t sub_1001C8F04()
{
  result = qword_100506340;
  if (!qword_100506340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506340);
  }

  return result;
}

unint64_t sub_1001C8F5C()
{
  result = qword_100506348;
  if (!qword_100506348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506348);
  }

  return result;
}

unint64_t sub_1001C8FB4()
{
  result = qword_100506350;
  if (!qword_100506350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506350);
  }

  return result;
}

unint64_t sub_1001C900C()
{
  result = qword_100506358;
  if (!qword_100506358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506358);
  }

  return result;
}

uint64_t sub_1001C9060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972656570 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100466090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004660B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7472654364736163 && a2 == 0xEF65746163696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001C927C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001004660F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100466110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED0000626F6C4264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001C93F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737265567773 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1001C9628(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state);
  if (v3)
  {
    v4 = v2;
    v6 = qword_1005019D8;
    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = a1;
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
      _os_log_impl(&_mh_execute_header, v10, v11, "Removing %@ from background assertion table", v12, 0xCu);
      sub_1000C2998(v13);
    }

    v15 = [v9 processIdentifier];
    if (v15 >= 1)
    {
      v26 = 0;
      v16 = *&v7[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];
      __chkstk_darwin(v15);
      __chkstk_darwin(v17);

      os_unfair_lock_lock(v16 + 6);
      sub_1001CB170();
      os_unfair_lock_unlock(v16 + 6);

      v18 = *(v4 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver);
      [v18 unregisterForAppStateChanges:v9];

      return;
    }

    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v25, v23, "Invalid PID provided for invalidation", v24, 2u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0x662865766F6D6572, 0xED0000293A6D6F72, &v26);
      _os_log_impl(&_mh_execute_header, v25, v20, "%s called while not active", v21, 0xCu);
      sub_1000752F4(v22);

      return;
    }
  }
}

void sub_1001C9AD0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (*(*a1 + 16) && (sub_10008CBA8(a2), (v9 & 1) != 0))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unexpected assertion exist, pid=%d)", v13, 8u);
    }
  }

  else
  {
    type metadata accessor for BackgroundAssertionHandle();
    v14 = swift_allocObject();
    *(v14 + 48) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v14 + 16) = a3;
    *(v14 + 20) = a2;
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;

    *(v14 + 48) = a5;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 32);
    *(v14 + 32) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a1;
    sub_10031681C(v14, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v18;
  }
}

uint64_t sub_1001C9C8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_10008CBA8(a3);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100313190();
      v9 = v13;
    }

    v10 = v7;
    v11 = *(*(v9 + 56) + 8 * v7);
    sub_1000E39DC(v10, v9);
    *a1 = v9;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
}

void sub_1001C9D2C(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1 && (v3 = *(v2 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state)) != 0)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    __chkstk_darwin(a1);
    __chkstk_darwin(v5);
    v7 = v6;

    os_unfair_lock_lock(v4 + 6);
    sub_1001CB078();
    os_unfair_lock_unlock(v4 + 6);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v11, v9, "Invalid PID or observer inactive", v10, 2u);
    }
  }
}

unint64_t sub_1001C9EF8(unint64_t result, uint64_t a2)
{
  if (*(*result + 16))
  {
    result = sub_10008CBA8(a2);
    if (v2)
    {

      sub_10033325C(v3, v4);
    }
  }

  return result;
}

void sub_1001C9F50(int a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Wired transceive detected for %d, setting up background timer", v7, 8u);
  }

  if (a1 >= 1 && (v9 = *(v2 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state)) != 0)
  {
    v10 = *(v9 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    __chkstk_darwin(v8);
    __chkstk_darwin(v11);
    v13 = v12;

    os_unfair_lock_lock(v10 + 6);
    sub_1001CB170();
    os_unfair_lock_unlock(v10 + 6);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v16, v14, "Invalid PID or observer inactive", v15, 2u);
    }
  }
}

void sub_1001CA1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(*a1 + 16) && (sub_10008CBA8(a2), (v5 & 1) != 0))
  {
    v6 = *(a3 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_backgroundAssertionQueue);

    sub_1003333B8(v6, v7);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing assertion for %d, no background assertion support for this client", v11, 8u);
    }
  }
}

void sub_1001CA2E4(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  if (v3 < 1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "Invalid PID", v8, 2u);
    }
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions);
    __chkstk_darwin(v3);
    __chkstk_darwin(v5);

    os_unfair_lock_lock(v4 + 6);
    sub_1001CB170();
    os_unfair_lock_unlock(v4 + 6);
  }
}

void sub_1001CA4B0(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a2;
  v4 = *a1;
  if (*(*a1 + 16) && (v6 = sub_10008CBA8(a2), (v7 & 1) != 0))
  {
    *(*(*(v4 + 56) + 8 * v6) + 16) = a3;

    if (a3)
    {
      if (a3 == 1)
      {
        sub_100333CE0(v8, v9);
      }

      else
      {
        sub_100333E54(v8, v9);
      }
    }

    else
    {
      sub_100333A98(v8, v9);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v11, v12, "Assertion for %d not found", v13, 8u);
    }
  }
}

void sub_1001CA708(void *a1, const char *a2, int a3)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B2C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  sub_1001CA2E4(a3, a1);
}

id sub_1001CA87C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BackgroundAssertionMonitor.deinit()", v7, 2u);
  }

  v8 = *&v3[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];

  os_unfair_lock_lock((v8 + 24));
  sub_1001CA9B0((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SECBackgroundAssertion.AppStateObserverDelegate();
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_1001CA9B0(void *a1)
{
  v21 = a1;
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  v22 = v1;
  while (v5)
  {
LABEL_11:
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = p_class_meths[315];

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = p_class_meths;
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = *(v11 + 20);

      _os_log_impl(&_mh_execute_header, v14, v15, "Stopping timer for pid %d", v17, 8u);
      p_class_meths = v16;
      v1 = v22;

      v18 = *(v11 + 24);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v18 = *(v11 + 24);
      if (v18)
      {
LABEL_15:
        [v18 invalidate];
        v19 = *(v11 + 24);
        goto LABEL_18;
      }
    }

    v19 = 0;
LABEL_18:
    *(v11 + 24) = 0;

    v20 = *(v11 + 32);
    if (v20)
    {
      sub_1003AE754(v20);
      v9 = *(v11 + 32);
    }

    else
    {
      v9 = 0;
    }

    v5 &= v5 - 1;
    *(v11 + 32) = 0;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      *v21 = _swiftEmptyDictionarySingleton;
      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_1001CAC70()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v20 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions;
  v12 = sub_100091E8C(_swiftEmptyArrayStorage);
  sub_100068FC4(&unk_100506490, ",y\a");
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v14 = v19;
  *&v19[v11] = v13;
  v18 = OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_backgroundAssertionQueue;
  v17[1] = sub_10006928C();
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v22 = _swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v14[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for SECBackgroundAssertion.AppStateObserverDelegate();
  v21.receiver = v14;
  v21.super_class = v15;
  return objc_msgSendSuper2(&v21, "init");
}

unint64_t sub_1001CB0E0()
{
  result = qword_1005064A0;
  if (!qword_1005064A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005064A0);
  }

  return result;
}

char *sub_1001CB188(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v5 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JPKIInternalTypes.CertificateInfo();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for JPKIInternalTypes.InternalError();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v61 - v18);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v68 = a1;
  v23 = v72;
  sub_1001CB91C(a1, v70, v71, (&v61 - v21));
  if (v23)
  {
    (*(v14 + 32))(v69, v22, v13);
  }

  else
  {
    v62 = v12;
    v63 = v16;
    v61 = v9;
    v70 = v14;
    v71 = v13;
    v72 = 0;
    v25 = [objc_allocWithZone(RAPDU) init];
    v73 = 0;
    v26 = v68;
    v27 = sub_1003AEF50();
    if (v27)
    {
      v28 = v27;
      v29 = v73;

      v30 = sub_1003B0934(v28);
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      LODWORD(v30) = Data._Representation.subscript.getter();
      sub_10006A178(v31, v33);
      if ((~v30 & 0xC) != 0)
      {
        v19 = _swiftEmptyArrayStorage;
      }

      else
      {
        v34 = v72;
        sub_1001CBBD8(v26, 2, v19);
        if (v34)
        {

          (*(v70 + 32))(v69, v19, v71);
          return v19;
        }

        v72 = 0;
        (*(v66 + 104))(v65, enum case for JPKIInternalTypes.CertificateType.signing(_:), v67);
        v48 = v62;
        JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)();
        v19 = sub_10012FAF8(0, 1, 1, _swiftEmptyArrayStorage);
        v50 = v19[2];
        v49 = v19[3];
        if (v50 >= v49 >> 1)
        {
          v19 = sub_10012FAF8((v49 > 1), v50 + 1, 1, v19);
        }

        v51 = v64;
        v19[2] = v50 + 1;
        (*(v51 + 32))(v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, v48, v7);
      }

      v52 = sub_1003B0934(v28);
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      LODWORD(v52) = Data._Representation.subscript.getter();
      sub_10006A178(v53, v55);
      if ((~v52 & 0xC) != 0)
      {
      }

      else
      {
        v56 = v72;
        v57 = v63;
        sub_1001CBBD8(v26, 0, v63);
        if (v56)
        {

          (*(v70 + 32))(v69, v57, v71);
        }

        else
        {
          (*(v66 + 104))(v65, enum case for JPKIInternalTypes.CertificateType.user(_:), v67);
          v58 = v61;
          JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10012FAF8(0, v19[2] + 1, 1, v19);
          }

          v60 = v19[2];
          v59 = v19[3];
          if (v60 >= v59 >> 1)
          {
            v19 = sub_10012FAF8((v59 > 1), v60 + 1, 1, v19);
          }

          v19[2] = v60 + 1;
          (*(v64 + 32))(v19 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v60, v58, v7);
        }
      }
    }

    else
    {
      v35 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100501A60 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000958E4(v36, qword_1005064B8);
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v25;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v73 = v41;
        *v40 = 136315138;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_1002FFA0C(v42, v43, &v73);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Error while reading availability info %s", v40, 0xCu);
        sub_1000752F4(v41);

        v25 = v39;
      }

      v46 = v69;
      v45 = v70;
      v47 = v71;
      *v69 = 0xD00000000000003CLL;
      v46[1] = 0x8000000100466230;
      (*(v45 + 104))(v46, enum case for JPKIInternalTypes.InternalError.internalError(_:), v47);
      sub_1001D07D8();
      swift_willThrowTypedImpl();
    }
  }

  return v19;
}

void sub_1001CB91C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = sub_1003AF1FC(a1, isa);

  if (v9)
  {
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_1005064B8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = a3;
      v18 = v11;
      v19 = sub_1002FFA0C(v15, v16, &v26);

      *(v14 + 4) = v19;
      v11 = v18;
      a3 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to select Alphonso : %s", v14, 0xCu);
      sub_1000752F4(v25);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_100069E2C(a2, a3);
    _StringGuts.grow(_:)(28);

    v26 = 0xD00000000000001ALL;
    v27 = 0x80000001004662E0;
    swift_getErrorValue();
    v20._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v20);

    v21 = v26;
    v22 = v27;
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v21;
    a4[3] = v22;
    v23 = enum case for JPKIInternalTypes.InternalError.selectFailed(_:);
    v24 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v24 - 8) + 104))(a4, v23, v24);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_1001CBBD8(void *a1, char a2, void *a3)
{
  if (a2)
  {
    if (a2 != 2)
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v15._countAndFlagsBits = 0xD000000000000039;
      v15._object = 0x8000000100466270;
      String.append(_:)(v15);
      _print_unlocked<A, B>(_:_:)();
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      v16 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
      v17 = type metadata accessor for JPKIInternalTypes.InternalError();
      (*(*(v17 - 8) + 104))(a3, v16, v17);
      sub_1001D07D8();
      return swift_willThrowTypedImpl();
    }

    v5 = -101;
  }

  else
  {
    v5 = -104;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10040AA50;
  *(v6 + 32) = 0x2000;
  *(v6 + 34) = 0;
  *(v6 + 35) = v5;
  *(v6 + 36) = 0;
  v7 = sub_1002B3B94(v6);
  v9 = v8;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v11 = sub_1003AE9C8(a1, isa, v31);

  if (v11)
  {
    v12 = v31[0];
    if ((~sub_1003B0984(v11) & 0x63C0) != 0)
    {

      sub_10006A178(v7, v9);
      return 0;
    }

    else
    {
      v13 = sub_1003B0984(v11);

      sub_10006A178(v7, v9);
      return v13 & 0xF;
    }
  }

  else
  {
    v18 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005064B8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v22 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1002FFA0C(v23, v24, v31);

      *(v22 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Authentication invalid and failed with error %s", v22, 0xCu);
      sub_1000752F4(v30);
    }

    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    *a3 = 0xD000000000000027;
    a3[1] = 0x80000001004662B0;
    a3[2] = v26;
    a3[3] = v27;
    v28 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
    v29 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v29 - 8) + 104))(a3, v28, v29);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v7, v9);
  }
}

uint64_t sub_1001CC040(void *a1, uint64_t a2, void *a3, id *a4, uint64_t a5, uint64_t *a6)
{
  v127 = a6;
  v125 = a5;
  v126 = a4;
  v130 = a3;
  v128 = a2;
  v124 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for JPKIInternalTypes.UserAuthenticationInternal();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v9 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JPKIInternalTypes.InternalError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (v117 - v15);
  __chkstk_darwin(v17);
  v19 = (v117 - v18);
  __chkstk_darwin(v20);
  v22 = v117 - v21;
  v23 = a1;
  v24 = a1;
  v25 = v129;
  v26 = v128;
  sub_1001CB91C(v24, v128, v130, (v117 - v21));
  if (v25)
  {
    (*(v11 + 32))(v127, v22, v10);
    return v26;
  }

  v27 = v16;
  v117[0] = v13;
  v117[1] = v19;
  v28 = v26;
  v29 = v124;
  v129 = v23;
  v119 = v11;
  v118 = v10;
  v30 = v122;
  v31 = v123;
  (*(v122 + 16))(v9, v125, v123);
  v32 = (*(v30 + 88))(v9, v31);
  v33 = v30;
  if (v32 == enum case for JPKIInternalTypes.UserAuthenticationInternal.standard(_:))
  {
    (*(v30 + 96))(v9, v31);
    sub_1001CDF98(v129, v126, *v9, *(v9 + 1), v27);
    v34 = v119;
    v37 = v29;

    v38 = v121;
    v39 = v120;
  }

  else
  {
    v34 = v119;
    if (v32 != enum case for JPKIInternalTypes.UserAuthenticationInternal.biometry(_:))
    {
      goto LABEL_113;
    }

    v37 = v29;
    (*(v33 + 96))(v9, v31);
    v35 = *v9;
    v36 = *(v9 + 1);
    sub_1001CEE1C(v129, v28, v130, v126, v35, v36, v117[0]);
    v38 = v121;
    v39 = v120;
    sub_10006A178(v35, v36);
  }

  (*(v38 + 16))(v39, v126, v37);
  v40 = (*(v38 + 88))(v39, v37);
  if (v40 == enum case for JPKIInternalTypes.CertificateType.user(_:))
  {
    v41 = 10;
    goto LABEL_11;
  }

  if (v40 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
LABEL_113:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v41 = 1;
LABEL_11:
  v138 = xmmword_1004098D0;
  v134 = 0;
  LODWORD(v128) = v41;
  v42 = sub_1003AEF50();
  v43 = v134;
  if (!v42)
  {
    v61 = v134;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_95;
  }

  v44 = v42;
  v45 = v43;
  v46 = sub_1003B0934(v44);
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v136 = &type metadata for Data;
  v137 = &protocol witness table for Data;
  v134 = v47;
  v135 = v49;
  v50 = sub_1000752B0(&v134, &type metadata for Data);
  v51 = *v50;
  v52 = v50[1];
  sub_100069E2C(v47, v49);
  sub_10008E4C8(v51, v52, &v138);
  sub_10006A178(v47, v49);
  sub_1000752F4(&v134);
  v53 = sub_1003B0934(v44);
  v54 = v44;

  v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = v57;
  v59 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v59 != 2)
    {
      sub_10006A178(v55, v57);
      v60 = 0;
      goto LABEL_23;
    }

    v63 = *(v55 + 16);
    v62 = *(v55 + 24);
    sub_10006A178(v55, v58);
    v60 = v62 - v63;
    if (!__OFSUB__(v62, v63))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    sub_10006A178(v55, v58);
    if (__OFSUB__(HIDWORD(v55), v55))
    {
      goto LABEL_112;
    }

    v60 = HIDWORD(v55) - v55;
    goto LABEL_23;
  }

  if (v59)
  {
    goto LABEL_20;
  }

  sub_10006A178(v55, v57);
  v60 = BYTE6(v57);
LABEL_23:
  v64 = 0;
  v66 = *(&v138 + 1);
  v65 = v138;
  v67 = *(&v138 + 1) >> 62;
  if ((*(&v138 + 1) >> 62) > 1)
  {
    if (v67 == 2)
    {
      v64 = *(v138 + 16);
    }
  }

  else if (v67)
  {
    v64 = v138;
  }

  if (__OFADD__(v64, 1))
  {
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
  }

  if (v67 > 1)
  {
    if (v67 == 2)
    {
      v68 = *(v138 + 24);
    }

    else
    {
      v68 = 0;
    }
  }

  else if (v67)
  {
    v68 = v138 >> 32;
  }

  else
  {
    v68 = BYTE14(v138);
  }

  if (v68 < v64 + 1)
  {
    goto LABEL_109;
  }

  sub_100069E2C(v138, *(&v138 + 1));
  v69 = Data._Representation.subscript.getter();
  v71 = v70;
  sub_10006A178(v65, v66);
  v132 = v69;
  v133 = v71;
  v72 = sub_1001ACD80(&v132);
  v123 = 0;
  v74 = 0;
  v125 = v132;
  v124 = v133;
  v75 = v133 >> 62;
  v76 = v54;
  if ((v133 >> 62) > 1)
  {
    if (v75 == 2)
    {
      v74 = *(v125 + 16);
    }
  }

  else if (v75)
  {
    v74 = v125;
  }

  v130 = (v72 + v74);
  if (__OFADD__(v72, v74))
  {
    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v80 = *(&v138 + 1);
    v79 = v138;
    v81 = *(&v138 + 1) >> 62;
    if ((*(&v138 + 1) >> 62) <= 1)
    {
      if (v81)
      {
        LODWORD(v82) = DWORD1(v138) - v138;
        if (__OFSUB__(DWORD1(v138), v138))
        {
          goto LABEL_100;
        }

        v82 = v82;
      }

      else
      {
        v82 = BYTE14(v138);
      }

LABEL_56:
      if (v82 >= v130)
      {
        goto LABEL_93;
      }

      if (v81 == 2)
      {
        v87 = *(v138 + 16);
        v86 = *(v138 + 24);
        v78 = __OFSUB__(v86, v87);
        v85 = v86 - v87;
        if (v78)
        {
          goto LABEL_102;
        }
      }

      else if (v81 == 1)
      {
        LODWORD(v85) = DWORD1(v138) - v138;
        if (__OFSUB__(DWORD1(v138), v138))
        {
          goto LABEL_103;
        }

        v85 = v85;
      }

      else
      {
        v85 = BYTE14(v138);
      }

      goto LABEL_67;
    }

    if (v81 == 2)
    {
      v84 = *(v138 + 16);
      v83 = *(v138 + 24);
      v78 = __OFSUB__(v83, v84);
      v82 = v83 - v84;
      if (v78)
      {
        goto LABEL_101;
      }

      goto LABEL_56;
    }

    if (v130 <= 0)
    {
LABEL_93:

      sub_10006A178(v125, v124);
      type metadata accessor for JPKIInternalTypes.CertificateData();
      sub_100069E2C(v79, v80);
      v26 = JPKIInternalTypes.CertificateData.__allocating_init(certificateData:)();
      sub_10006A178(v138, *(&v138 + 1));
      return v26;
    }

    v85 = 0;
LABEL_67:
    v78 = __OFSUB__(3900, v85);
    v88 = 3900 - v85;
    if (v78)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v88 < 0)
    {
      goto LABEL_98;
    }

    v134 = 0;
    v89 = sub_1003AEF50();
    if (!v89)
    {
      break;
    }

    v90 = v89;
    v91 = v134;

    v76 = v90;
    v92 = sub_1003B0934(v76);
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v136 = &type metadata for Data;
    v137 = &protocol witness table for Data;
    v134 = v93;
    v135 = v95;
    v96 = sub_1000752B0(&v134, &type metadata for Data);
    v97 = *v96;
    v98 = v96[1];
    v99 = v98 >> 62;
    if ((v98 >> 62) > 1)
    {
      if (v99 != 2)
      {
        memset(v131, 0, 14);
        goto LABEL_83;
      }

      v126 = v76;
      v100 = *(v97 + 16);
      v101 = *(v97 + 24);
      sub_100069E2C(v93, v95);
      if (__DataStorage._bytes.getter() && __OFSUB__(v100, __DataStorage._offset.getter()))
      {
        goto LABEL_110;
      }

      if (__OFSUB__(v101, v100))
      {
        goto LABEL_105;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_10006A178(v93, v95);
      v76 = v126;
    }

    else
    {
      if (!v99)
      {
        v131[0] = *v96;
        LOWORD(v131[1]) = v98;
        BYTE2(v131[1]) = BYTE2(v98);
        BYTE3(v131[1]) = BYTE3(v98);
        BYTE4(v131[1]) = BYTE4(v98);
        BYTE5(v131[1]) = BYTE5(v98);
LABEL_83:
        Data._Representation.append(contentsOf:)();
        goto LABEL_84;
      }

      v102 = v97;
      if (v97 >> 32 < v97)
      {
        goto LABEL_104;
      }

      sub_100069E2C(v93, v95);
      if (__DataStorage._bytes.getter() && __OFSUB__(v102, __DataStorage._offset.getter()))
      {
        goto LABEL_111;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_10006A178(v93, v95);
    }

LABEL_84:
    sub_1000752F4(&v134);
    v103 = sub_1003B0934(v76);

    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    v73 = v105;
    v106 = v105 >> 62;
    if ((v105 >> 62) > 1)
    {
      if (v106 == 2)
      {
        v108 = *(v65 + 16);
        v107 = *(v65 + 24);
        sub_10006A178(v65, v73);
        v77 = v107 - v108;
        if (__OFSUB__(v107, v108))
        {
          goto LABEL_107;
        }
      }

      else
      {
LABEL_45:
        sub_10006A178(v65, v73);
        v77 = 0;
      }
    }

    else if (v106)
    {
      sub_10006A178(v65, v105);
      LODWORD(v77) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
        goto LABEL_106;
      }

      v77 = v77;
    }

    else
    {
      sub_10006A178(v65, v105);
      v77 = BYTE6(v105);
    }

    v78 = __OFADD__(v60, v77);
    v60 += v77;
    if (v78)
    {
      goto LABEL_99;
    }
  }

  v109 = v134;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10006A178(v125, v124);
  v34 = v119;
LABEL_95:
  swift_getErrorValue();
  v110 = Error.localizedDescription.getter();
  v112 = v111;
  LOBYTE(v134) = v128;
  v113 = dispatch thunk of CustomStringConvertible.description.getter();
  v114 = v127;
  *v127 = v110;
  v114[1] = v112;
  v114[2] = v113;
  v114[3] = v115;
  v26 = v118;
  (*(v34 + 104))(v114, enum case for JPKIInternalTypes.InternalError.certificateReadFailed(_:), v118);
  sub_1001D07D8();
  swift_willThrowTypedImpl();

  sub_10006A178(v138, *(&v138 + 1));
  return v26;
}

uint64_t sub_1001CCDF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v133 = a5;
  v126 = a4;
  v129 = a3;
  v128 = a2;
  v131 = a1;
  v120 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for String.Encoding();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JPKIInternalTypes.InternalError();
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v125 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v127 = (&v116 - v14);
  v15 = type metadata accessor for JPKIInternalTypes.UserAuthentication();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v19);
  v22 = (&v116 - v21);
  v132 = *(v16 + 16);
  v132(&v116 - v21, a6, v15, v20);
  v23 = *(v16 + 88);
  v24 = v23(v22, v15);
  if (v24 != enum case for JPKIInternalTypes.UserAuthentication.standard(_:))
  {
    v18 = v22;
LABEL_7:
    (*(v16 + 8))(v18, v15);
    *a7 = 0xD000000000000014;
    a7[1] = 0x8000000100466300;
    a7[2] = 0xD000000000000029;
    a7[3] = 0x8000000100466320;
    v34 = &enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
LABEL_8:
    (*(v134 + 104))(a7, *v34, v135);
    sub_1001D07D8();
    return swift_willThrowTypedImpl();
  }

  v25 = v24;
  v121 = a7;
  v117 = *(v16 + 96);
  v117(v22, v15);
  v26 = *v22;
  v27 = v22[1];
  v116 = v26;
  (v132)(v18, v133, v15);
  if (v23(v18, v15) != v25)
  {

    a7 = v121;
    goto LABEL_7;
  }

  v117(v18, v15);
  v28 = *v18;
  v29 = v18[1];
  v30 = v131;
  v31 = v130;
  v32 = v127;
  sub_1001CB91C(v131, v128, v129, v127);
  if (v31)
  {

    return (*(v134 + 32))(v121, v32, v135);
  }

  v35 = v126;
  sub_1001CDF98(v30, v126, v28, v29, v125);
  v36 = v122;
  static String.Encoding.ascii.getter();
  v37 = v116;
  v38 = v27;
  v39 = String.data(using:allowLossyConversion:)();
  v41 = v40;
  (*(v123 + 8))(v36, v124);
  if (v41 >> 60 == 15)
  {

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000958E4(v42, qword_1005064B8);
    v43 = v38;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v137[0] = v47;
      *v46 = 136642819;
      v48 = sub_1002FFA0C(v37, v43, v137);

      *(v46 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Invalid auth string provided, cannot decode %{sensitive}s in ascii", v46, 0xCu);
      sub_1000752F4(v47);
    }

    else
    {
    }

    a7 = v121;
    *v121 = 0xD000000000000023;
    a7[1] = 0x8000000100466350;
    v34 = &enum case for JPKIInternalTypes.InternalError.typeMismatch(_:);
    goto LABEL_8;
  }

  v49 = v119;
  v50 = v118;
  v51 = v120;
  (*(v119 + 16))(v118, v35, v120);
  v52 = (*(v49 + 88))(v50, v51);
  if (v52 == enum case for JPKIInternalTypes.CertificateType.user(_:))
  {
    v53 = -104;
  }

  else
  {
    if (v52 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
    {
LABEL_89:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v53 = -101;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10040AA50;
  *(v54 + 32) = 9216;
  *(v54 + 34) = 1;
  *(v54 + 35) = v53;
  v55 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v55)
    {
      v56 = HIWORD(v41);
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v55 != 2)
  {
LABEL_32:
    LOBYTE(v56) = 0;
    goto LABEL_33;
  }

  v58 = *(v39 + 16);
  v57 = *(v39 + 24);
  v59 = __OFSUB__(v57, v58);
  v56 = v57 - v58;
  if (v59)
  {
    __break(1u);
LABEL_27:
    LODWORD(v56) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      __break(1u);
    }

    v56 = v56;
  }

  if ((v56 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_36;
  }

  if (v56 > 0xFF)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  *(v54 + 36) = v56;
  v60 = sub_1002B3B94(v54);
  v62 = v61;

  v138 = v60;
  v139 = v62;
  Data.append(_:)();
  v29 = v39;
  v63 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v137[3] = v63;
  v137[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28, &protocol conformance descriptor for <A> CollectionOfOne<A>);
  LOBYTE(v137[0]) = 0;
  v136 = *sub_1000752B0(v137, v63);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(v137);
  v64 = v138;
  v65 = v139;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v137[0] = 0;
  v67 = sub_100053EE8(v131, isa, v137);

  v68 = v137[0];
  if (v67)
  {
    sub_10009393C(0, &qword_100506538, off_1004BE528);
    v69 = v68;
    v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v85 = sub_1001D0830();
    sub_10006A178(v70, v72);
    sub_10006A178(v138, v139);
    v86 = sub_1003B0984(v85);
    if (v86 > 28417)
    {
      v87 = v29;
      if (v86 != 28418)
      {
        if (v86 == 36864)
        {

          return sub_10006A2D0(v29, v41);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v87 = v29;
      if (v86 == 27012)
      {
        if (qword_100501A60 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_1000958E4(v100, qword_1005064B8);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "User authentication method blocked", v103, 2u);
        }

        (*(v134 + 104))(v121, enum case for JPKIInternalTypes.InternalError.userAuthenticationMethodBlocked(_:), v135);
        goto LABEL_82;
      }

      if (v86 != 27013)
      {
LABEL_52:
        v93 = v87;
        if (qword_100501A60 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_1000958E4(v94, qword_1005064B8);
        v95 = v85;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v137[0] = v99;
          *v98 = 33554946;
          *(v98 + 4) = sub_1003B0984(v95);

          *(v98 + 6) = 2080;
          *(v98 + 8) = sub_1002FFA0C(0xD00000000000005CLL, 0x80000001004663D0, v137);
          _os_log_impl(&_mh_execute_header, v96, v97, "Unexpected status word %hu returned during %s", v98, 0x10u);
          sub_1000752F4(v99);
        }

        else
        {
        }

        (*(v134 + 104))(v121, enum case for JPKIInternalTypes.InternalError.unknownError(_:), v135);
        sub_1001D07D8();
        swift_willThrowTypedImpl();

        v104 = v93;
        return sub_10006A2D0(v104, v41);
      }
    }

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_1000958E4(v88, qword_1005064B8);
    sub_100069E2C(v87, v41);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v89, v90))
    {
      sub_10006A2D0(v87, v41);
LABEL_72:

      v137[0] = 0;
      v137[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      strcpy(v137, "Wrong length (");
      HIBYTE(v137[1]) = -18;
      if (v55 > 1)
      {
        v108 = 0;
        if (v55 != 2)
        {
          goto LABEL_81;
        }

        v110 = *(v87 + 16);
        v109 = *(v87 + 24);
        v59 = __OFSUB__(v109, v110);
        v108 = v109 - v110;
        if (!v59)
        {
          goto LABEL_81;
        }

        __break(1u);
      }

      else if (!v55)
      {
        v108 = BYTE6(v41);
LABEL_81:
        v138 = v108;
        v111._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v111);

        v112._countAndFlagsBits = 0x77656E20666F2029;
        v112._object = 0xED00006874756120;
        String.append(_:)(v112);
        v113 = v137[0];
        v114 = v137[1];
        v115 = v121;
        *v121 = 0xD00000000000001FLL;
        v115[1] = 0x8000000100466430;
        v115[2] = v113;
        v115[3] = v114;
        (*(v134 + 104))(v115, enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:), v135);
LABEL_82:
        sub_1001D07D8();
        swift_willThrowTypedImpl();

        v104 = v87;
        return sub_10006A2D0(v104, v41);
      }

      LODWORD(v108) = HIDWORD(v87) - v87;
      if (!__OFSUB__(HIDWORD(v87), v87))
      {
        v108 = v108;
        goto LABEL_81;
      }

      __break(1u);
      goto LABEL_88;
    }

    v91 = swift_slowAlloc();
    *v91 = 134217984;
    if (v55 > 1)
    {
      if (v55 != 2)
      {
        v92 = 0;
        goto LABEL_71;
      }

      v106 = *(v87 + 16);
      v105 = *(v87 + 24);
      v59 = __OFSUB__(v105, v106);
      v92 = v105 - v106;
      if (!v59)
      {
        goto LABEL_71;
      }

      __break(1u);
    }

    else if (!v55)
    {
      v92 = BYTE6(v41);
LABEL_71:
      *(v91 + 4) = v92;
      v107 = v91;
      sub_10006A2D0(v87, v41);
      _os_log_impl(&_mh_execute_header, v89, v90, "Wrong length (%ld) of provided authentication", v107, 0xCu);

      goto LABEL_72;
    }

    LODWORD(v92) = HIDWORD(v87) - v87;
    if (__OFSUB__(HIDWORD(v87), v87))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v92 = v92;
    goto LABEL_71;
  }

  v73 = v137[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10006A178(v64, v65);
  if (qword_100501A60 != -1)
  {
    goto LABEL_85;
  }

LABEL_36:
  v74 = type metadata accessor for Logger();
  sub_1000958E4(v74, qword_1005064B8);
  swift_errorRetain();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v137[0] = v78;
    *v77 = 136315138;
    swift_getErrorValue();
    v79 = Error.localizedDescription.getter();
    v81 = sub_1002FFA0C(v79, v80, v137);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "Currenty authentication invalid and failed with error %s", v77, 0xCu);
    sub_1000752F4(v78);
  }

  swift_getErrorValue();
  v82 = Error.localizedDescription.getter();
  v83 = v121;
  *v121 = 0xD000000000000027;
  v83[1] = 0x80000001004662B0;
  v83[2] = v82;
  v83[3] = v84;
  (*(v134 + 104))(v83, enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:), v135);
  sub_1001D07D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v29, v41);
}

uint64_t sub_1001CDF98(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v107 = a1;
  v108 = a5;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  v18 = enum case for JPKIInternalTypes.CertificateType.user(_:);
  if (v17 != enum case for JPKIInternalTypes.CertificateType.user(_:) && v17 != enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_85:
      v110[0] = 0;
      v110[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v110[0] = 0xD000000000000017;
      v110[1] = 0x8000000100466470;
      LOWORD(v109) = sub_1003B0984(v18);
      v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v103);

      v104._countAndFlagsBits = 0xD000000000000011;
      v104._object = 0x8000000100466490;
      String.append(_:)(v104);
      v105._countAndFlagsBits = 0xD000000000000046;
      v105._object = 0x80000001004664B0;
      String.append(_:)(v105);
    }
  }

  v20 = v17;
  static String.Encoding.ascii.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  if (v23 >> 60 != 15)
  {
    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10040AA50;
    *(v33 + 32) = 0x2000;
    *(v33 + 34) = 0;
    if (v20 == v18)
    {
      v34 = -104;
    }

    else
    {
      v34 = -101;
    }

    *(v33 + 35) = v34;
    v35 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_27;
      }

      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      v39 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (!v39)
      {
LABEL_24:
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v36 <= 0xFF)
        {
LABEL_28:
          *(v33 + 36) = v36;
          v40 = sub_1002B3B94(v33);
          v42 = v41;

          v111 = v40;
          v112 = v42;
          Data.append(_:)();
          v106[0] = v21;
          v43 = sub_100068FC4(&qword_100502608, &qword_100409A28);
          v110[3] = v43;
          v110[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28, &protocol conformance descriptor for <A> CollectionOfOne<A>);
          LOBYTE(v110[0]) = 0;
          LOBYTE(v109) = *sub_1000752B0(v110, v43);
          Data._Representation.replaceSubrange(_:with:count:)();
          sub_1000752F4(v110);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v110[0] = 0;
          v45 = sub_100053EE8(v107, isa, v110);

          v46 = v110[0];
          if (!v45)
          {
            v53 = v110[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
LABEL_32:
            if (qword_100501A60 == -1)
            {
LABEL_33:
              v54 = type metadata accessor for Logger();
              sub_1000958E4(v54, qword_1005064B8);
              swift_errorRetain();
              v55 = Logger.logObject.getter();
              v56 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                v110[0] = v58;
                *v57 = 136315138;
                swift_getErrorValue();
                v59 = Error.localizedDescription.getter();
                v61 = sub_1002FFA0C(v59, v60, v110);

                *(v57 + 4) = v61;
                _os_log_impl(&_mh_execute_header, v55, v56, "Authentication invalid and failed with error %s", v57, 0xCu);
                sub_1000752F4(v58);
              }

              swift_getErrorValue();
              v62 = Error.localizedDescription.getter();
              v63 = v108;
              *v108 = 0xD000000000000027;
              v63[1] = 0x80000001004662B0;
              v63[2] = v62;
              v63[3] = v64;
              v65 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
              v66 = type metadata accessor for JPKIInternalTypes.InternalError();
              (*(*(v66 - 8) + 104))(v63, v65, v66);
              sub_1001D07D8();
              swift_willThrowTypedImpl();
              sub_10006A2D0(v106[0], v23);

              return sub_10006A178(v111, v112);
            }

LABEL_79:
            swift_once();
            goto LABEL_33;
          }

          sub_10009393C(0, &qword_100506538, off_1004BE528);
          v47 = v46;
          v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51 = v106[1];
          v52 = sub_1001D0830();
          if (v51)
          {
            sub_10006A178(v48, v50);
            goto LABEL_32;
          }

          v18 = v52;
          sub_10006A178(v48, v50);
          v67 = sub_1003B0984(v18);
          if (v67 != 27012)
          {
            if (v67 == 36864)
            {
              sub_10006A2D0(v106[0], v23);

              return sub_10006A178(v111, v112);
            }

            if ((v67 - 25552) >= 0xFFFFFFF0)
            {
              v80 = sub_1003B0984(v18) & 0xF;
              v81 = v106[0];
              if (qword_100501A60 != -1)
              {
                swift_once();
              }

              v82 = type metadata accessor for Logger();
              sub_1000958E4(v82, qword_1005064B8);
              v83 = Logger.logObject.getter();
              v84 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                *v85 = 134217984;
                *(v85 + 4) = v80;
                _os_log_impl(&_mh_execute_header, v83, v84, "Incorrect user authentication, %ld retries left", v85, 0xCu);
                v81 = v106[0];
              }

              v86 = v108;
              *v108 = v80;
              v87 = enum case for JPKIInternalTypes.InternalError.incorrectUserAuthentication(_:);
              v88 = type metadata accessor for JPKIInternalTypes.InternalError();
              (*(*(v88 - 8) + 104))(v86, v87, v88);
              sub_1001D07D8();
              swift_willThrowTypedImpl();
              v89 = v81;
              goto LABEL_77;
            }

            v74 = v106[0];
            if (v67 != 26368)
            {
              goto LABEL_85;
            }

            if (qword_100501A60 != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            sub_1000958E4(v75, qword_1005064B8);
            sub_100069E2C(v74, v23);
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v76, v77))
            {
              sub_10006A2D0(v74, v23);
LABEL_66:

              v110[0] = 0;
              v110[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(34);

              strcpy(v110, "Wrong length (");
              HIBYTE(v110[1]) = -18;
              if (v35 > 1)
              {
                v93 = 0;
                if (v35 != 2)
                {
                  goto LABEL_75;
                }

                v95 = *(v106[0] + 16);
                v94 = *(v106[0] + 24);
                v39 = __OFSUB__(v94, v95);
                v93 = v94 - v95;
                if (!v39)
                {
                  goto LABEL_75;
                }

                __break(1u);
              }

              else if (!v35)
              {
                v93 = BYTE6(v23);
LABEL_75:
                v109 = v93;
                v96._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v96);

                v97._countAndFlagsBits = 0xD000000000000012;
                v97._object = 0x8000000100466500;
                String.append(_:)(v97);
                v98 = v110[0];
                v99 = v110[1];
                v100 = v108;
                *v108 = 0xD000000000000027;
                v100[1] = 0x80000001004662B0;
                v100[2] = v98;
                v100[3] = v99;
                v101 = enum case for JPKIInternalTypes.InternalError.invalidPINorPasscode(_:);
                v102 = type metadata accessor for JPKIInternalTypes.InternalError();
                (*(*(v102 - 8) + 104))(v100, v101, v102);
                sub_1001D07D8();
LABEL_76:
                swift_willThrowTypedImpl();
                v89 = v106[0];
LABEL_77:
                sub_10006A2D0(v89, v23);

                return sub_10006A178(v111, v112);
              }

              LODWORD(v93) = HIDWORD(v74) - v74;
              if (!__OFSUB__(HIDWORD(v74), v74))
              {
                v93 = v93;
                goto LABEL_75;
              }

              __break(1u);
LABEL_83:
              __break(1u);
            }

            v78 = swift_slowAlloc();
            *v78 = 134217984;
            if (v35 > 1)
            {
              if (v35 != 2)
              {
                v79 = 0;
                goto LABEL_65;
              }

              v91 = *(v106[0] + 16);
              v90 = *(v106[0] + 24);
              v39 = __OFSUB__(v90, v91);
              v79 = v90 - v91;
              if (!v39)
              {
                goto LABEL_65;
              }

              __break(1u);
            }

            else if (!v35)
            {
              v79 = BYTE6(v23);
LABEL_65:
              *(v78 + 4) = v79;
              v92 = v78;
              v74 = v106[0];
              sub_10006A2D0(v106[0], v23);
              _os_log_impl(&_mh_execute_header, v76, v77, "Wrong length (%ld) of provided authentication", v92, 0xCu);

              goto LABEL_66;
            }

            LODWORD(v79) = HIDWORD(v106[0]) - LODWORD(v106[0]);
            if (__OFSUB__(HIDWORD(v106[0]), v106[0]))
            {
              goto LABEL_83;
            }

            v79 = v79;
            goto LABEL_65;
          }

          if (qword_100501A60 == -1)
          {
LABEL_41:
            v68 = type metadata accessor for Logger();
            sub_1000958E4(v68, qword_1005064B8);
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&_mh_execute_header, v69, v70, "User authentication method blocked", v71, 2u);
            }

            v72 = enum case for JPKIInternalTypes.InternalError.userAuthenticationMethodBlocked(_:);
            v73 = type metadata accessor for JPKIInternalTypes.InternalError();
            (*(*(v73 - 8) + 104))(v108, v72, v73);
            sub_1001D07D8();
            goto LABEL_76;
          }

LABEL_81:
          swift_once();
          goto LABEL_41;
        }

        __break(1u);
LABEL_27:
        LOBYTE(v36) = 0;
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v35)
    {
      v36 = HIWORD(v23);
      goto LABEL_28;
    }

    LODWORD(v36) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      goto LABEL_81;
    }

    v36 = v36;
    goto LABEL_24;
  }

  if (qword_100501A60 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_1005064B8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v110[0] = v28;
    *v27 = 136642819;
    *(v27 + 4) = sub_1002FFA0C(a3, a4, v110);
    _os_log_impl(&_mh_execute_header, v25, v26, "Invalid auth string provided, cannot decode %{sensitive}s in ascii", v27, 0xCu);
    sub_1000752F4(v28);
  }

  v29 = v108;
  *v108 = 0xD00000000000001ELL;
  v29[1] = 0x8000000100466450;
  v30 = enum case for JPKIInternalTypes.InternalError.typeMismatch(_:);
  v31 = type metadata accessor for JPKIInternalTypes.InternalError();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  sub_1001D07D8();
  return swift_willThrowTypedImpl();
}

void sub_1001CEE1C(void *a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7)
{
  v153 = a6;
  v154 = a7;
  v152 = a5;
  v11 = type metadata accessor for JPKIInternalTypes.InternalError();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v139 - v16;
  v18 = sub_1001CFD54(a1, a2, a3, (v139 - v16));
  if (v7)
  {
    (*(v12 + 32))(v154, v17, v11);
    return;
  }

  v20 = v18;
  v151 = v19;
  v149 = 0;
  v142 = v14;
  v143 = a2;
  v144 = a3;
  v146 = v12;
  v147 = v11;
  if (qword_100501A60 != -1)
  {
    swift_once();
  }

  v148 = a1;
  v21 = type metadata accessor for Logger();
  v22 = sub_1000958E4(v21, qword_1005064B8);
  v23 = v151;
  sub_100069E2C(v20, v151);
  v145 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  sub_10006A178(v20, v23);
  v26 = os_log_type_enabled(v24, v25);
  v150 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v156 = v28;
    *v27 = 136315138;
    v29 = v149;
    v30 = sub_100288788(v150, v23);
    v149 = v29;
    v155 = v30;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = sub_1002FFA0C(v31, v33, &v156);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "Performing biometric with ACL %s", v27, 0xCu);
    sub_1000752F4(v28);
  }

  v153 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = String._bridgeToObjectiveC()();
  v37 = Data._bridgeToObjectiveC()().super.isa;
  v38 = v148;
  v40 = sub_1003AF3C4(v148, v39);
  v41 = [v40 seid];

  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v42, v44);
  v156 = 0;
  v46 = isa;
  v47 = [v153 performChainAuthIfNeededForACL:isa operation:v36 auth:v37 seHandle:v38 seid:v45 error:&v156];

  if (v156)
  {
    v48 = v156;

    swift_willThrow();
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v154;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v156 = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v56 = Error.localizedDescription.getter();
      v58 = sub_1002FFA0C(v56, v57, &v156);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to perform chain verification : %s", v54, 0xCu);
      sub_1000752F4(v55);
    }

    v59 = v151;
    v60 = _convertErrorToNSError(_:)();
    v61 = [v60 code];

    *v53 = v61;
    (*(v146 + 104))(v53, enum case for JPKIInternalTypes.InternalError.biometryFailed(_:), v147);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v150, v59);

    return;
  }

  v62 = v47;
  sub_1003AF2D8(v38);
  v63 = v154;
  if (!v62)
  {
    *v154 = 0xD00000000000001ALL;
    v63[1] = 0x8000000100466580;
    (*(v146 + 104))(v63, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v147);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v150, v151);
    return;
  }

  v64 = [v62 resolvedAuthorization];

  v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v38;
  v68 = v67;

  v69 = v149;
  v70 = v142;
  sub_1001CB91C(v38, v143, v144, v142);
  if (v69)
  {
    sub_10006A178(v150, v151);
    sub_10006A178(v65, v68);
    (*(v146 + 32))(v63, v70, v147);
LABEL_14:

    return;
  }

  v139[1] = 0;
  v149 = sub_1002B3B94(&off_1004C4880);
  v152 = v71;
  v72 = Data._bridgeToObjectiveC()().super.isa;
  v156 = 0;
  v73 = sub_1003AEB5C(v38, v72, &v156);

  v153 = v65;
  if (!v73)
  {
    v99 = v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v144 = v62;
      v103 = v102;
      v104 = swift_slowAlloc();
      v143 = v68;
      v105 = v104;
      v156 = v104;
      *v103 = 136315138;
      swift_getErrorValue();
      v106 = Error.localizedDescription.getter();
      v108 = v63;
      v109 = sub_1002FFA0C(v106, v107, &v156);

      *(v103 + 4) = v109;
      v63 = v108;
      _os_log_impl(&_mh_execute_header, v100, v101, "Failed to get nonce %s", v103, 0xCu);
      sub_1000752F4(v105);
      v68 = v143;

      v62 = v144;
    }

    v110 = v151;
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v156 = 0xD000000000000015;
    v157 = 0x80000001004665A0;
    swift_getErrorValue();
    v111._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v111);

    v112 = v157;
    *v63 = v156;
    v63[1] = v112;
    (*(v146 + 104))(v63, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v147);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v150, v110);
    sub_10006A178(v149, v152);
    sub_10006A178(v153, v68);

    goto LABEL_14;
  }

  v144 = v62;
  v74 = v156;
  v75 = sub_1003B0934(v73);

  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v140 = objc_opt_self();
  v143 = v68;
  v79 = Data._bridgeToObjectiveC()().super.isa;
  v81 = sub_1003AF3C4(v66, v80);
  v82 = [v81 seid];

  v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  v86 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v83, v85);
  v87 = Data._bridgeToObjectiveC()().super.isa;
  v88 = String._bridgeToObjectiveC()();
  v141 = v76;
  v142 = v78;
  v89 = Data._bridgeToObjectiveC()().super.isa;
  v156 = 0;
  v90 = [v140 performOperationApprovalV3:v79 seid:v86 acl:v87 operation:v88 nonce:v89 error:&v156];

  v91 = v156;
  if (!v90)
  {
    v113 = v91;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v156 = v117;
      *v116 = 136315138;
      swift_getErrorValue();
      v118 = Error.localizedDescription.getter();
      v120 = sub_1002FFA0C(v118, v119, &v156);

      *(v116 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v114, v115, "Failed to authorize : %s", v116, 0xCu);
      sub_1000752F4(v117);
    }

    v121 = v151;
    v122 = v143;
    v62 = v144;
    v123 = v154;
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v156 = 0xD000000000000017;
    v157 = 0x80000001004665C0;
    swift_getErrorValue();
    v124._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v124);

    v125 = v157;
    *v123 = v156;
    v123[1] = v125;
    (*(v146 + 104))(v123, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v147);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v150, v121);
    sub_10006A178(v149, v152);
    sub_10006A178(v153, v122);

    sub_10006A178(v141, v142);
    goto LABEL_14;
  }

  v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  v95 = Data._bridgeToObjectiveC()().super.isa;
  v156 = 0;
  v96 = sub_1003AEF50();

  v97 = v144;
  if (v96)
  {
    v98 = v156;

    sub_10006A178(v150, v151);
    sub_10006A178(v149, v152);
    sub_10006A178(v153, v143);
    sub_10006A178(v92, v94);
    sub_10006A178(v141, v142);
  }

  else
  {
    v126 = v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v148 = v94;
      v130 = v129;
      v131 = swift_slowAlloc();
      v156 = v131;
      *v130 = 136315138;
      swift_getErrorValue();
      v132 = Error.localizedDescription.getter();
      v134 = sub_1002FFA0C(v132, v133, &v156);

      *(v130 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v127, v128, "Applet rejected OP : %s", v130, 0xCu);
      sub_1000752F4(v131);
      v135 = v154;

      v94 = v148;

      v136 = v151;
    }

    else
    {

      v136 = v151;
      v135 = v154;
    }

    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v156 = 0xD000000000000014;
    v157 = 0x80000001004665E0;
    swift_getErrorValue();
    v137._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v137);

    v138 = v157;
    *v135 = v156;
    v135[1] = v138;
    (*(v146 + 104))(v135, enum case for JPKIInternalTypes.InternalError.operationApprovalFailed(_:), v147);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    sub_10006A178(v150, v136);
    sub_10006A178(v149, v152);
    sub_10006A178(v153, v143);

    sub_10006A178(v92, v94);
    sub_10006A178(v141, v142);
  }
}