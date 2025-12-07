uint64_t sub_1003EADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAEB8(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EAF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003EAF5C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1003EB000()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1003EB0A4()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003EB0E4()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1003EB294(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1003E8D7C(a1, v4);
}

uint64_t sub_1003EB34C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1003E938C(a1, v4);
}

uint64_t sub_1003EB404(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1003E9168(a1, v4);
}

uint64_t sub_1003EB4BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_1003E9168(a1, v4);
}

uint64_t sub_1003EB5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726556726F746361 && a2 == 0xEC0000006E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1003EB64C(uint64_t a1)
{
  v2 = sub_1003EB97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003EB688(uint64_t a1)
{
  v2 = sub_1003EB97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003EB6C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100843258, &qword_1006E0ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1003EB97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000BB78(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1003EB840(void *a1)
{
  v2 = sub_100007224(&qword_100843268, &qword_1006E0EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1003EB97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1003EB97C()
{
  result = qword_100843260;
  if (!qword_100843260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843260);
  }

  return result;
}

unint64_t sub_1003EB9E4()
{
  result = qword_100843270;
  if (!qword_100843270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843270);
  }

  return result;
}

unint64_t sub_1003EBA3C()
{
  result = qword_100843278;
  if (!qword_100843278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843278);
  }

  return result;
}

unint64_t sub_1003EBA94()
{
  result = qword_100843280;
  if (!qword_100843280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843280);
  }

  return result;
}

uint64_t sub_1003EBAE8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for RemoteWebPresentmentResponse(0);
  v3[15] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v3;
  v6[1] = sub_1003EBC0C;

  return sub_1003EC76C(a2);
}

uint64_t sub_1003EBC0C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1003EBD64, 0, 0);
  }
}

uint64_t sub_1003EBD64()
{
  v1 = *(v0 + 88);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1003EBE8C;

  return v6(v2, v3);
}

uint64_t sub_1003EBE8C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1003EC3A4;
  }

  else
  {
    v2 = sub_1003EBFA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EBFA0()
{
  v1 = v0[17];
  sub_100020260(v0[11] + 16, (v0 + 2));
  v0[20] = type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  swift_allocObject();

  v3 = sub_1004091E8(v2, v0 + 2);
  v0[21] = v3;
  v0[7] = v3;

  String.init<A>(describing:)();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[22] = OSTransaction.init(_:)();
  v0[23] = *(v1 + 24);

  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_1003EC110;
  v5 = v0[15];
  v6 = v0[10];

  return sub_1003DFD04(v5, v6, v3);
}

uint64_t sub_1003EC110()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1003EC418;
  }

  else
  {

    v2 = sub_1003EC238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EC238()
{
  v1 = v0[15];
  v2 = v0[9];
  sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);

  NWActorSystem.invalidateActor<A>(_:)();

  v3 = type metadata accessor for WebPresentmentResponse();
  (*(*(v3 - 8) + 32))(v2, v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003EC3A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EC418()
{
  v1 = *(v0 + 200);

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast() && *(v0 + 208) == 1)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);

    (*(v3 + 104))(v2, enum case for DIPError.Code.webPresentmentCancelled(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);

    NWActorSystem.invalidateActor<A>(_:)();
  }

  else
  {
    sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);

    NWActorSystem.invalidateActor<A>(_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003EC76C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100007224(&qword_100843330, &qword_1006E1090);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for RemoteWebPresentmentRequest(0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for DeviceInformationProvider();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC8C4, 0, 0);
}

uint64_t sub_1003EC8C4(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[4];
  DeviceInformationProvider.init()();
  v9 = DeviceInformationProvider.userAssignedDeviceName.getter();
  v11 = v10;
  (*(v3 + 8))(v2, v5);
  v12 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v12 - 8) + 16))(v4, v8, v12);
  v13 = (v4 + *(v7 + 20));
  *v13 = v9;
  v13[1] = v11;
  v14 = sub_1003ECD50(v6);
  v1[14] = v14;
  v1[2] = &_swiftEmptySetSingleton;
  v15 = sub_100007224(&qword_100843338, &qword_1006E1098);
  v16 = swift_task_alloc();
  v1[15] = v16;
  v16[2] = v6;
  v16[3] = v1 + 2;
  v16[4] = v4;
  v16[5] = v14;
  v17 = sub_100007224(&qword_100843340, &qword_1006E10B0);
  v18 = swift_task_alloc();
  v1[16] = v18;
  *v18 = v1;
  v18[1] = sub_1003ECAA4;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v1 + 3, v15, v17, 0, 0, &unk_1006E10A8, v16, v15);
}

uint64_t sub_1003ECAA4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1003ECC84;
  }

  else
  {

    v2 = sub_1003ECBC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003ECBC0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[3];

  (*(v3 + 8))(v2, v4);
  sub_1003F10CC(v1);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1003ECC84()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  (*(v3 + 8))(v2, v4);
  sub_1003F10CC(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003ECD50(void (*a1)(char *, char *, uint64_t))
{
  v33 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v37);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100843358, &qword_1006E10E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - v8;
  v10 = sub_100007224(&qword_100843360, &unk_1006E10E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v12;
  __chkstk_darwin(v13);
  v16 = v31 - v15;
  v17 = sub_1003F15B4();
  type metadata accessor for NWEndpoint();
  (*(v7 + 104))(v9, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v6);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v7 + 8))(v9, v6);
  v32 = v17;

  v18 = v10;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v19 = v11;
  v33 = *(v11 + 16);
  v20 = v16;
  v33(v14, v16, v10);
  v21 = *(v19 + 80);
  v34 = v19;
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  v31[0] = *(v19 + 32);
  (v31[0])(v23 + v22, v14, v18);
  sub_10001F640(sub_1003F18F0, v23);
  v24 = v32;
  NWBrowser.browseResultsChangedHandler.setter();

  v25 = v14;
  v26 = v14;
  v27 = v20;
  v33(v26, v20, v18);
  v28 = swift_allocObject();
  (v31[0])(v28 + v22, v25, v18);
  sub_10001F640(sub_1003F1A10, v28);
  NWBrowser.stateUpdateHandler.setter();

  sub_10017ABC8();
  static DispatchQoS.userInitiated.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1003F1A8C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWBrowser.start(queue:)();

  (*(v34 + 8))(v27, v18);
  return v24;
}

uint64_t sub_1003ED2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v9 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v6[27] = v9;
  v6[28] = *(v9 + 64);
  v6[29] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v10 = type metadata accessor for NWEndpoint();
  v6[32] = v10;
  v11 = *(v10 - 8);
  v6[33] = v11;
  v6[34] = *(v11 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  sub_100007224(&qword_100842FD8, &qword_1006E06F0);
  v6[37] = swift_task_alloc();
  v12 = sub_100007224(&qword_100843348, &qword_1006E10B8);
  v6[38] = v12;
  v6[39] = *(v12 - 8);
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED5BC, 0, 0);
}

uint64_t sub_1003ED5BC()
{
  sub_100007224(&qword_100843330, &qword_1006E1090);
  AsyncThrowingStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_1003ED688;
  v2 = v0[37];
  v3 = v0[38];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 13);
}

uint64_t sub_1003ED688()
{

  if (v0)
  {
    v1 = sub_1003EE4E8;
  }

  else
  {
    v1 = sub_1003ED798;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1003ED798()
{
  v74 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    sub_100007224(&qword_100843338, &qword_1006E1098);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    ThrowingTaskGroup.cancelAll()();
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    v5 = sub_100007224(&qword_100843350, &qword_1006E10C0);
    *v4 = v0;
    v4[1] = sub_1003EDF5C;

    return ThrowingTaskGroup.nextResult()(v0 + 88, v5);
  }

  v6 = *(v3 + 32);
  v6(*(v0 + 288), v1, v2);
  v7 = NWEndpoint.deviceID.getter();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  v11 = NWEndpoint.deviceName.getter();
  if (!v12)
  {

LABEL_11:
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 288);
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 184);
    if (v28)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Ignoring endpoint due to lack of identifier and name", v35, 2u);
    }

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v29, v30);
    goto LABEL_24;
  }

  v13 = v11;
  v14 = v12;

  v15 = sub_100151120((v0 + 72), v9, v10);

  if (v15)
  {
    v16 = *(v0 + 280);
    v61 = *(v0 + 288);
    v66 = *(v0 + 272);
    v72 = v13;
    v17 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 232);
    v60 = v19;
    v63 = *(v0 + 224);
    v62 = *(v0 + 216);
    v68 = *(v0 + 152);
    v70 = *(v0 + 240);
    v58 = *(v0 + 144);
    v59 = *(v0 + 256);

    v20 = type metadata accessor for TaskPriority();
    v64 = *(v20 - 8);
    (*(v64 + 56))(v18, 1, 1, v20);
    (*(v17 + 16))(v16, v61, v59);
    sub_1003F1170(v58, v19);
    v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v22 = (v66 + *(v62 + 80) + v21) & ~*(v62 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v72;
    *(v23 + 5) = v14;
    v6(&v23[v21], v16, v59);
    sub_1003E4890(v60, &v23[v22]);
    *&v23[(v63 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v68;
    sub_1003F1504(v18, v70);
    v24 = (*(v64 + 48))(v70, 1, v20);

    v25 = *(v0 + 240);
    if (v24 == 1)
    {
      sub_10000BE18(*(v0 + 240), &unk_100845860, &unk_1006BF9D0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v64 + 8))(v25, v20);
    }

    if (*(v23 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v45 = dispatch thunk of Actor.unownedExecutor.getter();
      v47 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = **(v0 + 120);

    sub_100007224(&qword_100843338, &qword_1006E1098);
    v49 = v47 | v45;
    if (v47 | v45)
    {
      v49 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v45;
      *(v0 + 40) = v47;
    }

    v50 = *(v0 + 288);
    v51 = *(v0 + 256);
    v52 = *(v0 + 264);
    v53 = *(v0 + 248);
    *(v0 + 48) = 1;
    *(v0 + 56) = v49;
    *(v0 + 64) = v48;
    swift_task_create();

    sub_10000BE18(v53, &unk_100845860, &unk_1006BF9D0);
    (*(v52 + 8))(v50, v51);
  }

  else
  {
    defaultLogger()();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 288);
    v40 = *(v0 + 264);
    v69 = *(v0 + 208);
    v71 = *(v0 + 256);
    v41 = *(v0 + 192);
    v67 = *(v0 + 184);
    if (v38)
    {
      v65 = *(v0 + 288);
      v42 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = sub_100141FE4(v9, v10, &v73);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      v44 = sub_100141FE4(v13, v14, &v73);

      *(v42 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Already encountered endpoint with identifier: %s (%s), ignoring", v42, 0x16u);
      swift_arrayDestroy();

      (*(v41 + 8))(v69, v67);
      (*(v40 + 8))(v65, v71);
    }

    else
    {

      (*(v41 + 8))(v69, v67);
      (*(v40 + 8))(v39, v71);
    }
  }

LABEL_24:
  v54 = swift_task_alloc();
  *(v0 + 328) = v54;
  *v54 = v0;
  v54[1] = sub_1003ED688;
  v55 = *(v0 + 296);
  v56 = *(v0 + 304);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v55, 0, 0, v56, v0 + 104);
}

uint64_t sub_1003EDF5C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1003EE4CC;
  }

  else
  {
    *(v2 + 352) = *(v2 + 88);
    *(v2 + 97) = *(v2 + 96);
    v3 = sub_1003EE080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003EE080()
{
  v1 = *(v0 + 97);
  if (v1 == 255)
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 160));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = *(v0 + 352);
  if (v1)
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.webPresentmentCancelled(_:), *(v0 + 160));
    sub_1003F1128(v2, v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1003F114C(v2, v1);
LABEL_5:

    v3 = *(v0 + 8);
LABEL_8:

    return v3();
  }

  if (v2)
  {
    **(v0 + 112) = v2;

    v3 = *(v0 + 8);
    goto LABEL_8;
  }

  sub_1003F114C(0, *(v0 + 97));
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  v6 = sub_100007224(&qword_100843350, &qword_1006E10C0);
  *v5 = v0;
  v5[1] = sub_1003EDF5C;

  return ThrowingTaskGroup.nextResult()(v0 + 88, v6);
}

uint64_t sub_1003EE4E8()
{
  (*(v0[39] + 8))(v0[40], v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003EE5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  v9 = type metadata accessor for DIPError.Code();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE740, 0, 0);
}

uint64_t sub_1003EE740(uint64_t a1)
{
  v33 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[13];
  v7 = v1[14];
  if (v4)
  {
    v9 = v1[5];
    v8 = v1[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "Instantiating remote actor for: %s…", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[20] = v12;
  v13 = v1[6];
  v14 = v1[5];
  type metadata accessor for RemoteDocumentProviderActor(0);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  type metadata accessor for NWActorSystem();

  static NWActorSystem.default.getter();
  sub_1003F1A8C(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  v16 = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();
  v31 = v12;

  sub_100007224(&qword_100843340, &qword_1006E10B0);
  v17 = swift_allocObject();
  v1[21] = v17;
  v1[3] = v16;

  String.init<A>(describing:)();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  *(v17 + 16) = OSTransaction.init(_:)();
  *(v17 + 24) = v16;
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v1[18];
  v22 = v1[13];
  if (v20)
  {
    v30 = v1[18];
    v24 = v1[5];
    v23 = v1[6];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100141FE4(v24, v23, v32);
    _os_log_impl(&_mh_execute_header, v18, v19, "Connecting to %s…", v25, 0xCu);
    sub_10000BB78(v26);

    v27 = v30;
  }

  else
  {

    v27 = v21;
  }

  v31(v27, v22);
  v1[22] = *(v17 + 24);

  v28 = swift_task_alloc();
  v1[23] = v28;
  *v28 = v1;
  v28[1] = sub_1003EEF70;

  return sub_1003DD6E0();
}

uint64_t sub_1003EEF70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = sub_1003EF5F0;
  }

  else
  {

    v5 = sub_1003EF090;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003EF090(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[24];
    v4 = v1[25];
    v17 = v1[17];
    v18 = v1[20];
    v16 = v1[13];
    v6 = v1[5];
    v7 = v1[6];
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(v6, v7, &v19);
    *(v8 + 12) = 2080;
    v9 = sub_100141FE4(v5, v4, &v19);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connected to device: %s with actor version: %s", v8, 0x16u);
    swift_arrayDestroy();

    v18(v17, v16);
  }

  else
  {
    v10 = v1[20];
    v11 = v1[17];
    v12 = v1[13];

    v10(v11, v12);
  }

  v1[27] = *(v1[21] + 24);

  v13 = swift_task_alloc();
  v1[28] = v13;
  *v13 = v1;
  v13[1] = sub_1003EF2E4;
  v14 = v1[8];

  return sub_1003DDFA8(v14);
}

uint64_t sub_1003EF2E4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1003EFA20;
  }

  else
  {

    v2 = sub_1003EF400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EF400(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 160);
  v6 = *(v1 + 128);
  v7 = *(v1 + 104);
  if (v4)
  {
    v15 = *(v1 + 160);
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "Device '%s' accepted notification prompt", v10, 0xCu);
    sub_10000BB78(v11);

    v15(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v12 = *(v1 + 168);
  NWBrowser.cancel()();
  **(v1 + 32) = v12;

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_1003EF5F0()
{
  v23 = v0;

  *(v0 + 16) = *(v0 + 208);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 240) == 1;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    NWBrowser.cancel()();
    (*(v15 + 104))(v14, enum case for DIPError.Code.webPresentmentCancelled(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  else
  {

    defaultLogger()();

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    if (v4)
    {
      v21 = *(v0 + 160);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v20 = *(v0 + 120);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v7;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_100141FE4(v8, v9, &v22);
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error whilst communicating with: %s. Error: %@", v10, 0x16u);
      sub_10000BE18(v11, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v12);

      v21(v20, v19);
    }

    else
    {

      v5(v6, v7);
    }

    **(v0 + 32) = 0;

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1003EFA20()
{
  v23 = v0;

  *(v0 + 16) = *(v0 + 232);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 240) == 1;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    NWBrowser.cancel()();
    (*(v15 + 104))(v14, enum case for DIPError.Code.webPresentmentCancelled(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  else
  {

    defaultLogger()();

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    if (v4)
    {
      v21 = *(v0 + 160);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v20 = *(v0 + 120);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v7;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_100141FE4(v8, v9, &v22);
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error whilst communicating with: %s. Error: %@", v10, 0x16u);
      sub_10000BE18(v11, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v12);

      v21(v20, v19);
    }

    else
    {

      v5(v6, v7);
    }

    **(v0 + 32) = 0;

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1003EFE54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v19 = v6;
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(v12, a3, &v20);
    *(v13 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v6 = v19;
    *(v13 + 14) = v16;
    *v14 = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalidation handler of %s called: %@", v13, 0x16u);
    sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1003F0088(uint64_t a1)
{
  v2 = sub_100007224(&qword_100843378, &qword_1006E1100);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  v6 = enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:);
  (*(v3 + 8))(v5, v2);
  if (a1 == v6)
  {
    NWBrowser.cancel()();
  }
}

void sub_1003F01B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v4 = type metadata accessor for NWEndpoint();
  __chkstk_darwin(v4 - 8);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100007224(&qword_100843370, &qword_1006E10F8);
  v34 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v33 - v6;
  v50 = type metadata accessor for NWBrowser.Result();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWBrowser.Result.Change();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = v10 + 16;
  v48 = v10 + 88;
  v49 = v10 + 32;
  v47 = enum case for NWBrowser.Result.Change.added(_:);
  v36 = (v10 + 96);
  v37 = (v10 + 8);
  ++v34;
  v35 = (v7 + 32);
  v33 = (v7 + 8);
  v22 = a2;

  v23 = 0;
  v42 = a2;
  v39 = v13;
  v40 = v10;
  v38 = v15;
  while (v19)
  {
    v24 = v23;
LABEL_11:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v10 + 16))(v15, *(v22 + 48) + *(v10 + 72) * (v25 | (v24 << 6)), v9);
    (*(v10 + 32))(v13, v15, v9);
    v26 = (*(v10 + 88))(v13, v9);
    if (v26 == v47)
    {
      (*v36)(v13, v9);
      v27 = v41;
      (*v35)(v41, v13, v50);
      NWBrowser.Result.endpoint.getter();
      sub_100007224(&qword_100843360, &unk_1006E10E8);
      v28 = v21;
      v29 = v9;
      v30 = v43;
      v10 = v40;
      AsyncThrowingStream.Continuation.yield(_:)();
      v22 = v42;
      v31 = v30;
      v9 = v29;
      v21 = v28;
      (*v34)(v31, v44);
      v32 = v27;
      v15 = v38;
      v13 = v39;
      (*v33)(v32, v50);
    }

    else
    {
      (*v37)(v13, v9);
    }

    v23 = v24;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1003F060C(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  v5 = __chkstk_darwin(v3);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v66 - v8;
  v9 = __chkstk_darwin(v7);
  v68 = (&v66 - v10);
  v11 = __chkstk_darwin(v9);
  v67 = &v66 - v12;
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v15 = type metadata accessor for NWError();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v70 = &v66 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v66 - v23;
  __chkstk_darwin(v22);
  v26 = &v66 - v25;
  v27 = type metadata accessor for NWBrowser.State();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30, a1, v27);
  v31 = (*(v28 + 88))(v30, v27);
  if (v31 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v28 + 96))(v30, v27);
    (*(v16 + 32))(v26, v30, v15);
    defaultLogger()();
    v32 = *(v16 + 16);
    v32(v24, v26, v15);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = v14;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v69 = v36;
      v70 = swift_slowAlloc();
      *v36 = 138412290;
      sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v71 = v35;
      v32(v37, v24, v15);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v16 + 8);
      v68 = v32;
      v39(v24, v15);
      v40 = v69;
      v41 = v70;
      *(v69 + 4) = v38;
      *v41 = v38;
      v35 = v71;
      _os_log_impl(&_mh_execute_header, v33, v34, "Browser failed due to %@", v40, 0xCu);
      sub_10000BE18(v41, &unk_100833B50, &unk_1006D8FB0);

      v42 = v68;
    }

    else
    {

      v39 = *(v16 + 8);
      v42 = v32;
      v39(v24, v15);
    }

    (*(v74 + 8))(v35, v73);
    sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v54 = swift_allocError();
    v42(v55, v26, v15);
    v75 = v54;
    sub_100007224(&qword_100843360, &unk_1006E10E8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    return (v39)(v26, v15);
  }

  if (v31 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v28 + 96))(v30, v27);
    v43 = v70;
    (*(v16 + 32))(v70, v30, v15);
    v44 = v71;
    defaultLogger()();
    v45 = *(v16 + 16);
    v45(v19, v43, v15);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v45(v50, v19, v15);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      v52 = *(v16 + 8);
      v52(v19, v15);
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&_mh_execute_header, v46, v47, "Browser waiting for connectivity due to %@", v48, 0xCu);
      sub_10000BE18(v49, &unk_100833B50, &unk_1006D8FB0);

      (*(v74 + 8))(v71, v73);
      return (v52)(v70, v15);
    }

    else
    {

      v61 = *(v16 + 8);
      v61(v19, v15);
      (*(v74 + 8))(v44, v73);
      return (v61)(v43, v15);
    }
  }

  if (v31 == enum case for NWBrowser.State.setup(_:))
  {
    v56 = v69;
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Browser in setup mode";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v31 == enum case for NWBrowser.State.ready(_:))
  {
    v56 = v68;
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Browser is ready";
      goto LABEL_16;
    }

LABEL_17:

    return (*(v74 + 8))(v56, v73);
  }

  if (v31 != enum case for NWBrowser.State.cancelled(_:))
  {
    return (*(v28 + 8))(v30, v27);
  }

  v62 = v67;
  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Browser was cancelled", v65, 2u);
  }

  (*(v74 + 8))(v62, v73);
  v75 = 0;
  sub_100007224(&qword_100843360, &unk_1006E10E8);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

uint64_t sub_1003F1004(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_1003ED2D8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1003F10CC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003F1128(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003F1140(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003F1140(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1003F114C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003F1164(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003F1164(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1003F1170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F11D4()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_1003F1368(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NWEndpoint() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100027B9C;

  return sub_1003EE5EC(a1, v10, v11, v12, v13, v1 + v6, v1 + v9, v14);
}

uint64_t sub_1003F1504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F1574()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003F15B4()
{
  v0 = type metadata accessor for NWBrowser.Descriptor();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for NWBrowser.Descriptor.Options();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NWBrowser.Descriptor.Options.Scope.personal.getter();
  static NWBrowser.Descriptor.Options.DeviceType.iphone.getter();
  NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:)();
  NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly.setter();
  v13 = *(sub_100007224(&unk_100843380, &qword_1006E1108) + 48);
  *v6 = 0xD000000000000022;
  *(v6 + 1) = 0x8000000100714FE0;
  (*(v10 + 16))(&v6[v13], v12, v9);
  (*(v1 + 104))(v6, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v0);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for NWBrowser();
  swift_allocObject();
  v14 = NWBrowser.init(for:using:)();
  (*(v1 + 8))(v6, v0);
  (*(v10 + 8))(v12, v9);
  return v14;
}

void sub_1003F18F0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100843360, &unk_1006E10E8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1003F01B0(a1, a2, v6);
}

uint64_t sub_1003F197C()
{
  v1 = sub_100007224(&qword_100843360, &unk_1006E10E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003F1A10(uint64_t a1)
{
  v3 = *(sub_100007224(&qword_100843360, &unk_1006E10E8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F060C(a1, v4);
}

uint64_t sub_1003F1A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003F1AD8()
{
  v0 = type metadata accessor for IDVUIServiceConfigurationIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() identityForApplicationJobLabel:v4];

  (*(v1 + 104))(v3, enum case for IDVUIServiceConfigurationIdentifier.mobileDocumentProvider(_:), v0);
  IDVUIServiceConfigurationIdentifier.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v6 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithSceneProvidingProcess:v5 configurationIdentifier:v7];

  qword_100843390 = v8;
}

uint64_t sub_1003F1C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v23 = a2;
  v25 = a1;
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v22 - v5;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v24 = &v22 - v11;
  swift_allocObject();
  swift_weakInit();
  v13 = v3;
  v14 = v25;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  (*(v7 + 16))(v9, v27, v6);
  v16 = v26;
  v17 = v13;
  (*(v4 + 16))(v26, v14, v13);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = (v8 + *(v4 + 80) + v18) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v23;
  (*(v7 + 32))(&v20[v18], v9, v6);
  (*(v4 + 32))(&v20[v19], v16, v17);

  sub_1003E653C(0, 0, v24, &unk_1006E12A0, v20);
}

uint64_t sub_1003F1F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_100007224(&qword_100843588, &qword_1006E12B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 88))(v9, v6);
    if (v12 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v12 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
    {

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v11;
      sub_1003E653C(0, 0, v5, &unk_1006E12C0, v14);
    }
  }

  return result;
}

uint64_t sub_1003F21F0()
{
  sub_1003F2DD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003F22F0, 0, 0);
}

uint64_t sub_1003F22F0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);

  return _swift_task_switch(sub_1003F23E8, v3, 0);
}

uint64_t sub_1003F23E8()
{
  v1 = v0[5];
  sub_1003F4358(v0[3], v1);
  sub_10000BE18(v1, &qword_100843580, &qword_1006E12A8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003F2470(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2530, 0, 0);
}

uint64_t sub_1003F2530()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderLocalOptionUIConfiguration());
  v3 = XPCMobileDocumentProviderLocalOptionUIConfiguration.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F4A8;
  v0[14] = v4;
  [v1 presentSelectionViewFromAuxiliaryViewWithConfiguration:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F2690()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1003FD4D0;
  }

  else
  {
    v2 = sub_1003FD440;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003F27A0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2860, 0, 0);
}

uint64_t sub_1003F2860()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderPresentmentRequest());
  v3 = XPCMobileDocumentProviderPresentmentRequest.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F458;
  v0[14] = v4;
  [v1 presentAuthorizationViewFromSelectionViewWithRequest:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F29C0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2A80, 0, 0);
}

uint64_t sub_1003F2A80()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderAuxiliaryView());
  v3 = XPCMobileDocumentProviderAuxiliaryView.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2BE0;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F480;
  v0[14] = v4;
  [v1 presentAuxiliaryView:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F2BE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1003F2D5C;
  }

  else
  {
    v2 = sub_1003F2CF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003F2CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F2D5C(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003F2DD8()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager, &unk_1006E1244);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v14;
  v15[4] = v1;
  swift_retain_n();
  sub_1003E653C(0, 0, v4, &unk_1006E1378, v15);
}

uint64_t sub_1003F3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Logger();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003F3168, a4, 0);
}

uint64_t sub_1003F3168()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = &unk_1006E1380;
  v2[4] = 0;
  sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager, &unk_1006E1244);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1003F32A8;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v3, &unk_1006E1388);
}

uint64_t sub_1003F32A8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1003F3540;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1003F33D0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F33D0(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager %{public}s successfully dismissed.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v7 + 8))(v5, v6);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1003F3540()
{
  v14 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "RemoteMobileDocumentProviderUIConnectionManager %{public}s failed to dismiss: %@", v7, 0x16u);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003F3768()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_10080F5C0;
  v0[14] = v2;
  [v1 dismissWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F387C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 224) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  sub_100007224(&qword_1008435C8, &unk_1006E1310);
  *(v6 + 120) = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderRemoteUIError();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1003F3A44, v5, 0);
}

uint64_t sub_1003F3A44(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  v7 = v1[19];
  v6 = v1[20];
  if (v4)
  {
    v21 = v1[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = StaticString.description.getter();
    v12 = sub_100141FE4(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s", v8, 0xCu);
    sub_10000BB78(v9);

    v13 = *(v6 + 8);
    v13(v21, v7);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v5, v7);
  }

  v1[23] = v13;
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[9];
  v17 = swift_allocObject();
  v1[24] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;

  v18 = swift_task_alloc();
  v1[25] = v18;
  v18[2] = v15;
  v18[3] = &unk_1006E1320;
  v18[4] = v17;
  sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager, &unk_1006E1244);
  v19 = swift_task_alloc();
  v1[26] = v19;
  *v19 = v1;
  v19[1] = sub_1003F3CE0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v19, &unk_1006E1330);
}

uint64_t sub_1003F3CE0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_1003F3EA4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003F3E10;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F3E10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F3EA4()
{
  v30 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v27 = v0[21];
    v28 = v0[23];
    v26 = v0[19];
    v3 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v3 = 136446466;
    v4 = StaticString.description.getter();
    v6 = sub_100141FE4(v4, v5, v29);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, v29);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderUIConnectionManager %{public}s received error %s", v3, 0x16u);
    swift_arrayDestroy();

    v28(v27, v26);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[19];

    v10(v11, v12);
  }

  v13 = v0[17];
  v0[5] = v0[27];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v14 = swift_dynamicCast();
  v15 = *(v13 + 56);
  if (v14)
  {
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[15];
    v19 = v0[16];
    v15(v18, 0, 1, v19);
    (*(v17 + 32))(v16, v18, v19);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    MobileDocumentProviderRemoteUIError.dipErrorRepresentation.getter();
    swift_willThrow();

    (*(v17 + 8))(v16, v19);
  }

  else
  {
    v20 = v0[15];
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    v15(v20, 1, 1, v0[16]);
    sub_10000BE18(v20, &qword_1008435C8, &unk_1006E1310);
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

void sub_1003F4358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *(v3 + 120);
  v19 = a1;
  v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_1003FB544(v9 + v10);
  os_unfair_lock_unlock((v9 + v11));
  sub_10000BBC4(a2, v8, &qword_100843580, &qword_1006E12A8);
  v12 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_1003FB4D4(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_1003F462C();
  v14 = objc_opt_self();
  if (qword_100832C68 != -1)
  {
    v17 = v14;
    swift_once();
    v14 = v17;
  }

  v15 = [v14 newHandleWithDefinition:qword_100843390 configurationContext:v13];
  [v15 registerObserver:v3];
  v16 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v15 activateWithContext:v16];
}

uint64_t sub_1003F4568(uint64_t a1, uint64_t a2)
{
  sub_10000BE18(a1, &qword_100843558, &qword_1006E1270);
  v4 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

id sub_1003F462C()
{
  v1 = [objc_opt_self() anonymousListener];
  [v1 setDelegate:v0];
  [v1 activate];
  v2 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v3 = [v1 endpoint];
  v4 = [v3 _endpoint];

  [v2 setXpcEndpoint:v4];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1003F470C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Multiple connections are not supported.", v14, 2u);
    }

    result = (*(v9 + 8))(v11, v8);
    *a4 = 0;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared50MobileDocumentProviderViewServiceDelegateInterface_];
    [a2 setRemoteObjectInterface:v17];

    v18 = [v16 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42MobileDocumentProviderViewServiceInterface_];
    [a2 setExportedInterface:v18];

    [a2 setExportedObject:a3];
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1003FD35C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_10080FA70;
    v20 = _Block_copy(aBlock);

    [a2 setInvalidationHandler:v20];
    _Block_release(v20);
    [a2 activate];
    *a1 = a2;
    *a4 = 1;
    return a2;
  }

  return result;
}

uint64_t sub_1003F49DC(uint64_t a1)
{
  v1 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RemoteMobileDocumentProviderUIConnectionManager connection invalidated", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    sub_1003E653C(0, 0, v3, &unk_1006E1500, v14);
  }

  return result;
}

uint64_t sub_1003F4C38()
{
  sub_1003F4CFC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F4CFC()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v31 - v6;
  v7 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  v8 = __chkstk_darwin(v7 - 8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "RemoteMobileDocumentProviderUIConnectionManager viewServiceInvalidated", v18, 2u);
  }

  (*(v13 + 8))(v15, v12);
  v19 = *(v1 + 120);
  v20 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v19 + v21));
  sub_10000BE18(v19 + v20, &qword_100843558, &qword_1006E1270);
  v22 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v22 - 8) + 56))(v19 + v20, 1, 1, v22);
  os_unfair_lock_unlock((v19 + v21));
  v23 = *(v1 + 112);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  if (v24)
  {
    [v24 setExportedObject:0];
    v25 = *(v23 + 16);
  }

  else
  {
    v25 = 0;
  }

  *(v23 + 16) = 0;

  os_unfair_lock_unlock((v23 + 24));
  v26 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v1 + v26, v11, &qword_100843580, &qword_1006E12A8);
  if ((*(v5 + 48))(v11, 1, v4))
  {
    sub_10000BE18(v11, &qword_100843580, &qword_1006E12A8);
  }

  else
  {
    v27 = v34;
    (*(v5 + 16))(v34, v11, v4);
    sub_10000BE18(v11, &qword_100843580, &qword_1006E12A8);
    v31 = "ifier";
    (*(v32 + 104))(v35, enum case for DIPError.Code.webPresentmentCancelled(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v28 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v37 = v28;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v5 + 8))(v27, v4);
  }

  v29 = v36;
  (*(v5 + 56))(v36, 1, 1, v4);
  swift_beginAccess();
  sub_1003FB4D4(v29, v1 + v26);
  return swift_endAccess();
}

uint64_t sub_1003F5348(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003F556C, v1, 0);
}

uint64_t sub_1003F556C(uint64_t a1)
{
  v36 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[18];
  v7 = v1[19];
  v9 = v1[17];
  if (v6)
  {
    v11 = v1[15];
    v10 = v1[16];
    v32 = v1[14];
    v34 = v1[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    XPCMobileDocumentProviderUserSelection.value.getter();
    v14 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v33 = v9;
    v16 = v15;
    (*(v11 + 8))(v10, v32);
    v17 = sub_100141FE4(v14, v16, &v35);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager selectionViewUserDidTapSelection called with selection %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v8 + 8))(v34, v33);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v1[12];
  v19 = v1[9];
  v20 = v1[10];
  v21 = v1[6];
  v22 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100843580, &qword_1006E12A8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v1[12], &qword_100843580, &qword_1006E12A8);
    v23 = 1;
  }

  else
  {
    v24 = v1[12];
    v26 = v1[10];
    v25 = v1[11];
    v27 = v1[9];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v28 = v1[13];
  v29 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v29 - 8) + 56))(v28, v23, 1, v29);
  sub_10000BE18(v28, &qword_1008435B0, &qword_1006E12F8);

  v30 = v1[1];

  return v30();
}

uint64_t sub_1003F5A84(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F5348(v5);
}

uint64_t sub_1003F5B48(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003F5CB4, v1, 0);
}

uint64_t sub_1003F5CB4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100843580, &qword_1006E12A8);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v6 = 1;
  }

  else
  {
    v7 = v0[12];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v11 = v0[13];
  v12 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_10000BE18(v11, &qword_1008435B0, &qword_1006E12F8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003F6058(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F5B48(v5);
}

uint64_t sub_1003F611C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F62E4, v1, 0);
}

uint64_t sub_1003F62E4(uint64_t a1)
{
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager didAuthorizeRequest called with response %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v11 = v1[15];
  v10 = v1[16];
  v12 = v1[14];
  v13 = v1[12];
  v14 = v1[9];
  v15 = v1[10];
  v16 = v1[6];

  (*(v11 + 8))(v10, v12);
  v17 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v16 + v17, v13, &qword_100843580, &qword_1006E12A8);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    sub_10000BE18(v1[12], &qword_100843580, &qword_1006E12A8);
    v18 = 1;
  }

  else
  {
    v19 = v1[12];
    v21 = v1[10];
    v20 = v1[11];
    v22 = v1[9];
    (*(v21 + 16))(v20, v19, v22);
    sub_10000BE18(v19, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderPresentmentResponse.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v21 + 8))(v20, v22);
    v18 = 0;
  }

  v23 = v1[13];
  v24 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v24 - 8) + 56))(v23, v18, 1, v24);
  sub_10000BE18(v23, &qword_1008435B0, &qword_1006E12F8);

  v25 = v1[1];

  return v25();
}

uint64_t sub_1003F678C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003F6850;

  return sub_1003F611C(v5);
}

uint64_t sub_1003F6850()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003F69AC()
{
  v2 = type metadata accessor for Logger();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1003F6A68, v0, 0);
}

uint64_t sub_1003F6A68(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager viewServiceWillTerminate", v4, 2u);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1003F6CE0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_1003F69AC();
}

uint64_t sub_1003F6F00(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2]();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003F6F74()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v1[7] = swift_task_alloc();
  v2 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v1[11] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003F713C, v0, 0);
}

uint64_t sub_1003F713C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager didSelectEnableBluetooth", v4, 2u);
  }

  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[13];
  v8 = v1[11];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[5];

  (*(v6 + 8))(v5, v7);
  v12 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v11 + v12, v8, &qword_100843580, &qword_1006E12A8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    sub_10000BE18(v1[11], &qword_100843580, &qword_1006E12A8);
    v13 = 1;
  }

  else
  {
    v14 = v1[11];
    v16 = v1[9];
    v15 = v1[10];
    v17 = v1[8];
    (*(v16 + 16))(v15, v14, v17);
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v16 + 8))(v15, v17);
    v13 = 0;
  }

  v18 = v1[12];
  v19 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v19 - 8) + 56))(v18, v13, 1, v19);
  sub_10000BE18(v18, &qword_1008435B0, &qword_1006E12F8);

  v20 = v1[1];

  return v20();
}

uint64_t sub_1003F7564(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_1003F6F74();
}

uint64_t sub_1003F760C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1003F7748(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7940, v1, 0);
}

uint64_t sub_1003F7940(uint64_t a1)
{
  v31 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[17];
  v7 = v1[18];
  v9 = v1[16];
  if (v6)
  {
    v29 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v12 = String.init<A>(describing:)();
    v14 = sub_100141FE4(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager remoteViewDidAppear called with viewIdentifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v29, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[12];
  v16 = v1[9];
  v17 = v1[10];
  v18 = v1[6];
  v19 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v18 + v19, v15, &qword_100843580, &qword_1006E12A8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_10000BE18(v1[12], &qword_100843580, &qword_1006E12A8);
    v20 = 1;
  }

  else
  {
    v21 = v1[12];
    v23 = v1[10];
    v22 = v1[11];
    v24 = v1[9];
    (*(v23 + 16))(v22, v21, v24);
    sub_10000BE18(v21, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v23 + 8))(v22, v24);
    v20 = 0;
  }

  v25 = v1[13];
  v26 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v26 - 8) + 56))(v25, v20, 1, v26);
  sub_10000BE18(v25, &qword_1008435B0, &qword_1006E12F8);

  v27 = v1[1];

  return v27();
}

uint64_t sub_1003F7E2C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F7748(v5);
}

uint64_t sub_1003F7EF0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100007224(&qword_100843580, &qword_1006E12A8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008435B0, &qword_1006E12F8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F80E8, v1, 0);
}

uint64_t sub_1003F80E8(uint64_t a1)
{
  v31 = v1;
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[17];
  v7 = v1[18];
  v9 = v1[16];
  if (v6)
  {
    v29 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v12 = String.init<A>(describing:)();
    v14 = sub_100141FE4(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidCancel called with viewIdentifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v29, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[12];
  v16 = v1[9];
  v17 = v1[10];
  v18 = v1[6];
  v19 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v18 + v19, v15, &qword_100843580, &qword_1006E12A8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_10000BE18(v1[12], &qword_100843580, &qword_1006E12A8);
    v20 = 1;
  }

  else
  {
    v21 = v1[12];
    v23 = v1[10];
    v22 = v1[11];
    v24 = v1[9];
    (*(v23 + 16))(v22, v21, v24);
    sub_10000BE18(v21, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v23 + 8))(v22, v24);
    v20 = 0;
  }

  v25 = v1[13];
  v26 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v26 - 8) + 56))(v25, v20, 1, v26);
  sub_10000BE18(v25, &qword_1008435B0, &qword_1006E12F8);

  v27 = v1[1];

  return v27();
}

uint64_t sub_1003F85D4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F7EF0(v5);
}

uint64_t sub_1003F8698()
{
  v1[15] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for WebPresentmentRequest();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F87C0, v0, 0);
}

uint64_t sub_1003F87C0()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_10000BBC4(v1 + v2, v0 + 56, &qword_100841378, &qword_1006E12F0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v3);
    v12 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1003F8AC4;
    v6 = *(v0 + 176);

    return v12(v6, v3, v4);
  }

  else
  {
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    sub_10000BE18(v0 + 56, &qword_100841378, &qword_1006E12F0);
    (*(v9 + 104))(v8, enum case for DIPError.Code.unexpectedDaemonState(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1003F8AC4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1003F8CE0;
  }

  else
  {
    v4 = sub_1003F8BF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F8BF0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  (*(v3 + 16))(v0[21], v1, v2);
  v4 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentRequest());
  v5 = XPCWebPresentmentRequest.init(value:)();
  (*(v3 + 8))(v1, v2);
  sub_10000BB78(v0 + 2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1003F8CE0()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F8EE0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1003F8698();
}

uint64_t sub_1003F8F88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

void sub_1003F912C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Logger();
  v45 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v44 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v39 = v12;
    v22 = v21;
    v38 = swift_slowAlloc();
    v47[0] = v38;
    *v22 = 136446466;
    *(v22 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x8000000100715420, v47);
    *(v22 + 12) = 2080;
    v46 = a1;
    swift_errorRetain();
    sub_100007224(&unk_1008435A0, &qword_1006E12E8);
    v23 = String.init<A>(describing:)();
    v25 = sub_100141FE4(v23, v24, v47);
    v37 = v15;
    v26 = v14;
    v27 = v7;
    v28 = v6;
    v29 = v2;
    v30 = v25;

    *(v22 + 14) = v30;
    v2 = v29;
    v6 = v28;
    v7 = v27;
    v14 = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "RemoteMobileDocumentProviderUIConnectionManager %{public}s %s", v22, 0x16u);
    swift_arrayDestroy();

    v12 = v39;

    (*(v45 + 8))(v17, v37);
  }

  else
  {

    (*(v45 + 8))(v17, v15);
  }

  v31 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v2 + v31, v14, &qword_100843580, &qword_1006E12A8);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
  }

  else
  {
    v32 = v42;
    (*(v7 + 16))(v42, v14, v6);
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
    v39 = "ifier";
    (*(v40 + 104))(v43, enum case for DIPError.Code.webPresentmentCancelled(_:), v41);
    v45 = v7;
    swift_errorRetain();
    v41 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    v33 = v2;
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v34 = swift_allocError();
    v7 = v45;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v46 = v34;
    v2 = v33;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v7 + 8))(v32, v6);
  }

  (*(v7 + 56))(v12, 1, 1, v6);
  swift_beginAccess();
  sub_1003FB4D4(v12, v2 + v31);
  swift_endAccess();
  v35 = *(v2 + 112);
  os_unfair_lock_lock((v35 + 24));
  [*(v35 + 16) invalidate];
  os_unfair_lock_unlock((v35 + 24));
}

uint64_t sub_1003F979C()
{
  sub_1003F912C(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1003F986C, a4, 0);
}

uint64_t sub_1003F986C()
{
  sub_1003F912C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003F9960, a2, 0);
}

uint64_t sub_1003F9960()
{
  v1 = *(v0 + 40);
  v2 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager, &unk_1006E1244);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v7 = *(v0 + 24);
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1003F9AAC;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v7, v2, 0xD000000000000020, 0x8000000100715510, sub_1003FB818, v3, &type metadata for () + 8);
}

uint64_t sub_1003F9AAC()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1003F9BE8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1003F9BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager, &unk_1006E1244);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v16;
  *(v19 + 4) = a2;
  (*(v8 + 32))(&v19[v17], v11, v7);
  v20 = &v19[v18];
  *v20 = v23;
  v20[1] = a4;
  swift_retain_n();

  sub_100130390(0, 0, v14, &unk_1006E1360, v19);
}

uint64_t sub_1003F9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1003F9ECC, a4, 0);
}

uint64_t sub_1003F9ECC()
{
  v8 = v0;
  v1 = v0[4];
  v2 = *(v0[3] + 112);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1003FBA5C((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[5];
  v0[7] = v7;

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003FA05C;

  return v6();
}

uint64_t sub_1003FA05C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1003FA210;
  }

  else
  {
    v4 = sub_1003FA188;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FA188()
{
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FA210()
{
  v0[2] = v0[9];
  swift_errorRetain();
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FA2C0(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = *a1;
  if (v12)
  {
    (*(v9 + 16))(v11, a2, v8);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    (*(v9 + 32))(v14 + v13, v11, v8);
    aBlock[4] = sub_1003FBB20;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_10080F570;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    v17 = [v16 remoteObjectProxyWithErrorHandler:v15];
    _Block_release(v15);
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100007224(&qword_1008435D8, &qword_1006E2730);
    swift_dynamicCast();
    return aBlock[7];
  }

  else
  {
    (*(v5 + 104))(v7, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1003FA678(uint64_t a1)
{
  swift_errorRetain();
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1003FA6C8(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1003E653C(0, 0, v4, &unk_1006E1348, v6);
}

uint64_t sub_1003FA7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003FA894, 0, 0);
}

uint64_t sub_1003FA894(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100715510, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s task cancelled, invalidating.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[2];

  return _swift_task_switch(sub_1003FA9FC, v10, 0);
}

uint64_t sub_1003FA9FC()
{
  sub_1003F2DD8();

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003FAA9C()
{
  v1 = sub_100007224(&qword_100843558, &qword_1006E1270);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  swift_defaultActor_initialize();
  sub_100007224(&unk_100843560, &qword_1006E1278);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v0 + 14) = v4;
  v5 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100007224(&qword_100844300, &qword_1006E1280);
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1003FB06C(v3, v6 + *(*v6 + class metadata base offset for ManagedBuffer + 16));
  *(v0 + 15) = v6;
  v7 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  v8 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  v9 = &v0[OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser];
  v10 = type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v0;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_1003FACE4()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation, &qword_100843580, &qword_1006E12A8);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser, &qword_100841378, &qword_1006E12F0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1003FAD8C(uint64_t a1)
{
  sub_1003FAE40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003FAE40(uint64_t a1)
{
  if (!qword_1008434A0)
  {
    sub_10000B870(&qword_1008434A8, &qword_1006E11F0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008434A0);
    }
  }
}

uint64_t sub_1003FAEC4(uint64_t a1)
{
  result = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MobileDocumentProviderUserSelection();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MobileDocumentProviderPresentmentResponse();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003FAF4C(uint64_t a1)
{
  v3 = sub_100007224(&unk_100843570, &unk_1006E1288);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = *v1;
  v10 = a1;
  type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  (*(v4 + 104))(v6, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_1003FB06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843558, &qword_1006E1270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FB0E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003FB124()
{
  v1 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1003FB288(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentProviderViewServiceIdentifier() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_1008434A8, &qword_1006E11F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003F2250(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1003FB3F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F21D0(a1, v4, v5, v6);
}

uint64_t sub_1003FB4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FB560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FB598(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_1004291AC(a1, a2, v6);
}

uint64_t sub_1003FB660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F9940(a1, v4, v5, v6);
}

uint64_t sub_1003FB71C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003FB764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_1003FA7D4(a1, v4, v5, v6);
}

uint64_t sub_1003FB824()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1003FB914(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003F9EA8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1003FBA5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003FA2C0(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003FBA8C()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003FBB20(uint64_t a1)
{
  sub_100007224(&qword_100834120, &unk_1006BFBA0);

  return sub_1003FA678(a1);
}

uint64_t sub_1003FBB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F3098(a1, v4, v5, v6);
}

uint64_t sub_1003FBC50(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  v16._countAndFlagsBits = 0xD000000000000037;
  v16._object = 0x8000000100715640;
  if (NSXPCConnection.isEntitled(_:)(v16))
  {
    v17 = *(v2 + 112);
    os_unfair_lock_lock((v17 + 24));
    sub_1003F470C((v17 + 16), a1, v2, v22);
    os_unfair_lock_unlock((v17 + 24));
    return LOBYTE(v22[0]);
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RemoteMobileDocumentProviderUIConnectionManager caller not entitled, rejecting.", v21, 2u);
    }

    v15(v8, v4);
    return 0;
  }
}

uint64_t sub_1003FBF14(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100843558, &qword_1006E1270);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(a1 + 120);
  KeyPath = swift_getKeyPath();
  v27 = sub_1003FD338;
  v28 = KeyPath;
  v17 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
  v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v15 + v18));
  sub_1003FD340(v15 + v17);
  os_unfair_lock_unlock((v15 + v18));

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000BE18(v7, &qword_100843558, &qword_1006E1270);
    (*(v23 + 104))(v25, enum case for DIPError.Code.unexpectedDaemonState(_:), v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v19 = _convertErrorToNSError(_:)();
    (*(v26 + 16))(v26, 0, v19);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v21 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderViewServiceIdentifier());
    v22 = XPCMobileDocumentProviderViewServiceIdentifier.init(value:)();
    (*(v26 + 16))(v26, v22, 0);

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_1003FC4F4()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(0xD000000000000022, 0x8000000100715590, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_1003E653C(0, 0, v4, &unk_1006E13B0, v14);
}

uint64_t sub_1003FC778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v21 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x8000000100715560, &v22);
    *(v13 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 14) = v16;
    *v14 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "RemoteMobileDocumentProviderUIConnectionManager %{public}s %@", v13, 0x16u);
    sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v15);

    result = (*(v8 + 8))(v10, v7);
    v2 = v21;
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {

    result = (*(v8 + 8))(v10, v7);
    if (a1)
    {
LABEL_8:
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v2;
      v20[5] = a1;
      swift_errorRetain();

      sub_1003E653C(0, 0, v6, &unk_1006E13A0, v20);
    }
  }

  return result;
}

uint64_t sub_1003FCAB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003FCAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1003F984C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003FCBBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F977C(a1, v4, v5, v6);
}

uint64_t sub_1003FCC70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F8EE0(v2, v3);
}

uint64_t sub_1003FCD20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F85D4(v2, v3, v4);
}

uint64_t sub_1003FCDD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F7E2C(v2, v3, v4);
}

uint64_t sub_1003FCE90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F7564(v2, v3);
}

uint64_t sub_1003FCF3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_1003F6F00(v2);
}

uint64_t sub_1003FCFE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FD028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F6CE0(v2, v3);
}

uint64_t sub_1003FD0D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F678C(v2, v3, v4);
}

uint64_t sub_1003FD188()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F6058(v2, v3, v4);
}

uint64_t sub_1003FD23C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003FD284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F5A84(v2, v3, v4);
}

uint64_t sub_1003FD364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003FD380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F4C18(a1, v4, v5, v6);
}

uint64_t sub_1003FD4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30[2] = a2;
  v30[3] = a3;
  v30[1] = a4;
  v7 = sub_100007224(&unk_100844340, &qword_1006E15B0);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = type metadata accessor for MobileDocumentProviderOption();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v35 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = v30 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
    v17 = (v11 + 48);
    v33 = v11;
    v18 = (v11 + 32);
    v19 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v20 = *(v16 + 72);
    v21 = _swiftEmptyArrayStorage;
    v31 = v20;
    v32 = v17;
    do
    {
      v22 = v5;
      sub_1003FD9AC(v19, v9);
      if ((*v17)(v9, 1, v10) == 1)
      {
        sub_10000BE18(v9, &unk_100844340, &qword_1006E15B0);
      }

      else
      {
        v23 = *v18;
        v24 = v34;
        (*v18)(v34, v9, v10);
        v23(v35, v24, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1003C6640(0, v21[2] + 1, 1, v21);
        }

        v26 = v21[2];
        v25 = v21[3];
        v27 = v21;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_1003C6640((v25 > 1), v26 + 1, 1, v21);
        }

        v27[2] = v26 + 1;
        v21 = v27;
        v23(v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26, v35, v10);
        v5 = v22;
        v20 = v31;
        v17 = v32;
      }

      v19 += v20;
      --v15;
    }

    while (v15);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v37 = v21;
  sub_100007224(&qword_100843690, &qword_1006E15B8);
  v35 = sub_100007224(&qword_100843698, &qword_1006E15C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006BF520;
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  v36 = v28;
  v34 = sub_100007224(&unk_100844350, &qword_1006E15F8);
  sub_100007224(&qword_1008436A0, &unk_1006E1600);
  sub_1000BA30C(&qword_1008436A8, &unk_100844350, &qword_1006E15F8, &protocol conformance descriptor for [A]);
  sub_1000BA30C(&qword_1008436B0, &qword_1008436A0, &unk_1006E1600, &protocol conformance descriptor for [A]);
  sub_1000BA30C(&unk_100844360, &qword_100843698, &qword_1006E15C0, &protocol conformance descriptor for KeyPathComparator<A>);
  Sequence.sorted<A, B>(using:)();

  return MobileDocumentProviderLocalOptionUIConfiguration.init(options:formattedOriginURL:)();
}

uint64_t sub_1003FD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4 = __chkstk_darwin(v73);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v65 - v7;
  __chkstk_darwin(v6);
  v66 = &v65 - v8;
  v9 = type metadata accessor for Logger();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = __chkstk_darwin(v9);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v65 - v12;
  v13 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  sub_100400304(a1, v18, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v26 = type metadata accessor for BundleRecord();
    v27 = *(v26 - 8);
    (*(v27 + 32))(v24, v18, v26);
    (*(v27 + 56))(v24, 0, 1, v26);
  }

  else
  {
    v28 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v18[*(v28 + 48)], v24);
    v26 = type metadata accessor for BundleRecord();
    (*(*(v26 - 8) + 8))(v18, v26);
  }

  type metadata accessor for BundleRecord();
  v29 = *(v26 - 8);
  v30 = *(v29 + 48);
  if (v30(v24, 1, v26) == 1)
  {
    sub_10000BE18(v24, &qword_10083ACF8, &qword_1006D8FC0);
    sub_100400304(a1, v16, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100007224(&unk_100844370, &unk_1006DDF00);

      (*(v29 + 56))(v22, 1, 1, v26);
      (*(v29 + 8))(v16, v26);
    }

    else
    {
      v31 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      (*(v29 + 32))(v22, v16, v26);
      (*(v29 + 56))(v22, 0, 1, v26);
      sub_10000BE18(&v16[v31], &qword_10083ACF8, &qword_1006D8FC0);
    }

    if (v30(v22, 1, v26) == 1)
    {
      sub_10000BE18(v22, &qword_10083ACF8, &qword_1006D8FC0);
      v32 = v74;
      goto LABEL_15;
    }

    v24 = v22;
  }

  v32 = v74;
  v33 = BundleRecord.localizedName.getter();
  v35 = v34;
  (*(v29 + 8))(v24, v26);
  v76[0] = v33;
  v76[1] = v35;
  sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (!v75)
  {
LABEL_15:
    v39 = v70;
    defaultLogger()();
    v40 = v69;
    sub_100400304(a1, v69, type metadata accessor for MobileDocumentProviderRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v39;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76[0] = v45;
      *v44 = 136315138;
      sub_100400304(v40, v68, type metadata accessor for MobileDocumentProviderRecord);
      v46 = String.init<A>(describing:)();
      v47 = v40;
      v48 = v46;
      v50 = v49;
      sub_100326E1C(v47);
      v51 = sub_100141FE4(v48, v50, v76);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "RemoteMobileDocumentProviderUIPresenter could not find localized display name for record %s. Not sending to selection UI", v44, 0xCu);
      sub_10000BB78(v45);

      (*(v71 + 8))(v43, v72);
    }

    else
    {

      sub_100326E1C(v40);
      (*(v71 + 8))(v39, v72);
    }

LABEL_18:
    v38 = 1;
    goto LABEL_19;
  }

  sub_100330A28();
  if (!v36)
  {
    sub_100330370();
    if (!v37)
    {

      v54 = v67;
      defaultLogger()();
      v55 = a1;
      v56 = v66;
      sub_100400304(v55, v66, type metadata accessor for MobileDocumentProviderRecord);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76[0] = v60;
        *v59 = 136315138;
        sub_100400304(v56, v68, type metadata accessor for MobileDocumentProviderRecord);
        v61 = String.init<A>(describing:)();
        v63 = v62;
        sub_100326E1C(v56);
        v64 = sub_100141FE4(v61, v63, v76);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "RemoteMobileDocumentProviderUIPresenter could not find bundleIdentifier %s. Not sending to selection UI", v59, 0xCu);
        sub_10000BB78(v60);
      }

      else
      {

        sub_100326E1C(v56);
      }

      (*(v71 + 8))(v54, v72);
      goto LABEL_18;
    }
  }

  sub_10032FA04();

  MobileDocumentProviderOption.init(recordIdentifier:bundleIdentifier:localizedDisplayName:availableDocumentTypes:)();
  v38 = 0;
LABEL_19:
  v52 = type metadata accessor for MobileDocumentProviderOption();
  return (*(*(v52 - 8) + 56))(v32, v38, 1, v52);
}

uint64_t sub_1003FE2F4@<X0>(uint64_t *a1@<X8>)
{
  result = MobileDocumentProviderOption.localizedDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003FE320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003FE4A0, 0, 0);
}

uint64_t sub_1003FE4A0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIPresenter presented user selection sheet", v4, 2u);
  }

  v6 = v1[23];
  v5 = v1[24];
  v7 = v1[22];
  v8 = v1[15];

  (*(v6 + 8))(v5, v7);
  v9 = sub_10000BA08((v8 + 16), *(v8 + 40));
  v10 = *v9;
  v1[25] = *v9;

  return _swift_task_switch(sub_1003FE5BC, v10, 0);
}

uint64_t sub_1003FE5BC()
{
  v1 = *(v0 + 200);
  sub_100020260(*(v0 + 112), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FE65C, 0, 0);
}

uint64_t sub_1003FE65C()
{
  sub_1003FD4D8(v0[11], v0[12], v0[13], v0[21]);
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  sub_10000BA08((v0[15] + 16), *(v0[15] + 40));
  (*(v3 + 16))(v4, v1, v2);
  (*(v5 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:), v6);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v4);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003FE810(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v3[18] = *(v6 + 64);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003FE938, 0, 0);
}

uint64_t sub_1003FE938()
{
  v1 = sub_10000BA08((*(v0 + 96) + 16), *(*(v0 + 96) + 40));
  v2 = *v1;
  *(v0 + 160) = *v1;

  return _swift_task_switch(sub_1003FE9AC, v2, 0);
}

uint64_t sub_1003FE9AC()
{
  v1 = *(v0 + 160);
  sub_100020260(*(v0 + 88), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FEA4C, 0, 0);
}

uint64_t sub_1003FEA4C()
{
  v1 = sub_10000BA08((*(v0 + 96) + 16), *(*(v0 + 96) + 40));
  v2 = *v1;
  *(v0 + 168) = *v1;

  return _swift_task_switch(sub_1003FEAC0, v2, 0);
}

uint64_t sub_1003FEAC0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[10], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[22] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_1003FEBF8;

  return sub_1003F387C("updateToAuthorizationView(presentmentRequest:)", 46, 2, &unk_1006E15A0, v5);
}

uint64_t sub_1003FEBF8()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {
    v3 = v2[21];

    return _swift_task_switch(sub_1003FED50, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1003FED50()
{

  return _swift_task_switch(sub_1003FEDB8, 0, 0);
}

uint64_t sub_1003FEDB8()
{
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003FEFE0, 0, 0);
}

uint64_t sub_1003FEFE0()
{
  v1 = sub_10000BA08((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v2 = *v1;
  *(v0 + 136) = *v1;

  return _swift_task_switch(sub_1003FF054, v2, 0);
}

uint64_t sub_1003FF054()
{
  v1 = *(v0 + 136);
  sub_100020260(*(v0 + 96), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FF0F4, 0, 0);
}

uint64_t sub_1003FF0F4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  sub_10000BA08((v0[13] + 16), *(v0[13] + 40));
  v5 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:), v3);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v1);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003FF244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v5[20] = *(v8 + 64);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003FF37C, 0, 0);
}

uint64_t sub_1003FF37C()
{
  v1 = sub_10000BA08((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return _swift_task_switch(sub_1003FF3F0, v2, 0);
}

uint64_t sub_1003FF3F0()
{
  v1 = *(v0 + 184);
  sub_100020260(*(v0 + 104), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FF490, 0, 0);
}

uint64_t sub_1003FF490()
{
  sub_1003FD4D8(v0[10], v0[11], v0[12], v0[22]);
  v1 = sub_10000BA08((v0[14] + 16), *(v0[14] + 40));
  v2 = *v1;
  v0[24] = *v1;

  return _swift_task_switch(sub_1003FF67C, v2, 0);
}

uint64_t sub_1003FF67C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[22], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_1003FF7B4;

  return sub_1003F387C("updateToSelectionView(configuration:)", 37, 2, &unk_1006E1628, v5);
}

uint64_t sub_1003FF7B4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_1003FF974;
  }

  else
  {

    v4 = sub_1003FF8D8;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FF8D8()
{
  (*(v0[19] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FF974()
{

  return _swift_task_switch(sub_1003FF9DC, 0, 0);
}

uint64_t sub_1003FF9DC()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FFB68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003FFC8C, 0, 0);
}

uint64_t sub_1003FFC8C()
{
  v1 = sub_10000BA08((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v2 = *v1;
  *(v0 + 88) = *v1;

  return _swift_task_switch(sub_1003FFD00, v2, 0);
}

uint64_t sub_1003FFD00()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[2], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1003FFE38;

  return sub_1003F387C("updateView(auxiliaryView:)", 26, 2, &unk_1006E1618, v5);
}

uint64_t sub_1003FFE38()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];

    return _swift_task_switch(sub_1003FFF90, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1003FFF90()
{

  return _swift_task_switch(sub_1003FFFF8, 0, 0);
}

uint64_t sub_1003FFFF8()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100400178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841378, &qword_1006E12F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100400200(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderPresentmentRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003F27A0(a1, v1 + v5);
}

uint64_t sub_1004002D8@<X0>(uint64_t *a1@<X8>)
{
  result = MobileDocumentProviderOption.localizedDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100400304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100400384(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderAuxiliaryView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003F29C0(a1, v1 + v5);
}

uint64_t sub_100400474(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100400504(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003F2470(a1, v1 + v5);
}

uint64_t sub_1004005DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for DIPError.Code();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004006FC, 0, 0);
}

uint64_t sub_1004006FC()
{
  v1 = v0[5];
  v2 = *(v1 + 136);
  v0[12] = v2;
  if (v2)
  {
    v3 = *(v1 + 144);
    swift_unknownObjectRetain();
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Confirming with user notification", v6, 2u);
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];

    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100400994;
    v11 = v0[4];
    v13 = v0[2];
    v12 = v0[3];

    return sub_100400D28(v13, v12, v2, v3, v11);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100400994()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100400CB0;
  }

  else
  {
    v2 = sub_100400AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100400AA8()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v1 + 312);
  *(v0 + 120) = v2;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v3 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 128) = v3;
  *(v0 + 144) = *(*(v3 - 8) + 80);
  v4 = swift_allocObject();
  *(v0 + 136) = v4;
  *(v4 + 16) = xmmword_1006BFF90;
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();
  static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_100400BE8, v2, 0);
}

uint64_t sub_100400BE8()
{
  sub_10051ACBC(*(v0 + 136));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100400CB0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100400D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for UserNotificationAction();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  sub_100007224(&qword_1008437B8, &qword_1006E1750);
  v6[14] = swift_task_alloc();
  v9 = sub_100007224(&qword_1008437C0, &qword_1006E1758);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_100007224(&qword_1008437C8, &unk_1006E1760);
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v6[24] = swift_task_alloc();
  v12 = type metadata accessor for UserNotificationCategory();
  v6[25] = v12;
  v6[26] = *(v12 - 8);
  v6[27] = swift_task_alloc();
  v13 = type metadata accessor for UserNotificationRequest();
  v6[28] = v13;
  v6[29] = *(v13 - 8);
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004010A0, 0, 0);
}

uint64_t sub_1004010A0()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v12 = v0[21];
  v7 = v0[7];
  ObjectType = swift_getObjectType();
  v0[31] = ObjectType;
  static WebPresentmentLocalizedString.confirmVerificationTitle.getter();
  static WebPresentmentLocalizedString.confirmVerificationBody(deviceName:)();
  (*(v2 + 104))(v1, enum case for UserNotificationCategory.identityPresentmentHandoff(_:), v3);
  sub_10000BA08((v7 + 272), *(v7 + 296));
  dispatch thunk of DateProviding.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v5 + 8))(v6, v12);
  (*(v5 + 56))(v4, 0, 1, v12);
  UserNotificationRequest.init(title:body:category:iconSystemImageName:defaultActionRequiresAuthentication:identifier:playSound:isTimeSensitive:expirationDate:)();
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_1004012B0;
  v9 = v0[30];
  v10 = v0[5];

  return dispatch thunk of UserNotificationManaging.addNotification(_:)(v9, ObjectType, v10);
}

uint64_t sub_1004012B0()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 264) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100401D44;
  }

  else
  {
    v5 = sub_100401420;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100401420()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_1004014D4;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationReceived()(v2, v3);
}

uint64_t sub_1004014D4()
{

  return _swift_task_switch(sub_1004015D0, 0, 0);
}

uint64_t sub_1004015D0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  dispatch thunk of UserNotificationManaging.makeResponseStream(identifier:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1004016E4;
  v5 = v0[18];
  v6 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1004016E4()
{

  return _swift_task_switch(sub_1004017E0, 0, 0);
}

uint64_t sub_1004017E0()
{
  v1 = v0 + 12;
  v2 = v0[12];
  v3 = v0[14];
  v5 = v0 + 11;
  v4 = v0[11];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0 + 20;
    v1 = v0 + 19;
    v5 = v0 + 18;
LABEL_8:
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    (*(*v1 + 8))(*v6, *v5);
    (*(v13 + 104))(v12, enum case for DIPError.Code.webPresentmentCancelled(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

    v15 = v0[1];

    return v15();
  }

  v6 = v0 + 13;
  v7 = v0[13];
  (*(v2 + 32))(v7, v3, v4);
  if ((*(v2 + 88))(v7, v4) != enum case for UserNotificationAction.default(_:))
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_8;
  }

  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000BA08(v8, v9);
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_100401B34;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationOpened()(v9, v10);
}

uint64_t sub_100401B34()
{

  return _swift_task_switch(sub_100401C30, 0, 0);
}

uint64_t sub_100401C30()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100401D44()
{
  dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100401E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderUserSelection();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v6[26] = v12;
  v6[27] = *(v12 - 8);
  v6[28] = swift_task_alloc();
  sub_100007224(&qword_100843798, &unk_1006E21E0);
  v6[29] = swift_task_alloc();
  v13 = sub_100007224(&qword_1008437A0, &unk_1006E1710);
  v6[30] = v13;
  v6[31] = *(v13 - 8);
  v6[32] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v6[33] = v14;
  v6[34] = *(v14 - 8);
  v6[35] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v6[36] = v15;
  v6[37] = *(v15 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v16 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v6[40] = v16;
  v6[41] = *(v16 - 8);
  v6[42] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v6[43] = v17;
  v6[44] = *(v17 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v18 = type metadata accessor for MobileDocumentProviderRecord(0);
  v6[52] = v18;
  v6[53] = *(v18 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  sub_100007224(&qword_1008437B0, &unk_1006E1720);
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return _swift_task_switch(sub_100402484, 0, 0);
}

uint64_t sub_100402484()
{
  v68 = v0;
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[6];
  sub_10000BA08((v0[8] + 232), *(v0[8] + 256));
  sub_100473D74(v5, v1);
  sub_10000BBC4(v1, v2, &qword_1008437B0, &unk_1006E1720);
  v6 = *(v4 + 48);
  v0[63] = v6;
  v0[64] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v3);
  v8 = v0[61];
  if (v7 == 1)
  {
    sub_10000BE18(v8, &qword_1008437B0, &unk_1006E1720);
  }

  else
  {
    v9 = v0[57];
    v10 = v0[51];
    sub_100407A9C(v8, v9, type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B04(v9, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v0[51];
      v12 = *(v11 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
      v0[65] = v12;
      v13 = type metadata accessor for BundleRecord();
      (*(*(v13 - 8) + 8))(v11, v13);
      defaultLogger()();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Bypass record is Apple Wallet, bypassing selection sheet to 1st party consent sheet", v16, 2u);
      }

      v17 = v0[47];
      v18 = v0[43];
      v19 = v0[44];

      (*(v19 + 8))(v17, v18);
      v20 = swift_task_alloc();
      v0[66] = v20;
      *v20 = v0;
      v20[1] = sub_100402C60;
      v21 = v0[7];
      v22 = v0[4];
      v23 = v0[5];
      v24 = v0[3];

      return sub_100406DD8(v24, v22, v23, v12, v21);
    }

    v26 = v0[51];
    sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B84(v26, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  }

  v27 = v0[60];
  v28 = v0[52];
  sub_10000BBC4(v0[62], v27, &qword_1008437B0, &unk_1006E1720);
  v29 = v6(v27, 1, v28);
  v30 = v0[60];
  if (v29 == 1)
  {
    sub_10000BE18(v30, &qword_1008437B0, &unk_1006E1720);
    goto LABEL_19;
  }

  sub_100407A9C(v30, v0[56], type metadata accessor for MobileDocumentProviderRecord);
  v31 = sub_100330370();
  if (!v32)
  {
    sub_100407B84(v0[56], type metadata accessor for MobileDocumentProviderRecord);
LABEL_19:
    v54 = v0[27];
    v53 = v0[28];
    v55 = v0[26];
    PartialWebPresentmentRequest.originatingURL.getter();
    v56 = URL.host.getter();
    v58 = v57;
    v0[69] = v57;
    (*(v54 + 8))(v53, v55);
    if (v58)
    {
      sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
      v59 = swift_task_alloc();
      v0[70] = v59;
      *v59 = v0;
      v59[1] = sub_1004031BC;
      v60 = v0[42];
      v62 = v0[5];
      v61 = v0[6];

      return sub_1003FE320(v60, v61, v56, v58, v62);
    }

    else
    {
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentMissingHost(_:), v0[23]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      v63 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BE18(v0[62], &qword_1008437B0, &unk_1006E1720);
      v0[111] = v63;
      v64 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
      v65 = sub_10000BA08((*v64 + 16), *(*v64 + 40));
      v0[112] = v65;
      v66 = *v65;

      return _swift_task_switch(sub_10040677C, v66, 0);
    }
  }

  v33 = v31;
  v34 = v32;
  defaultLogger()();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[46];
  v39 = v0[43];
  v40 = v0[44];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_100141FE4(v33, v34, &v67);
    _os_log_impl(&_mh_execute_header, v35, v36, "RemoteWebPresentmentManager using a bypassed third party credential provider: %s.", v41, 0xCu);
    sub_10000BB78(v42);
  }

  (*(v40 + 8))(v38, v39);
  v44 = v0[34];
  v43 = v0[35];
  v45 = v0[33];
  v46 = v0[8];
  v47 = v0[4];
  v48 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v48 - 8) + 16))(v43, v47, v48);
  (*(v44 + 104))(v43, enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:), v45);
  sub_100330648();
  MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
  sub_10000BA08((v46 + 96), *(v46 + 120));
  v49 = swift_task_alloc();
  v0[68] = v49;
  *v49 = v0;
  v49[1] = sub_100402FA0;
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[5];

  return sub_1003FEF1C(v50, v51, v52);
}

uint64_t sub_100402C60()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_100406AA8;
  }

  else
  {
    v2 = sub_100402D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100402D94()
{
  v1 = v0[62];
  sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100402FA0()
{

  return _swift_task_switch(sub_10040309C, 0, 0);
}

uint64_t sub_10040309C()
{
  v1 = *(v0 + 448);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));
  sub_100407B84(v1, type metadata accessor for MobileDocumentProviderRecord);
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 904) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 908) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 912) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v2 = swift_task_alloc();
  *(v0 + 576) = v2;
  *v2 = v0;
  v2[1] = sub_10040347C;
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v3, 0, 0, v4, v0 + 16);
}

uint64_t sub_1004031BC()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_1004033D8;
  }

  else
  {
    v2 = sub_1004032F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004032F0()
{
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 904) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 908) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 912) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v1 = swift_task_alloc();
  *(v0 + 576) = v1;
  *v1 = v0;
  v1[1] = sub_10040347C;
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 16);
}

uint64_t sub_1004033D8()
{
  v1 = v0[71];
  sub_10000BE18(v0[62], &qword_1008437B0, &unk_1006E1720);
  v0[111] = v1;
  v2 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v3 = sub_10000BA08((*v2 + 16), *(*v2 + 40));
  v0[112] = v3;
  v4 = *v3;

  return _swift_task_switch(sub_10040677C, v4, 0);
}

uint64_t sub_10040347C()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100406B6C;
  }

  else
  {
    v2 = sub_100403590;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100403590()
{
  v1 = *(v0 + 232);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) == 1)
  {
    v66 = *(v0 + 496);
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 320);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    (*(v6 + 104))(v5, enum case for DIPError.Code.unexpectedDaemonState(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
    sub_10000BE18(v66, &qword_1008437B0, &unk_1006E1720);
    *(v0 + 888) = v8;
    v9 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
    v10 = sub_10000BA08((*v9 + 16), *(*v9 + 40));
    *(v0 + 896) = v10;
    v11 = *v10;
    v12 = sub_10040677C;
LABEL_3:

    return _swift_task_switch(v12, v11, 0);
  }

  sub_100407A9C(v1, *(v0 + 176), type metadata accessor for RemoteMobileDocumentProviderUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v29 = *(v0 + 144);
        v28 = *(v0 + 152);
        v30 = *(v0 + 136);
        v31 = *(v0 + 56);
        (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 176), *(v0 + 72));
        v24 = v31[3];
        v25 = v31[4];
        sub_10000BA08(v31, v24);
        (*(v29 + 104))(v28, enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.success(_:), v30);
        v32 = swift_task_alloc();
        *(v0 + 880) = v32;
        *v32 = v0;
        v32[1] = sub_1004063C0;
        v27 = *(v0 + 152);
        goto LABEL_14;
      }

      defaultLogger()();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v54 = os_log_type_enabled(v52, v53);
      v56 = *(v0 + 352);
      v55 = *(v0 + 360);
      v57 = *(v0 + 344);
      if (v54)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "RemoteWebPresentmentManager: unexpected selectedEnableBluetooth state", v58, 2u);
      }

      (*(v56 + 8))(v55, v57);
      goto LABEL_32;
    }

    v41 = *(v0 + 64);
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 176), *(v0 + 104));
    v42 = v41[10];
    v43 = v41[11];
    sub_10000BA08(v41 + 7, v42);
    v44 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v46 = v45;
    *(v0 + 728) = v45;
    v67 = (*(v43 + 16) + **(v43 + 16));
    v47 = swift_task_alloc();
    *(v0 + 736) = v47;
    *v47 = v0;
    v47[1] = sub_100404CFC;
    v48 = *(v0 + 464);
LABEL_23:

    return v67(v48, v44, v46, v42, v43);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v0 + 904);
      v15 = *(v0 + 176);
      v16 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 672) = v16;
      v17 = *(v16 - 8);
      v18 = v17;
      *(v0 + 680) = v17;
      if ((*(v17 + 88))(v15, v16) == v14)
      {
        v19 = *(v0 + 908);
        v21 = *(v0 + 144);
        v20 = *(v0 + 152);
        v22 = *(v0 + 136);
        v23 = *(v0 + 56);
        v24 = v23[3];
        v25 = v23[4];
        sub_10000BA08(v23, v24);
        (*(v21 + 104))(v20, v19, v22);
        v26 = swift_task_alloc();
        *(v0 + 688) = v26;
        *v26 = v0;
        v26[1] = sub_1004043B0;
        v27 = *(v0 + 152);
LABEL_14:

        return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v27, v24, v25);
      }

      goto LABEL_31;
    }

    v49 = *(v0 + 64);
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 176), *(v0 + 104));
    v42 = v49[10];
    v43 = v49[11];
    sub_10000BA08(v49 + 7, v42);
    v44 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v46 = v50;
    *(v0 + 696) = v50;
    v67 = (*(v43 + 16) + **(v43 + 16));
    v51 = swift_task_alloc();
    *(v0 + 704) = v51;
    *v51 = v0;
    v51[1] = sub_1004045CC;
    v48 = *(v0 + 472);
    goto LABEL_23;
  }

  v33 = *(v0 + 912);
  v34 = *(v0 + 176);
  v16 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  *(v0 + 592) = v16;
  v35 = *(v16 - 8);
  v18 = v35;
  *(v0 + 600) = v35;
  v36 = (*(v35 + 88))(v34, v16);
  if (v36 != v33)
  {
    if (v36 == *(v0 + 904))
    {
      v59 = *(*(v0 + 64) + 312);
      *(v0 + 648) = v59;
      sub_100007224(&qword_10083C008, &qword_1006DA4E0);
      v60 = type metadata accessor for DIPSignpost.Config();
      *(v0 + 656) = v60;
      *(v0 + 920) = *(*(v60 - 8) + 80);
      v61 = swift_allocObject();
      *(v0 + 664) = v61;
      *(v61 + 16) = xmmword_1006BF740;
      static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
      static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
      v12 = sub_100404300;
      v11 = v59;
      goto LABEL_3;
    }

LABEL_31:
    (*(v18 + 8))(*(v0 + 176), v16);
LABEL_32:
    v62 = swift_task_alloc();
    *(v0 + 576) = v62;
    *v62 = v0;
    v62[1] = sub_10040347C;
    v63 = *(v0 + 232);
    v64 = *(v0 + 240);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v63, 0, 0, v64, v0 + 16);
  }

  v37 = *(v0 + 56);
  v38 = v37[3];
  v39 = v37[4];
  sub_10000BA08(v37, v38);
  v40 = swift_task_alloc();
  *(v0 + 608) = v40;
  *v40 = v0;
  v40[1] = sub_100403F64;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v38, v39);
}

uint64_t sub_100403F64()
{

  return _swift_task_switch(sub_100404060, 0, 0);
}

uint64_t sub_100404060()
{
  v1 = *(*(v0 + 64) + 312);
  *(v0 + 616) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 624) = v2;
  v3 = *(v2 - 8);
  *(v0 + 632) = v3;
  *(v0 + 916) = *(v3 + 80);
  v4 = swift_allocObject();
  *(v0 + 640) = v4;
  *(v4 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_100404178, v1, 0);
}

uint64_t sub_100404178()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = (*(v0 + 916) + 32) & ~*(v0 + 916);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10040423C, 0, 0);
}

uint64_t sub_10040423C()
{
  (*(v0[75] + 8))(v0[22], v0[74]);
  v1 = swift_task_alloc();
  v0[72] = v1;
  *v1 = v0;
  v1[1] = sub_10040347C;
  v2 = v0[29];
  v3 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 2);
}

uint64_t sub_100404300()
{
  sub_10051B0E0(*(v0 + 664));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100407BE4, 0, 0);
}

uint64_t sub_1004043B0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100404508, 0, 0);
}

uint64_t sub_100404508()
{
  (*(v0[85] + 8))(v0[22], v0[84]);
  v1 = swift_task_alloc();
  v0[72] = v1;
  *v1 = v0;
  v1[1] = sub_10040347C;
  v2 = v0[29];
  v3 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, 0, 0, v3, v0 + 2);
}

uint64_t sub_1004045CC()
{

  return _swift_task_switch(sub_1004046E4, 0, 0);
}

uint64_t sub_1004046E4()
{
  v1 = *(v0 + 472);
  if ((*(v0 + 504))(v1, 1, *(v0 + 416)) == 1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    v2 = &qword_1008437B0;
    v3 = &unk_1006E1720;
LABEL_8:
    sub_10000BE18(v1, v2, v3);
LABEL_9:
    v16 = swift_task_alloc();
    *(v0 + 576) = v16;
    *v16 = v0;
    v16[1] = sub_10040347C;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v18, v0 + 16);
  }

  v4 = *(v0 + 440);
  v5 = *(v0 + 400);
  sub_100407A9C(v1, v4, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 400);
  v8 = *(v0 + 96);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v9 = type metadata accessor for BundleRecord();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v8, v7, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  else
  {
    v11 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(v7 + *(v11 + 48), v8);
    v9 = type metadata accessor for BundleRecord();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v1 = *(v0 + 96);
  type metadata accessor for BundleRecord();
  v12 = *(v9 - 8);
  if ((*(v12 + 48))(v1, 1, v9) == 1)
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);
    sub_100407B84(*(v0 + 440), type metadata accessor for MobileDocumentProviderRecord);
    (*(v15 + 8))(v13, v14);
    v2 = &qword_10083ACF8;
    v3 = &qword_1006D8FC0;
    goto LABEL_8;
  }

  v19 = BundleRecord.bundleIdentifier.getter();
  v21 = v20;
  *(v0 + 712) = v20;
  (*(v12 + 8))(v1, v9);
  if (!v21)
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    sub_100407B84(*(v0 + 440), type metadata accessor for MobileDocumentProviderRecord);
    (*(v28 + 8))(v26, v27);
    goto LABEL_9;
  }

  v22 = *(v0 + 56);
  v23 = v22[3];
  v24 = v22[4];
  sub_10000BA08(v22, v23);
  v25 = swift_task_alloc();
  *(v0 + 720) = v25;
  *v25 = v0;
  v25[1] = sub_100404AF8;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v19, v21, v23, v24);
}

uint64_t sub_100404AF8()
{

  return _swift_task_switch(sub_100404C10, 0, 0);
}

uint64_t sub_100404C10()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  sub_100407B84(v0[55], type metadata accessor for MobileDocumentProviderRecord);
  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[72] = v4;
  *v4 = v0;
  v4[1] = sub_10040347C;
  v5 = v0[29];
  v6 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, 0, 0, v6, v0 + 2);
}

uint64_t sub_100404CFC()
{

  return _swift_task_switch(sub_100404E14, 0, 0);
}

uint64_t sub_100404E14()
{
  v1 = *(v0 + 464);
  if ((*(v0 + 504))(v1, 1, *(v0 + 416)) == 1)
  {
    v2 = *(v0 + 328);
    v22 = *(v0 + 336);
    v23 = *(v0 + 496);
    v3 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 320);
    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 184);
    v7 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 240);
    v17 = *(v0 + 104);
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
    (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v7 + 8))(v18, v17);
    (*(v3 + 8))(v20, v19);
    (*(v2 + 8))(v22, v21);
    sub_10000BE18(v23, &qword_1008437B0, &unk_1006E1720);
    *(v0 + 888) = v8;
    v9 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
    v10 = sub_10000BA08((*v9 + 16), *(*v9 + 40));
    *(v0 + 896) = v10;
    v11 = *v10;

    return _swift_task_switch(sub_10040677C, v11, 0);
  }

  else
  {
    v12 = *(v0 + 56);
    sub_100407A9C(v1, *(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
    v13 = v12[3];
    v14 = v12[4];
    sub_10000BA08(v12, v13);
    v15 = swift_task_alloc();
    *(v0 + 744) = v15;
    *v15 = v0;
    v15[1] = sub_100405104;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v13, v14);
  }
}

uint64_t sub_100405104()
{

  return _swift_task_switch(sub_100405200, 0, 0);
}

uint64_t sub_100405200()
{
  sub_100407B04(*(v0 + 432), *(v0 + 392));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 392);
    v2 = *(v0 + 64);
    *(v0 + 752) = *(v1 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
    v3 = *(v2 + 312);
    *(v0 + 760) = v3;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v4 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 768) = v4;
    v5 = *(v4 - 8);
    *(v0 + 776) = v5;
    *(v0 + 924) = *(v5 + 80);
    v6 = swift_allocObject();
    *(v0 + 784) = v6;
    *(v6 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v7 = sub_100405420;
  }

  else
  {
    v3 = *(*(v0 + 64) + 312);
    *(v0 + 816) = v3;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v8 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 824) = v8;
    v9 = *(v8 - 8);
    *(v0 + 832) = v9;
    *(v0 + 928) = *(v9 + 80);
    v10 = swift_allocObject();
    *(v0 + 840) = v10;
    *(v10 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v7 = sub_1004059F4;
  }

  return _swift_task_switch(v7, v3, 0);
}

uint64_t sub_100405420()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = (*(v0 + 924) + 32) & ~*(v0 + 924);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1004054E4, 0, 0);
}

uint64_t sub_1004054E4()
{
  v1 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v2 = sub_10000BA08((*v1 + 16), *(*v1 + 40));
  *(v0 + 792) = v2;
  v3 = *v2;

  return _swift_task_switch(sub_100405568, v3, 0);
}

uint64_t sub_100405568()
{
  sub_1003F2DD8();
  v1 = swift_task_alloc();
  v0[100] = v1;
  *v1 = v0;
  v1[1] = sub_100405614;
  v2 = v0[94];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_100406DD8(v6, v4, v5, v2, v3);
}

uint64_t sub_100405614()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_100406C54;
  }

  else
  {
    v2 = sub_100405748;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100405748()
{
  v13 = v0[62];
  v14 = v0[49];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  sub_100407B84(v0[54], type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v13, &qword_1008437B0, &unk_1006E1720);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v14, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004059F4()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = (*(v0 + 928) + 32) & ~*(v0 + 928);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100405AB8, 0, 0);
}

void sub_100405AB8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 40);
  v3 = *sub_10000BA08((*(v0 + 64) + 192), *(*(v0 + 64) + 216));
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 14);
  sub_100407B68(&v3[4]);
  if (v1)
  {

    os_unfair_lock_unlock(v3 + 14);
  }

  else
  {
    v4 = *(v0 + 64);
    *(v0 + 932) = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    os_unfair_lock_unlock(v3 + 14);

    v5 = *sub_10000BA08((v4 + 192), *(v4 + 216));
    v6 = swift_task_alloc();
    *(v0 + 848) = v6;
    *v6 = v0;
    v6[1] = sub_100405C14;
    v7 = *(v0 + 432);
    v8 = *(v0 + 304);
    v9 = *(v0 + 32);

    sub_10032DCBC(v8, v7, v9, v5);
  }
}

uint64_t sub_100405C14()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100405EE8;
  }

  else
  {
    v2 = sub_100405D28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100405D28()
{
  sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v1 = swift_task_alloc();
  v0[108] = v1;
  *v1 = v0;
  v1[1] = sub_100405DD4;
  v2 = v0[38];
  v3 = v0[5];

  return sub_1003FE810(v2, v3);
}

uint64_t sub_100405DD4()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1004061FC;
  }

  else
  {
    v2 = sub_100406094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100405EE8()
{
  v17 = *(v0 + 932);
  v18 = *(v0 + 856);
  v15 = *(v0 + 496);
  v16 = *(v0 + 392);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  sub_100407B84(*(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v16 + v17, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  *(v0 + 888) = v18;
  v11 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  *(v0 + 896) = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_100406094()
{
  v1 = *(v0 + 932);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  sub_100407B84(v2, type metadata accessor for MobileDocumentProviderRecord);
  (*(v5 + 8))(v4, v6);
  sub_10000BE18(v3 + v1, &qword_10083ACF8, &qword_1006D8FC0);
  v7 = type metadata accessor for BundleRecord();
  (*(*(v7 - 8) + 8))(v3, v7);
  v8 = swift_task_alloc();
  *(v0 + 576) = v8;
  *v8 = v0;
  v8[1] = sub_10040347C;
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, 0, 0, v10, v0 + 16);
}

uint64_t sub_1004061FC()
{
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v17 = *(v0 + 932);
  v18 = *(v0 + 872);
  v15 = *(v0 + 496);
  v16 = *(v0 + 392);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  sub_100407B84(*(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v16 + v17, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  *(v0 + 888) = v18;
  v11 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  *(v0 + 896) = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_1004063C0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100406518, 0, 0);
}

uint64_t sub_100406518()
{
  v1 = v0[41];
  v11 = v0[42];
  v12 = v0[62];
  v2 = v0[40];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
  WebPresentmentResponse.init(responseData:)();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  (*(v1 + 8))(v11, v2);
  sub_10000BE18(v12, &qword_1008437B0, &unk_1006E1720);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10040677C()
{
  sub_1003F2DD8();

  return _swift_task_switch(sub_1004067E8, 0, 0);
}

uint64_t sub_1004067E8()
{
  (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.internalError(_:), v0[23]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100406AA8()
{
  v1 = v0[62];
  sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v0[111] = v0[67];
  v2 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v3 = sub_10000BA08((*v2 + 16), *(*v2 + 40));
  v0[112] = v3;
  v4 = *v3;

  return _swift_task_switch(sub_10040677C, v4, 0);
}

uint64_t sub_100406B6C()
{
  v1 = v0[62];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v0[111] = v0[2];
  v5 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v6 = sub_10000BA08((*v5 + 16), *(*v5 + 40));
  v0[112] = v6;
  v7 = *v6;

  return _swift_task_switch(sub_10040677C, v7, 0);
}

uint64_t sub_100406C54()
{
  v15 = v0[62];
  v16 = v0[49];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  sub_100407B84(v0[54], type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  v0[111] = v0[101];
  v11 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  v0[112] = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_100406DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100406FB4, 0, 0);
}

uint64_t sub_100406FB4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentManager handling first party selection", v4, 2u);
  }

  v5 = v1[24];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[10];
  v9 = v1[11];

  v10 = *(v7 + 8);
  v1[25] = v10;
  v10(v5, v6);
  v1[26] = sub_10000BA08((v9 + 16), *(v9 + 40));
  v11 = v8[3];
  v12 = v8[4];
  sub_10000BA08(v8, v11);
  v13 = swift_task_alloc();
  v1[27] = v13;
  *v13 = v1;
  v13[1] = sub_100407120;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v11, v12);
}

uint64_t sub_100407120(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_100407220, 0, 0);
}

uint64_t sub_100407220(uint64_t a1)
{
  v38 = v1;
  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[25];
  v11 = v1[23];
  v12 = v1[20];
  v13 = v1[21];
  if (v9)
  {
    v35 = v1[23];
    v36 = v1[25];
    v14 = v1[18];
    v15 = v1[19];
    v34 = v1[21];
    v16 = v1[17];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v17 = 136315138;
    v6(v15, v12, v16);
    v18 = String.init<A>(describing:)();
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_100141FE4(v18, v21, &v37);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v19, "WebPresentmentWalletPassPresenter presenting authorization sheet for request: %s", v17, 0xCu);
    sub_10000BB78(v33);

    v36(v35, v34);
  }

  else
  {
    v24 = v1[17];
    v23 = v1[18];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = swift_task_alloc();
  v1[30] = v25;
  *v25 = v1;
  v25[1] = sub_100407498;
  v26 = v1[28];
  v27 = v1[29];
  v29 = v1[8];
  v28 = v1[9];
  v30 = v1[6];
  v31 = v1[7];

  return sub_1004743C0(v30, v28, v31, v29, v26, v27);
}

uint64_t sub_100407498()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100407644, 0, 0);
  }

  else
  {
    sub_10000BD94(v2[28], v2[29]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100407644()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    sub_10000BBC4(v0[16], v4, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v6 + 88))(v4, v5) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[12]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v7 = v0[16];
  sub_10000BD94(v0[28], v0[29]);

  sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10040796C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  sub_10000BB78(v0 + 34);

  return swift_deallocClassInstance();
}

uint64_t sub_100407A08(uint64_t *a1, int a2)
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

uint64_t sub_100407A50(uint64_t result, int a2, int a3)
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

uint64_t sub_100407A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100407B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100407B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100407BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100407C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100407D0C(uint64_t a1)
{
  result = type metadata accessor for WebPresentmentResponse();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100407D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_100407E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_100407F3C(uint64_t a1)
{
  result = type metadata accessor for PartialWebPresentmentRequest();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100407FB0(void *a1)
{
  v3 = sub_100007224(&qword_100843908, &qword_1006E18C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_100408E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100842D90, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for RemoteWebPresentmentRequest(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10040816C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for PartialWebPresentmentRequest();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007224(&qword_1008438F8, &qword_1006E18B8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RemoteWebPresentmentRequest(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_100408E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_100408EB8(&qword_100842D88, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1003F1170(v19, v18);
  sub_10000BB78(a1);
  return sub_1003F10CC(v19);
}

uint64_t sub_10040849C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for WebPresentmentResponse();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100843910, &qword_1006E18C8);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RemoteWebPresentmentResponse(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_100408F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_100408EB8(&qword_100843920, &type metadata accessor for WebPresentmentResponse, &protocol conformance descriptor for WebPresentmentResponse);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_100408F54(v11, v13);
  }

  return sub_10000BB78(a1);
}

uint64_t sub_100408724()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x526C616974726170;
  }
}

uint64_t sub_100408770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526C616974726170 && a2 == 0xEE00747365757165;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100715D10 == a2)
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

uint64_t sub_10040885C(uint64_t a1)
{
  v2 = sub_100408E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100408898(uint64_t a1)
{
  v2 = sub_100408E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100408904(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004089AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100408A48(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100408AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static PartialWebPresentmentRequest.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100408BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100408C5C(uint64_t a1)
{
  v2 = sub_100408F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100408C98(uint64_t a1)
{
  v2 = sub_100408F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100408CEC(void *a1)
{
  v2 = sub_100007224(&qword_100843928, &qword_1006E18D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_100408F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WebPresentmentResponse();
  sub_100408EB8(&qword_100843930, &type metadata accessor for WebPresentmentResponse, &protocol conformance descriptor for WebPresentmentResponse);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100408E64()
{
  result = qword_100843900;
  if (!qword_100843900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843900);
  }

  return result;
}

uint64_t sub_100408EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100408F00()
{
  result = qword_100843918;
  if (!qword_100843918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843918);
  }

  return result;
}

uint64_t sub_100408F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100408FDC()
{
  result = qword_100843940;
  if (!qword_100843940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843940);
  }

  return result;
}

unint64_t sub_100409034()
{
  result = qword_100843948;
  if (!qword_100843948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843948);
  }

  return result;
}

unint64_t sub_10040908C()
{
  result = qword_100843950;
  if (!qword_100843950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843950);
  }

  return result;
}

unint64_t sub_1004090E4()
{
  result = qword_100843958;
  if (!qword_100843958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843958);
  }

  return result;
}

unint64_t sub_10040913C()
{
  result = qword_100843960;
  if (!qword_100843960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843960);
  }

  return result;
}

unint64_t sub_100409194()
{
  result = qword_100843968;
  if (!qword_100843968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843968);
  }

  return result;
}

uint64_t sub_1004091E8(uint64_t a1, void *a2)
{
  v12 = a2;
  v11 = type metadata accessor for NWActorID();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem;
  *(v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem) = a1;
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  v13 = a1;
  type metadata accessor for NWActorSystem();
  sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id, v6, v11);
  v8 = v12;
  sub_100020260(v12, v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser);
  v13 = *(v2 + v7);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  sub_10000BB78(v8);

  return v2;
}

uint64_t sub_1004093F8()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100409514, 0, 0);
}

uint64_t sub_100409514()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    v1 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v2)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v3 = v0[1];

      return v3();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v6 = swift_task_alloc();
      v0[9] = v6;
      v7 = type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
      v8 = sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);
      *v6 = v0;
      v6[1] = sub_100409754;
      v9 = v0[8];
      v10 = v0[5];
      v11 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v11, v10, v9, v1, v7, v1, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v5 = v0[2];

    return _swift_task_switch(sub_100409914, v5, 0);
  }
}

uint64_t sub_100409754()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100409B78;
  }

  else
  {
    v2 = sub_100409868;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100409868()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100409914()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100409A44;

  return v6(v2, v3);
}

uint64_t sub_100409A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100409B78()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100409C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100041F04;

  return sub_1004093F8();
}

uint64_t type metadata accessor for RemoteWebPresentmentRequestReleaser(uint64_t a1)
{
  result = qword_1008439B0;
  if (!qword_1008439B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100409CF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100409E14, 0, 0);
}

uint64_t sub_100409E14()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    v1 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v2 = type metadata accessor for WebPresentmentRequest();
    sub_10040B37C(&qword_100843978, &type metadata accessor for WebPresentmentRequest, &protocol conformance descriptor for WebPresentmentRequest);
    sub_10040B37C(&qword_100843980, &type metadata accessor for WebPresentmentRequest, &protocol conformance descriptor for WebPresentmentRequest);
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);

      v4 = v0[1];

      return v4();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v8 = swift_task_alloc();
      v0[10] = v8;
      v9 = type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
      sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);
      *v8 = v0;
      v8[1] = sub_10040A144;
      v10 = v0[9];
      v11 = v0[6];
      v12 = v0[3];
      v13 = v0[2];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v12, v11, v10, v1, v2, v9, v1);
    }
  }

  else
  {
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_10040A304;
    v7 = v0[2];

    return sub_10040A578(v7);
  }
}

uint64_t sub_10040A144()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10040A438;
  }

  else
  {
    v2 = sub_10040A258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040A258()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10040A304()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10040A438()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10040A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100027B9C;

  return sub_100409CF8(a3);
}

uint64_t sub_10040A578(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10040A638, v1, 0);
}

uint64_t sub_10040A638(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentRequestReleaser releasing request to remote document provider", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser + 24);
  v10 = *(v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser + 32);
  sub_10000BA08((v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser), v9);
  v14 = (*(v10 + 24) + **(v10 + 24));
  v11 = swift_task_alloc();
  v1[7] = v11;
  *v11 = v1;
  v11[1] = sub_10040A80C;
  v12 = v1[2];

  return v14(v12, v9, v10);
}

uint64_t sub_10040A80C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10040A91C()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
  if (is_remote)
  {
    v3 = type metadata accessor for NWActorID();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
    type metadata accessor for NWActorSystem();
    sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
    v4 = type metadata accessor for NWActorID();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);

    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser));
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10040AA7C(uint64_t a1)
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_10040AB44(uint64_t a1, uint64_t a2)
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v2;
}

uint64_t sub_10040AB98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  type metadata accessor for NWActorSystem();
  sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
    v10 = type metadata accessor for NWActorID();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem) = v6;

    return v8;
  }

  return result;
}

uint64_t sub_10040ACC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100041F04;

  return sub_1004093F8();
}

uint64_t sub_10040AD58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_100409CF8(a1);
}

Swift::Int sub_10040ADF4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10040AE54(uint64_t a1)
{
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_10040AED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10040AF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10040AFA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  v5 = sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_10040B1E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);
  sub_10040B37C(&qword_100842FC8, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10040B2B4(uint64_t a1)
{
  type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D20);
  sub_10040B37C(&qword_100842FC0, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_10040B37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_UNKNOWN **sub_10040B3C4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  type metadata accessor for WebPresentmentCABLEAuthenticator(0);
  swift_allocObject();
  result = sub_10043B8B4(v5);
  if (v1)
  {
    return &off_100810C88;
  }

  return result;
}

void *sub_10040B4BC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = sub_100007224(&qword_100843BE8, &qword_1006E1F88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v18 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - v9;
  v11 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  swift_defaultActor_initialize();
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v2[19] = 0xF000000000000000;
  v2[21] = 0;
  v2[22] = 0;
  v2[20] = 0;
  *(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask) = 0;
  v15 = v17;
  v2[14] = a1;
  v2[15] = v15;
  sub_100007224(&qword_100843AE0, &qword_1006E1EC0);
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionStream, v14, v11);
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionContinuation, v10, v18);
  return v2;
}

uint64_t sub_10040B774(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v3[18] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for WebPresentmentRequest.PresentmentProtocol();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_10040BA64, v2, 0);
}

uint64_t sub_10040BA64(uint64_t a1)
{
  v2 = v1[16];
  if (*(v2 + 128))
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Could not start scannable code handling session, request already in progress", v5, 2u);
    }

    v6 = v1[34];
    v7 = v1[30];
    v8 = v1[31];
    v10 = v1[20];
    v9 = v1[21];
    v11 = v1[19];

    (*(v8 + 8))(v6, v7);
    (*(v10 + 104))(v9, enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v24 = v1[1];

    return v24();
  }

  else
  {
    v12 = (*(v2 + 112))(v1[15]);
    v1[42] = v12;
    v13 = v12;
    v14 = v1[41];
    v15 = v1[16];
    *(v2 + 128) = v12;
    *(v15 + 136) = v16;
    v17 = v16;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = sub_100410B98(&qword_100843BB0, type metadata accessor for RemoteWebPresentmentScannableCodeHandler, &unk_1006E1EF8);
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v19;
    v20[4] = v13;
    v20[5] = v17;
    v20[6] = v15;
    swift_retain_n();
    *(v15 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask) = sub_100130390(0, 0, v14, &unk_1006E1F70, v20);

    v21 = type metadata accessor for WebPresentmentCABLEAuthenticator(0);
    v22 = swift_task_alloc();
    v1[43] = v22;
    *v22 = v1;
    v22[1] = sub_10040C1A4;

    return (sub_10043CB3C)(v21, &off_100810C88);
  }
}

uint64_t sub_10040C1A4(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v4 = v3[16];
    v5 = sub_10040D9E0;
  }

  else
  {
    v6 = v3[16];
    swift_unknownObjectRelease();
    v5 = sub_10040C2CC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040C2CC(uint64_t a1)
{
  v163 = v1;
  v2 = v1[44];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received context from authenticator.start(): %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v1[44];
  v11 = v1[40];
  v12 = v1[30];
  v13 = v1[31];

  v14 = *(v13 + 8);
  v14(v11, v12);
  v15 = [v10 digitalIdentityCredentialOptions];
  v161 = v1;
  if (!v15)
  {
    v46 = v1[44];
    (*(v1[20] + 104))(v1[21], enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v1[19]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v47 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_26:

    goto LABEL_27;
  }

  v16 = v15;
  defaultLogger()();
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v1[39];
  v22 = v1[30];
  v23 = &selRef_setSupportedEncoding_;
  v159 = v14;
  if (v20)
  {
    v24 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v24 = 136315650;
    v25 = [v17 requestType];
    v155 = v21;
    v157 = v22;
    v26 = v17;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100141FE4(v27, v29, v162);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = [v26 origin];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_100141FE4(v32, v34, v162);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2080;
    v36 = [v26 commandData];
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = Data.base64EncodedString(options:)(0);
    v41 = v37;
    v23 = &selRef_setSupportedEncoding_;
    v42 = v39;
    v17 = v26;
    sub_10000B90C(v41, v42);
    v43 = sub_100141FE4(v40._countAndFlagsBits, v40._object, v162);

    *(v24 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received context: requestType=%s origin=%s commandData=%s", v24, 0x20u);
    swift_arrayDestroy();

    v14 = v159;

    v44 = v155;
    v45 = v157;
  }

  else
  {

    v44 = v21;
    v45 = v22;
  }

  v14(v44, v45);
  v48 = [v17 v23[333]];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      defaultLogger()();
      v17 = v17;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      v91 = os_log_type_enabled(v89, v90);
      v92 = v1[35];
      v93 = v1[30];
      if (v91)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v162[0] = v95;
        *v94 = 136315138;
        v96 = [v17 v23[333]];
        v97 = v17;
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;

        v101 = v98;
        v17 = v97;
        v1 = v161;
        v102 = sub_100141FE4(v101, v100, v162);

        *(v94 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v89, v90, "Unknown requestType: %s", v94, 0xCu);
        sub_10000BB78(v95);

        v159(v92, v93);
      }

      else
      {

        v14(v92, v93);
      }

      v46 = v1[44];
      (*(v1[20] + 104))(v1[21], enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v1[19]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v47 = swift_allocError();
      goto LABEL_25;
    }
  }

  v54 = v1[45];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v55 = [v17 commandData];
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  sub_100410D50();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v54)
  {
    v47 = v54;

    sub_10000B90C(v56, v58);

LABEL_27:
    v1[46] = v47;
    defaultLogger()();
    swift_errorRetain();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    v108 = os_log_type_enabled(v106, v107);
    v109 = v1[31];
    v110 = v1[32];
    v111 = v1[30];
    if (v108)
    {
      v160 = v1[32];
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v162[0] = v113;
      *v112 = 136315138;
      v1[13] = v47;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v114 = String.init<A>(describing:)();
      v116 = sub_100141FE4(v114, v115, v162);

      *(v112 + 4) = v116;
      v1 = v161;
      _os_log_impl(&_mh_execute_header, v106, v107, "Failed to start caBLE session: %s", v112, 0xCu);
      sub_10000BB78(v113);

      (*(v109 + 8))(v160, v111);
    }

    else
    {

      (*(v109 + 8))(v110, v111);
    }

    *v1[18] = v47;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v117 = swift_task_alloc();
    v1[47] = v117;
    *v117 = v1;
    v117[1] = sub_10040D64C;
    v118 = v1[18];

    return sub_10040E2DC(v118);
  }

  sub_10000B90C(v56, v58);

  v60 = v1[6];
  v59 = v1[7];
  v61 = v1[8];
  defaultLogger()();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v158 = v59;

  v64 = os_log_type_enabled(v62, v63);
  v65 = v1[38];
  v66 = v1[30];
  v154 = v17;
  v156 = v60;
  if (v64)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v162[0] = v68;
    *v67 = 136315138;
    v1[9] = v60;
    v1[10] = v158;
    v1[11] = v61;

    v69 = String.init<A>(describing:)();
    v71 = sub_100141FE4(v69, v70, v162);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "Received context's commandData decoded to command: %s", v67, 0xCu);
    sub_10000BB78(v68);
    v17 = v154;
  }

  v159(v65, v66);
  if (!v61[2])
  {
    v46 = v1[44];
    v104 = v1[20];
    v103 = v1[21];
    v105 = v1[19];

    (*(v104 + 104))(v103, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v105);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v47 = swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_26;
  }

  v72 = v1[26];
  v73 = v1[27];
  v74 = v1[25];
  v75 = v61[4];
  v76 = v61[5];
  v78 = v61[6];
  v77 = v61[7];
  sub_10000B8B8(v75, v76);
  v152 = v78;
  v79 = v78;
  v80 = v77;
  sub_10000B8B8(v79, v77);
  URL.init(string:)();
  v153 = v76;
  v151 = v75;
  if ((*(v73 + 48))(v74, 1, v72) == 1)
  {
    sub_10000BE18(v1[25], &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v1[36];
    v85 = v1[30];
    if (v83)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v162[0] = v87;
      *v86 = 136315138;

      v88 = sub_100141FE4(v156, v158, v162);

      *(v86 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to create URL from command origin %s", v86, 0xCu);
      sub_10000BB78(v87);
    }

    else
    {
    }

    v159(v84, v85);
    v131 = v1[44];
    (*(v1[20] + 104))(v1[21], enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v1[19]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v47 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v151, v153);
    sub_10000B90C(v152, v77);

    goto LABEL_27;
  }

  v120 = v1[29];
  v121 = v1[26];
  v122 = v1[27];
  v123 = v1[25];
  v124 = v1[16];

  (*(v122 + 32))(v120, v123, v121);
  v126 = v124[18];
  v125 = v124[19];
  v127 = v124[20];
  v128 = v124[21];
  v124[18] = v151;
  v124[19] = v153;
  v124[20] = v152;
  v124[21] = v80;
  sub_10000B8B8(v151, v153);
  sub_10000B8B8(v152, v80);
  sub_100410AD8(v126, v125, v127, v128);
  v129 = [v17 requestType];
  v130 = v124[22];
  v124[22] = v129;

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v1[2] = v151;
  v1[3] = v153;
  v1[4] = v152;
  v1[5] = v80;
  sub_100410DA4();
  v132 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v150 = v80;
  v134 = v133;

  defaultLogger()();
  sub_10000B8B8(v132, v134);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.debug.getter();
  sub_10000B90C(v132, v134);
  v137 = os_log_type_enabled(v135, v136);
  v138 = v161[37];
  v139 = v161[30];
  if (v137)
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v162[0] = v141;
    *v140 = 136315138;
    v142 = Data.base64EncodedString(options:)(0);
    v143 = sub_100141FE4(v142._countAndFlagsBits, v142._object, v162);

    *(v140 + 4) = v143;
    _os_log_impl(&_mh_execute_header, v135, v136, "Re-encoded iso18013RequestForwarding request data: %s", v140, 0xCu);
    sub_10000BB78(v141);
  }

  v159(v138, v139);
  v149 = v161[44];
  v145 = v161[28];
  v144 = v161[29];
  v147 = v161[26];
  v146 = v161[27];
  (*(v161[23] + 104))(v161[24], enum case for WebPresentmentRequest.PresentmentProtocol.iso18013RequestForwarding(_:), v161[22]);
  (*(v146 + 16))(v145, v144, v147);
  WebPresentmentRequest.init(presentmentProtocol:requestData:originatingURL:)();
  swift_unknownObjectRelease();
  sub_10000B90C(v151, v153);
  sub_10000B90C(v152, v150);

  (*(v146 + 8))(v144, v147);

  v148 = v161[1];

  return v148();
}

uint64_t sub_10040D64C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 128);
  sub_10000BE18(v3, &qword_100843BC8, &qword_1006E21F0);
  if (v0)
  {
    v5 = sub_10040DC14;
  }

  else
  {
    v5 = sub_10040D7A4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040D7A4()
{
  (*(v0[20] + 104))(v0[21], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v0[19]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10040D9E0()
{
  v19 = v0;
  swift_unknownObjectRelease();
  v1 = v0[45];
  v0[46] = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[31];
    v17 = v0[32];
    v5 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[13] = v1;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v8 = String.init<A>(describing:)();
    v10 = sub_100141FE4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to start caBLE session: %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v17, v5);
  }

  else
  {
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[30];

    (*(v12 + 8))(v11, v13);
  }

  *v0[18] = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_10040D64C;
  v15 = v0[18];

  return sub_10040E2DC(v15);
}

uint64_t sub_10040DC14()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v7 = sub_100007224(&qword_100843BE0, &qword_1006E1F80);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_10040DEB0;

  return sub_10043C05C();
}

uint64_t sub_10040DEB0()
{
  v2 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10040E0D4;
  }

  else
  {
    v3 = sub_10040DFD8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10040DFD8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96) != 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = v4;
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  sub_10001F6B4(0, v4);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10040E0D4()
{
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), *(v0 + 64));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v1 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  swift_errorRetain();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 96) != 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = v5;
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  sub_10001F6B4(v1, v5);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10040E2DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[14] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for WebPresentmentResponse();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10040E54C, v1, 0);
}

uint64_t sub_10040E54C()
{
  v112 = v0;
  v1 = *(v0 + 72);
  v2 = v1[16];
  *(v0 + 240) = v2;
  if (v2)
  {
    sub_10000BBC4(*(v0 + 64), *(v0 + 232), &qword_100843BC8, &qword_1006E21F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *(v0 + 296) = EnumCaseMultiPayload;
    v4 = *(v0 + 232);
    v109 = EnumCaseMultiPayload;
    v110 = v2;
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v4;
      swift_unknownObjectRetain();
      defaultLogger()();
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 168);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v111[0] = v13;
        *v12 = 136315138;
        *(v0 + 56) = v5;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v14 = String.init<A>(describing:)();
        v16 = sub_100141FE4(v14, v15, v111);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "Received presentment error %s", v12, 0xCu);
        sub_10000BB78(v13);
      }

      v104 = *(v10 + 8);
      v104(v9, v11);
      v18 = *(v0 + 128);
      v17 = *(v0 + 136);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v22 = *(v0 + 80);
      v21 = *(v0 + 88);
      swift_getErrorValue();
      Error.dipErrorCode.getter();
      (*(v21 + 104))(v18, enum case for DIPError.Code.webPresentmentCancelled(_:), v22);
      (*(v21 + 56))(v18, 0, 1, v22);
      v23 = *(v20 + 48);
      sub_10000BBC4(v17, v19, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v18, v19 + v23, &qword_10083B020, &unk_1006D8ED0);
      v24 = *(v21 + 48);
      if (v24(v19, 1, v22) == 1)
      {
        v25 = *(v0 + 136);
        v26 = *(v0 + 80);
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
        if (v24(v19 + v23, 1, v26) == 1)
        {
          v27 = 0x4E41435F52455355;
          sub_10000BE18(*(v0 + 112), &qword_10083B020, &unk_1006D8ED0);
LABEL_26:
          v62 = 0xEE0044454C4C4543;
          goto LABEL_27;
        }
      }

      else
      {
        v55 = *(v0 + 80);
        sub_10000BBC4(*(v0 + 112), *(v0 + 120), &qword_10083B020, &unk_1006D8ED0);
        v56 = v24(v19 + v23, 1, v55);
        v58 = *(v0 + 128);
        v57 = *(v0 + 136);
        v59 = *(v0 + 120);
        if (v56 != 1)
        {
          v102 = *(v0 + 112);
          v76 = *(v0 + 88);
          v75 = *(v0 + 96);
          v77 = *(v0 + 80);
          (*(v76 + 32))(v75, v19 + v23, v77);
          sub_100410B98(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
          v78 = dispatch thunk of static Equatable.== infix(_:_:)();
          v79 = *(v76 + 8);
          v79(v75, v77);
          sub_10000BE18(v58, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BE18(v57, &qword_10083B020, &unk_1006D8ED0);
          v79(v59, v77);
          sub_10000BE18(v102, &qword_10083B020, &unk_1006D8ED0);
          if (v78)
          {
            v27 = 0x4E41435F52455355;
            goto LABEL_26;
          }

LABEL_16:
          v62 = 0xEE00444554524F42;
          v27 = 0x415F454349564544;
LABEL_27:
          defaultLogger()();

          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.debug.getter();

          v82 = os_log_type_enabled(v80, v81);
          v83 = *(v0 + 160);
          v84 = *(v0 + 144);
          if (v82)
          {
            v103 = *(v0 + 160);
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v111[0] = v86;
            *v85 = 136315138;

            v87 = sub_100141FE4(v27, v62, v111);

            *(v85 + 4) = v87;
            _os_log_impl(&_mh_execute_header, v80, v81, "Sending back caBLE failure reason %s", v85, 0xCu);
            sub_10000BB78(v86);

            v88 = v103;
          }

          else
          {

            v88 = v83;
          }

          v104(v88, v84);
          goto LABEL_38;
        }

        v60 = *(v0 + 80);
        v61 = *(v0 + 88);
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v57, &qword_10083B020, &unk_1006D8ED0);
        (*(v61 + 8))(v59, v60);
      }

      sub_10000BE18(*(v0 + 112), &qword_100834B60, &qword_1006C0310);
      goto LABEL_16;
    }

    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    (*(v37 + 32))(v35, v4, v38);
    swift_unknownObjectRetain();
    defaultLogger()();
    (*(v37 + 16))(v36, v35, v38);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 184);
    v45 = *(v0 + 192);
    v46 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v41)
    {
      v48 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v111[0] = v100;
      *v48 = 136315138;
      v101 = v46;
      v105 = v44;
      v49 = WebPresentmentResponse.responseData.getter();
      v51 = v50;
      v52 = Data.base64EncodedString(options:)(0);
      sub_10000B90C(v49, v51);
      v108 = *(v43 + 8);
      v108(v42, v45);
      v53 = sub_100141FE4(v52._countAndFlagsBits, v52._object, v111);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v39, v40, "Received presentment success %s", v48, 0xCu);
      sub_10000BB78(v100);

      v54 = *(v47 + 8);
      v54(v105, v101);
    }

    else
    {

      v108 = *(v43 + 8);
      v108(v42, v45);
      v54 = *(v47 + 8);
      v54(v44, v46);
    }

    v63 = *(v0 + 72);
    v65 = v63[18];
    v64 = v63[19];
    v67 = v63[20];
    v66 = v63[21];
    v68 = v63[22];
    if (v64 >> 60 == 15)
    {
      v69 = v68;
      sub_100410AD8(v65, v64, v67, v66);
    }

    else
    {
      if (v68)
      {
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;
        if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
        {
          v74 = v68;
          sub_100410BE0(v65, v64, v67, v66);
        }

        else
        {
          v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v89 = v68;
          sub_100410BE0(v65, v64, v67, v66);

          if ((v106 & 1) == 0)
          {
            sub_100410AD8(v65, v64, v67, v66);

            goto LABEL_35;
          }
        }

        v90 = *(v0 + 216);
        v107 = *(v0 + 192);
        v27 = WebPresentmentResponse.responseData.getter();
        v62 = v91;
        sub_100410AD8(v65, v64, v67, v66);

        v108(v90, v107);
LABEL_38:
        *(v0 + 248) = v27;
        *(v0 + 256) = v62;
        sub_10040F490(v27, v62, v109 == 1, (v0 + 48), v111);
        *(v0 + 264) = 0;
        *(v0 + 272) = v111[0];

        return _swift_task_switch(sub_10040F220, v110, 0);
      }

      sub_10000B8B8(v65, v64);
      sub_10000B8B8(v67, v66);
      sub_100410AD8(v65, v64, v67, v66);
    }

LABEL_35:
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "RemoteWebPresentmentScannableCodeHandler has an unexpected combination of request and request type. This is unexpected, defaulting to responding with org-iso-mdoc protocol", v94, 2u);
    }

    v95 = *(v0 + 216);
    v96 = *(v0 + 192);
    v97 = *(v0 + 176);
    v98 = *(v0 + 144);

    v54(v97, v98);
    v27 = WebPresentmentResponse.responseData.getter();
    v62 = v99;
    v108(v95, v96);
    goto LABEL_38;
  }

  (*(*(v0 + 88) + 104))(*(v0 + 96), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), *(v0 + 80));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v28 = v1[18];
  v29 = v1[19];
  v30 = v1[20];
  v31 = v1[21];
  *(v1 + 9) = xmmword_1006BF650;
  v1[20] = 0;
  v1[21] = 0;
  sub_100410AD8(v28, v29, v30, v31);
  v32 = v1[22];
  v1[22] = 0;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10040F220()
{
  v0[36] = v0[34];
  v1 = v0[9];
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();

  return _swift_task_switch(sub_10040F318, v1, 0);
}

uint64_t sub_10040F29C()
{
  v0[36] = v0[35];
  v1 = v0[9];
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();

  return _swift_task_switch(sub_10040F318, v1, 0);
}

uint64_t sub_10040F318()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = *(v0 + 296) == 1;
  v4 = *(v0 + 72);
  sub_100410B28(*(v0 + 288), *(v0 + 264) != 0);
  swift_unknownObjectRelease();
  sub_100410B88(v2, v1, v3);
  v5 = v4[18];
  v6 = v4[19];
  v7 = v4[20];
  v8 = v4[21];
  *(v4 + 9) = xmmword_1006BF650;
  v4[20] = 0;
  v4[21] = 0;
  sub_100410AD8(v5, v6, v7, v8);
  v9 = v4[22];
  v4[22] = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040F490@<X0>(void *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v46 = a4;
  v43 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v49 = a3;
  v14 = a3 & 1;
  sub_100410C30(a1, a2, v14);
  defaultLogger()();
  sub_100410C30(a1, a2, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v50 = a2;
  sub_100410B88(a1, a2, v14);
  LODWORD(v44) = v16;
  v17 = os_log_type_enabled(v15, v16);
  v47 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v54 = v19;
    *v18 = 136315138;
    v51 = a1;
    v52 = v50;
    v53 = v14;
    sub_100410C30(a1, v50, v14);
    v20 = String.init<A>(describing:)();
    v22 = sub_100141FE4(v20, v21, &v54);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v44, "Constructed command response %s", v18, 0xCu);
    sub_10000BB78(v19);

    v44 = *(v47 + 8);
  }

  else
  {

    v44 = *(v9 + 8);
  }

  v44(v13, v8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v51 = a1;
  v52 = v50;
  v23 = v49 & 1;
  v53 = v49 & 1;
  sub_100410B34();
  v24 = v48;
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v27 = v26;

  if (v24)
  {
    result = sub_100410B88(a1, v50, v23);
    *v46 = v24;
  }

  else
  {
    v29 = v45;
    defaultLogger()();
    sub_10000B8B8(v25, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    sub_10000B90C(v25, v27);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = v8;
      v33 = v32;
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315138;
      v35 = Data.base64EncodedString(options:)(0);
      LODWORD(v46) = v31;
      v36 = sub_100141FE4(v35._countAndFlagsBits, v35._object, &v51);

      *(v33 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v46, "Encoded command response to JSON %s", v33, 0xCu);
      sub_10000BB78(v34);

      v37 = v48;
      v38 = v45;
    }

    else
    {

      v38 = v29;
      v37 = v8;
    }

    v44(v38, v37);
    v39 = objc_allocWithZone(ASCDigitalIdentityCredential);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v41 = [v39 initWithCommandResponseData:isa];

    sub_10000B90C(v25, v27);
    result = sub_100410B88(a1, v50, v49 & 1);
    *v43 = v41;
  }

  return result;
}

uint64_t sub_10040F924()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100007224(&qword_100843BA0, &qword_1006E1F28);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10040FA4C, v0, 0);
}

uint64_t sub_10040FA4C()
{
  v1 = v0[5];
  sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  AsyncStream.makeAsyncIterator()();
  v2 = sub_100410B98(&qword_100843BB0, type metadata accessor for RemoteWebPresentmentScannableCodeHandler, &unk_1006E1EF8);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10040FB64;
  v4 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v1, v2, v4);
}

uint64_t sub_10040FB64()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10040FC74, v1, 0);
}

uint64_t sub_10040FC74()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v7 + 104))(v5, enum case for DIPError.Code.webPresentmentCancelled(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 32) = *(v0 + 16);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v4);
LABEL_5:

    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  (*(v3 + 8))(*(v0 + 88), *(v0 + 72));

  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_10040FEBC()
{
  v17 = v0;
  v1 = v0[3];
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  *(v1 + 9) = xmmword_1006BF650;
  v1[20] = 0;
  v1[21] = 0;
  sub_100410AD8(v2, v3, v4, v5);
  v6 = v1[22];
  v1[22] = 0;

  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.finish()();
  v7 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask;
  if (*(v1 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask))
  {

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  *(v1 + v7) = 0;

  sub_10041017C(v0 + 2, v16);
  v0[4] = 0;
  v8 = v16[0];
  v9 = v16[0];
  v0[6] = 0;
  v0[7] = v9;
  v0[5] = v8;
  v10 = v0[3];
  v13 = *(v10 + 128);
  v11 = (v10 + 128);
  v12 = v13;
  v0[8] = v13;
  if (v13)
  {
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_100410080, v12, 0);
  }

  else
  {
    sub_100410B28(v9, 0);
    *v11 = 0;
    v11[1] = 0;
    swift_unknownObjectRelease();
    v14 = v0[1];

    return v14();
  }
}