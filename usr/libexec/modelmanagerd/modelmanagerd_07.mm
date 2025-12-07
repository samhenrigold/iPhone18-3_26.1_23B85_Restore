uint64_t sub_1000B2BE8()
{
  sub_100001ED0();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4(&qword_1001B8908);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BA4D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received availability check request, automatically replying true", v4, 2u);
  }

  v5 = *(v0 + 24);

  static RemoteInterfaceInformation.currentInterface.getter();
  v6 = type metadata accessor for RemoteInterfaceInformation();
  sub_100009BFC(v5, 0, 1, v6);
  sub_1000185B8();
  RemoteIPCRequest.CheckAvailabilityRequest.Response.init(interface:available:)();
  sub_100065020(&qword_1001BA620, &unk_1001712E0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v7();
}

uint64_t sub_1000B2D48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000B2B64();
}

uint64_t sub_1000B2DE0(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA4F8, &type metadata accessor for RemoteIPCRequest.CheckAvailabilityRequest, &protocol conformance descriptor for RemoteIPCRequest.CheckAvailabilityRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B2E38()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for Version();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v0[7] = sub_100002C58();
  v5 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v5);
  v0[8] = sub_10000BF98();
  v0[9] = swift_task_alloc();
  v6 = type metadata accessor for RemoteInterfaceInformation();
  v0[10] = v6;
  sub_100002F44(v6);
  v0[11] = v7;
  v0[12] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000B2F5C()
{
  sub_100001ED0();
  sub_10000EE44();
  RemoteIPCRequest.IsVersionSupported.interface.getter();
  sub_10000F0D8();
  if (v1 == 1)
  {
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v2)
    {
      sub_10000C790(v0[9], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  RemoteIPCRequest.IsVersionSupported.version.getter();
  RemoteIPCRequest.IsVersionSupported.assetBundleIdentifier.getter();
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1000B3084;

  return sub_1000EFF7C();
}

uint64_t sub_1000B3084(char a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_100002B9C();
  *v6 = v5;
  *v6 = *v2;
  v5[15] = v1;

  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[7];
  v11 = v4[6];
  v12 = v4[5];
  if (!v1)
  {
    *(v5 + 128) = a1 & 1;
  }

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  sub_1000059F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000B3294()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_100009BFC(v2, 0, 1, v1);
  RemoteIPCRequest.IsVersionSupported.Response.init(interface:supported:)();
  sub_1000078A0();
  sub_100065020(&qword_1001BA618, &qword_1001712D0);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000B336C()
{
  sub_10000639C();
  sub_100003884();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4(&qword_1001B8908);
  }

  v0 = type metadata accessor for Logger();
  sub_100007C3C(v0, qword_1001BA4D0);
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    sub_100007698();
    v2 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v3);
    sub_1000064D0(&_mh_execute_header, v4, v5, "Failed to execute isVersionSupported with error: %@");
    sub_10000C790(v2, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_1000078A0();
  sub_100065020(&qword_1001BA618, &qword_1001712D0);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000B34C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B5110;

  return sub_1000B2E38();
}

uint64_t sub_1000B3570(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA500, &type metadata accessor for RemoteIPCRequest.IsVersionSupported, &protocol conformance descriptor for RemoteIPCRequest.IsVersionSupported);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B35C8()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for Version();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v0[7] = sub_100002C58();
  v5 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v5);
  v0[8] = sub_10000BF98();
  v0[9] = swift_task_alloc();
  v6 = type metadata accessor for RemoteInterfaceInformation();
  v0[10] = v6;
  sub_100002F44(v6);
  v0[11] = v7;
  v0[12] = sub_100002C58();
  v8 = type metadata accessor for ClientData();
  v0[13] = v8;
  sub_100002F44(v8);
  v0[14] = v9;
  v0[15] = sub_10000BF98();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000B3750()
{
  sub_10000639C();
  sub_100003884();
  sub_10000EE44();
  RemoteIPCRequest.ExecuteRemoteRequest.interface.getter();
  sub_10000F0D8();
  if (v1 == 1)
  {
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v2)
    {
      sub_10000C790(v0[9], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  RemoteIPCRequest.ExecuteRemoteRequest.requestVersion.getter();
  v3 = RemoteIPCRequest.ExecuteRemoteRequest.bundleIdentifier.getter();
  sub_10000A438(v3, v4);
  RemoteIPCRequest.ExecuteRemoteRequest.clientData.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_1000B386C;
  sub_10000343C();
  sub_100003D20();

  return sub_1000F0B18();
}

uint64_t sub_1000B386C()
{
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v26 = *(v5 + 128);
  sub_100007A30();
  v7 = *(v6 + 112);
  v25 = *(v8 + 104);
  sub_100007A30();
  v28 = *(v9 + 96);
  sub_100007A30();
  v11 = *(v10 + 88);
  v27 = *(v12 + 80);
  sub_100007A30();
  v14 = *(v13 + 56);
  v16 = *(v15 + 48);
  v17 = *(v15 + 40);
  v18 = *v1;
  sub_100002B9C();
  *v19 = v18;
  v3[20] = v0;

  v20 = *(v7 + 8);
  v3[21] = v20;
  v3[22] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v26, v25);
  (*(v16 + 8))(v14, v17);
  (*(v11 + 8))(v28, v27);
  sub_1000059F8();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000B3AAC()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[8];
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_100009BFC(v7, 0, 1, v6);
  (*(v4 + 16))(v3, v2, v5);
  RemoteIPCRequest.ExecuteRemoteRequest.Response.init(interface:result:)();
  v1(v2, v5);
  sub_10000A888();
  sub_100065020(&qword_1001BA610, &qword_1001712C0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v8();
}

uint64_t sub_1000B3BF0()
{
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4(&qword_1001B8908);
  }

  v0 = type metadata accessor for Logger();
  sub_100007C3C(v0, qword_1001BA4D0);
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    sub_100007698();
    v2 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v3);
    sub_1000064D0(&_mh_execute_header, v4, v5, "Failed to execute remote oneShotRequest with error: %@");
    sub_10000C790(v2, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_10000A888();
  sub_100065020(&qword_1001BA610, &qword_1001712C0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v6();
}

uint64_t sub_1000B3D7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B5110;

  return sub_1000B35C8();
}

uint64_t sub_1000B3E24(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA508, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest, &protocol conformance descriptor for RemoteIPCRequest.ExecuteRemoteRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B3E7C()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for ClientData();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v0[7] = sub_100002C58();
  v5 = type metadata accessor for Version();
  v0[8] = v5;
  sub_100002F44(v5);
  v0[9] = v6;
  v0[10] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v7);
  v0[11] = sub_100002C58();
  v8 = type metadata accessor for RemoteInterfaceInformation();
  v0[12] = v8;
  sub_100002F44(v8);
  v0[13] = v9;
  v0[14] = sub_100002C58();
  v10 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response();
  v0[15] = v10;
  sub_100002F44(v10);
  v0[16] = v11;
  v0[17] = sub_100002C58();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000B402C()
{
  sub_10000639C();
  sub_100003884();
  sub_10000EE44();
  RemoteIPCRequest.ExecuteRemoteStreamingRequest.interface.getter();
  sub_10000F0D8();
  if (v1 == 1)
  {
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v2)
    {
      sub_10000C790(v0[11], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  }

  RemoteIPCRequest.ExecuteRemoteStreamingRequest.requestVersion.getter();
  v3 = RemoteIPCRequest.ExecuteRemoteStreamingRequest.bundleIdentifier.getter();
  sub_10000A438(v3, v4);
  RemoteIPCRequest.ExecuteRemoteStreamingRequest.clientData.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_1000B414C;
  sub_10000343C();
  sub_100003D20();

  return sub_1000F1128();
}

uint64_t sub_1000B414C()
{
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v25 = *(v4 + 112);
  sub_100007A30();
  v6 = *(v5 + 104);
  v24 = *(v7 + 96);
  sub_100007A30();
  v23 = *(v8 + 80);
  sub_100007A30();
  v10 = *(v9 + 72);
  v12 = v11[8];
  v13 = v11[7];
  v14 = v11[6];
  v15 = v11[5];
  v16 = *v1;
  sub_100002B9C();
  *v17 = v16;
  *(v18 + 160) = v0;

  (*(v14 + 8))(v13, v15);
  (*(v10 + 8))(v23, v12);
  (*(v6 + 8))(v25, v24);
  sub_1000059F8();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1000B4384()
{
  sub_100003884();
  (*(v0[16] + 32))(v0[2], v0[17], v0[15]);
  sub_1000088A0();
  sub_100065020(&qword_1001BA608, &qword_1001712B0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v1();
}

uint64_t sub_1000B4450()
{
  sub_100003884();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4(&qword_1001B8908);
  }

  v0 = type metadata accessor for Logger();
  sub_100007C3C(v0, qword_1001BA4D0);
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    sub_100007698();
    v2 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v3);
    sub_1000064D0(&_mh_execute_header, v4, v5, "Failed to execute remote streamingRequest with error: %@");
    sub_10000C790(v2, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_1000088A0();
  sub_100065020(&qword_1001BA608, &qword_1001712B0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v6();
}

uint64_t sub_1000B45C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B4668;

  return sub_1000B3E7C();
}

uint64_t sub_1000B4668()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000B474C(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA510, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest, &protocol conformance descriptor for RemoteIPCRequest.ExecuteRemoteStreamingRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B47A4()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for RemoteInterfaceInformation();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v0[7] = sub_10000BF98();
  v0[8] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v5);
  v0[9] = sub_10000BF98();
  v0[10] = swift_task_alloc();
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000B4888()
{
  sub_100001ED0();
  RemoteIPCRequest.FetchNextStreamingResult.interface.getter();
  v1 = type metadata accessor for UUID();
  v0[11] = v1;
  sub_100002F44(v1);
  v0[12] = v2;
  v0[13] = sub_100002C58();
  RemoteIPCRequest.FetchNextStreamingResult.requestId.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[14] = v3;
  *v3 = v4;
  v3[1] = sub_1000B4990;

  return sub_1000F24DC();
}

uint64_t sub_1000B4990()
{
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = v5[13];
  v7 = v5[12];
  v8 = v5[11];
  v9 = v5[8];
  v10 = v5[6];
  v11 = v5[5];
  v12 = *v1;
  sub_100002B9C();
  *v13 = v12;
  *(v3 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v10 + 8))(v9, v11);
  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000B4B64()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_1000B50A0(v2, v1);
  RemoteIPCRequest.FetchNextStreamingResult.Response.init(interface:result:)();
  sub_10000C790(v2, &qword_1001BA5F0, &qword_100171290);
  sub_100065020(&qword_1001BA5F8, &qword_100171298);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000B4C54()
{
  sub_10000639C();
  sub_100003884();

  if (qword_1001B8908 != -1)
  {
    sub_1000050B4(&qword_1001B8908);
  }

  v0 = type metadata accessor for Logger();
  sub_100007C3C(v0, qword_1001BA4D0);
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    sub_100007698();
    v2 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v3);
    sub_1000064D0(&_mh_execute_header, v4, v5, "Failed to fetch next streaming result with error: %@");
    sub_10000C790(v2, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_100065020(&qword_1001BA5F8, &qword_100171298);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000B4DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000B47A4();
}

uint64_t sub_1000B4E6C(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA518, &type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult, &protocol conformance descriptor for RemoteIPCRequest.FetchNextStreamingResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4F30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_1000B5058(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_100005694();
    sub_1000B5058(v4, &type metadata accessor for ModelManagerError, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000B5008(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1000B5058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B50A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000B5114(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  v37 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v37);
  sub_100002B8C();
  v41 = v10 - v9;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000050D4();
    sub_1000B5AE0(v11, v12, &unk_1001720DC);
    Set.Iterator.init(_cocoa:)();
    a2 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
    v16 = v51;
  }

  else
  {
    v13 = a2 + 56;
    v14 = ~(-1 << *(a2 + 32));
    sub_10000A5E8();
    v16 = v17 & v18;

    v15 = 0;
  }

  v19 = (v14 + 64) >> 6;
  v39 = enum case for LoadState.unloaded(_:);
  v38 = (v4 + 104);
  v40 = a2;
  v20 = v41;
  while (a2 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    v23 = State;
    if (!v24)
    {
      goto LABEL_28;
    }

    v43 = v24;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v16 = v45;
    v20 = v41;
    if (!v45)
    {
      goto LABEL_28;
    }

LABEL_14:
    v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_10001938C(v25 + v16, v20);
    (*v38)(v8, v39, v23);
    sub_1000085F4();
    v8 = sub_1000B5AE0(&dword_1001BA628, v26, &protocol conformance descriptor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v45 == v43 && v46 == v44)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v35 = sub_100011374();
        v36(v35, State);
        sub_1000193F0(v41);

        a2 = v40;
LABEL_28:
        sub_100019334(a2);
        return;
      }
    }

    v13 = v41;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    a2 = v46;
    v20 = v44;
    if (v45 == v43 && v46 == v44)
    {

      v33 = sub_100011374();
      v34(v33, State);
      sub_1000193F0(v41);

      sub_100002CC8();
    }

    else
    {
      v8 = State;
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = sub_100011374();
      v32(v31, State);
      sub_1000193F0(v41);

      sub_100002CC8();
      if ((v30 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v21 = v15;
  v22 = v16;
  v23 = State;
  if (v16)
  {
LABEL_10:
    v16 = *(*(a2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v16)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v19)
    {
      goto LABEL_28;
    }

    v22 = *(v13 + 8 * v15);
    ++v21;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1000B55EC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v9 = v8 - v7;
  v39 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v39);
  sub_100002B8C();
  v41 = v11 - v10;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000050D4();
    sub_1000B5AE0(v12, v13, &unk_1001720DC);
    Set.Iterator.init(_cocoa:)();
    a2 = v46;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
  }

  else
  {
    v14 = a2 + 56;
    v15 = ~(-1 << *(a2 + 32));
    sub_10000A5E8();
    v17 = v18 & v19;

    v16 = 0;
  }

  v20 = (v15 + 64) >> 6;
  v37 = enum case for LoadState.loaded(_:);
  v35 = (v5 + 8);
  v36 = (v5 + 104);
  v38 = a2;
  while (a2 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26 || (v42 = v26, type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), v25 = v44, v23 = v16, v24 = v17, !v44))
    {
LABEL_34:
      sub_100019334(a2);
      return;
    }

LABEL_14:
    v40 = v24;
    v27 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_10001938C(v27 + v25, v41);
    (*v36)(v9, v37, State);
    sub_1000085F4();
    sub_1000B5AE0(&dword_1001BA628, v28, &protocol conformance descriptor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v44 == v42 && v45 == v43)
    {
LABEL_25:

      goto LABEL_26;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
LABEL_26:
      (*v35)(v9, State);
      v33 = v41;
LABEL_27:
      if (*(*(v33 + *(v39 + 48)) + 16))
      {
        goto LABEL_28;
      }

      v34 = *(v33 + *(v39 + 64));
      sub_1000193F0(v33);
      a2 = v38;
      if (v34 == 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v16 = v23;
      v17 = v40;
    }

    else
    {
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v44 == v42 && v45 == v43)
      {
        goto LABEL_25;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v35)(v9, State);
      v33 = v41;
      if (v32)
      {
        goto LABEL_27;
      }

LABEL_28:
      sub_1000193F0(v33);

      v16 = v23;
      v17 = v40;
      a2 = v38;
    }
  }

  v21 = v16;
  v22 = v17;
  v23 = v16;
  if (v17)
  {
LABEL_10:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a2 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_34;
    }

    v22 = *(v14 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1000B5AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B5B28()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BA630);
  sub_10000641C(v0, qword_1001BA630);
  return generalLogHandle.getter();
}

double sub_1000B5B74@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BuiltInInferenceProvider();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BA4FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v33 = *(sub_100065020(&qword_1001BA9F8, &qword_100171570) + 48);
      v17 = type metadata accessor for UUID();
      v35 = &v32;
      v18 = *(v17 - 8);
      v19 = *(v18 + 64);
      __chkstk_darwin(v17);
      v34 = v3;
      v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v20, &v15[v33], v17);
      v21 = (*(v6 + 16))(v8, v36, v5);
      __chkstk_darwin(v21);
      (*(v18 + 16))(v20, v20, v17);
      v22 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
      sub_1000480AC(v34 + *(v22 + 28), v37);
      v23 = type metadata accessor for InferenceProviderExtensionConnection(0);
      swift_allocObject();
      v24 = sub_1000A8700(v8, v20, v37);
      a2[3] = v23;
      a2[4] = &off_1001B0C88;
      *a2 = v24;
      (*(v18 + 8))(v20, v17);
    }

    else
    {
      v27 = a2;
      if (qword_1001B8910 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000641C(v28, qword_1001BA630);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Cannot make an instanceID connection from a direct connection", v31, 2u);
      }

      v27[4] = 0;
      result = 0.0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    type metadata accessor for InferenceProviderManager(0);
    v26 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
    sub_1000B6010(v12, v36, v3 + *(v26 + 28), a2);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1000B6010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002B8C();
  v15 = v14 - v13;
  type metadata accessor for BuiltInInferenceProvider();
  sub_100002BDC();
  __chkstk_darwin(v16);
  v18 = sub_100004BB8(v17, v22);
  v19(v18, a1);
  (*(v11 + 16))(v15, a2, v9);
  sub_1000480AC(a3, v23);
  v20 = type metadata accessor for InferenceProviderExtensionConnection(0);
  swift_allocObject();
  result = sub_1000A8534(v4, v15, v23);
  a4[3] = v20;
  a4[4] = &off_1001B0C88;
  *a4 = result;
  return result;
}

void sub_1000B61AC()
{
  sub_100003884();
  v2 = *(v1 + 248);
  *(v1 + 256) = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  sub_100012F04();
  if (*(v1 + 152))
  {
    sub_100003370((v1 + 128), *(v1 + 152));
    sub_100005828();
    v3 = swift_task_alloc();
    *(v1 + 264) = v3;
    *v3 = v1;
    v4 = sub_1000B6428;
  }

  else
  {
    sub_10000ECD8(v1 + 128, &qword_1001B9CB0, &qword_100171E70);
    v5 = sub_100007DE0();
    if (v2)
    {
      v6 = 0;
LABEL_8:
      sub_10000EE54(v5);
      sub_1000081F4();
      v11 = v6;
    }

    else
    {
      sub_10000BFB0();
      while (v7 != v8)
      {
        v6 = v8 + 1;
        if (*(v9 + 8 * v8++))
        {
          goto LABEL_8;
        }
      }

      sub_1000039F8();
    }

    *(v1 + 280) = v0;
    *(v1 + 288) = v11;
    if (!sub_100012794())
    {

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004A04((v1 + 32), v1 + 208);
    sub_100003370((v1 + 208), *(v1 + 232));
    sub_100005828();
    v12 = swift_task_alloc();
    *(v1 + 296) = v12;
    *v12 = v1;
    sub_100003010();
  }

  v3[1] = v4;
  sub_1000088B8();
  sub_100004CC8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1000B6428()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000B650C()
{
  sub_100003884();
  sub_100003324((v2 + 128));
  v3 = sub_100007DE0();
  if (v0)
  {
    v4 = 0;
LABEL_6:
    sub_10000EE54(v3);
    sub_1000081F4();
    v9 = v4;
  }

  else
  {
    sub_10000BFB0();
    while (v5 != v6)
    {
      v4 = v6 + 1;
      if (*(v7 + 8 * v6++))
      {
        goto LABEL_6;
      }
    }

    sub_1000039F8();
  }

  *(v2 + 280) = v1;
  *(v2 + 288) = v9;
  if (sub_100012794())
  {

    sub_100004A04((v2 + 32), v2 + 208);
    sub_100003370((v2 + 208), *(v2 + 232));
    sub_100005828();
    v10 = swift_task_alloc();
    *(v2 + 296) = v10;
    *v10 = v2;
    sub_100003010();
    *(v11 + 8) = v12;
    sub_1000088B8();
    sub_100004CC8();

    __asm { BRAA            X2, X16 }
  }

  sub_100001F00();
  sub_100004CC8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000B6698()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000B677C()
{
  sub_100003884();
  result = sub_100003324((v1 + 208));
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = *(v1 + 272);
    goto LABEL_7;
  }

  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= (((1 << *(v1 + 304)) + 63) >> 6))
    {
      sub_1000039F8();
      goto LABEL_8;
    }

    v5 = *(v1 + 272);
    v3 = *(v5 + 8 * v6 + 64);
    ++v4;
    if (v3)
    {
      v4 = v6;
LABEL_7:
      v0 = (v3 - 1) & v3;
      sub_1000480AC(*(v5 + 56) + 40 * (__clz(__rbit64(v3)) | (v4 << 6)), v1 + 168);
      sub_1000081F4();
LABEL_8:
      *(v1 + 280) = v0;
      *(v1 + 288) = v4;
      if (sub_100012794())
      {

        sub_100004A04((v1 + 32), v1 + 208);
        sub_100003370((v1 + 208), *(v1 + 232));
        sub_100005828();
        v7 = swift_task_alloc();
        *(v1 + 296) = v7;
        *v7 = v1;
        sub_100003010();
        *(v8 + 8) = v9;
        sub_1000088B8();
        sub_100004CC8();

        __asm { BRAA            X2, X16 }
      }

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B6950()
{
  sub_10000C1C0();
  v3 = v2;
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  sub_100002BDC();
  v62 = v5;
  __chkstk_darwin(v6);
  sub_100005630();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v66 = &v56 - v11;
  v65 = type metadata accessor for BuiltInInferenceProvider();
  sub_100002BDC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005630();
  v64 = (v15 - v16);
  sub_100002F1C();
  __chkstk_darwin(v17);
  v63 = &v56 - v18;
  v67 = v4;
  *v3 = Dictionary.init(dictionaryLiteral:)();
  v68 = v0;
  sub_1000480AC(v0, (v3 + 1));
  v19 = *(v1 + 16);
  if (v19)
  {
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v61 = v21;
    v22 = v1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v59 = v9;
    v60 = (v20 + 16);
    v23 = *(v20 + 56);
    v56 = v1;
    v57 = v23;
    v58 = v20;
    while (1)
    {
      v69 = v22;
      v70 = v19;
      v24 = v63;
      v25 = v65;
      v61(v63);
      v26 = BuiltInInferenceProvider.rawValue.getter();
      v28 = v27;
      v29 = *v60;
      v30 = v64;
      (*v60)(v64, v24, v25);
      v31 = v66;
      v32 = v67;
      sub_1000480AC(v68, &v66[*(v67 + 28)]);
      v33 = &v31[*(v32 + 20)];
      *(v33 + 32) = 0;
      sub_100013AB8();
      v34 = *(v32 + 24);
      sub_100065020(&qword_1001BA8F8, "ޅ");
      *&v31[v34] = Dictionary.init(dictionaryLiteral:)();
      v29(v31, v30, v25);
      type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
      swift_storeEnumTagMultiPayload();
      sub_10000ECD8(v33, &qword_1001B9CB0, &qword_100171E70);
      sub_100013AB8();
      *(v33 + 32) = 0;
      sub_1000050EC();
      v35 = v59;
      sub_1000BA610();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v3;
      v71 = *v3;
      v38 = v71;
      v39 = sub_1000236F4(v26, v28);
      v41 = *(v38 + 16);
      v42 = (v40 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        break;
      }

      v44 = v39;
      v45 = v40;
      sub_100065020(&qword_1001BAA08, &qword_100171580);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
      {
        v46 = sub_1000236F4(v26, v28);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_15;
        }

        v44 = v46;
      }

      v48 = v71;
      if (v45)
      {
        sub_100019B88();
        sub_1000BA5AC(v35, v49);
      }

      else
      {
        sub_100061AC4(v71 + 8 * (v44 >> 6));
        v51 = (v50 + 16 * v44);
        *v51 = v26;
        v51[1] = v28;
        sub_100019B88();
        sub_1000050EC();
        sub_1000BA610();
        v52 = *(v48 + 16);
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_14;
        }

        *(v48 + 16) = v54;
      }

      v3 = v37;
      *v37 = v48;
      v22 = v69 + v57;
      v19 = v70 - 1;
      if (v70 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_12:

    return sub_100003324(v68);
  }

  return result;
}

void sub_1000B6D68()
{
  v39 = sub_100065020(&qword_1001BAA18, &qword_1001715B8);
  sub_100002C00();
  __chkstk_darwin(v1);
  v3 = (&v35 - v2);
  v4 = *v0;
  v5 = *(*v0 + 64);
  *(&v35 + 1) = *v0 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  *&v35 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  *v38 = xmmword_10016FF40;
  v36 = v4;
  v37 = v3;
  do
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= v35)
          {
            goto LABEL_27;
          }

          v8 = *(*(&v35 + 1) + 8 * v11);
          ++v9;
          if (v8)
          {
            v9 = v11;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_9:
      v12 = (*(v4 + 48) + 16 * (__clz(__rbit64(v8)) | (v9 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
      sub_100002C00();
      v16 = v3 + *(v39 + 48);
      sub_100003B80();
      sub_1000BA4FC();
      *v3 = v13;
      v3[1] = v14;
      sub_100012F04();
      v42 = v10;
      if (v49)
      {
        sub_100004A04(&v47, &v43);
        sub_100065020(&qword_1001BAA20, &unk_1001715C0);
        v17 = swift_allocObject();
        *(v17 + 1) = *v38;
        sub_100004A04(&v43, (v17 + 4));
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      v18 = *&v16[*(v15 + 24)];
      v19 = *(v18 + 16);
      if (v19)
      {
        v40 = v17;
        sub_100065020(&qword_1001BAA20, &unk_1001715C0);
        v20 = swift_allocObject();
        v21 = j__malloc_size(v20);
        v20[2] = v19;
        v20[3] = 2 * ((v21 - 32) / 40);
        sub_1001499D4(&v47, (v20 + 4), v19, v18, v22, v23, v24, v25, v35, v36, v37, *v38, *&v38[8], v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51);
        v41 = v26;
        v27 = v47;

        sub_100007F18(v27);
        if (v41 != v19)
        {
          goto LABEL_30;
        }

        v4 = v36;
        v3 = v37;
        v17 = v40;
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      *&v47 = v17;
      sub_100140910(v20);
      v28 = v47;
      sub_10000ECD8(v3, &qword_1001BAA18, &qword_1001715B8);
      v29 = *(v28 + 16);
      v10 = v42;
      v30 = v42[2];
      if (__OFADD__(v30, v29))
      {
        goto LABEL_29;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v29 > v10[3] >> 1)
      {
        sub_10013FF18();
        v10 = v31;
      }

      v8 &= v8 - 1;
      if (!*(v28 + 16))
      {
        break;
      }

      if ((v10[3] >> 1) - v10[2] < v29)
      {
        goto LABEL_31;
      }

      sub_100065020(&qword_1001BA8F8, "ޅ");
      swift_arrayInitWithCopy();

      if (v29)
      {
        v32 = v10[2];
        v33 = __OFADD__(v32, v29);
        v34 = v32 + v29;
        if (v33)
        {
          goto LABEL_32;
        }

        v10[2] = v34;
      }
    }
  }

  while (!v29);
  __break(1u);
LABEL_27:
}

uint64_t InferenceProviderManager.inferenceProviderConnections.setter(uint64_t a1)
{
  sub_100004B50(v1 + 112, v4);
  sub_1000B71AC(a1, v1 + 112);
  return swift_endAccess();
}

void *sub_1000B7230(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t InferenceProviderManager.allConnections.getter(uint64_t a1)
{
  sub_100012D7C(a1);
  sub_10006ABDC(v1 + 112, v5);
  sub_1000B6D68();
  v3 = v2;
  sub_10006ACCC(v5);
  return v3;
}

uint64_t InferenceProviderManager.__allocating_init(connectionCollection:waitingForFirstUpdate:extensionKit:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  sub_100016494(a3, a3[3]);
  sub_1000124CC();
  __chkstk_darwin(v4);
  v6 = sub_100004BB8(v5, v10);
  v7(v6);
  v8 = sub_1000352E0();
  sub_100003324(a3);
  return v8;
}

uint64_t InferenceProviderManager.init(connectionCollection:waitingForFirstUpdate:extensionKit:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100016494(a3, a3[3]);
  sub_1000124CC();
  __chkstk_darwin(v4);
  v6 = sub_100004BB8(v5, v10);
  v7(v6);
  v8 = sub_1000352E0();
  sub_100003324(a3);
  return v8;
}

uint64_t sub_1000B7454(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100004B70(sub_1000B7470, 0);
}

uint64_t sub_1000B7470()
{
  sub_100003884();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_100065020(&qword_1001BA648, &qword_100171330);
  *v4 = v0;
  v4[1] = sub_1000B75C8;

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v5, 0xD00000000000003ELL, 0x8000000100176830);
}

uint64_t sub_1000B75C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  if (!v0)
  {

    v5 = sub_100003000();

    return _swift_task_switch(v5, v6, v7);
  }

  return result;
}

uint64_t sub_1000B76C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000B4668;

  return sub_1000B7908();
}

uint64_t sub_1000B7764()
{
  sub_10000C1C0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1000B77CC(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  type metadata accessor for UUID();
  sub_10006AB90();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000B782C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  type metadata accessor for UUID();
  v0 = sub_10006AB90();
  sub_10000317C(v0, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B78A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  v1 = sub_10006AB90();
  sub_10000317C(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_1000B7908()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  sub_100065020(&qword_1001BAA10, &qword_100171590);
  v1[9] = sub_100002C58();
  v3 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000B7A28()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v73 = v0[10];
    v71 = v0[9];
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v75 = v4;
      sub_1000480AC(v3, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      sub_100003370(v0 + 2, v5);
      v7 = (*(v6 + 16))(v5, v6);
      v10 = v0[9];
      v9 = v0[10];
      if (v8)
      {
        v11 = v8;
        v79 = v0[10];
        v81 = v2;
        v12 = v0[5];
        v13 = v0[6];
        v77 = v7;
        sub_100003370(v0 + 2, v12);
        v14 = type metadata accessor for UUID();
        sub_100002BDC();
        v16 = v15;
        v17 = sub_100002C58();
        v18 = v12;
        v2 = v81;
        (*(v13 + 8))(v18, v13);
        *v10 = v77;
        *(v71 + 8) = v11;
        (*(v16 + 32))(v10 + *(v73 + 20), v17, v14);

        v19 = v10;
        v20 = 0;
        v9 = v79;
      }

      else
      {
        v19 = v0[9];
        v20 = 1;
      }

      sub_100009BFC(v19, v20, 1, v9);
      v21 = v0[9];
      v22 = v0[10];
      sub_100003324(v0 + 2);
      v4 = v75;
      if (sub_10000C6C0(v21, 1, v22) == 1)
      {
        sub_10000ECD8(v0[9], &qword_1001BAA10, &qword_100171590);
      }

      else
      {
        sub_10000860C();
        sub_1000BA610();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10014029C();
          v4 = v24;
        }

        v23 = v4[2];
        if (v23 >= v4[3] >> 1)
        {
          sub_10014029C();
          v4 = v25;
        }

        v4[2] = v23 + 1;
        sub_10000860C();
        sub_1000BA610();
      }

      v3 += 40;
      v2 = (v2 - 1);
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v26 = 0;
  v78 = v0[15];
  v72 = v0[11];
  v66 = v0[16];
  v67 = v4[2];
  v68 = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities;
  v69 = v0[8];
  v27 = _swiftEmptyArrayStorage;
  v76 = v4;
  while (1)
  {
    v74 = v27;
    if (v26 == v67)
    {
      break;
    }

    if (v26 >= v4[2])
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_100005C4C();
      swift_once();
      goto LABEL_55;
    }

    sub_100011384();
    sub_1000BA4FC();
    ++v26;
    v2 = *(v69 + v68);
    if (v2[2])
    {
      v70 = v26;
      v28 = v0[16];
      Hasher.init(_seed:)();
      v29 = *v28;
      v30 = *(v66 + 8);

      String.hash(into:)();
      type metadata accessor for UUID();
      sub_10006AB90();
      dispatch thunk of Hashable.hash(into:)();
      v31 = Hasher._finalize()();
      v32 = -1 << *(v2 + 32);
      v33 = v31 & ~v32;
      if (((*(v2 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
      {
LABEL_29:

        v27 = v74;
        v4 = v76;
        v26 = v70;
        goto LABEL_30;
      }

      v34 = ~v32;
      while (1)
      {
        v35 = v0[15];
        sub_100011384();
        sub_1000BA4FC();
        v36 = *v35 == v29 && *(v78 + 8) == v30;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
        {
          break;
        }

        sub_1000056AC();
        sub_1000BA554(v37, v38);
        v33 = (v33 + 1) & v34;
        if (((*(v2 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v40 = v0[16];
      sub_1000BA554(v0[15], type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation);

      sub_1000BA554(v40, type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation);
      v27 = v74;
      v4 = v76;
      v26 = v70;
    }

    else
    {
LABEL_30:
      sub_10000860C();
      sub_1000BA610();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100070F70();
      }

      v39 = v27[2];
      v2 = (v39 + 1);
      if (v39 >= v27[3] >> 1)
      {
        sub_100070F70();
      }

      v27[2] = v2;
      sub_10000860C();
      sub_1000BA610();
    }
  }

  v41 = v0[13];

  v43 = sub_1000FD874(v42);
  v44 = 0;
  v80 = v43[2];
  v2 = _swiftEmptyArrayStorage;
LABEL_37:
  while (1)
  {
    v0[18] = _swiftEmptyArrayStorage;
    if (v44 == v80)
    {
      break;
    }

    if (v44 >= v43[2])
    {
      goto LABEL_68;
    }

    v45 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v46 = *(v72 + 72);
    sub_100011384();
    sub_1000BA4FC();
    ++v44;
    v47 = v4[2];
    v48 = (v4 + v45);
    while (v47)
    {
      v49 = *v48 == *v0[13] && v48[1] == *(v41 + 8);
      if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
      {
        sub_1000056AC();
        sub_1000BA554(v51, v52);
        goto LABEL_37;
      }

      v48 = (v48 + v46);
      --v47;
    }

    sub_10000860C();
    sub_1000BA610();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070F70();
    }

    v50 = _swiftEmptyArrayStorage[2];
    if (v50 >= _swiftEmptyArrayStorage[3] >> 1)
    {
      sub_100070F70();
    }

    _swiftEmptyArrayStorage[2] = v50 + 1;
    sub_10000860C();
    sub_1000BA610();
    v4 = v76;
  }

  sub_100077C0C();
  *(v69 + v68) = v53;

  if (qword_1001B8910 != -1)
  {
    goto LABEL_69;
  }

LABEL_55:
  v54 = type metadata accessor for Logger();
  sub_10000641C(v54, qword_1001BA630);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    *(v57 + 4) = *(v74 + 16);

    *(v57 + 12) = 2048;
    *(v57 + 14) = v2[2];

    sub_1000078B4();
    _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
    sub_100002BB8(v57);
  }

  else
  {
  }

  if (*(v74 + 16))
  {
    sub_1000B8580(v74, 1);
  }

  if (v2[2])
  {
    v63 = swift_task_alloc();
    v0[19] = v63;
    *v63 = v0;
    v63[1] = sub_1000B8300;

    return sub_1000B8EEC();
  }

  else
  {

    sub_100001F00();

    return v65();
  }
}

uint64_t sub_1000B8300()
{
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000B84E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000B8504, v2);
}

uint64_t sub_1000B8504()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  v4 = *v2;
  v3 = v2[1];
  *v2 = v0[2];
  v2[1] = v1;

  sub_100016484(v4, v3);
  sub_100001F00();

  return v5();
}

void sub_1000B8580(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  sub_100002BDC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v114 - v10;
  v129 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  sub_100002C00();
  __chkstk_darwin(v12);
  sub_100002B8C();
  v121 = v14 - v13;
  v124 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  sub_100002BDC();
  v128 = v15;
  __chkstk_darwin(v16);
  sub_100005630();
  v131 = v17 - v18;
  sub_100002F1C();
  __chkstk_darwin(v19);
  v123 = &v114 - v20;
  sub_100002F1C();
  __chkstk_darwin(v21);
  v119 = &v114 - v22;
  sub_100002F1C();
  __chkstk_darwin(v23);
  v122 = &v114 - v24;
  v25 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v26 = __chkstk_darwin(v25);
  v127 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v31 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  v130 = v3;
  v117 = v6;
  v116 = v8;
  v115 = v11;
  v118 = a2;
  if (!v30)
  {
    if (qword_1001B8910 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  v32 = *(v26 + 20);
  v125 = *(v27 + 72);
  v126 = v32;
  *&v28 = 136315138;
  v120 = v28;
  do
  {
    v134 = v30;
    sub_100011384();
    v132 = v33;
    v34 = v127;
    sub_1000BA4FC();
    v36 = *v34;
    v35 = v34[1];
    type metadata accessor for UUID();
    v133 = &v114;
    sub_100002BDC();
    v38 = v37;
    v40 = *(v39 + 64);
    __chkstk_darwin(v41);
    v135 = v38;
    v136 = v42;
    v43 = *(v38 + 16);
    v137 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43();

    sub_1000056AC();
    sub_1000BA554(v34, v44);
    sub_100004B50((v3 + 14), v139);
    if (*(v3[14] + 16))
    {
      v45 = sub_10000CF04();
      sub_1000236F4(v45, v46);
      if (v47)
      {
        sub_10000A44C();
        sub_100003B80();
        sub_1000BA4FC();
        sub_1000050EC();
        sub_1000BA610();
        sub_1000BA4FC();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v49 = v121;

            v50 = sub_100065020(&qword_1001BA9F8, &qword_100171570);
            v51 = v136;
            v52 = *(v135 + 8);
            v52(v49 + *(v50 + 48), v136);
            sub_1000064F0();
            sub_1000BA554(v122, v53);
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000BA554(v121, type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype);
        }

        sub_1000064F0();
        sub_1000BA554(v122, v54);
      }
    }

    if (v31[290] != -1)
    {
      sub_100005C4C();
      swift_once();
    }

    v55 = v43;
    v56 = type metadata accessor for Logger();
    sub_10000641C(v56, qword_1001BA630);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v138 = v60;
      *v59 = v120;
      v61 = sub_10000CF04();
      *(v59 + 4) = sub_100004A3C(v61, v62, v63);
      _os_log_impl(&_mh_execute_header, v57, v58, "Found inference provider extension: %s", v59, 0xCu);
      sub_100003324(v60);
      v64 = v60;
      v3 = v130;
      sub_100002BB8(v64);
      sub_100002BB8(v59);
    }

    __chkstk_darwin(v65);
    v66 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v136;
    (v55)(v66, v137, v136);
    v68 = v123;
    v69 = v124;
    sub_1000480AC((v3 + 15), &v123[*(v124 + 28)]);
    v70 = &v68[*(v69 + 20)];
    *(v70 + 32) = 0;
    sub_100013AB8();
    v71 = v3;
    v72 = *(v69 + 24);
    v51 = v67;

    sub_100065020(&qword_1001BA8F8, "ޅ");
    *&v68[v72] = Dictionary.init(dictionaryLiteral:)();
    v73 = *(sub_100065020(&qword_1001BA9F8, &qword_100171570) + 48);
    *v68 = v36;
    *(v68 + 1) = v35;
    v74 = v135;
    (*(v135 + 32))(&v68[v73], v66, v51);
    swift_storeEnumTagMultiPayload();

    sub_10000ECD8(v70, &qword_1001B9CB0, &qword_100171E70);
    sub_100013AB8();
    *(v70 + 32) = 0;
    sub_1000050EC();
    sub_1000BA610();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v71[14];
    v76 = v138;
    v77 = sub_10000CF04();
    v79 = sub_1000236F4(v77, v78);
    v81 = v76[2];
    v82 = (v80 & 1) == 0;
    v3 = (v81 + v82);
    if (__OFADD__(v81, v82))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v83 = v79;
    v84 = v80;
    sub_100065020(&qword_1001BAA08, &qword_100171580);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v3))
    {
      v85 = sub_10000CF04();
      v87 = sub_1000236F4(v85, v86);
      v3 = v130;
      v31 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
      if ((v84 & 1) != (v88 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v83 = v87;
    }

    else
    {
      v3 = v130;
      v31 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    }

    v89 = v138;
    if (v84)
    {
      sub_10000A44C();
      sub_1000BA5AC(v131, v90 + v91 * v83);
    }

    else
    {
      sub_100061AC4(&v138[v83 >> 6]);
      v93 = (v92 + 16 * v83);
      *v93 = v36;
      v93[1] = v35;
      sub_10000A44C();
      sub_1000050EC();
      sub_1000BA610();
      v94 = v89[2];
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_40;
      }

      v89[2] = v96;
    }

    v3[14] = v89;
    v52 = *(v74 + 8);
LABEL_24:
    v97 = v134;
    v52(v137, v51);
    swift_endAccess();

    v30 = v97 - 1;
  }

  while (v30);
  while ((v118 & 1) != 0)
  {
    v104 = v3[21];
    v95 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (!v95)
    {
      v3[21] = v105;
      if (v105 >= 1)
      {
        v106 = v3[22];
        v107 = *(v106 + 16);
        if (v107)
        {
          v108 = *(v116 + 16);
          v109 = v106 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
          v110 = *(v116 + 72);
          v111 = (v116 + 8);

          v112 = v117;
          v113 = v115;
          do
          {
            v108(v113, v109, v112);
            CheckedContinuation.resume(returning:)();
            (*v111)(v113, v112);
            v109 += v110;
            --v107;
          }

          while (v107);

          v3 = v130;
        }

        v3[22] = _swiftEmptyArrayStorage;
      }

      return;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    sub_100005C4C();
    swift_once();
LABEL_27:
    v98 = type metadata accessor for Logger();
    sub_10000641C(v98, qword_1001BA630);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      sub_10000EDF4(&_mh_execute_header, v102, v103, "Query found no inference provider extensions");
      sub_100002BB8(v101);
    }
  }
}

uint64_t sub_1000B8EEC()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  sub_100065020(&qword_1001BAA00, &qword_100171578);
  v1[16] = sub_100002C58();
  v3 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = sub_100002C58();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000B8FC8()
{
  sub_100001ED0();
  v1 = *(*(v0 + 112) + 16);
  *(v0 + 160) = v1;
  if (v1)
  {
    *(v0 + 168) = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler;
    v2 = *(type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0) - 8);
    *(v0 + 248) = *(v2 + 80);
    swift_beginAccess();
    *(v0 + 176) = *(v2 + 72);
    *(v0 + 184) = 0;
    sub_10006ABDC(*(v0 + 120) + 112, v0 + 16);
    v3 = sub_1000083FC();

    return _swift_task_switch(v3, v4, v5);
  }

  else
  {

    sub_100001F00();

    return v6();
  }
}

uint64_t sub_1000B9104()
{
  if (qword_1001B8910 != -1)
  {
    sub_100005C4C();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = sub_10000641C(v1, qword_1001BA630);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_10000CF04();
    *(v4 + 4) = sub_100004A3C(v5, v6, v7);
    sub_1000078B4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100003324(v18);
    sub_100002BB8(v18);
    sub_100002BB8(v4);
  }

  if (*(v0[2] + 16) && (sub_1000236F4(v0[24], v0[25]), (v13 & 1) != 0))
  {
    sub_100003B80();
    sub_1000BA4FC();
    v14 = swift_task_alloc();
    v0[27] = v14;
    *v14 = v0;
    v14[1] = sub_1000B9310;

    return sub_1000B6190();
  }

  else
  {
    v16 = v0[15];
    sub_10006ACCC((v0 + 2));
    v17 = sub_10000A8A4();

    return _swift_task_switch(v17, v16, 0);
  }
}

uint64_t sub_1000B9310()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = *(v1 + 152);
  *v3 = *v0;

  sub_1000064F0();
  sub_1000BA554(v4, v5);
  v6 = *(v1 + 120);
  sub_10006ACCC(v2 + 16);
  v7 = sub_10000A8A4();

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000B9438()
{
  v1 = v0[24];
  v2 = v0[25];
  sub_100004B50(v0[15] + 112, (v0 + 11));
  sub_1000236F4(v1, v2);
  if (v3)
  {
    v4 = v0[15];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v4 + 112);
    v6 = *(v34 + 24);
    sub_100065020(&qword_1001BAA08, &qword_100171580);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);

    sub_1000050EC();
    sub_1000BA610();
    sub_1000062B0();
    _NativeDictionary._delete(at:)();
    v7 = 0;
    *(v4 + 112) = v34;
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[16];
  sub_100009BFC(v8, v7, 1, v0[17]);
  sub_10000ECD8(v8, &qword_1001BAA00, &qword_100171578);

  v9 = Logger.logObject.getter();
  LOBYTE(v8) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_10000CF04();
    *(v10 + 4) = sub_100004A3C(v11, v12, v13);
    sub_1000078B4();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_100003324(v35);
    sub_100002BB8(v35);
    sub_100002BB8(v10);
  }

  v19 = v0[21];
  v20 = v0[15];
  swift_endAccess();
  v21 = *(v20 + v19);
  v0[28] = v21;
  if (v21)
  {
    v0[29] = *(v0[15] + v0[21] + 8);

    v22 = swift_task_alloc();
    v0[30] = v22;
    *v22 = v0;
    v22[1] = sub_1000B9790;
    sub_100016688();

    __asm { BRAA            X2, X16 }
  }

  sub_1000126A0();
  if (v26)
  {

    sub_100001F00();
    sub_100016688();

    __asm { BRAA            X1, X16 }
  }

  sub_1000185C4(v25);
  sub_1000083FC();
  sub_100016688();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_1000B9790()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_1000062B0();
  sub_100016484(v5, v6);

  return _swift_task_switch(sub_1000B98C8, v2, 0);
}

uint64_t sub_1000B98C8()
{
  sub_100002BAC();
  sub_1000126A0();
  if (v1)
  {

    sub_100001F00();

    return v2();
  }

  else
  {
    sub_1000185C4(v0);
    v4 = sub_1000083FC();

    return _swift_task_switch(v4, v5, v6);
  }
}

uint64_t sub_1000B995C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000B9A54()
{
  sub_100001ED0();
  v1 = v0[6];
  v2 = v0[5];
  sub_100004B50(v0[7] + 112, (v0 + 2));
  sub_100025EF0(v1, v2);
  swift_endAccess();
  sub_100001F00();

  return v3();
}

uint64_t sub_1000B9ADC(uint64_t a1, uint64_t a2)
{
  sub_10013FA54();
  v4 = *(*(a2 + 176) + 16);
  sub_10013FAE4(v4);
  v5 = *(a2 + 176);
  *(v5 + 16) = v4 + 1;
  v6 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 176) = v5;
  return result;
}

uint64_t InferenceProviderManager.deinit()
{
  sub_10006ACCC(v0 + 112);

  sub_100003324((v0 + 184));
  v1 = OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager__workQueue;
  sub_100065020(&qword_1001BA648, &qword_100171330);
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);
  sub_100016484(*(v0 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler), *(v0 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InferenceProviderManager.__deallocating_deinit()
{
  InferenceProviderManager.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B9C64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  v11 = sub_10000366C(v17);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  swift_defaultActor_initialize();
  *(a4 + 160) = xmmword_10016F6C0;
  *(a4 + 176) = _swiftEmptyArrayStorage;
  type metadata accessor for InferenceProviderManager(0);
  sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager, &protocol conformance descriptor for InferenceProviderManager);
  WorkQueue.init()();
  v12 = (a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  *v12 = 0;
  v12[1] = 0;
  *(a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities) = &_swiftEmptySetSingleton;
  sub_10006ABDC(a1, a4 + 112);
  *(a4 + 168) = (a2 & 1) == 0;
  sub_1000480AC(v17, a4 + 184);
  v13 = *(a4 + 208);
  v14 = *(a4 + 216);
  sub_100003370((a4 + 184), v13);
  v15 = *(v14 + 8);

  v15(&off_1001AFF30, &unk_10016F810, a4, v13, v14);

  sub_10006ACCC(a1);
  sub_100003324(v17);
  return a4;
}

void sub_1000B9E4C(uint64_t a1)
{
  sub_1000B9F24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000B9F24(uint64_t a1)
{
  if (!qword_1001BA688)
  {
    type metadata accessor for InferenceProviderManager(255);
    sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager, &protocol conformance descriptor for InferenceProviderManager);
    v1 = type metadata accessor for WorkQueue();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BA688);
    }
  }
}

__n128 sub_1000B9FB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000B9FCC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BA0B0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000BA12C(uint64_t a1)
{
  type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(319);
  if (v1 <= 0x3F)
  {
    sub_1000BA1E0(319);
    if (v2 <= 0x3F)
    {
      sub_1000BA244(319);
      if (v3 <= 0x3F)
      {
        sub_1000BA2B8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000BA1E0(uint64_t a1)
{
  if (!qword_1001BA8F0)
  {
    sub_10006A614(&qword_1001BA8F8, "ޅ");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BA8F0);
    }
  }
}

void sub_1000BA244(uint64_t a1)
{
  if (!qword_1001BA900)
  {
    sub_10006A614(&qword_1001BA8F8, "ޅ");
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BA900);
    }
  }
}

unint64_t sub_1000BA2B8()
{
  result = qword_1001BA908;
  if (!qword_1001BA908)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BA908);
  }

  return result;
}

void sub_1000BA314(uint64_t a1)
{
  type metadata accessor for BuiltInInferenceProvider();
  if (v1 <= 0x3F)
  {
    sub_1000BA388(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000BA388(uint64_t a1)
{
  if (!qword_1001BA9C0)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001BA9C0);
    }
  }
}

uint64_t sub_1000BA43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BA48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B9CB0, &qword_100171E70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA4FC()
{
  sub_10000C1C0();
  v1(0);
  sub_100002C00();
  v2 = sub_1000062B0();
  v3(v2);
  return v0;
}

uint64_t sub_1000BA554(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000BA5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA610()
{
  sub_10000C1C0();
  v1(0);
  sub_100002C00();
  v2 = sub_1000062B0();
  v3(v2);
  return v0;
}

uint64_t sub_1000BA668()
{
  sub_100001ED0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10006F558;

  return sub_1000B76C8(v3, v5, v4);
}

void sub_1000BA718(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v64 = a2;
  v4 = sub_100065020(&qword_1001B9C70, &qword_1001706C0);
  __chkstk_darwin(v4 - 8);
  v58 = &v55 - v5;
  v59 = type metadata accessor for InferenceError.Context();
  sub_100004F60();
  v57 = v6;
  __chkstk_darwin(v7);
  sub_100008624();
  v56 = v8;
  type metadata accessor for InferenceError();
  sub_100004F60();
  v61 = v10;
  v62 = v9;
  __chkstk_darwin(v9);
  sub_100008624();
  v60 = v11;
  v12 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  sub_100004F60();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v55 - v21;
  v23 = type metadata accessor for ModelManagerError();
  sub_100004F60();
  v25 = v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v55 - v30;
  v63 = v16;
  v32 = *(v16 + 16);
  v32(v22, v66, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100009BFC(v14, 1, 1, v23);
    sub_10000C790(v14, &qword_1001B9C80, &unk_1001726D0);
    goto LABEL_7;
  }

  sub_100009BFC(v14, 0, 1, v23);
  (*(v25 + 32))(v31, v14, v23);
  (*(v25 + 16))(v29, v31, v23);
  if ((*(v25 + 88))(v29, v23) != enum case for ModelManagerError.inferenceError(_:))
  {
    v41 = *(v25 + 8);
    v41(v31, v23);
    v41(v29, v23);
LABEL_7:
    v32(v20, v66, a1);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v63 + 8))(v20, a1);
    }

    else
    {
      swift_allocError();
      (*(v63 + 32))(v42, v20, a1);
    }

    v43 = _convertErrorToNSError(_:)();

    sub_1000BAF18(v43, v65);

    return;
  }

  v66 = v31;
  v33 = v25;
  v34 = *(v25 + 96);
  v35 = v23;
  v34(v29, v23);
  v37 = v60;
  v36 = v61;
  v38 = v62;
  (*(v61 + 32))(v60, v29, v62);
  v39 = v58;
  InferenceError.context.getter();
  v40 = v59;
  if (sub_10000C6C0(v39, 1, v59) == 1)
  {
    sub_10000C790(v39, &qword_1001B9C70, &qword_1001706C0);
  }

  else
  {
    v44 = v56;
    v45 = v57;
    (*(v57 + 32))(v56, v39, v40);
    v46 = InferenceError.Context.domain.getter();
    v48 = v47;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v67 = 0x636E657265666E49;
      v68 = 0xEF2E726F72724565;
      v50._countAndFlagsBits = InferenceError.caseName.getter();
      String.append(_:)(v50);

      v51._countAndFlagsBits = 46;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = InferenceError.Context.domain.getter();
      String.append(_:)(v52);

      InferenceError.Context.code.getter();
      sub_1000BAE38(v65);

      (*(v45 + 8))(v44, v40);
      (*(v36 + 8))(v37, v38);
      (*(v33 + 8))(v66, v35);
      return;
    }

    (*(v45 + 8))(v44, v40);
  }

  sub_1000BAFAC();
  swift_allocError();
  (*(v36 + 16))(v53, v37, v38);
  v54 = _convertErrorToNSError(_:)();
  sub_1000BAF18(v54, v65);

  (*(v36 + 8))(v37, v38);
  (*(v33 + 8))(v66, v35);
}

uint64_t sub_1000BAE38@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
  v5 = swift_allocBox();
  static Buildable.with(_:)();
  *a4 = v5;
  v6 = enum case for GenerativeFunctionsInstrumentationError.genericError(_:);
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  return (*(*(v7 - 8) + 104))(a4, v6, v7);
}

uint64_t sub_1000BAF18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [a1 code];
  sub_1000BAE38(a2);
}

unint64_t sub_1000BAFAC()
{
  result = qword_1001BAA28;
  if (!qword_1001BAA28)
  {
    type metadata accessor for InferenceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAA28);
  }

  return result;
}

uint64_t sub_1000BB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  return GenerativeFunctionsInstrumentationError.GenericError.code.setter();
}

uint64_t AssetInferenceProvider.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetInferenceProvider.instanceID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static AssetInferenceProvider.__derived_struct_equals(_:_:)(uint64_t a1)
{
  sub_100008638(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = *(v2 + 24);
  v7 = *(v1 + 24);
  if (v6)
  {
    if (v7)
    {
      v8 = *(v2 + 16) == *(v1 + 16) && v6 == v7;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v9 = 0;
    return v9 & 1;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v2 + 32) ^ *(v1 + 32) ^ 1;
  return v9 & 1;
}

void AssetInferenceProvider.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 32) & 1);
}

Swift::Int AssetInferenceProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000BB224(uint64_t a1)
{
  sub_100008638(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_1000BB68C(v2[2], v1[2]) & 1) != 0 && (sub_1000BB718(v2[3], v1[3]) & 1) != 0 && (sub_1000BB718(v2[4], v1[4]) & 1) != 0 && (v6 = type metadata accessor for ModelCatalogAsset(0), (static AssetCost.== infix(_:_:)()) && (sub_100005104(), v5) && (sub_100005104(), v5) && (sub_100005104(), v5) && (sub_100005104(), v5) && (sub_100005104(), v5) && (sub_1000BB68C(*(v2 + *(v6 + 56)), *(v1 + *(v6 + 56))))
  {
    v7 = *(v2 + *(v6 + 60)) ^ *(v1 + *(v6 + 60)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_1000BB320()
{
  Hasher.init(_seed:)();
  sub_10000C228(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BB368(uint64_t a1)
{
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000BB3A8()
{
  result = qword_1001BAA30;
  if (!qword_1001BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAA30);
  }

  return result;
}

uint64_t sub_1000BB408@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 sub_1000BB418(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BB42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BB46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BB4C0(uint64_t a1)
{
  sub_1000BB5B0(319, &qword_1001BAAA0, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000BB5B0(319, &unk_1001BAAA8, &type metadata for AssetInferenceProvider);
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = type metadata accessor for AssetCost();
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1000BB5B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int sub_1000BB604(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10000C228(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000BB68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BB718(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  result = *(a1 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (result != *(a2 + 32) || *(v4 + 40) != *(a2 + 40))
  {
    v13 = *(v4 + 48);
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v13;
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v14 = 0;
  v15 = 1;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (!v9)
  {
    return 0;
  }

  if (v6 == v10 && v7 == v9)
  {
    if (((v11 ^ v8) & 1) == 0)
    {
      while (v2 != v15)
      {
        if (v15 >= v2)
        {
          __break(1u);
          return result;
        }

        result = *(v4 + v14 + 72);
        v6 = *(v4 + v14 + 88);
        v7 = *(v4 + v14 + 96);
        v8 = *(v4 + v14 + 104);
        v10 = *(v3 + v14 + 88);
        v9 = *(v3 + v14 + 96);
        v11 = *(v3 + v14 + 104);
        if (result != *(v3 + v14 + 72) || *(v4 + v14 + 80) != *(v3 + v14 + 80))
        {
          v28 = v15;
          v19 = v14;
          v20 = *(v3 + v14 + 96);
          v21 = v7;
          v22 = v2;
          v23 = v4;
          v24 = v3;
          v25 = v10;
          v26 = v11;
          v27 = v6;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v6 = v27;
          v11 = v26;
          v10 = v25;
          v3 = v24;
          v4 = v23;
          v2 = v22;
          v7 = v21;
          v9 = v20;
          v14 = v19;
          v15 = v28;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v14 += 40;
        ++v15;
        if (v7)
        {
          goto LABEL_10;
        }

LABEL_17:
        result = 0;
        if (v9)
        {
          return result;
        }

LABEL_18:
        if ((v11 ^ v8))
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v17)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1000BB8F8(uint64_t a1)
{
  result = type metadata accessor for FilePath();
  if (v2 <= 0x3F)
  {
    result = sub_1000BB98C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BB98C()
{
  result = qword_1001BAB78;
  if (!qword_1001BAB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BAB78);
  }

  return result;
}

uint64_t type metadata accessor for RemoteXPCReceivedMessage(uint64_t a1)
{
  result = qword_1001BAC20;
  if (!qword_1001BAC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BBA5C(uint64_t a1)
{
  sub_1000BBB08();
  if (v1 <= 0x3F)
  {
    type metadata accessor for XPCDictionary();
    if (v2 <= 0x3F)
    {
      type metadata accessor for audit_token_t(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000BBB08()
{
  result = qword_1001BAC30;
  if (!qword_1001BAC30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001BAC30);
  }

  return result;
}

uint64_t sub_1000BBB64()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BABB0);
  sub_10000641C(v0, qword_1001BABB0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1000BBC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteXPCReceivedMessage(0);
  if (*(v3 + *(v8 + 24)) == 1)
  {
    (*(v5 + 16))(v7, v3 + *(v8 + 20), v4);
    XPCDictionary.encode<A>(_:forKey:)();
    XPCDictionary.reply(_:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_1001B8918 != -1)
    {
      sub_100005114(&qword_1001B8918);
    }

    v9 = type metadata accessor for Logger();
    sub_10000641C(v9, qword_1001BABB0);
    v13 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v13, v10, "remoteXPC reply was called when message does not expect a reply", v11, 2u);
    }

    v12 = v13;
  }
}

void sub_1000BC00C(uint64_t a1)
{
  type metadata accessor for AssetPolicy();
  if (v1 <= 0x3F)
  {
    sub_1000BC0B8();
    if (v2 <= 0x3F)
    {
      sub_1000BC108();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000BC0B8()
{
  if (!qword_1001BACD8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BACD8);
    }
  }
}

void sub_1000BC108()
{
  if (!qword_1001BACE0)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BACE0);
    }
  }
}

void sub_1000BC160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if ((sub_100116A30(a1, a2) & 1) == 0)
  {
    return;
  }

  v32 = _s6PolicyVMa_0(0);
  v39 = v32[5];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (!v43)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if ((v43 & 1) == 0)
  {
LABEL_8:
    if (*(a1 + v32[6]) == *(a2 + v32[6]) && *(a1 + v32[7]) == *(a2 + v32[7]))
    {
      v44 = v32[8];
      v45 = *(a1 + v44);
      v46 = *(a2 + v44);

      sub_10007B664(v45, v46, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
    }
  }
}

uint64_t sub_1000BC220()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BAD20);
  sub_10000641C(v0, qword_1001BAD20);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BC294()
{
  swift_defaultActor_initialize();
  if (TRIClient)
  {
    v1 = [objc_opt_self() client];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 112) = v1;
  return v0;
}

uint64_t sub_1000BC2EC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 experimentIdentifiersWithNamespaceName:v3];

    if (v4)
    {

      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v1);
  return v4;
}

id sub_1000BC384()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 112);
  if (v2 && (v3 = String._bridgeToObjectiveC()(), v4 = String._bridgeToObjectiveC()(), v5 = [v2 levelForFactor:v3 withNamespaceName:v4], v3, v4, v5))
  {
    v6 = [v5 longValue];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v1);
  return v6;
}

void sub_1000BC460(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_autoreleasePoolPush();
  v10 = *(v4 + 112);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v4;
    v12[5] = a3;
    v12[6] = a4;
    v20[4] = sub_1000BCDA4;
    v20[5] = v12;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1000BCB44;
    v20[3] = &unk_1001B1110;
    v13 = _Block_copy(v20);

    v14 = [v10 addUpdateHandlerForNamespaceName:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  objc_autoreleasePoolPop(v9);
  if (qword_1001B8920 != -1)
  {
    sub_100005134(&qword_1001B8920);
  }

  v15 = type metadata accessor for Logger();
  sub_10000641C(v15, qword_1001BAD20);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100004A3C(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v16, v17, "Added update handler for namespace %s", v18, 0xCu);
    sub_100003324(v19);
    sub_100002BB8(v19);
    sub_100002BB8(v18);
  }
}

double sub_1000BC6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  sub_100009BFC(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v15[8] = a6;

  sub_1000652FC();

  return result;
}

uint64_t sub_1000BC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000BC7F0, 0, 0);
}

uint64_t sub_1000BC7F0()
{
  v11 = v0;
  if (qword_1001B8920 != -1)
  {
    sub_100005134(&qword_1001B8920);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BAD20);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100004A3C(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Received update for namespace %s", v6, 0xCu);
    sub_100003324(v7);
    sub_100002BB8(v7);
    sub_100002BB8(v6);
  }

  v8 = v0[4];

  return _swift_task_switch(sub_1000BC95C, v8, 0);
}

uint64_t sub_1000BC95C()
{
  sub_100002BAC();
  v1 = v0[5];
  [*(v0[4] + 112) refresh];
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000BCA54;

  return v4();
}

uint64_t sub_1000BCA54()
{
  sub_100002BAC();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000BCB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000BCBA4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BCC00(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1000BCC24, v4, 0);
}

uint64_t sub_1000BCC24()
{
  sub_100002BAC();
  v1 = sub_1000BC2EC();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000BCC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return _swift_task_switch(sub_1000BCCB0, v6, 0);
}

uint64_t sub_1000BCCB0()
{
  sub_100002BAC();
  v1 = sub_1000BC384();
  v2 = *(v0 + 8);
  v4 = v3 & 1;

  return v2(v1, v4);
}

uint64_t sub_1000BCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return _swift_task_switch(sub_1000BCD40, v6, 0);
}

uint64_t sub_1000BCD40()
{
  sub_100002BAC();
  sub_1000BC460(v0[2], v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BCDB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000BCE90;

  return sub_1000BC7C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BCE90()
{
  sub_100002BAC();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1000BCF80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1000BCFC4()
{
  result = qword_1001BAE08;
  if (!qword_1001BAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAE08);
  }

  return result;
}

uint64_t sub_1000BD028()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BAE10);
  sub_10000641C(v0, qword_1001BAE10);
  return generalLogHandle.getter();
}

uint64_t sub_1000BD074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppExtensionIdentity();
  sub_100002BDC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002B8C();
  v11 = v10 - v9;
  v12 = type metadata accessor for UUID();
  sub_100002BDC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002B8C();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16, a1, v12);
  v19 = objc_allocWithZone(LSApplicationExtensionRecord);
  sub_1000BF37C(v18);
  if (v2)
  {
    return (*(v14 + 8))(a1, v12);
  }

  AppExtensionIdentity.init(record:)();
  (*(v14 + 8))(a1, v12);
  return (*(v7 + 32))(a2, v11, v5);
}

uint64_t sub_1000BD230()
{
  v1 = type metadata accessor for EKExtensionIdentity(0);
  v2 = sub_100002F04(v1);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v5 = v4 - v3;
  v6 = AppExtensionIdentity.attributes.getter();
  type metadata accessor for InferenceProviderXPCSender();
  v7 = static InferenceProviderXPCSender.inferenceProviderIdentifierKey.getter();
  sub_100072CDC(v7, v8, v6, &v30);

  if (v31)
  {
    sub_10006B8DC(&v30, v32);
    sub_10000603C(v32, &v30);
    if (swift_dynamicCast())
    {
      sub_100003324(v32);
      return v28;
    }

    if (qword_1001B8928 != -1)
    {
      sub_100002CEC(&qword_1001B8928);
    }

    v19 = type metadata accessor for Logger();
    sub_10000641C(v19, qword_1001BAE10);
    sub_10000603C(v32, &v30);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      sub_10000603C(&v30, &v28);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      sub_100003324(&v30);
      v27 = sub_100004A3C(v24, v26, &v29);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Found inference provider extension, but with invalid InferenceProviderIdentifier value: %s", v22, 0xCu);
      sub_100003324(v23);
      sub_100002BB8(v23);
      sub_100002BB8(v22);
    }

    else
    {

      sub_100003324(&v30);
    }

    sub_100003324(v32);
  }

  else
  {
    sub_10000ED30(&v30, &unk_1001BB100, &qword_100171BA0);
    if (qword_1001B8928 != -1)
    {
      sub_100002CEC(&qword_1001B8928);
    }

    v10 = type metadata accessor for Logger();
    sub_10000641C(v10, qword_1001BAE10);
    sub_1000714C8(v0, v5);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v32[0] = v14;
      *v13 = 136315138;
      v15 = AppExtensionIdentity.bundleIdentifier.getter();
      v17 = v16;
      sub_10007152C(v5);
      v18 = sub_100004A3C(v15, v17, v32);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Found inference provider extension %s, but it lacks an InferenceProviderIdentifier key", v13, 0xCu);
      sub_100003324(v14);
      sub_100002BB8(v14);
      sub_100002BB8(v13);
    }

    else
    {

      sub_10007152C(v5);
    }
  }

  return 0;
}

uint64_t sub_1000BD5AC()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for AppExtensionIdentity();
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v1[6] = sub_100002C58();
  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BD654()
{
  sub_100002BAC();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v0[7] = type metadata accessor for EKExtensionProcess(0);
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1000BD718;

  return sub_1000BD9A0();
}

uint64_t sub_1000BD718(uint64_t a1)
{
  sub_100001EF4();
  v5 = v4;
  v6 = *v2;
  sub_100002B9C();
  *v7 = v6;
  *(v5 + 72) = v1;

  if (!v1)
  {
    *(v5 + 80) = a1;
  }

  sub_1000059F8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000BD830()
{
  sub_100002BAC();
  v1 = v0[10];
  v2 = v0[2];
  v2[3] = v0[7];
  v2[4] = &off_1001B11A0;
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000BD8A4()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000BD908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000BD5AC();
}

uint64_t sub_1000BD9A0()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for AppExtensionProcess();
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v1[6] = sub_100002C58();
  v5 = type metadata accessor for AppExtensionProcess._InstanceIdentifier();
  sub_100002F04(v5);
  v1[7] = sub_100002C58();
  v6 = type metadata accessor for AppExtensionIdentity();
  v1[8] = v6;
  sub_100002F44(v6);
  v1[9] = v7;
  v1[10] = sub_100002C58();
  v8 = type metadata accessor for AppExtensionProcess.Configuration();
  v1[11] = v8;
  sub_100002F44(v8);
  v1[12] = v9;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000BDB14()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[2];
  swift_defaultActor_initialize();
  (*(v6 + 16))(v5, v8, v7);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();
  AppExtensionProcess._InstanceIdentifier.init()();
  AppExtensionProcess.Configuration._instanceIdentifier.setter();
  (*(v4 + 16))(v1, v2, v3);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1000BDC54;
  v10 = v0[13];
  v11 = v0[6];

  return AppExtensionProcess.init(configuration:)(v11, v10);
}

uint64_t sub_1000BDC54()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;
  *(v4 + 128) = v0;

  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000BDD54()
{
  sub_100002BAC();
  v1 = v0[3];
  (*(v0[5] + 32))(v1 + OBJC_IVAR____TtC13modelmanagerd18EKExtensionProcess_process, v0[6], v0[4]);

  return _swift_task_switch(sub_1000BDDD4, v1, 0);
}

uint64_t sub_1000BDDD4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[9] + 8))(v0[2], v0[8]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[3];

  return v4(v5);
}

uint64_t sub_1000BDEB4()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[2];
  (*(v0[12] + 8))(v0[14], v0[11]);
  type metadata accessor for EKExtensionProcess(0);
  swift_defaultActor_destroy();
  (*(v1 + 8))(v3, v2);
  swift_deallocPartialClassInstance();

  sub_100001F00();

  return v4();
}

unint64_t sub_1000BDFE8()
{
  result = AppExtensionProcess._auditToken.getter();
  if ((v1 & 0x8000000000000000) == 0)
  {
    return HIDWORD(v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BE020@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for XPCSession.InitializationOptions();
  v4 = sub_100002F04(v3);
  __chkstk_darwin(v4);
  sub_100002B8C();
  result = AppExtensionProcess._makeLibXPCConnection()();
  if (!v1)
  {
    v6 = type metadata accessor for XPCSession();
    swift_unknownObjectRetain();
    static XPCSession.InitializationOptions.none.getter();
    v7 = XPCSession.__allocating_init(fromConnection:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
    a1[3] = v6;
    a1[4] = &protocol witness table for XPCSession;
    result = swift_unknownObjectRelease();
    *a1 = v7;
  }

  return result;
}

void sub_1000BE144(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for XPCReceivedMessage();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  if (qword_1001B8928 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000641C(v11, qword_1001BAE10);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    v12(v8, v10, v4);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v5 + 8))(v10, v4);
    v21 = sub_100004A3C(v18, v20, &v23);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected message received from InferenceProvider XPC service: %s", v16, 0xCu);
    sub_100003324(v17);

    a2 = v22;
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  a2[3] = &type metadata for String;
  a2[4] = &protocol witness table for String;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
}

void sub_1000BE3DC(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B8928 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000641C(v6, qword_1001BAE10);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_1000BF5EC();
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Connection to InferenceProvider XPC service cancelled: %@", v10, 0xCu);
    sub_10000ED30(v11, &qword_1001B8F68, &qword_10016FB80);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1000BE630()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd18EKExtensionProcess_process;
  type metadata accessor for AppExtensionProcess();
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BE6C4(uint64_t a1)
{
  result = type metadata accessor for AppExtensionProcess();
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

uint64_t sub_1000BE760()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000BE780, v2, 0);
}

uint64_t sub_1000BE780()
{
  sub_100002BAC();
  v1 = sub_1000BDFE8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000BE7DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000BE7FC, v3, 0);
}

uint64_t sub_1000BE7FC()
{
  sub_1000BE020(*(v0 + 16));
  sub_100001F00();

  return v1();
}

void sub_1000BE874(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EKExtensionIdentity(0);
  v5 = sub_100002F44(v4);
  v7 = v6;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v10 = v9 - v8;
  v11 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v12 = sub_100002F04(v11);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = [a1 extensionIdentities];
  sub_10000E2C0(0, &qword_1001BB058, _EXExtensionIdentity_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_10000E8DC(v16);
  if (!v17)
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_12:
    v23 = type metadata accessor for TaskPriority();
    sub_100009BFC(v14, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v2;
    v24[5] = v20;
    v25 = v2;
    sub_1000652FC();

    return;
  }

  v18 = v17;
  v29 = _swiftEmptyArrayStorage;
  sub_100070FC8();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v27 = v14;
    v28 = v2;
    v19 = 0;
    v20 = v29;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      AppExtensionIdentity.init(_:)();
      v29 = v20;
      v22 = v20[2];
      if (v22 >= v20[3] >> 1)
      {
        sub_100070FC8();
        v20 = v29;
      }

      ++v19;
      v20[2] = v22 + 1;
      sub_1000BF4C8(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22);
    }

    while (v18 != v19);

    v14 = v27;
    v2 = v28;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1000BEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000BEB34, 0, 0);
}

uint64_t sub_1000BEB34()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd15EKQueryDelegate_onUpdate);
  sub_1000706AC();
  v3 = v2;
  v0[4] = v2;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000BEC44;

  return v6(v3);
}

uint64_t sub_1000BEC44()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

id sub_1000BEDE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000BEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 32));
  sub_1000BF090((v3 + 40));
  os_unfair_lock_unlock((v3 + 32));
  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a1 + 40;
    do
    {
      v10 = objc_allocWithZone(_EXQuery);

      v11 = String._bridgeToObjectiveC()();

      [v10 initWithExtensionPointIdentifier:v11];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  v12 = type metadata accessor for EKQueryDelegate();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC13modelmanagerd15EKQueryDelegate_onUpdate];
  *v14 = a2;
  *(v14 + 1) = a3;
  v22.receiver = v13;
  v22.super_class = v12;

  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = objc_allocWithZone(_EXQueryController);
  sub_10000E2C0(0, &qword_1001BB038, _EXQuery_ptr);
  v17 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithQueries:isa delegate:{v17, v22.receiver, v22.super_class}];

  [v19 resume];
  os_unfair_lock_lock((v4 + 16));

  *(v4 + 24) = v17;
  v20 = v17;
  os_unfair_lock_unlock((v4 + 16));
  os_unfair_lock_lock((v4 + 32));

  *(v4 + 40) = v19;
  v21 = v19;
  os_unfair_lock_unlock((v4 + 32));
}

void sub_1000BF090(void *a1)
{
  if (!*a1)
  {
    if (qword_1001B8928 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000641C(v1, qword_1001BAE10);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "EK startQuery was called more than once", v4, 2u);
    }
  }
}

void *sub_1000BF178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UUID();
  sub_100002BDC();
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, a1);
  a2[3] = type metadata accessor for EKExtensionIdentity(0);
  a2[4] = &off_1001B11E0;
  v10 = sub_10000366C(a2);
  result = sub_1000BD074(v8, v10);
  if (v2)
  {
    return sub_1000B5008(a2);
  }

  return result;
}

uint64_t sub_1000BF268()
{
  sub_10000ED30(v0 + 24, &qword_1001BB040, &qword_100171B30);
  sub_10000ED30(v0 + 40, &qword_1001BB048, &unk_100171B38);
  return v0;
}

uint64_t sub_1000BF2B0()
{
  sub_1000BF268();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000BF308()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

id sub_1000BF37C(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v5 = [v2 initWithUUID:isa error:&v13];

  v6 = v13;
  if (v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1000BF4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006F558;

  return sub_1000BEB14(a1, v4, v5, v7, v6);
}

unint64_t sub_1000BF5EC()
{
  result = qword_1001BB060;
  if (!qword_1001BB060)
  {
    type metadata accessor for XPCRichError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB060);
  }

  return result;
}

uint64_t sub_1000BF66C(uint64_t a1)
{
  result = type metadata accessor for AppExtensionIdentity();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BF6D8(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28[1] = v1;
  v37 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v5, 0);
  v6 = v37;
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v36 = a1 + 56;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v36 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v35 = v9;
      v34 = v8;
      v13 = v32;
      sub_1000192DC(*(a1 + 48) + *(v33 + 72) * v10, v32);
      v15 = *v13;
      v14 = v13[1];

      result = sub_100019338(v13);
      v37 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10002045C((v16 > 1), v17 + 1, 1);
        v6 = v37;
      }

      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      if (v35)
      {
        goto LABEL_29;
      }

      a1 = v31;
      v19 = 1 << *(v31 + 32);
      if (v10 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v36 + 8 * v12);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v22 = v30;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v22 = v30;
        v25 = (v29 + 8 * v12);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100016E94(v10, v34, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v34, 0);
      }

LABEL_19:
      if (++v11 == v22)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v19;
      if (v19 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000C0078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0124, 0, 0);
}

uint64_t sub_1000C0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  v19 = *(v18 + 136);
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v20 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v20);
    sub_1000056C4();
    sub_100011B14(v21, v22, &unk_1001720DC);
    sub_100001F70();
    result = Set.Iterator.init(_cocoa:)();
    v19 = *(v18 + 16);
    v24 = *(v18 + 24);
    v25 = *(v18 + 32);
    v26 = *(v18 + 40);
    v27 = *(v18 + 48);
  }

  else
  {
    sub_100011E24();
    v24 = v19 + 56;
    v25 = ~v28;
    sub_10000A5E8();
    v27 = v29 & v30;

    v26 = 0;
  }

  v69 = v25;
  v70 = (v18 + 56);
  v31 = (v25 + 64) >> 6;
  v71 = v24;
  v72 = v19;
  v73 = v31;
  if (v19 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v32 = v26;
    v33 = v26;
    if (!v27)
    {
      break;
    }

LABEL_9:
    sub_1000062A0();
    v36 = v35 & v34;
    sub_10004D404();
    if (!v25)
    {
LABEL_24:
      v59 = sub_1000125D0();
      sub_100019334(v59);
      v60 = swift_task_alloc();
      *(v18 + 176) = v60;
      *v60 = v18;
      v60[1] = sub_1000C0504;
      sub_1000494E8();
      sub_1000037A0();

      return v63(v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, a14, sub_1000C0838, a16, a17, a18);
    }

    while (1)
    {
      v74 = v36;
      v39 = *(v18 + 160);
      v38 = *(v18 + 168);
      v41 = *(v18 + 144);
      v40 = *(v18 + 152);
      type metadata accessor for TaskPriority();
      sub_100042D9C();
      sub_100003978();
      sub_100009BFC(v42, v43, v44, v31);
      v45 = swift_allocObject();
      v45[2] = 0;
      a14 = v45 + 2;
      v45[3] = 0;
      v45[4] = v41;
      v45[5] = v40;
      v45[6] = v25;
      v46 = sub_1000071D0();
      sub_10001E72C(v46, v47, &qword_1001BB050, &qword_10016F6E0);
      sub_10000C6C0(v39, 1, v31);
      sub_100053114();

      if (v38 == 1)
      {
        v48 = sub_100008004();
        sub_10000ED84(v48, v49);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_1000076C8();
        v50 = sub_100001F70();
        v51(v50);
      }

      if (*a14)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100004CA4();
        v52 = dispatch thunk of Actor.unownedExecutor.getter();
        v54 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      v55 = **(v18 + 128);

      if (v54 | v52)
      {
        v56 = v18 + 56;
        *v70 = 0;
        *(v18 + 64) = 0;
        *(v18 + 72) = v52;
        *(v18 + 80) = v54;
      }

      else
      {
        v56 = 0;
      }

      v24 = v71;
      v25 = *(v18 + 168);
      *(v18 + 88) = 1;
      *(v18 + 96) = v56;
      *(v18 + 104) = v55;
      swift_task_create();

      v57 = sub_100008004();
      result = sub_10000ED84(v57, v58);
      v26 = v33;
      v27 = v74;
      v31 = v73;
      if ((v72 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v37 = __CocoaSet.Iterator.next()();
      if (v37)
      {
        *(v18 + 120) = v37;
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v25 = *(v18 + 112);
        v33 = v26;
        v36 = v27;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      goto LABEL_24;
    }

    ++v32;
    if (*(v24 + 8 * v33))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C0504()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000C0624(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1000C071C;

  return v9(v6 + 16);
}

uint64_t sub_1000C071C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C0838(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1000C08D8, v4, v6);
}

uint64_t sub_1000C08D8()
{
  sub_100002BAC();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    sub_100002F54();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    sub_100065020(&qword_1001BB400, &qword_100171D88);
    sub_1000060CC();
    *v3 = v4;
    v5 = sub_1000035B8();

    return ThrowingTaskGroup.next(isolation:)(v5);
  }
}

uint64_t sub_1000C09D8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1000C0BD8;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1000C0ADC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000C0ADC()
{
  sub_100001ED0();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      sub_100001F00();

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  sub_100065020(&qword_1001BB400, &qword_100171D88);
  sub_1000060CC();
  *v4 = v5;
  v6 = sub_1000035B8();

  return ThrowingTaskGroup.next(isolation:)(v6);
}

uint64_t sub_1000C0BD8()
{
  sub_100001ED0();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    sub_100001F00();

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    sub_100065020(&qword_1001BB400, &qword_100171D88);
    sub_1000060CC();
    *v4 = v5;
    v6 = sub_1000035B8();

    return ThrowingTaskGroup.next(isolation:)(v6);
  }
}

uint64_t sub_1000C0CE0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB110);
  sub_10000641C(v0, qword_1001BB110);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C0D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1000C10D4(uint64_t a1, unsigned int *a2)
{
  sub_100005B00();
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002B8C();
  sub_1000281B0();
  (*(v7 + 104))(v3, *a2, State);
  LOBYTE(a2) = sub_100116D68(v2, v3);
  v9 = sub_1000DB0E0();
  v10(v9);
  return a2 & 1;
}

BOOL sub_1000C11B0()
{
  sub_10002A104();
  type metadata accessor for LoadState();
  sub_100002BDC();
  __chkstk_darwin(v1);
  sub_100002B8C();
  v4 = v3 - v2;
  v5 = sub_1000DB320();
  v6(v5);
  v7 = sub_1000060A4();
  if (sub_100116D68(v7, v8))
  {
    v9 = sub_10000D01C();
    v10(v9);
    return *(*(v0 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
  }

  v11 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = sub_100116D68(v0 + *(v11 + 20), v4);
  v13 = sub_10000D01C();
  v14(v13);
  if (v12)
  {
    return *(*(v0 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
  }

  return 0;
}

uint64_t sub_1000C12DC()
{
  v0 = sub_100005B00();
  type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v0);
  return static Date.< infix(_:_:)() & 1;
}

uint64_t sub_1000C1318()
{
  sub_100004CBC();
  swift_beginAccess();

  v1 = sub_100001F70();
  sub_1000B55EC(v1, v2);
  sub_100003170();

  return v0;
}

BOOL sub_1000C16DC(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  __chkstk_darwin(State);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for LoadState.loaded(_:), State);
  v6 = sub_100116D68(a1, v5);
  (*(v3 + 8))(v5, State);
  if ((v6 & 1) != 0 && (v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), !*(*(a1 + *(v7 + 44)) + 16)))
  {
    return *(*(a1 + *(v7 + 48)) + 16) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_1000C1814()
{
  sub_1000055B0();
  sub_1000494E8();
  type metadata accessor for Date();
  sub_100002BDC();
  v1 = v0;
  __chkstk_darwin(v2);
  type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_10002B0EC();
  dispatch thunk of static Comparable.>= infix(_:_:)();
  v3 = *(v1 + 16);
  v4 = sub_1000DB374();
  v5 = v3(v4);
  __chkstk_darwin(v5);
  sub_100003754();
  dispatch thunk of static Comparable.>= infix(_:_:)();
  v6 = sub_1000DB380();
  v3(v6);
  static Date.< infix(_:_:)();
  v7 = *(v1 + 8);
  v8 = sub_1000DB38C();
  v7(v8);
  v9 = sub_1000062B0();
  v7(v9);
  sub_100002EEC();
}

uint64_t sub_1000C19A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000C19C0, v2);
}

uint64_t sub_1000C19C0()
{
  sub_10000636C();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BB110);
  sub_100001F0C();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    sub_10000A05C();
    v4 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100003DF0();
    *v4 = 136315138;
    v5 = sub_10000CF04();
    *(v4 + 4) = sub_100004A3C(v5, v6, v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Enqueuing request to purge %s from all relavent assets", v4, 0xCu);
    sub_100002C88();
    sub_1000039CC();
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = swift_allocObject();
  v0[5] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;

  v12 = swift_task_alloc();
  v0[6] = v12;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  *v12 = v0;
  v12[1] = sub_1000C1BF8;
  sub_100003770();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v13, v14, v15);
}

uint64_t sub_1000C1BF8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1000C1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  return _swift_task_switch(sub_1000C1D10, a2, 0);
}

uint64_t sub_1000C1D10()
{
  sub_1000033DC();
  v0 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();

  sub_10000D154();
  v4 = sub_1000D600C(v1, v2, v3);
  sub_100002D24();
  swift_beginAccess();
  sub_1000D9DB4(v4, v5);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FD0(v6, qword_1001BB110);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (sub_100003A34(v8))
  {
    sub_100002F10();
    v9 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v9 = 134218242;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v4 + 16);
    }

    *(v9 + 4) = v10;

    *(v9 + 12) = 2080;
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000056C4();
    sub_100011B14(v11, v12, &unk_1001720DC);
    Set.description.getter();
    sub_1000DB3D0();

    v13 = sub_100007B78();
    v16 = sub_100004A3C(v13, v14, v15);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Purging %ld assets %s", v9, 0x16u);
    sub_100003324(v0);
    sub_1000039CC();

    sub_100002BD0();
  }

  else
  {
    sub_1000DAF00();
  }

  sub_100002F54();

  return v17();
}

uint64_t sub_1000C1F40()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000C1FB8()
{
  sub_100001ED0();
  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);

  sub_100001F00();

  return v1();
}

uint64_t sub_1000C2050()
{
  sub_100002BAC();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 360) = v3;
  *(v1 + 136) = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 160) = v5;
  sub_100002F44(v5);
  *(v1 + 168) = v6;
  *(v1 + 176) = sub_100002C58();
  v7 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v7);
  *(v1 + 184) = sub_10000F0C0();
  *(v1 + 192) = swift_task_alloc();
  v8 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v8);
  *(v1 + 200) = sub_100002C58();
  v9 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v9);
  *(v1 + 208) = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C218C()
{
  sub_100002BAC();
  sub_1000DAF50(*(v0 + 152));
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 216) = v1;
  *v1 = v2;
  v1[1] = sub_1000C2228;
  v3 = sub_10004AE38();

  return sub_1000253E8(v3, v4);
}

uint64_t sub_1000C2228()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v25;
  a22 = v26;
  sub_100003284();
  a20 = v22;
  sub_100024640(v27, v28, &qword_1001B9CB0, &qword_100171E70);
  if (v22[15])
  {
    sub_1000DB4A4();
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v22[29] = sub_10000641C(v29, qword_1001BB110);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = sub_100002F80(v31);
    v33 = v22[17];
    if (v32)
    {
      sub_100002F10();
      v34 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v34 = 134218242;
      *(v34 + 4) = *(v33 + 16);

      *(v34 + 12) = 2080;
      if (*(v33 + 16) == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = 115;
      }

      if (*(v33 + 16) == 1)
      {
        v36 = 0xE000000000000000;
      }

      else
      {
        v36 = 0xE100000000000000;
      }

      v37 = sub_100004A3C(v35, v36, &a10);

      *(v34 + 14) = v37;
      sub_100003DD0();
      _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
      sub_100003324(v24);
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {
    }

    type metadata accessor for CustomAssetConfiguration();
    v22[30] = Dictionary.init(dictionaryLiteral:)();
    v63 = swift_task_alloc();
    v22[31] = v63;
    *v63 = v22;
    v63[1] = sub_1000C282C;
    sub_1000031B8(v22[17]);
    sub_100003540();

    return sub_100023A48(v64, v65, v66);
  }

  else
  {
    sub_10000ED84((v22 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v43 = v22[21];
    v44 = type metadata accessor for Logger();
    sub_10000641C(v44, qword_1001BB110);
    v45 = sub_100008440();
    v46(v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = sub_1000038BC(v48);
    v50 = v22[22];
    if (v49)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v23 = 136315138;
      sub_10000950C();
      sub_100011B14(v51, v52, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100042FBC();
      sub_100045E40();
      v53 = sub_1000194A4();
      v54(v53);
      v55 = sub_10000CD1C();
      sub_100004A3C(v55, v56, v57);
      sub_100005974();

      *(v23 + 4) = v50;
      sub_1000033FC();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      sub_100003324(v43);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v69 = sub_1000194A4();
      v70(v69);
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v71, v72, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    v74 = v73;
    *v73 = InferenceProviderDescriptor.description.getter();
    v74[1] = v75;
    sub_100006098();
    (*(v76 + 104))(v74);
    swift_willThrow();
    sub_10000ED84((v22 + 2), &qword_1001B9CB0);

    sub_1000DABBC();
    sub_100003540();

    return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000C27AC()
{
  sub_10000639C();
  sub_100003884();
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000C282C()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100003744();
  *v5 = v4;
  *(v7 + 256) = v6;
  *(v7 + 264) = v0;

  sub_10000CC7C();

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C2958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  sub_10002B524();
  v11[34] = v12;
  v13 = sub_10000E8DC(v12);
  v11[35] = v13;
  if (v13)
  {
    v14 = v11[34] & 0xC000000000000001;
    sub_100022A7C();
    if (v14)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v11[34] + 32);
    }

    v11[36] = v15;
    v11[37] = 1;
    v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100018DEC(v16);
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    v17 = sub_10000BF00();
    sub_100009BFC(v17, v18, v19, v20);
    v11[38] = type metadata accessor for AuditToken();
    sub_100003978();
    sub_100009BFC(v21, v22, v23, v24);
    v25 = swift_task_alloc();
    v26 = sub_100053C2C(v25);
    *v26 = v27;
    sub_100005A30(v26);
    sub_100023A30();

    return sub_100047A80();
  }

  else
  {

    Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (sub_10002BA24(v30))
    {
      v31 = sub_100007648();
      sub_10000A240(v31);
      sub_100053BD8(&_mh_execute_header, v32, v33, "Successfully acquired assets");
      sub_100002BD0();
    }

    sub_10005C1C0();
    sub_100043D74();
    sub_1000286AC(v10, v34);

    sub_100003324(v11 + 7);
    sub_10000ED84((v11 + 2), &qword_1001B9CB0);

    sub_100002F54();
    sub_100023A30();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }
}

uint64_t sub_1000C2B58()
{
  sub_10000639C();
  sub_100003884();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 320) = v1;

  sub_10000CC7C();
  v6 = *(v5 + 208);
  v7 = *(v0 + 200);
  sub_10000ED84(*(v0 + 192), &qword_1001BB3F8);
  sub_10000ED84(v7, &qword_1001BB408);
  sub_10000ED84(v6, &qword_1001BB410);
  sub_100007088();
  sub_100003D20();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  if (*(v10 + 360))
  {
    v11 = swift_task_alloc();
    v12 = sub_1000530C4(v11);
    *v12 = v13;
    v12[1] = sub_1000C2F70;
    sub_1000031B8(*(v10 + 288));
    sub_100023A30();

    return sub_1000486EC();
  }

  else
  {

    v16 = *(v10 + 296);
    if (v16 == *(v10 + 280))
    {

      Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (sub_10002BA24(v17))
      {
        v18 = sub_100007648();
        sub_10000A240(v18);
        sub_100053BD8(&_mh_execute_header, v19, v20, "Successfully acquired assets");
        sub_100002BD0();
      }

      sub_10005C1C0();
      sub_100043D74();
      sub_1000286AC(v16, v21);

      sub_100003324((v10 + 56));
      sub_10000ED84(v10 + 16, &qword_1001B9CB0);

      sub_100002F54();
      sub_100023A30();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
    }

    else
    {
      v30 = *(v10 + 272) & 0xC000000000000001;
      sub_100022A7C();
      if (v30)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = result;
      }

      else
      {
        v31 = *(*(v10 + 272) + 8 * v16 + 32);
      }

      *(v10 + 288) = v31;
      *(v10 + 296) = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
      }

      else
      {
        v32 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
        sub_100018DEC(v32);
        sub_100065020(&qword_1001B94F0, &unk_100172060);
        v33 = sub_10000BF00();
        sub_100009BFC(v33, v34, v35, v36);
        *(v10 + 304) = type metadata accessor for AuditToken();
        sub_100003978();
        sub_100009BFC(v37, v38, v39, v40);
        v41 = swift_task_alloc();
        v42 = sub_100053C2C(v41);
        *v42 = v43;
        sub_100005A30(v42);
        sub_100023A30();

        return sub_100047A80();
      }
    }
  }

  return result;
}

uint64_t sub_1000C2F70()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C3084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();

  v11 = v10[37];
  if (v11 == v10[35])
  {

    Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (sub_10002BA24(v12))
    {
      v13 = sub_100007648();
      sub_10000A240(v13);
      sub_100053BD8(&_mh_execute_header, v14, v15, "Successfully acquired assets");
      sub_100002BD0();
    }

    sub_10005C1C0();
    sub_100043D74();
    sub_1000286AC(v11, v16);

    sub_100003324(v10 + 7);
    sub_10000ED84((v10 + 2), &qword_1001B9CB0);

    sub_100002F54();
    sub_100023A30();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    v26 = v10[34] & 0xC000000000000001;
    sub_100022A7C();
    if (v26)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = result;
    }

    else
    {
      v27 = *(v10[34] + 8 * v11 + 32);
    }

    v10[36] = v27;
    v10[37] = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v28 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_100018DEC(v28);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v29 = sub_10000BF00();
      sub_100009BFC(v29, v30, v31, v32);
      v10[38] = type metadata accessor for AuditToken();
      sub_100003978();
      sub_100009BFC(v33, v34, v35, v36);
      v37 = swift_task_alloc();
      v38 = sub_100053C2C(v37);
      *v38 = v39;
      sub_100005A30(v38);
      sub_100023A30();

      return sub_100047A80();
    }
  }

  return result;
}

uint64_t sub_1000C3288()
{
  sub_10000639C();
  sub_100003884();
  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000C3328()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 184);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_10000ED84(v2, &qword_1001BB3F8);

  return _swift_task_switch(sub_1000C3478, v3, 0);
}

uint64_t sub_1000C3478()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 256);
  swift_willThrow();
  sub_1000286AC(v1, v2);

  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  sub_1000DB180();

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000C3534()
{
  sub_10000639C();
  sub_100003884();
  v0[43] = v0[40];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v3 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v4;
    *v3 = v4;
    sub_1000031C4();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_10000ED84(v3, &qword_1001B8F68);
    sub_1000039CC();

    sub_10000BFCC();
  }

  v10 = v0[38];

  v11 = sub_10000BF00();
  sub_100009BFC(v11, v12, v13, v10);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_1000C3328;
  sub_1000031B8(v0[34]);
  sub_100003D20();

  return sub_1000D5B74(v15, v16);
}

uint64_t sub_1000C369C()
{
  sub_10000639C();
  sub_100003884();
  v0[43] = v0[42];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000A098())
  {
    sub_10000A05C();
    swift_slowAlloc();
    v3 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v4;
    *v3 = v4;
    sub_1000031C4();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_10000ED84(v3, &qword_1001B8F68);
    sub_1000039CC();

    sub_10000BFCC();
  }

  v10 = v0[38];

  v11 = sub_10000BF00();
  sub_100009BFC(v11, v12, v13, v10);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_1000C3328;
  sub_1000031B8(v0[34]);
  sub_100003D20();

  return sub_1000D5B74(v15, v16);
}

uint64_t sub_1000C3804()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  sub_1000DB098(v1);
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_1000C38E4;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000C38E4()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C39E4()
{
  sub_100002BAC();

  v0 = sub_10000C634();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000C4258()
{
  sub_10001881C();
  sub_100003884();

  sub_100015660();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000C4B10()
{
  sub_10001881C();
  sub_100003884();

  sub_100015660();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000C4BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 82) = v11;
  *(v8 + 81) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 80) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 64) = *a1;
  return _swift_task_switch(sub_1000C4BE8, 0, 0);
}

uint64_t sub_1000C4D98()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000C4E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1000C4F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_10000ED84(v12 + 16, &qword_1001B9CB0);
  sub_100003324((v12 + 56));
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1000C4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;
  v29 = sub_1000DB02C();
  v30(v29);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  v32 = sub_1000264AC();
  v33 = v24[48];
  if (v32)
  {
    sub_100002F10();
    swift_slowAlloc();
    a10 = sub_1000039DC();
    sub_1000033D0();
    v56 = swift_slowAlloc();
    a13 = v56;
    *v31 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_1000494F4();
    sub_1000530B8();
    v34 = sub_100004CB0();
    v33(v34);
    sub_100004A3C(v26, v25, &a13);
    sub_100019498();

    sub_100003760();
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *a10 = v35;
    sub_10000C720();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    sub_10000ED84(a10, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v56);
    sub_100002BD0();

    sub_10000BFCC();
  }

  else
  {

    v41 = sub_100004CB0();
    v33(v41);
  }

  sub_100010BB8(v24 + 7);
  v55 = sub_1000DB334();
  sub_100004B94();
  v57 = v42 + *v42;
  v43 = swift_task_alloc();
  v44 = sub_100050FE4(v43);
  *v44 = v45;
  sub_1000185FC(v44);
  sub_100003D04();

  return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v55, v57, a13, a14, a15, a16);
}

uint64_t sub_1000C5244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;

  v29 = sub_1000DB02C();
  v30(v29);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  v32 = sub_1000264AC();
  v33 = v24[48];
  if (v32)
  {
    sub_100002F10();
    swift_slowAlloc();
    a10 = sub_1000039DC();
    sub_1000033D0();
    v56 = swift_slowAlloc();
    a13 = v56;
    *v31 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_1000494F4();
    sub_1000530B8();
    v34 = sub_100004CB0();
    v33(v34);
    sub_100004A3C(v26, v25, &a13);
    sub_100019498();

    sub_100003760();
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *a10 = v35;
    sub_10000C720();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    sub_10000ED84(a10, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v56);
    sub_100002BD0();

    sub_10000BFCC();
  }

  else
  {

    v41 = sub_100004CB0();
    v33(v41);
  }

  sub_100010BB8(v24 + 7);
  v55 = sub_1000DB334();
  sub_100004B94();
  v57 = v42 + *v42;
  v43 = swift_task_alloc();
  v44 = sub_100050FE4(v43);
  *v44 = v45;
  sub_1000185FC(v44);
  sub_100003D04();

  return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v55, v57, a13, a14, a15, a16);
}

uint64_t sub_1000C54A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_1000286AC(*(v12 + 400), v13);

  sub_10000ED84(v12 + 16, &qword_1001B9CB0);
  sub_100003324((v12 + 56));
  sub_10001E5B8();

  sub_100001F00();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1000C5580()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C5B5C()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  sub_10000CC7C();
  sub_10000ED84(*(v4 + 200), &qword_1001BB3F8);
  sub_100007088();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C70B0()
{
  sub_10000639C();
  sub_100003884();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v6);
  v1[7] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v7);
  v1[8] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[9] = v8;
  sub_100002F44(v8);
  v1[10] = v9;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v1[15] = v10;
  *v10 = v1;
  v10[1] = sub_1000C723C;
  sub_10000CF04();
  sub_100003D20();

  return sub_100023A48(v11, v12, v13);
}

uint64_t sub_1000C723C()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (v0)
  {

    sub_100001F00();
    sub_100007BB8();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_100007BB8();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_1000C73A0()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[6];
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = sub_100032338();
  sub_100028248(v4, v5, v6);

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1000C7474;
  sub_1000031B8(v0[16]);
  sub_100003D20();

  return sub_10003A608();
}

uint64_t sub_1000C7474()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C7C64()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v1;

  sub_10000CC7C();
  v6 = *(v5 + 64);
  sub_10000ED84(*(v0 + 56), &qword_1001BB408);
  sub_10000ED84(v6, &qword_1001BB410);
  sub_100007088();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C8744()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_10000C634();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000C8858()
{
  sub_10000636C();
  v1 = *(v0 + 128);
  swift_willThrow();
  sub_1000286AC(v1, v2);

  sub_100001F00();
  sub_100003770();

  __asm { BRAA            X1, X16 }
}

void sub_1000C8B3C(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v39 = a3;
  v4 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_1000192DC(v17 + v16, v15);
  v35 = *(v5 + 16);
  v35(v10, v39, v4);
  sub_10007F3D4();
  v18 = *(v5 + 8);
  v37 = v5 + 8;
  v18(v12, v4);
  swift_beginAccess();
  sub_10003DA78(v15, v17 + v16);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000641C(v19, qword_1001BB110);
  v20 = v36;
  v35(v36, v39, v4);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v18;
    v24 = v23;
    v38[0] = swift_slowAlloc();
    *v24 = 136315394;

    v25 = v20;
    v26 = v4;
    v27 = sub_100027434();
    v29 = v28;

    v30 = sub_100004A3C(v27, v29, v38);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v39(v25, v26);
    v34 = sub_100004A3C(v31, v33, v38);

    *(v24 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "Marked asset %s in use by execution group %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18(v20, v4);
  }
}

void sub_1000C8F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_1000192DC(v13 + v12, v11);
  sub_100045518();
  swift_beginAccess();
  sub_10003DA78(v11, v13 + v12);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000641C(v14, qword_1001BB110);
  (*(v6 + 16))(v8, a3, v5);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v17 = 136315394;

    v18 = sub_100027434();
    v20 = v19;

    v21 = sub_100004A3C(v18, v20, v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v25 = sub_100004A3C(v22, v24, v28);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Marked asset %s as no longer associated with foreground session %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1000C92F8()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = _s6PolicyVMa_0(0);
  v1[7] = v3;
  sub_100002F04(v3);
  v1[8] = sub_10000F0C0();
  v1[9] = swift_task_alloc();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v12[10] = sub_10000641C(v13, qword_1001BB110);
  v14 = sub_1000062B0();
  sub_1000192DC(v14, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = sub_100002F80(v17);
  v19 = v12[9];
  if (v18)
  {
    v20 = v12[8];
    sub_10000A05C();
    v21 = swift_slowAlloc();
    sub_1000033D0();
    v37 = swift_slowAlloc();
    *v21 = 136315138;
    sub_1000192DC(v19, v20);
    sub_100007B78();
    String.init<A>(describing:)();
    sub_1000DB3D0();
    sub_100019338(v19);
    v22 = sub_100007B78();
    v25 = sub_100004A3C(v22, v23, v24);

    *(v21 + 4) = v25;
    sub_100003DD0();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    sub_100003324(v37);
    sub_10000BFCC();

    sub_100002BD0();
  }

  else
  {

    sub_1000DACDC();
    sub_100019338(v19);
  }

  v32 = v12[5];
  v31 = v12[6];
  v33 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100002D24();
  swift_beginAccess();
  sub_1000DA6C4(v32, v31 + v33);
  swift_endAccess();
  v34 = swift_task_alloc();
  v12[11] = v34;
  *v34 = v12;
  sub_1000DAFC0(v34);
  sub_100016688();

  return sub_10011CAD8();
}

uint64_t sub_1000C9590()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_1000C96C0;

  return sub_10011861C();
}

uint64_t sub_1000C96C0()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1000C97F4;

  return sub_100042FEC();
}

uint64_t sub_1000C97F4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C98EC()
{
  sub_100001ED0();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (sub_100002F80(v1))
  {
    v2 = sub_100007648();
    sub_10000A240(v2);
    sub_100003DD0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100002BD0();
  }

  sub_100001F00();

  return v8();
}

double sub_1000C99A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v8 = *&v7[v3];
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  sub_1000241C8(sub_1000DAB80, v10, v8);
  sub_100009540();

  if (a3)
  {
    sub_1001231E0(*(a3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path), *(a3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path + 8));
  }

  return result;
}

uint64_t sub_1000C9A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return sub_100004B70(sub_1000C9A90, v3);
}

uint64_t sub_1000C9A90()
{
  sub_100002BAC();
  sub_1000DAF50(*(v0 + 160));
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 168) = v1;
  *v1 = v2;
  v1[1] = sub_1000C9B2C;
  v3 = sub_10004AE38();

  return sub_1000253E8(v3, v4);
}

uint64_t sub_1000C9B2C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9C40()
{
  sub_10000636C();
  sub_100024640(v1, v2, &qword_1001B9CB0, &qword_100171E70);
  if (!v0[15])
  {
    sub_1000DACD0();
    sub_10000ED84(v9, v10);
    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v11, v12, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    v14 = v13;
    *v13 = InferenceProviderDescriptor.description.getter();
    v14[1] = v15;
    sub_100006098();
    (*(v16 + 104))(v14);
    swift_willThrow();
    sub_1000DACD0();
    sub_10000ED84(v17, v18);
    sub_100001F00();
    sub_100003770();

    __asm { BRAA            X1, X16 }
  }

  sub_1000DB4A4();
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1000C9E18;
  sub_1000031B8(v0[17]);
  sub_100003770();

  return sub_100023A48(v4, v5, v6);
}

uint64_t sub_1000C9E18()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 192) = v0;

  if (!v0)
  {
    *(v4 + 200) = v3;
  }

  sub_10000E700();
  sub_100003D20();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C9F3C()
{
  sub_100001ED0();
  sub_1000BFCE0(*(v0 + 200));
  sub_100077AD4();
  v1 = sub_100009540();
  sub_1000286AC(v1, v2);

  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  v3 = sub_10000EEAC();

  return v4(v3);
}

uint64_t sub_1000C9FD4()
{
  sub_100002BAC();
  sub_100003324((v0 + 56));
  sub_10000ED84(v0 + 16, &qword_1001B9CB0);
  sub_100001F00();

  return v1();
}

uint64_t sub_1000CA048()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 1004) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CA420()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 1005) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CA708()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 984) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000CA81C()
{
  sub_100003884();
  v1 = *(v0 + 904);
  v2 = *(*(v0 + 888) + 24);
  *(v0 + 1000) = v2;
  sub_100019C80((v1 + v2));
  sub_100004B94();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 992) = v4;
  *v4 = v0;
  v5 = sub_1000071DC(v4);

  return v7(v5);
}

uint64_t sub_1000CA930()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 1006) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CAA28()
{
  v109 = v0;
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = *(v0 + 696);
  v3 = type metadata accessor for Logger();
  sub_10000641C(v3, qword_1001BB110);
  sub_100007E28();
  sub_1000192DC(v2, v1);
  v4 = sub_100001F70();
  sub_1000192DC(v4, v5);
  v6 = sub_100004CA4();
  sub_10001E72C(v6, v7, v8, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 896);
  v14 = *(v0 + 856);
  v15 = *(v0 + 832);
  if (v12)
  {
    v16 = *(v0 + 824);
    sub_1000033D0();
    v17 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    *v17 = 136315650;
    v19 = *v14;
    v18 = v14[1];

    sub_100019A7C();
    sub_100019338(v14);
    v20 = sub_100004A3C(v19, v18, v108);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = *v13;
    v22 = v13[1];

    sub_100011DC0();
    sub_100019338(v13);
    v23 = sub_100004A3C(v21, v22, v108);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    sub_10001E72C(v15, v16, &qword_1001B9D00, &qword_100171E00);
    type metadata accessor for CustomAssetConfiguration();
    sub_1000DB308();
    if (sub_10000C6C0(v24, v25, v26) == 1)
    {
      sub_10000ED84(*(v0 + 824), &qword_1001B9D00);
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v28 = CustomAssetConfiguration.description.getter();
      v27 = v29;
      sub_100006098();
      v30 = sub_100019678();
      v31(v30);
    }

    sub_10000ED84(*(v0 + 832), &qword_1001B9D00);
    v32 = sub_100004A3C(v28, v27, v108);

    *(v17 + 24) = v32;
    sub_10001368C();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    swift_arrayDestroy();
    sub_100061AD8();

    sub_100002BD0();
  }

  else
  {

    sub_10000ED84(v15, &qword_1001B9D00);
    sub_100011DC0();
    sub_100019338(v13);
    sub_100019A7C();
    sub_100019338(v14);
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 904);
  v40 = *(v0 + 848);
  v41 = *(v0 + 720);
  v42 = *(v0 + 712);
  sub_100007E28();
  sub_1000192DC(v43, v40);
  v44 = sub_10000D01C();
  sub_10001E72C(v44, v45, v46, v47);
  v49 = *v39;
  v48 = v39[1];

  v50 = FilePath.string.getter();
  v102 = v51;
  v103 = v50;
  sub_100007130(v39 + v38, v0 + 16);
  sub_100007130(v42, v0 + 56);
  sub_100007130(v41 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager, v0 + 96);
  sub_100007130(v41 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager, v0 + 136);
  v52 = *(v41 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_neuralEngine);
  v53 = *(v0 + 120);
  v54 = sub_100016494(v0 + 96, v53);
  sub_100004F60();
  v56 = v55;
  v57 = sub_100002C58();
  (*(v56 + 16))(v57, v54, v53);
  v58 = *v57;
  v59 = type metadata accessor for InferenceProviderManager(0);
  *(v0 + 200) = v59;
  *(v0 + 208) = &off_1001B0F48;
  *(v0 + 176) = v58;
  v98 = v59;
  v101 = v52;
  if (!v49 && v48 == 0xE000000000000000 || (sub_10000CF04(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {
  }

  v100 = *(v0 + 1006);
  v86 = *(v0 + 912);
  v104 = *(v0 + 904);
  v82 = *(v0 + 848);
  v60 = *(v0 + 840);
  v84 = *(v0 + 800);
  v85 = *(v0 + 784);
  v61 = *(v0 + 776);
  v62 = *(v0 + 768);
  v92 = v62;
  v93 = *(v0 + 792);
  v63 = *(v0 + 760);
  v64 = *(v0 + 752);
  v91 = *(v0 + 816);
  v105 = *(v0 + 736);
  v106 = *(v0 + 728);
  v107 = *(v0 + 744);
  sub_10001E72C(v91, *(v0 + 808), &qword_1001B9D00, &qword_100171E00);
  InferenceProviderAssetDescriptor.init(identifier:version:customAssetConfiguration:)();
  v65 = sub_1000037BC();
  v66 = v61;
  v67(v65);
  sub_100007130(v0 + 16, v0 + 216);
  (*(v63 + 16))(v62, v82 + v60[8], v64);
  v90 = *(v82 + v60[9]);
  v94 = *(v82 + v60[11]);
  v95 = *(v82 + v60[12]);
  sub_100007130(v0 + 56, v0 + 256);
  v89 = *(v82 + v60[10]);
  v99 = *(v82 + v60[15]);
  sub_100007130(v0 + 176, v0 + 296);
  sub_100007130(v0 + 136, v0 + 336);
  v105[13](v107, enum case for LoadState.unloaded(_:), v106);
  v96 = type metadata accessor for Date();
  sub_100002BDC();
  v69 = v68;
  v88 = swift_task_alloc();
  static Date.now.getter();
  v87 = swift_task_alloc();
  static Date.now.getter();
  sub_100016494(v0 + 296, *(v0 + 320));
  sub_100004F60();
  v71 = v70;
  v97 = sub_100002C58();
  (*(v71 + 16))();
  v72 = *v97;
  *(v0 + 400) = v98;
  *(v0 + 408) = &off_1001B0F48;
  *(v0 + 376) = v72;
  type metadata accessor for InferenceProviderAsset(0);
  v73 = swift_allocObject();
  v74 = sub_100016494(v0 + 376, v98);
  sub_100004F60();
  v76 = v75;
  v83 = sub_100002C58();
  (*(v76 + 16))(v83, v74, v98);

  UUID.init()();
  (*(v85 + 8))(v84, v66);
  sub_100003324((v0 + 136));
  sub_100003324((v0 + 56));
  sub_100003324((v0 + 16));
  sub_10000ED84(v91, &qword_1001B9D00);
  sub_100019A7C();
  sub_100019338(v82);
  sub_100003324((v0 + 176));
  (*(v85 + 32))(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v93, v66);
  v77 = (v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path);
  *v77 = v103;
  v77[1] = v102;
  (*(v63 + 32))(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v92, v64);
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable) = v90;
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_shouldAvoidUnload) = v89;
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) = v94;
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_useEnergyEfficientMode) = v95;
  sub_100004A04((v0 + 256), v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
  v78 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v73;
  (v105)[2](OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v73, v107, v106);
  (v105)[4](&v78[v86[5]], v107, v106);
  v78[v86[6]] = 0;
  *&v78[v86[7]] = 0;
  v79 = *(v69 + 32);
  v79(&v78[v86[8]], v88, v96);
  v79(&v78[v86[9]], v87, v96);
  *&v78[v86[10]] = &_swiftEmptySetSingleton;
  *&v78[v86[11]] = &_swiftEmptySetSingleton;
  *&v78[v86[12]] = &_swiftEmptySetSingleton;
  v78[v86[13]] = 0;
  v78[v86[14]] = v100;
  sub_100004A04((v0 + 216), &v78[v86[15]]);
  v78[v86[16]] = v89;
  v78[v86[17]] = v99;
  sub_100004A04((v0 + 336), v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_neuralEngine) = v101;
  swift_weakInit();
  *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_preferUnload) = v99;
  sub_100003324((v0 + 376));

  sub_100003324((v0 + 296));

  sub_100003324((v0 + 96));

  sub_100002D24();
  swift_beginAccess();

  sub_10001A264(v108, v73);
  swift_endAccess();

  sub_100011DC0();
  sub_100019338(v104);
  sub_1000DAE78();

  v80 = *(v0 + 8);

  return v80(v73);
}

uint64_t sub_1000CB5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  sub_1000DAE78();
  v26 = v16[100];
  v27 = v16[99];
  v28 = v16[96];
  v29 = v16[93];

  sub_100001F00();
  sub_100003D04();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, v28, v29, a14, a15, a16);
}

uint64_t sub_1000CB700()
{
  sub_100003884();
  sub_100019C80(*(v0 + 144));
  sub_100004B94();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v3 = sub_1000071DC(v2);

  return v5(v3);
}

uint64_t sub_1000CB804()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 240) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CB8FC()
{
  sub_100001ED0();
  if (*(v1 + 240) == 1)
  {
    v2 = swift_task_alloc();
    v3 = sub_1000DB0A4(v2);
    *v3 = v4;
    v3[1] = sub_1000CBA4C;

    return sub_100025A00();
  }

  else
  {
    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v6, v7, &protocol conformance descriptor for ModelManagerError);
    v8 = sub_10000C700();
    sub_100011D90(v8, v9);
    sub_1000080BC();
    (*(v10 + 104))();
    swift_willThrow();
    **(v1 + 184) = v0;

    sub_100001F00();

    return v11();
  }
}

uint64_t sub_1000CBA4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CBB44()
{
  sub_10000636C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  *(v0 + 128) = _swiftEmptyArrayStorage;
  sub_100065020(&qword_1001BB440, &unk_1001742C0);
  sub_10001E600();
  sub_100011B14(v3, v4, &unk_100171CF0);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v5[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);
  v5[2].i64[0] = v1;
  v5[2].i64[1] = v2;
  v5[3].i64[0] = v0 + 128;
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1000CBCA0;
  sub_100003770();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CBCA0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_10000C634();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000CBDB4()
{
  v70 = v0;
  v1 = 0;
  v2 = v0[22];
  v3 = v0[16];
  v59 = (v0 + 7);
  v64 = (v0 + 10);
  v65 = v0[24];
  v60 = (v0 + 13);
  v61 = v0 + 2;
  v68 = &_swiftEmptySetSingleton;
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v62 = v3;
  v57 = v4;
  v58 = v2;
  v56 = v3 + 32;
  while (1)
  {
LABEL_2:
    if (v1 == v4)
    {
      v47 = *(v67 + 136);

      *v47 = v68;

      sub_100002F54();
      goto LABEL_28;
    }

    if (v1 >= *(v3 + 16))
    {
      goto LABEL_32;
    }

    v6 = v5 + 16 * v1;
    v7 = *v6;
    if (*(v6 + 8) == 1)
    {
      break;
    }

    ++v1;
    v8 = sub_10004A780();
    sub_1000266B8(v8, v9);
    v10 = sub_10004A780();
    sub_1000266B8(v10, v11);

    sub_10001A264(v69, v7);

    v12 = InferenceProviderAssetDescriptor.identifier.getter();
    if (*(v2 + 16))
    {
      v14 = sub_1000236F4(v12, v13);
      v16 = v15;

      if (v16)
      {
        v63 = v1;
        v17 = *(*(v2 + 56) + 8 * v14);
        v18 = v17 + 56;
        v19 = -1 << *(v17 + 32);
        if (-v19 < 64)
        {
          v20 = ~(-1 << -v19);
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 & *(v17 + 56);
        v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v66 = v17;
        swift_bridgeObjectRetain_n();
        sub_100004CBC();
        swift_beginAccess();
        v23 = 0;
        while (v21)
        {
          v24 = v23;
LABEL_16:
          v25 = *(v67 + 200);
          v26 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v27 = (*(v66 + 48) + ((v24 << 10) | (16 * v26)));
          v28 = *v27;
          v29 = v27[1];
          sub_100005C78();
          sub_1000192DC(v22 + v7, v25);

          sub_10007CC90(v69, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7]);

          sub_100002D24();
          swift_beginAccess();
          sub_10003DA78(v25, v22 + v7);
          swift_endAccess();
        }

        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v24 >= ((63 - v19) >> 6))
          {

            v43 = sub_10004A780();
            sub_10003DA6C(v43, v44);
            v45 = sub_10004A780();
            sub_10003DA6C(v45, v46);

            v3 = v62;
            v1 = v63;
            v4 = v57;
            v2 = v58;
            v5 = v56;
            goto LABEL_2;
          }

          v21 = *(v18 + 8 * v24);
          ++v23;
          if (v21)
          {
            v23 = v24;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v39 = sub_10004A780();
      sub_10003DA6C(v39, v40);
      v41 = sub_10004A780();
      sub_10003DA6C(v41, v42);
    }

    else
    {
      v35 = sub_10004A780();
      sub_10003DA6C(v35, v36);
      v37 = sub_10004A780();
      sub_10003DA6C(v37, v38);
    }
  }

  swift_errorRetain();

  v49 = *(v3 + 16);
  swift_errorRetain();
  if (v49)
  {
    v50 = *(v67 + 192);
    v51 = (v62 + 40);
    do
    {
      if ((*v51 & 1) == 0)
      {
        v52 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v51 - 1);
        sub_100004CBC();
        swift_beginAccess();
        sub_100007130(&v52[*(v50 + 60)], v61);
        sub_100003370(v61, *(v67 + 40));
        v53 = sub_100007B78();
        v54(v53);
        sub_100003324(v61);
      }

      v51 += 16;
      --v49;
    }

    while (v49);
  }

  swift_willThrow();
  sub_10003DA6C(v7, 1);

  **(v67 + 184) = v7;

  sub_100001F00();
LABEL_28:

  v48();
}

uint64_t sub_1000CC1DC()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  *v2 = v1;
  *(v2 + 8) = v1 != 0;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000CC554()
{
  if (*(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v0))
  {

    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask))
  {

    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask))
  {

    Task.cancel()();
  }

  v1 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_workQueue;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);

  sub_1000DACDC();
  sub_100019338(v0 + v3);

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog));
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager));
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager));

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_sysctl));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000CC70C()
{
  sub_1000CC554();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InferenceProviderAssetManager(uint64_t a1)
{
  result = qword_1001BB150;
  if (!qword_1001BB150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CC78C(uint64_t a1)
{
  sub_1000D5ED4(319);
  if (v1 <= 0x3F)
  {
    _s6PolicyVMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000CC8B4()
{
  sub_100001ED0();
  *(v0 + 24) = sub_100003370((*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24));

  sub_10000CC50();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000CC940()
{
  sub_100002BAC();
  sub_10010F63C(&unk_100171DD8, *(v0 + 16));

  v1 = sub_10000C634();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000CC9C0()
{
  sub_100001ED0();
  sub_100003370((*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager), *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager + 24));

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000CCA90;
  v2 = *(v0 + 16);

  return sub_1000B84E4(&unk_100171DE8, v2);
}

uint64_t sub_1000CCA90()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000CCB8C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10006FA64;

  return sub_1000E47B0();
}

uint64_t sub_1000CCC34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006F558;

  return sub_1000C19A0(a1, a2);
}

uint64_t sub_1000CCCDC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CCDD4()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v3;
  v4[1] = sub_1000CCF34;
  sub_1000031B8(*(v0 + 120));

  return sub_1000D2474();
}

uint64_t sub_1000CCF34()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_10000C634();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CD048()
{
  sub_100002BAC();
  sub_100043D74();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  sub_1000DAC80(v1);

  return sub_1000440E8();
}

uint64_t sub_1000CD0BC()
{
  sub_100002BAC();
  *(v1 + 40) = v0;
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  *(v1 + 48) = sub_100002C58();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000CD140()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  sub_100004CBC();
  swift_beginAccess();

  sub_1000DAF44();
  v14 = sub_100038E28(v10, v11, v12, v13);
  sub_10002B524();
  v16 = v15;
  v0[8] = v15;

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
LABEL_7:
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      v0[9] = v19;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        if ((v0[8] & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
          v0[10] = v14;
          v23 = type metadata accessor for AuditToken();
          sub_100018DEC(v23);
          v24 = swift_task_alloc();
          v0[11] = v24;
          *v24 = v0;
          sub_100009F00(v24);

          sub_10002BA5C();
          return;
        }

        if ((v19 & 0x8000000000000000) == 0)
        {
          sub_100007900();
          if (!v22)
          {
            sub_100011174(v20, v21);
            goto LABEL_13;
          }

LABEL_24:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (sub_100002F80(v26))
  {
    v27 = sub_100007648();
    sub_10000A240(v27);
    sub_100003DD0();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    sub_100002BD0();
  }

  sub_100001F00();

  v33();
}

uint64_t sub_1000CD3B0()
{
  sub_100001ED0();
  sub_100018E0C();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  sub_10000CC7C();
  v5 = *(v4 + 48);
  if (v0)
  {
  }

  sub_10000ED84(v5, &qword_1001BB3F8);
  sub_10000CC50();

  return _swift_task_switch(v6, v7, v8);
}

void sub_1000CD514()
{
  sub_100001ED0();
  v2 = v1[9];

  if (v2)
  {
    v3 = v1[9];
    v1[9] = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v1[8] & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[10] = v0;
        v7 = type metadata accessor for AuditToken();
        sub_100018DEC(v7);
        v8 = swift_task_alloc();
        v1[11] = v8;
        *v8 = v1;
        sub_100009F00(v8);

        sub_10002BA5C();
        return;
      }

      if (((v3 - 1) & 0x8000000000000000) == 0)
      {
        sub_100007900();
        if (!v6)
        {
          sub_100011174(v4, v5);
          goto LABEL_8;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (sub_100002F80(v10))
  {
    v11 = sub_100007648();
    sub_10000A240(v11);
    sub_100003DD0();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    sub_100002BD0();
  }

  sub_100001F00();

  v17();
}

BOOL sub_1000CD678(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  __chkstk_darwin(State);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for LoadState.unloaded(_:), State);
  sub_100011B14(&qword_1001BA468, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v5, State);
  return (v6 & 1) == 0 && *(*(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)) + 16) == 0;
}

uint64_t sub_1000CD7D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_1000CD7F4, v1);
}

uint64_t sub_1000CD7F4()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[2];

  result = sub_10000E8DC(v10);
  v0[5] = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[2];
      v0[6] = 0;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v0[7] = v13;
      v23 = swift_task_alloc();
      v0[8] = v23;
      *v23 = v0;
      v23[1] = sub_1000CD9E8;
      sub_10001E4B4();

      return sub_1000486EC();
    }
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_100002F80(v15))
    {
      v16 = sub_100007648();
      sub_10000A240(v16);
      sub_100003DD0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v22();
  }

  return result;
}

uint64_t sub_1000CD9E8()
{
  sub_100001ED0();
  sub_100018E0C();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  sub_10000CC7C();
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000CDB04()
{
  sub_100001ED0();
  v1 = v0[6];
  v2 = v0[5];

  if (v1 + 1 == v2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100002F80(v4))
    {
      v5 = sub_100007648();
      sub_10000A240(v5);
      sub_100003DD0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v11();
  }

  else
  {
    v13 = v0[6] + 1;
    v0[6] = v13;
    v14 = v0[2];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_1000DB11C(v13, v14);
    }

    v0[7] = v2;
    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    v15[1] = sub_1000CD9E8;
    sub_10001E4B4();

    return sub_1000486EC();
  }
}

uint64_t sub_1000CDC64()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  sub_10000CC7C();
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000CE8CC()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  sub_1000DB098(v1);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1000CE9AC;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CE9AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CEAAC()
{
  sub_100002BAC();

  v0 = sub_10000C634();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000CF6D4()
{
  sub_10001881C();
  sub_100003884();

  sub_100059A5C();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000CF780()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  sub_1000DB098(v1);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_1000CF860;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000CF860()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CF960()
{
  sub_100002BAC();

  v0 = sub_10000C634();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000D0518()
{
  sub_10001881C();
  sub_100003884();

  sub_100059A5C();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000D1110()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 512) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[62];
  v16 = v14[43];
  v18 = v14[33];
  v17 = v14[34];
  v19 = v14[30];
  sub_100005C78();
  sub_1000192DC(v19 + v16, v17);
  *(v17 + *(v18 + 24)) = 1;
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v17, v19 + v16);
  swift_endAccess();

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100046BD0();

  if (sub_1000DAF70())
  {
    sub_100002F10();
    swift_slowAlloc();
    v21 = sub_10003A5EC();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v15 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    v24 = sub_100011B14(v22, v23, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v25 = sub_100014A18(v24);
    sub_10000CB58(v25, v26, v27, v28);
    sub_1000188B4();
    sub_1000DB3FC();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v29;
    *v21 = v29;
    sub_10001368C();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    sub_10000ED84(v21, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v19);
    sub_1000039CC();

    sub_100002BD0();
  }

  swift_willThrow();
  sub_100059A5C();

  sub_100001F00();
  sub_100003540();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000D142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();

  v18 = *(v16 + 488);
  *(v16 + 232) = v18;
  *(v16 + 496) = v18;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_10000D01C();
  if (swift_dynamicCast())
  {
    if (!*(v16 + 208))
    {
      v49 = *(v16 + 200);

      sub_1000DA26C();
      sub_100007894();
      swift_allocError();
      *v50 = v49;
      v50[1] = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  v19 = *(v16 + 526);

  if (v19 == 1)
  {
    sub_100019C80((*(v16 + 240) + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
    sub_10000302C();
    v59 = v20 + *v20;
    v21 = swift_task_alloc();
    v22 = sub_100035D54(v21);
    *v22 = v23;
    sub_10000A5FC(v22);
    sub_100003D04();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v59, a12, a13, a14, a15, a16);
  }

  sub_10003028C();
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10000AC18();

  if (sub_100042D00())
  {
    sub_100002F10();
    swift_slowAlloc();
    v34 = sub_1000039DC();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100026F60();
    *v17 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    v37 = sub_100011B14(v35, v36, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v38 = sub_100014A18(v37);
    sub_1000359D4(v38, v39, v40, v41, v42, v43, v44, v45);
    sub_1000188B4();
    sub_1000191B8();
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v46);
    sub_10001852C(&_mh_execute_header, v47, v48, "Failed to move asset %s to dynamic mode: %@");
    sub_10000ED84(v34, &qword_1001B8F68);
    sub_100005864();

    sub_100002C88();
    sub_10000BFCC();
  }

  swift_willThrow();
LABEL_12:
  sub_1000358B0();

  sub_1000DABBC();
  sub_100003D04();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D1734()
{
  sub_10001881C();
  sub_100003884();

  sub_100059A5C();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000D17CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 97) = a6;
  *(v6 + 96) = a5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  *(v6 + 40) = swift_task_alloc();
  sub_100065020(&qword_1001BB408, &unk_100171DC0);
  *(v6 + 48) = swift_task_alloc();
  sub_100065020(&qword_1001BB410, &unk_100172340);
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;

  return _swift_task_switch(sub_1000D18EC, 0, 0);
}

uint64_t sub_1000D1B74()
{
  sub_100001ED0();
  sub_10000D554();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_10000A9E0();

  sub_10000778C();

  return v3();
}

uint64_t sub_1000D1CA8()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v3 + 88) = v0;

  sub_10000ED84(v8, &qword_1001BB3F8);
  sub_10000ED84(v7, &qword_1001BB408);
  sub_10000ED84(v6, &qword_1001BB410);
  if (v0)
  {
    sub_1000059F8();
    sub_100007BB8();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    sub_10000778C();
    sub_100007BB8();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1000D1E70()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000D1EE8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_1000D1F90, 0, 0);
}

uint64_t sub_1000D21C8()
{
  sub_100001ED0();
  sub_10000D554();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_10000A9E0();

  sub_10000778C();

  return v3();
}

uint64_t sub_1000D22C4()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 64) = v0;

  sub_10000ED84(v6, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1000D2418()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000D2474()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v3);
  v1[4] = sub_100002C58();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D24F8()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[2];

  result = sub_10000E8DC(v10);
  v0[6] = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[2];
      v0[7] = 0;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v0[8] = v13;
      v23 = type metadata accessor for AuditToken();
      sub_100018DEC(v23);
      v24 = swift_task_alloc();
      v25 = sub_1000DB2F0(v24);
      *v25 = v26;
      sub_100003D54(v25);

      return sub_10002BA5C();
    }
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_100002F80(v15))
    {
      v16 = sub_100007648();
      sub_10000A240(v16);
      sub_100003DD0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v22();
  }

  return result;
}

uint64_t sub_1000D26D8()
{
  sub_100001ED0();
  sub_100018E0C();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  sub_10000CC7C();
  v5 = *(v4 + 32);
  if (v0)
  {
  }

  sub_10000ED84(v5, &qword_1001BB3F8);
  sub_10000CC50();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D283C()
{
  sub_100001ED0();
  v2 = v1[7];
  v3 = v1[6];

  if (v2 + 1 == v3)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (sub_100002F80(v5))
    {
      v6 = sub_100007648();
      sub_10000A240(v6);
      sub_100003DD0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_100002BD0();
    }

    sub_100001F00();

    return v12();
  }

  else
  {
    v14 = v1[7] + 1;
    v1[7] = v14;
    v15 = v1[2];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_100011174(v14, v15);
    }

    v1[8] = v0;
    v16 = type metadata accessor for AuditToken();
    sub_100018DEC(v16);
    v17 = swift_task_alloc();
    v18 = sub_1000DB2F0(v17);
    *v18 = v19;
    sub_100003D54(v18);

    return sub_10002BA5C();
  }
}

uint64_t sub_1000D2988()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  sub_10000CC7C();
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D3190()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  sub_1000DB098(v1);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1000D3270;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000D3270()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D3370()
{
  sub_100002BAC();

  v0 = sub_10000C634();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000D3AA8()
{
  sub_10000639C();
  sub_100003884();

  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000D3B44()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  sub_1000DB098(v1);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_1000D3C24;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000D3C24()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D3D24()
{
  sub_100002BAC();

  v0 = sub_10000C634();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000D445C()
{
  sub_10000639C();
  sub_100003884();

  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000D4BE4()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 512) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D4CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[42];
  v16 = v14[38];
  v17 = v14[39];
  v18 = v14[36];
  v19 = v14[37];
  v20 = v14[30];
  sub_100004CBC();
  swift_beginAccess();
  (*(v19 + 16))(v17, v20 + v15, v18);
  (*(v19 + 104))(v16, enum case for LoadState.unloaded(_:), v18);
  v21 = sub_100001F70();
  v23 = sub_100116D68(v21, v22);
  v25 = *(v19 + 8);
  v24 = v19 + 8;
  v26 = sub_1000060A4();
  v25(v26);
  v27 = sub_100007660();
  v25(v27);
  if (v23)
  {
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v28 = sub_100053B80();
    sub_10000641C(v28, qword_1001BB110);
    sub_10000D0E8();

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10000AC18();

    if (os_log_type_enabled(v29, v24))
    {
      sub_100002F10();
      swift_slowAlloc();
      v30 = sub_1000039DC();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v23 = 136315394;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100008428();
      v33 = sub_100011B14(v31, v32, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v34 = sub_100014A18(v33);
      sub_10000CB58(v34, v35, v36, v37);
      sub_1000188B4();
      sub_1000191B8();
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DDBC(v38);
      sub_1000057CC(&_mh_execute_header, v39, v40, "Unload for %s suceeded, ignoring non-impacting error: %@");
      sub_10000ED84(v30, &qword_1001B8F68);
      sub_100005864();

      sub_100002C88();
      sub_10000BFCC();
    }

    else
    {
    }

    sub_100025014();

    sub_100002F54();
  }

  else
  {
    v42 = v14[34];
    v41 = v14[35];
    sub_100005C78();
    sub_10002ED80();
    *(v41 + *(v42 + 24)) = 1;
    sub_100002D24();
    swift_beginAccess();
    sub_1000DB104();
    swift_endAccess();
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v43 = v14[62];
    v44 = v14[30];
    v45 = type metadata accessor for Logger();
    sub_100002FD0(v45, qword_1001BB110);

    swift_errorRetain();
    v46 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100046BD0();

    if (sub_1000DAF70())
    {
      sub_100002F10();
      swift_slowAlloc();
      v47 = sub_10003A5EC();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v43 = 136315394;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100008428();
      v50 = sub_100011B14(v48, v49, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v51 = sub_100014A18(v50);
      sub_10000CB58(v51, v52, v53, v54);
      sub_1000188B4();
      sub_1000DB3FC();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v55;
      *v47 = v55;
      sub_10001368C();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      sub_10000ED84(v47, &qword_1001B8F68);
      sub_100002BD0();

      sub_100003324(v44);
      sub_1000039CC();

      sub_100002BD0();
    }

    swift_willThrow();
    sub_10004D130();

    sub_100001F00();
  }

  sub_100003540();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000D514C()
{
  sub_10000636C();

  v1 = v0[61];
  v0[29] = v1;
  v0[62] = v1;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (!swift_dynamicCast())
  {
LABEL_4:
    v2 = v0[30];

    sub_100019C80((v2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
    sub_100004B94();
    v12 = (v3 + *v3);
    v4 = swift_task_alloc();
    v5 = sub_100035D54(v4);
    *v5 = v6;
    v7 = sub_100003B98(v5);

    return v12(v7);
  }

  if (v0[26])
  {

    goto LABEL_4;
  }

  sub_1000DA26C();
  sub_100007894();
  v9 = swift_allocError();
  sub_100057664(v9, v10);

  sub_10004D130();

  sub_100001F00();

  return v11();
}

uint64_t sub_1000D5348()
{
  sub_10000639C();
  sub_100003884();

  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000D53D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v5 = swift_task_alloc();
  v6 = *a1;
  v3[4] = v5;
  v3[5] = v6;

  return _swift_task_switch(sub_1000D5474, 0, 0);
}

uint64_t sub_1000D5620()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 56) = v0;

  sub_10000ED84(v6, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1000D5774()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}