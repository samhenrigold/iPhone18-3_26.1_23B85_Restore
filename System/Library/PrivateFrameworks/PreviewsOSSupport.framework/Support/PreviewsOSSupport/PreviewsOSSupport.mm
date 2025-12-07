uint64_t sub_1000017C0()
{
  result = _set_user_dir_suffix();
  if ((result & 1) == 0)
  {
    v1 = UVLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10002CC5C(v1);
    }

    exit(78);
  }

  return result;
}

dispatch_workloop_t sub_100001818(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v8;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "previewsd starting up", v16, 2u);
    v8 = v24;
  }

  (*(v11 + 8))(v13, v10);
  sub_1000017C0();
  v17 = sub_100001818("com.apple.previewsd.workloop");
  qword_10003DC08 = v17;
  type metadata accessor for Daemon();
  swift_allocObject();
  qword_10003DC10 = sub_10001A32C(v17);
  aBlock[4] = sub_100001BEC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001C14;
  aBlock[3] = &unk_1000393B8;
  v18 = _Block_copy(aBlock);
  v19 = v25;
  v20 = static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100001C70(v20, v21, v22);
  sub_100001CC8(&unk_10003CC60, &qword_10002E490);
  sub_100001D10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v19, v7);
  dispatch_main();
}

uint64_t sub_100001C14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100001C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10003D6C0;
  if (!qword_10003D6C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6C0);
  }

  return result;
}

uint64_t sub_100001CC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001D10()
{
  result = qword_10003D6D0;
  if (!qword_10003D6D0)
  {
    sub_100001D74(&unk_10003CC60, &qword_10002E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6D0);
  }

  return result;
}

uint64_t sub_100001D74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_100001DEC(void *a1, uint64_t *a2)
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

uint64_t sub_100001E5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100001EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100001FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PreviewsService.Variant();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PreviewShellProxy(uint64_t a1)
{
  result = qword_10003CDF0;
  if (!qword_10003CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002128(uint64_t a1)
{
  type metadata accessor for PreviewsService.Variant();
  if (v1 <= 0x3F)
  {
    sub_1000021AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000021AC(uint64_t a1)
{
  if (!qword_10003CE00)
  {
    sub_100001D74(&qword_10003CE08, &qword_10002E4D8);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    v1 = type metadata accessor for ConcurrentOnDemand();
    if (!v2)
    {
      atomic_store(v1, &qword_10003CE00);
    }
  }
}

uint64_t sub_100002250(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000022E8;

  return sub_100002CC4(a2);
}

uint64_t sub_1000022E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100002434, 0, 0);
  }
}

uint64_t sub_100002458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PreviewShellProxy(0);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  v10 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  *v9 = v6;
  v9[1] = sub_100002538;

  return ConcurrentOnDemand.invalidate(callsite:trace:)(a5, a6, v10);
}

uint64_t sub_100002538()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100001CC8(&qword_10003CE40, &qword_10002E4E8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for PreviewShellProxy(0);
  v4 = swift_task_alloc();
  v2[8] = v4;
  v5 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  *v4 = v2;
  v4[1] = sub_100002760;

  return ConcurrentOnDemand.value.getter(v2 + 2, v5);
}

uint64_t sub_100002760()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002B64, 0, 0);
  }

  else
  {
    v2[10] = v2[2];
    v3 = type metadata accessor for DaemonToShell();
    v4 = swift_task_alloc();
    v2[11] = v4;
    v5 = sub_100004118(&qword_10003CE48, &type metadata accessor for DaemonToShell, &protocol conformance descriptor for DaemonToShell);
    *v4 = v2;
    v4[1] = sub_100002934;
    v6 = v2[7];

    return ShellConnection.makeSender<A>(for:)(v6, v3, v3, v5);
  }
}

uint64_t sub_100002934()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100002C10;
  }

  else
  {

    v2 = sub_100002A50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002A50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100004334(&qword_10003CE50, &qword_10003CE40, &qword_10002E4E8, &protocol conformance descriptor for ShellConnectionSender<A>);
  sub_100004118(&qword_10003CE58, &type metadata accessor for DaemonToShell.TwoWayMessage, &protocol conformance descriptor for DaemonToShell.TwoWayMessage);
  TransportSenderProtocol<>.send(message:reply:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002B64()
{
  TransportReply.send(error:file:line:column:function:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002C10()
{

  TransportReply.send(error:file:line:column:function:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002CC4(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for PropertyList();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for ShellService();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for CancellationToken();
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = type metadata accessor for PreviewsService.Variant();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[20] = v7;
  v1[21] = *(v7 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100002F20, 0, 0);
}

uint64_t sub_100002F20()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100003004;
  v2 = *(v0 + 32);

  return sub_100008E40(v2, 0);
}

uint64_t sub_100003004(int a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_100003AD4;
  }

  else
  {
    v4 = sub_10000311C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000311C(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 152);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 32);
  static Logger.uv.getter();
  (*(v4 + 16))(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v68 = *(v1 + 232);
    v70 = *(v1 + 168);
    v72 = *(v1 + 160);
    v74 = *(v1 + 184);
    v8 = *(v1 + 152);
    v10 = *(v1 + 128);
    v9 = *(v1 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v76[0] = v12;
    *v11 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_10001BD80(v13, v15, v76);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1026;
    *(v11 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully launched preview shell (%{public}s): %{public}d", v11, 0x12u);
    sub_1000041C8(v12);

    (*(v70 + 8))(v74, v72);
  }

  else
  {
    v17 = *(v1 + 184);
    v18 = *(v1 + 160);
    v19 = *(v1 + 168);
    v20 = *(v1 + 152);
    v21 = *(v1 + 128);
    v22 = *(v1 + 136);

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v17, v18);
  }

  v23 = *(v1 + 200);
  v25 = *(v1 + 72);
  v24 = *(v1 + 80);
  v26 = *(v1 + 64);
  type metadata accessor for PreviewAssertionManager();
  static PreviewAssertionManager.shared.getter();
  PreviewAssertionManager.takeActivePreviewAssertion(for:)();

  v27 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  (*(v25 + 104))(v24, enum case for ShellService.daemonPreviewService(_:), v26);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v28 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  *(v1 + 208) = v28;
  if (v23)
  {
    v29 = *(v1 + 120);
    v30 = *(v1 + 88);
    v31 = *(v1 + 96);
    v33 = *(v1 + 72);
    v32 = *(v1 + 80);
    v34 = *(v1 + 64);
    (*(*(v1 + 48) + 8))(*(v1 + 56), *(v1 + 40));
    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v29, v30);
    v36 = *(v1 + 136);
    v35 = *(v1 + 144);
    v37 = *(v1 + 128);
    v38 = *(v1 + 32);
    static Logger.uv.getter();
    (*(v36 + 16))(v35, v38, v37);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    LOBYTE(v29) = static os_log_type_t.error.getter();

    v75 = v29;
    v40 = os_log_type_enabled(v39, v29);
    v41 = *(v1 + 168);
    v42 = *(v1 + 176);
    v43 = *(v1 + 160);
    v45 = *(v1 + 136);
    v44 = *(v1 + 144);
    v46 = *(v1 + 128);
    if (v40)
    {
      v47 = swift_slowAlloc();
      v73 = v43;
      v67 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76[0] = v71;
      *v47 = 136446466;
      sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v42;
      v50 = v49;
      (*(v45 + 8))(v44, v46);
      v51 = sub_10001BD80(v48, v50, v76);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v52;
      *v67 = v52;
      _os_log_impl(&_mh_execute_header, v39, v75, "Failed to launch & connect to preview shell (%{public}s): %@", v47, 0x16u);
      sub_100004160(v67);

      sub_1000041C8(v71);

      (*(v41 + 8))(v69, v73);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      (*(v41 + 8))(v42, v43);
    }

    swift_willThrow();

    v65 = *(v1 + 8);

    return v65();
  }

  else
  {
    v53 = v28;
    v55 = *(v1 + 112);
    v54 = *(v1 + 120);
    v56 = *(v1 + 96);
    v57 = *(v1 + 80);
    v58 = *(v1 + 88);
    v59 = *(v1 + 64);
    v60 = *(v1 + 72);
    (*(*(v1 + 48) + 8))(*(v1 + 56), *(v1 + 40));
    (*(v60 + 8))(v57, v59);
    ShellConnection.activate()();
    *(v1 + 16) = v53;
    (*(v56 + 16))(v55, v54, v58);
    v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v62 = swift_allocObject();
    (*(v56 + 32))(v62 + v61, v55, v58);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    ConcurrentInvalidatable.onInvalidation(_:)();

    *(v1 + 24) = v53;
    v63 = swift_task_alloc();
    *(v1 + 216) = v63;
    v64 = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    *v63 = v1;
    v63[1] = sub_1000038DC;

    return Transport.activation.getter(v27, v64);
  }
}

uint64_t sub_1000038DC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100003DE4;
  }

  else
  {
    v2 = sub_1000039F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000039F0()
{
  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[1];
  v2 = v0[26];

  return v1(v2);
}

uint64_t sub_100003AD4(uint64_t a1)
{
  v29 = v1;
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[16];
  v5 = v1[4];
  static Logger.uv.getter();
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[21];
  v10 = v1[22];
  v11 = v1[20];
  v13 = v1[17];
  v12 = v1[18];
  v14 = v1[16];
  if (v8)
  {
    v27 = v1[20];
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v15 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
    v25 = v10;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v7;
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_10001BD80(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v24 = v20;
    _os_log_impl(&_mh_execute_header, v6, v23, "Failed to launch & connect to preview shell (%{public}s): %@", v15, 0x16u);
    sub_100004160(v24);

    sub_1000041C8(v26);

    (*(v9 + 8))(v25, v27);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v9 + 8))(v10, v11);
  }

  swift_willThrow();

  v21 = v1[1];

  return v21();
}

uint64_t sub_100003DE4()
{
  v28 = v0;
  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  static Logger.uv.getter();
  (*(v1 + 16))(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  if (v7)
  {
    v26 = v0[20];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
    v24 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v6;
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10001BD80(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v5, v22, "Failed to launch & connect to preview shell (%{public}s): %@", v14, 0x16u);
    sub_100004160(v23);

    sub_1000041C8(v25);

    (*(v8 + 8))(v24, v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v8 + 8))(v9, v10);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_100004118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004160(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003CE68, &unk_10002EE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000041C8(void *a1)
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

uint64_t sub_100004214()
{
  v1 = type metadata accessor for CancellationToken();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100004334(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001D74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000437C(uint64_t a1)
{
  result = sub_1000043A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000043A4()
{
  result = qword_10003CE78;
  if (!qword_10003CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE78);
  }

  return result;
}

unint64_t sub_1000043F8(uint64_t a1)
{
  result = sub_100004420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100004420()
{
  result = qword_10003CE80[0];
  if (!qword_10003CE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10003CE80);
  }

  return result;
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000044F0, 0, 0);
}

uint64_t sub_1000044F0()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000045D4;
  v2 = *(v0 + 24);

  return sub_100008E40(v2, 0);
}

uint64_t sub_1000045D4(int a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100004720, 0, 0);
  }
}

uint64_t sub_100004764()
{
  v1 = *(v0 + 16);
  v2 = static TimeoutError.timedOut(waitingFor:)();
  type metadata accessor for TimeoutError();
  sub_100004A24();
  v3 = swift_allocError();
  v2(v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100004890()
{

  return v0;
}

uint64_t sub_1000048C0()
{
  sub_100004890();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000490C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100004954(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000049BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100004A24()
{
  result = qword_10003CF88;
  if (!qword_10003CF88)
  {
    type metadata accessor for TimeoutError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF88);
  }

  return result;
}

unint64_t sub_100004AAC()
{
  type metadata accessor for LifecycleMonitor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_100005510(&_swiftEmptyArrayStorage);
  *(v0 + 112) = result;
  qword_10003DC18 = v0;
  return result;
}

void sub_100004AF8(void *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() predicateMatchingIdentifier:a2];
  sub_100001CC8(&qword_10003D068, &qword_10002E6C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10002E640;
  *(v12 + 32) = v11;
  sub_100005464();
  v13 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  v15 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v15 setValues:1];
  [a1 setStateDescriptor:v15];
  if (a3)
  {
    [a1 setEvents:1];
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 20) = a3 & 1;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  v18[4] = sub_1000054E8;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100004DC8;
  v18[3] = &unk_1000395B8;
  v17 = _Block_copy(v18);

  [a1 setUpdateHandler:v17];
  _Block_release(v17);
}

void sub_100004D04(int a1, id a2, void *a3, int a4, char a5, void (*a6)(void))
{
  if ([a2 pid] == a4)
  {
    if (a5)
    {
      v9 = [a3 exitEvent];
      if (!v9)
      {
        return;
      }

      goto LABEL_7;
    }

    v10 = [a3 state];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 taskState];

      if (v12 == 3)
      {
LABEL_7:
        a6();
      }
    }
  }
}

void sub_100004DC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_100004E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Identifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_100014798(0, 0, v9, &unk_10002E6C0, v12);
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100005068, a4, 0);
}

uint64_t sub_100005068()
{
  sub_1000050C8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000050C8(uint64_t a1)
{
  v3 = type metadata accessor for Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v1 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_100010AC4(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      [v10 invalidate];
    }

    else
    {
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_10001339C(0, v6);
  return swift_endAccess();
}

uint64_t sub_100005238()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000052A0()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000536C(uint64_t a1)
{
  v4 = *(type metadata accessor for Identifier() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002538;

  return sub_100005048(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100005464()
{
  result = qword_10003D070;
  if (!qword_10003D070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003D070);
  }

  return result;
}

uint64_t sub_1000054B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000054F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005510(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003D078, &qword_10002E6D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005B8C(v9, v5, &qword_10003D078, &qword_10002E6D0);
      result = sub_100010AC4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Identifier();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_1000056F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100010BDC(v5, v6);
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

unint64_t sub_10000580C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D090, &qword_10002E6F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010BDC(v5, v6);
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

unint64_t sub_100005910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D080, &qword_10002E6E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B8C(v4, v13, &qword_10003D088, &qword_10002E6E8);
      result = sub_100010B98(v13);
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
      result = sub_100005A4C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_100005A4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100005A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D098, qword_10002E700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B8C(v4, &v13, &qword_10003D0A0, &unk_10002F200);
      v5 = v13;
      v6 = v14;
      result = sub_100010BDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005A4C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CC8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewShellProxy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100005CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PreviewShellProxy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppManagerDaemon(uint64_t a1)
{
  result = qword_10003D100;
  if (!qword_10003D100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005DB8(uint64_t a1)
{
  result = sub_100005E54();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PreviewShellProxy(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ConcurrentInvalidationHandle();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100005E54()
{
  result = qword_10003D110;
  if (!qword_10003D110)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10003D110);
  }

  return result;
}

uint64_t sub_100005EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a2;
  v25 = a1;
  v24 = type metadata accessor for AppManagerDaemon(0);
  v28 = *(v24 - 8);
  v27 = *(v28 + 64);
  __chkstk_darwin(v24);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ExecutionLane();
  __chkstk_darwin(v13 - 8);
  type metadata accessor for FutureSerialQueue();
  default argument 0 of FutureSerialQueue.init(on:)();
  v14 = FutureSerialQueue.__allocating_init(on:)();
  *(a3 + 3) = &type metadata for EmbeddedAppInstaller;
  *(a3 + 4) = &off_10003A298;
  *a3 = v14;
  v15 = *(v7 + 16);
  v15(v12, a1, v6);
  v16 = v24;
  v15(&a3[*(v24 + 20)], v12, v6);
  v15(v10, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v10, v6);
  type metadata accessor for PreviewShellProxy(0);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100007DB0();
  ConcurrentOnDemand.init(create:)();
  v19 = *(v7 + 8);
  v19(v12, v6);
  *&a3[*(v16 + 24)] = v29;
  v20 = v26;
  sub_100007FD4(a3, v26, type metadata accessor for AppManagerDaemon);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_100008284(v20, v22 + v21, type metadata accessor for AppManagerDaemon);
  sub_100007AC8(&qword_10003D188, &unk_10002E78C);

  ConcurrentInvalidatable.onInvalidation(_:)();

  return (v19)(v25, v6);
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v33 = a1;
  v35 = type metadata accessor for InvalidationTrace();
  v32 = *(v35 - 8);
  v34 = *(v32 + 64);
  __chkstk_darwin(v35);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3;
  v4 = type metadata accessor for PreviewShellProxy(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4 - 8);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = type metadata accessor for Callsite();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for AppManagerDaemon(0) + 20);
  Callsite.init(_:_:_:_:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_100007FD4(v31 + v16, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewShellProxy);
  v18 = v9;
  (*(v10 + 16))(v13, v15, v9);
  v19 = v32;
  (*(v32 + 16))(v3, v33, v35);
  v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v21 = (v5 + *(v10 + 80) + v20) & ~*(v10 + 80);
  v22 = v19;
  v23 = (v11 + *(v19 + 80) + v21) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100008284(v27, v24 + v20, type metadata accessor for PreviewShellProxy);
  (*(v10 + 32))(v24 + v21, v13, v18);
  (*(v22 + 32))(v24 + v23, v28, v35);
  sub_100014798(0, 0, v29, &unk_10002E7F0, v24);

  return (*(v10 + 8))(v15, v18);
}

uint64_t sub_100006690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ResetAppRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for GrantExecutePermissionRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for CopyURLRequest();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for UninstallAppsRequest();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for InstallAppRequest();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for TransportReply();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for AppManagerInterface.TwoWayMessage();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000694C, 0, 0);
}

uint64_t sub_10000694C()
{
  sub_100001CC8(&qword_10003D190, &qword_10002E7D8);
  TransportMessage<>.body.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v3 = v0 + 21;
        v17 = v0[21];
        TransportMessage<>.reply.getter();
        sub_100022248(v17);
        v6 = v0 + 20;
        v7 = v0 + 19;
        goto LABEL_17;
      }

      v3 = v0 + 6;
      v8 = v0[6];
      v5 = v0[20];
      v4 = v0[21];
      v19 = v0[19];
      v6 = v0 + 5;
      v7 = v0 + 4;
      (*(v0[5] + 32))(v8, v0[23], v0[4]);
      TransportMessage<>.reply.getter();
      sub_10002AB84(v8, v4);
LABEL_9:
      (*(v5 + 8))(v4, v19);
LABEL_17:
      (*(*v6 + 8))(*v3, *v7);

      v18 = v0[1];

      return v18();
    }

    (*(v0[8] + 32))(v0[9], v0[23], v0[7]);
    TransportMessage<>.reply.getter();
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_100006F84;
    v11 = v0[21];
    v12 = v0[9];

    return sub_100028ED0(v12, v11);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v3 = v0 + 18;
      v9 = v0[18];
      v5 = v0[20];
      v4 = v0[21];
      v19 = v0[19];
      v6 = v0 + 17;
      v7 = v0 + 16;
      (*(v0[17] + 32))(v9, v0[23], v0[16]);
      TransportMessage<>.reply.getter();
      sub_100029A44(v9, v4);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0 + 15;
      v2 = v0[15];
      v5 = v0[20];
      v4 = v0[21];
      v19 = v0[19];
      v6 = v0 + 14;
      v7 = v0 + 13;
      (*(v0[14] + 32))(v2, v0[23], v0[13]);
      TransportMessage<>.reply.getter();
      sub_10002A3B8(v2, v4);
      goto LABEL_9;
    }

    (*(v0[11] + 32))(v0[12], v0[23], v0[10]);
    TransportMessage<>.reply.getter();
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_100006D54;
    v15 = v0[21];
    v16 = v0[12];

    return sub_1000287F0(v16, v15);
  }
}

uint64_t sub_100006D54()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100006EAC, 0, 0);
}

uint64_t sub_100006EAC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006F84()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000070DC, 0, 0);
}

uint64_t sub_1000070DC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

char *sub_1000071B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v69 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v6 = &v63[-v5];
  v7 = __chkstk_darwin(v4);
  v70 = &v63[-v8];
  __chkstk_darwin(v7);
  v10 = &v63[-v9];
  static Logger.uv.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempting enumeration of development applications", v13, 2u);
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  v14 = v16;
  v16(v10, v0);
  v17 = [objc_opt_self() enumeratorWithOptions:0];
  aBlock[4] = sub_100007904;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000079A8;
  aBlock[3] = &unk_1000395E0;
  v18 = _Block_copy(aBlock);
  [v17 setFilter:v18];
  _Block_release(v18);
  v19 = &OS_dispatch_source_signal__prots;
  v20 = [v17 nextObject];
  if (v20)
  {
    v22 = v20;
    v71 = &_swiftEmptyArrayStorage;
    v23 = &OS_dispatch_source_signal__prots;
    *&v21 = 136315138;
    v72 = v21;
    *&v21 = 136315394;
    v65 = v21;
    v75 = v6;
    v76 = v15;
    v73 = v14;
    v74 = v17;
    do
    {
      v24 = [v22 v23[335].count];
      if (v24)
      {
        v38 = v24;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v67 = v40;
        static Logger.uv.getter();
        v41 = v22;

        v42 = Logger.logObject.getter();
        LODWORD(v40) = static os_log_type_t.debug.getter();

        v64 = v40;
        v43 = os_log_type_enabled(v42, v40);
        v66 = v41;
        if (v43)
        {
          v44 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v44 = v65;
          v45 = [v41 localizedName];
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v17;
          v49 = v48;

          v50 = sub_10001BD80(v46, v49, aBlock);
          v17 = v47;

          *(v44 + 4) = v50;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_10001BD80(v68, v67, aBlock);
          _os_log_impl(&_mh_execute_header, v42, v64, "DevAppsEnumeration: found qualifying development application %s (%s)", v44, 0x16u);
          swift_arrayDestroy();

          v19 = &OS_dispatch_source_signal__prots;
        }

        v14(v70, v0);
        v51 = v71;
        v23 = &OS_dispatch_source_signal__prots;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_10002C5C8(0, *(v51 + 2) + 1, 1, v51);
        }

        v53 = *(v51 + 2);
        v52 = *(v51 + 3);
        v71 = v51;
        if (v53 >= v52 >> 1)
        {
          v71 = sub_10002C5C8((v52 > 1), v53 + 1, 1, v71);
        }

        v54 = v71;
        *(v71 + 2) = v53 + 1;
        v55 = &v54[16 * v53];
        v56 = v67;
        *(v55 + 4) = v68;
        *(v55 + 5) = v56;
        v37 = [v17 v19[334].count];
      }

      else
      {
        static Logger.uv.getter();
        v25 = v22;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock[0] = v29;
          *v28 = v72;
          v30 = v19;
          v31 = [v25 localizedName];
          v32 = v0;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v19 = v30;
          v23 = &OS_dispatch_source_signal__prots;
          v36 = sub_10001BD80(v33, v35, aBlock);

          *(v28 + 4) = v36;
          v0 = v32;
          v14 = v73;
          v6 = v75;
          _os_log_impl(&_mh_execute_header, v26, v27, "DevAppsEnumeration: missing bundleIdentifier for %s", v28, 0xCu);
          sub_1000041C8(v29);

          v17 = v74;
        }

        else
        {
        }

        v14(v6, v0);
        v37 = [v17 v19[334].count];
      }

      v22 = v37;
    }

    while (v22);
  }

  else
  {
    v71 = &_swiftEmptyArrayStorage;
  }

  v57 = v69;
  static Logger.uv.getter();
  v58 = v71;
  swift_bridgeObjectRetain_n();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = *(v58 + 2);
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v59, v60, "DevAppsEnumeration: found %ld development applications", v61, 0xCu);

    v14(v57, v0);
  }

  else
  {

    v14(v57, v0);
  }

  return v58;
}

uint64_t sub_100007904(void *a1)
{
  v1 = [a1 managementDomain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  sub_100007C00();
  if (v2 == static LSBundleRecord.playgroundsManagementDomain.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000079A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100007A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007AC8(&qword_10003D188, &unk_10002E78C);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_100007AC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppManagerDaemon(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007B0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);

  return sub_100005EB8(v8, a1, a3);
}

uint64_t sub_100007BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007C00()
{
  result = qword_10003D198;
  if (!qword_10003D198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003D198);
  }

  return result;
}

uint64_t sub_100007C4C()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007CD4(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002538;

  return sub_100002250(a1, v1 + v5);
}

unint64_t sub_100007DB0()
{
  result = qword_10003CE10;
  if (!qword_10003CE10)
  {
    sub_100001D74(&qword_10003CE08, &qword_10002E4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE10);
  }

  return result;
}

uint64_t sub_100007E14()
{
  v1 = (type metadata accessor for AppManagerDaemon(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1000041C8((v0 + v3));
  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for PreviewsService.Variant();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for PreviewShellProxy(0) + 20);
  v8 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100007F64(uint64_t a1)
{
  v3 = *(type metadata accessor for AppManagerDaemon(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100006294(a1, v4);
}

uint64_t sub_100007FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000803C()
{
  v1 = (type metadata accessor for PreviewShellProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v19 = type metadata accessor for Callsite();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v17 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for PreviewsService.Variant();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[7];
  v15 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v18, v17 | 7);
}

uint64_t sub_100008284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000082EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewShellProxy(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Callsite() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for InvalidationTrace() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002538;

  return sub_100002458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

__n128 sub_1000084A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000084B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100008510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Int sub_100008574()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000085E8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000866C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1000086A8(uint64_t a1)
{
  v2 = sub_1000089B0();

  return HumanReadableError.description.getter(a1, v2);
}

unint64_t sub_1000086E8()
{
  result = qword_10003D1A0;
  if (!qword_10003D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1A0);
  }

  return result;
}

unint64_t sub_100008740()
{
  result = qword_10003D1A8;
  if (!qword_10003D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1A8);
  }

  return result;
}

unint64_t sub_100008798()
{
  result = qword_10003D1B0;
  if (!qword_10003D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B0);
  }

  return result;
}

uint64_t sub_1000087FC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v2 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000025;
    if (a1 == 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = [objc_opt_self() mainBundle];
      v8._object = 0xE000000000000000;
      v5._countAndFlagsBits = 0xD000000000000017;
      v5._object = 0x80000001000302F0;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v8._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else if (a1)
  {
    return 0x206D726177657250;
  }

  else
  {
    return 0x206E776F6E6B6E55;
  }
}

unint64_t sub_1000089B0()
{
  result = qword_10003D1B8;
  if (!qword_10003D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppManagerError.Types(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppManagerError.Types(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008B7C()
{
  result = qword_10003D1C0;
  if (!qword_10003D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1C0);
  }

  return result;
}

uint64_t sub_100008BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewShellProxy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewShellProxy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ShellPreviewService(uint64_t a1)
{
  result = qword_10003D220;
  if (!qword_10003D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008DBC(uint64_t a1)
{
  result = type metadata accessor for PreviewShellProxy(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConcurrentInvalidationHandle();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008E40(uint64_t a1, char a2)
{
  *(v3 + 141) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for PreviewsService.Variant();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 + 64);
  *(v3 + 64) = swift_task_alloc();
  sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  *(v3 + 72) = swift_task_alloc();
  v6 = type metadata accessor for Callsite();
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100008FA0, 0, 0);
}

uint64_t sub_100008FA0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v23 = *(v0 + 80);
  v3 = *(v0 + 141);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_100001CC8(&qword_10003D2C0, &qword_10002EAE0);
  v6 = static Future.create(dsoHandle:file:line:column:function:)();
  v8 = v7;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 16) = *(v4 + 16);

  Callsite.init(_:_:_:_:)();
  v9 = swift_task_alloc();
  *(v9 + 16) = v5;
  v22 = v3;
  *(v9 + 24) = v3;
  *(v9 + 32) = v8;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();

  (*(v1 + 8))(v2, v23);

  if (*(v0 + 140) == 1)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    (*(v12 + 16))(v11, v16, v14);
    v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v15;
    (*(v12 + 32))(&v19[v18], v11, v14);
    v19[v18 + v13] = v22;

    sub_100014798(0, 0, v10, &unk_10002EAF8, v19);
  }

  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_1000092D8;

  return Future<A>.value.getter(v0 + 136);
}

uint64_t sub_1000092D8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100009488;
  }

  else
  {
    v2 = sub_1000093EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000093EC()
{

  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100009488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a2;
  v55 = a3;
  v54 = type metadata accessor for ShellPreviewService(0);
  v50 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = v4;
  v52 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewsService.Variant();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v49 = &v39 - v10;
  v47 = v11;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Logger();
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v17 = *(v6 + 16);
  v17(v13, a1, v5);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v20;
    v41 = swift_slowAlloc();
    v56 = v41;
    *v20 = 136315138;
    sub_10000D2E8(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = a1;
    v23 = v22;
    v24 = *(v6 + 8);
    v45 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v24;
    v24(v13, v5);
    v25 = sub_10001BD80(v21, v23, &v56);
    a1 = v42;

    v26 = v40;
    *(v40 + 1) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "ShellPreviewService (%s) init", v26, 0xCu);
    sub_1000041C8(v41);
  }

  else
  {

    v27 = *(v6 + 8);
    v45 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v27;
    v27(v13, v5);
  }

  (*(v43 + 8))(v16, v44);
  v28 = v49;
  v17(v49, a1, v5);
  v29 = v55;
  v17(v55, v28, v5);
  v30 = v48;
  v17(v48, v28, v5);
  v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v32 = swift_allocObject();
  (*(v6 + 32))(v32 + v31, v30, v5);
  type metadata accessor for PreviewShellProxy(0);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
  ConcurrentOnDemand.init(create:)();
  v33 = v28;
  v34 = v46;
  v46(v33, v5);
  *(v29 + *(v54 + 20)) = v53;
  v35 = v52;
  sub_10000D60C(v29, v52, type metadata accessor for ShellPreviewService);
  v36 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v37 = swift_allocObject();
  sub_10000D8BC(v35, v37 + v36, type metadata accessor for ShellPreviewService);
  sub_10000D2E8(&qword_10003D298, type metadata accessor for ShellPreviewService, &unk_10002EA5C);
  ConcurrentInvalidatable.onInvalidation(_:)();

  return v34(a1, v5);
}

uint64_t sub_100009AE0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v35 = a1;
  v2 = type metadata accessor for InvalidationTrace();
  v29 = v2;
  v34 = *(v2 - 8);
  v36 = *(v34 + 64);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v5 = type metadata accessor for PreviewShellProxy(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v31 = &v27 - v9;
  v11 = type metadata accessor for Callsite();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  Callsite.init(_:_:_:_:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_10000D60C(v32, v7, type metadata accessor for PreviewShellProxy);
  (*(v12 + 16))(v15, v17, v11);
  v19 = v34;
  (*(v34 + 16))(v4, v35, v2);
  v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v21 = (v6 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = v19;
  v23 = (v13 + *(v19 + 80) + v21) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10000D8BC(v7, v24 + v20, type metadata accessor for PreviewShellProxy);
  v25 = v28;
  (*(v12 + 32))(v24 + v21, v15, v28);
  (*(v22 + 32))(v24 + v23, v30, v29);
  sub_100014798(0, 0, v31, &unk_10002E7F0, v24);

  return (*(v12 + 8))(v17, v25);
}

uint64_t sub_100009ECC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TransportReply();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for DaemonToShell.TwoWayMessage();
  v2[8] = swift_task_alloc();
  v4 = *(type metadata accessor for ShellPreviewService(0) - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for PreviewType();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for ServiceMessage.Content();
  v2[17] = swift_task_alloc();
  updated = type metadata accessor for ShellUpdatePayload();
  v2[18] = updated;
  v2[19] = *(updated - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for PropertyList();
  v2[21] = swift_task_alloc();
  sub_100001CC8(&qword_10003D2A0, &qword_10002EAB0);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for CapabilitiesPayload();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for ServiceMessage();
  v2[30] = v9;
  v2[31] = *(v9 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10000A2CC, 0, 0);
}

uint64_t sub_10000A2CC()
{
  v57 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  sub_100001CC8(&qword_10003D2A8, &qword_10002EAB8);
  TransportMessage<>.body.getter();
  static Logger.uv.getter();
  v55 = *(v3 + 16);
  v55(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[26];
  v13 = v0[27];
  if (v7)
  {
    v14 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v14 = 136446210;
    sub_10000D2E8(&qword_10003D2B8, &type metadata accessor for ServiceMessage, &protocol conformance descriptor for ServiceMessage);
    v52 = v12;
    v53 = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v51 = v6;
    v18 = *(v9 + 8);
    v18(v8, v11);
    v19 = sub_10001BD80(v15, v17, &v56);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v51, "ShellPreviewService received %{public}s", v14, 0xCu);
    sub_1000041C8(v54);

    v20 = *(v13 + 8);
    v20(v53, v52);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v11);
    v20 = *(v13 + 8);
    v20(v10, v12);
  }

  v0[34] = v18;
  if (ServiceMessage.messageType.getter() == 1)
  {
    ServiceMessage.payload.getter();
    sub_10000D2E8(&qword_10003D2B0, &type metadata accessor for CapabilitiesPayload, &protocol conformance descriptor for CapabilitiesPayload);
    PropertyListRepresentable.init(propertyList:)();
    v22 = v0[24];
    v21 = v0[25];
    v24 = v0[22];
    v23 = v0[23];
    (*(v22 + 56))(v24, 0, 1, v23);
    (*(v22 + 32))(v21, v24, v23);
    if (CapabilitiesPayload.isRunningInXTP.getter())
    {
      static Logger.uv.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "CapabilitiesPayload.isRunningInXTP is true, setting flag on shell launcher", v27, 2u);
      }

      v28 = v0[28];
      v30 = v0[25];
      v29 = v0[26];
      v31 = v0[23];
      v32 = v0[24];

      v20(v28, v29);
      byte_10003DC38 = 1;
      (*(v32 + 8))(v30, v31);
    }

    else
    {
      (*(v0[24] + 8))(v0[25], v0[23]);
    }
  }

  ServiceMessage.content.getter();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[18];
    v37 = v0[14];
    v36 = v0[15];
    v38 = v0[13];
    (*(v34 + 32))(v33, v0[17], v35);
    ShellUpdatePayload.previewType.getter();
    v39 = sub_10000B180();
    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    if (v39)
    {
      v40 = v0[11];
      v41 = v0[12];
      v42 = v0[9];
      v43 = v0[3];
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
      sub_10000D60C(v43, v40, type metadata accessor for ShellPreviewService);
      v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      sub_10000D8BC(v40, v46 + v45, type metadata accessor for ShellPreviewService);
      sub_100014A98(0, 0, v41, &unk_10002EAD0, v46);
    }
  }

  else
  {
    sub_10000AF64(v0[17], &type metadata accessor for ServiceMessage.Content);
  }

  v55(v0[8], v0[33], v0[30]);
  swift_storeEnumTagMultiPayload();
  TransportMessage<>.reply.getter();
  v47 = swift_task_alloc();
  v0[35] = v47;
  *v47 = v0;
  v47[1] = sub_10000A92C;
  v48 = v0[8];
  v49 = v0[6];

  return sub_10000262C(v48, v49);
}

uint64_t sub_10000A92C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  sub_10000AF64(v1, &type metadata accessor for DaemonToShell.TwoWayMessage);

  return _swift_task_switch(sub_10000AAB4, 0, 0);
}

uint64_t sub_10000AAB4()
{
  (*(v0 + 272))(*(v0 + 264), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000ABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10000AC10, 0, 0);
}

uint64_t sub_10000AC10()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10000ACF4;
  v2 = *(v0 + 24);

  return sub_100008E40(v2, 1);
}

uint64_t sub_10000ACF4(int a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    v5 = sub_10000AE54;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_10000AE24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000AE24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40) != 0;
  *v1 = *(v0 + 48);
  *(v1 + 4) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000AE54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40) != 0;
  *v1 = 0;
  *(v1 + 4) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D2E8(&qword_10003D298, type metadata accessor for ShellPreviewService, &unk_10002EA5C);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_10000AF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000AFC4@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for PreviewsService.Variant();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v6, enum case for PreviewsService.Variant.default(_:));

  return sub_10000951C(v6, a1, a2);
}

uint64_t sub_10000B0A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);

  return sub_10000951C(v8, a1, a3);
}

uint64_t sub_10000B180()
{
  v1 = v0;
  v2 = type metadata accessor for Callsite();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewType.HostLocation();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for PreviewType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 != enum case for PreviewType.hosted(_:))
  {
    if (v16 != enum case for PreviewType.static(_:))
    {
      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      (*(v21 + 8))(v4, v2);
      (*(v13 + 8))(v15, v12);
    }

    return 0;
  }

  (*(v13 + 96))(v15, v12);
  (*(v6 + 32))(v11, v15, v5);
  (*(v6 + 16))(v9, v11, v5);
  v17 = (*(v6 + 88))(v9, v5);
  if (v17 != enum case for PreviewType.HostLocation.injectedScene(_:))
  {
    if (v17 == enum case for PreviewType.HostLocation.mainScene(_:))
    {
      (*(v6 + 8))(v11, v5);
      return 1;
    }

    if (v17 == enum case for PreviewType.HostLocation.simDisplayScene(_:) || v17 == enum case for PreviewType.HostLocation.external(_:) || v17 == enum case for PreviewType.HostLocation.nsPreview(_:))
    {
      (*(v6 + 8))(v11, v5);
      return 0;
    }

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v21 + 8))(v4, v2);
  }

  v18 = *(v6 + 8);
  v18(v11, v5);
  v18(v9, v5);
  return 0;
}

uint64_t sub_10000B5C0()
{
  v1 = *(type metadata accessor for ShellPreviewService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for PreviewsService.Variant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(type metadata accessor for PreviewShellProxy(0) + 20);
  v7 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B708(uint64_t a1)
{
  v4 = *(type metadata accessor for ShellPreviewService(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_10000ABF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10000B7F8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *a1;
  if (!*(*a1 + 16))
  {
    v9 = 1;
    goto LABEL_14;
  }

  sub_1000109F0(a2);
  v9 = v8 ^ 1;
  if (((v8 ^ 1) & 1) != 0 || (a3 & 1) == 0)
  {
LABEL_7:
    if (!*(v7 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!*(v7 + 16))
  {
    v9 = 0;
    goto LABEL_14;
  }

  v10 = sub_1000109F0(a2);
  if (v11)
  {
    v12 = *(v7 + 56) + 32 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);

    sub_10000D390(v13, v14, v15, v16);
    v9 = v14 ^ 1;
    goto LABEL_7;
  }

  v9 = 0;
  if (!*(v7 + 16))
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = sub_1000109F0(a2);
  if (v18)
  {
    v19 = *(v7 + 56) + 32 * v17;
    v25 = *v19;
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v28 = v21;
    v27 = v22;

    if ((a3 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_14:
  v22 = &_swiftEmptyArrayStorage;
  v28 = &_swiftEmptyArrayStorage;
  v27 = &_swiftEmptyArrayStorage;
  v25 = 3;
  if ((a3 & 1) == 0)
  {
    v20 = 0;
LABEL_20:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v28;
    goto LABEL_23;
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_16:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = 1;
  v22 = v27;
LABEL_23:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *a1;
  sub_100011CEC(v25, v20, v21, v22, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v26;
  return v9 & 1;
}

uint64_t sub_10000BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 52) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return _swift_task_switch(sub_10000BA6C, 0, 0);
}

uint64_t sub_10000BA6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10000BB24;
  v6 = *(v0 + 52);
  v7 = *(v0 + 24);

  return sub_100026DC8(v7, v6, v2, v3, v4);
}

uint64_t sub_10000BB24(int a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_10000BCB4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_10000BC4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000BC4C()
{
  sub_10000BD28(*(v0 + 24), *(v0 + 48), *(v0 + 52));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BCB4()
{
  sub_10000BF9C(*(v0 + 24), *(v0 + 40), *(v0 + 52));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BD28(uint64_t a1, int a2, char a3)
{
  v7 = type metadata accessor for Callsite();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v3 + 16);

  Callsite.init(_:_:_:_:)();
  v17 = a1;
  v18 = a3;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100001CC8(&qword_10003D2D8, &qword_10002EB00);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v8 + 8))(v10, v7);

  v12 = v20;
  if (v20)
  {
    if (v20 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v14 = 0;
      while ((v12 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        LODWORD(v20) = a2;
        Promise.succeed(with:)();

        ++v14;
        if (v15 == i)
        {
        }
      }

      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v15 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

uint64_t sub_10000BF9C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for PreviewsService.Variant();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v9 - 8);
  v27 = &v27 - v10;
  v11 = type metadata accessor for Callsite();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v3;
  v36 = *(v3 + 16);

  Callsite.init(_:_:_:_:)();
  v28 = a1;
  v33 = a1;
  v34 = a3;
  v35 = a2;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100001CC8(qword_10003D2F8, &qword_10002EB18);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v12 + 8))(v14, v11);

  v16 = v37;
  if (v38)
  {
    if (v38 == 1)
    {
      if (v37 >> 62)
      {
        goto LABEL_19;
      }

      v17 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      if (v17)
      {
        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_19:
              v17 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }

            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_14;
            }
          }

          Promise.fail(with:)();

          ++v18;
        }

        while (v19 != v17);
      }

      sub_10000D0E0(v16, 1);
      return sub_10000D0E0(v16, 1);
    }
  }

  else
  {
LABEL_15:
    v20 = type metadata accessor for TaskPriority();
    v21 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    v23 = v29;
    v22 = v30;
    v24 = v31;
    (*(v30 + 16))(v29, v28, v31);
    v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v32;
    (*(v22 + 32))(&v26[v25], v23, v24);
    v26[v25 + v8] = v16 & 1;

    sub_100014798(0, 0, v21, &unk_10002EB20, v26);
  }

  return result;
}

uint64_t sub_10000C400(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v11 = sub_1000109F0(a2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v10 + 56) + 32 * v11;
  v14 = *(v13 + 16);
  if (a3)
  {
    v15 = *(v13 + 24);
    (*(v7 + 16))(v9, a2, v6);

    sub_1000131B8(0, 0, 0, 0, v9);
    v18 = v14;
    sub_10000CB30(v15);
    return v18;
  }

  else if (*(v13 + 8))
  {
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);

    sub_1000131B8(0, 0, 0, 0, v9);
  }

  return v14;
}

uint64_t sub_10000C5B8(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for PreviewsService.Variant();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v59 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Logger();
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v17 = *a1;
  if (!*(v17 + 16))
  {
    return 0;
  }

  v57 = v14;
  v58 = a2;
  v18 = sub_1000109F0(a2);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = *(v17 + 56) + 32 * v18;
  v21 = *v20;
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  if (*(v20 + 8) == 1 && (a3 & 1) == 0)
  {
    return 0;
  }

  v53 = *(v20 + 8);
  v54 = v21;
  v55 = v22;

  v56 = v23;

  static Logger.uv.getter();
  v51 = *(v8 + 16);
  v52 = v8 + 16;
  v51(v12, v58, v7);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = v26;
    v28 = v27;
    v48 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v28 = 136446978;
    if (a3)
    {
      v29 = 0x756F726765726F66;
    }

    else
    {
      v29 = 0x756F72676B636162;
    }

    v30 = sub_10001BD80(v29, 0xEA0000000000646ELL, &v61);
    v47 = v25;
    v31 = v30;

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    sub_10000D2E8(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v8 + 8))(v12, v7);
    v35 = sub_10001BD80(v32, v34, &v61);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2050;
    v36 = v54;
    *(v28 + 24) = v54;
    *(v28 + 32) = 2114;
    v37 = v28;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 34) = v38;
    v40 = v47;
    v39 = v48;
    *v48 = v38;
    _os_log_impl(&_mh_execute_header, v40, v49, "Failed %{public}s launch of Preview Shell (%{public}s) (%{public}ld retries remaining): %{public}@", v37, 0x2Au);
    sub_10000D330(v39, &qword_10003CE68, &unk_10002EE00);

    swift_arrayDestroy();

    (*(v57 + 8))(v16, v13);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    (*(v57 + 8))(v16, v13);
    v36 = v54;
  }

  v41 = v58;
  if (v36 < 1)
  {
    v45 = v59;
    v51(v59, v58, v7);
    sub_1000131B8(0, 0, 0, 0, v45);
    v61 = v55;
    sub_10000CB30(v56);
    return v61;
  }

  else
  {
    v42 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v42;
    v44 = v53;
    sub_100011CEC(v36 - 1, v53, v55, v56, v41, isUniquelyReferenced_nonNull_native);
    result = v44;
    *v42 = v61;
  }

  return result;
}

void *sub_10000CAE0(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10000CB00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10000CB30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000CC20(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000CCDC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_10000CC20(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_10000CCDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100004334(&qword_10003D2F0, &qword_10003D2E8, &qword_10002EB10, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100001CC8(&qword_10003D2E8, &qword_10002EB10);
            v9 = sub_10000CE8C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100001CC8(&qword_10003D2E0, &qword_10002EB08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10000CE8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10000CF0C;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B7F8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10000CF50(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DADC;

  return sub_10000BA48(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000C400(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000C5B8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
  }

  return result;
}

uint64_t sub_10000D0E0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_10000D0F8()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10000D1C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002538;

  return sub_10000BA48(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CC8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10000D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_10000D3D4()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D45C()
{
  v1 = *(type metadata accessor for ShellPreviewService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for PreviewsService.Variant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(type metadata accessor for PreviewShellProxy(0) + 20);
  v7 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D59C(uint64_t a1)
{
  v3 = *(type metadata accessor for ShellPreviewService(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100009AE0(a1, v4);
}

uint64_t sub_10000D60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D674()
{
  v1 = (type metadata accessor for PreviewShellProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v19 = type metadata accessor for Callsite();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v17 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for PreviewsService.Variant();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[7];
  v15 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v18, v17 | 7);
}

uint64_t sub_10000D8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D924(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewShellProxy(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Callsite() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for InvalidationTrace() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000DADC;

  return sub_100002458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10000DAE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10000DB84()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_10000DC04()
{
  sub_10000DB84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000DCB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DCBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000DD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000DD98(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10000DDB4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000DDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000DE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10000DE54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10000DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewShellProxy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000DF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewShellProxy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CrashListenerService(uint64_t a1)
{
  result = qword_10003D4D8;
  if (!qword_10003D4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E06C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v35 = a1;
  v2 = type metadata accessor for InvalidationTrace();
  v29 = v2;
  v34 = *(v2 - 8);
  v36 = *(v34 + 64);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v5 = type metadata accessor for PreviewShellProxy(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v31 = &v27 - v9;
  v11 = type metadata accessor for Callsite();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  Callsite.init(_:_:_:_:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_10000EAFC(v32, v7, type metadata accessor for PreviewShellProxy);
  (*(v12 + 16))(v15, v17, v11);
  v19 = v34;
  (*(v34 + 16))(v4, v35, v2);
  v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v21 = (v6 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = v19;
  v23 = (v13 + *(v19 + 80) + v21) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10000EDAC(v7, v24 + v20, type metadata accessor for PreviewShellProxy);
  v25 = v28;
  (*(v12 + 32))(v24 + v21, v15, v28);
  (*(v22 + 32))(v24 + v23, v30, v29);
  sub_100014798(0, 0, v31, &unk_10002E7F0, v24);

  return (*(v12 + 8))(v17, v25);
}

uint64_t sub_10000E458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E508(qword_10003D550, &unk_10002ECB0);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_10000E508(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CrashListenerService(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E54C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v28 = a2;
  v32 = a1;
  v4 = type metadata accessor for CrashListenerService(0);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreviewsService.Variant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = *(v8 + 16);
  v17(&v27 - v15, v28, v7);
  v17(v14, v16, v7);
  v17(a3, v14, v7);
  v17(v11, v14, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  type metadata accessor for PreviewShellProxy(0);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100007DB0();
  ConcurrentOnDemand.init(create:)();
  v20 = *(v8 + 8);
  v20(v14, v7);
  v21 = *(v30 + 20);
  v27 = a3;
  *&a3[v21] = v32;
  v22 = a3;
  v23 = v29;
  sub_10000EAFC(v22, v29, type metadata accessor for CrashListenerService);
  v24 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v25 = swift_allocObject();
  sub_10000EDAC(v23, v25 + v24, type metadata accessor for CrashListenerService);
  sub_10000E508(qword_10003D550, &unk_10002ECB0);

  ConcurrentInvalidatable.onInvalidation(_:)();

  return (v20)(v16, v7);
}

uint64_t sub_10000E8C4()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E94C()
{
  v1 = *(type metadata accessor for CrashListenerService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for PreviewsService.Variant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(type metadata accessor for PreviewShellProxy(0) + 20);
  v7 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000EA8C(uint64_t a1)
{
  v3 = *(type metadata accessor for CrashListenerService(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000E06C(a1, v4);
}

uint64_t sub_10000EAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EB64()
{
  v1 = (type metadata accessor for PreviewShellProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v19 = type metadata accessor for Callsite();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v17 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for PreviewsService.Variant();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[7];
  v15 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v18, v17 | 7);
}

uint64_t sub_10000EDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000EE50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000EE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000EEF0()
{
  type metadata accessor for StateDumpManager();
  swift_allocObject();
  result = sub_10000F218();
  qword_10003DC20 = result;
  return result;
}

uint64_t sub_10000EF2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = type metadata accessor for PropertyList();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = a2;
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  PropertyList.init()();
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v22 = (v4 + 8);
  v27 = v6;

  for (i = 0; v10; result = )
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v14 << 10) | (16 * v15);
    v17 = *(*(v27 + 48) + v16 + 8);
    v26 = *(*(v27 + 56) + v16);
    __chkstk_darwin(result);
    *(&v21 - 4) = v18;
    *(&v21 - 3) = v17;
    *(&v21 - 1) = v26;

    v20 = v24;
    v19 = v25;
    PropertyList.init<A, B>(content:)();
    PropertyList.confidentlyMerge(_:)();
    (*v22)(v20, v19);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  *a1 = a3;
  a1[1] = a4;

  a5(v7);
  v8 = type metadata accessor for PropertyList();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, 0, 1, v8);
}

uint64_t sub_10000F218()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  aBlock = &_swiftEmptyDictionarySingleton;
  sub_100001CC8(&qword_10003D6A8, &unk_10002EDF0);
  *(v0 + 40) = OSAllocatedUnfairLock.init(value:)();
  sub_100012D9C(0, &qword_10003D6B0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v35 = sub_100012D7C;
  v36 = v0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10000FB84;
  v34 = &unk_100039AD0;
  v11 = _Block_copy(&aBlock);

  v12 = os_state_add_handler();
  _Block_release(v11);

  *(v0 + 16) = v12;
  *(v0 + 24) = 0;
  v13 = SIG_IGN.getter();
  signal(29, v13);
  sub_100012D9C(0, &qword_10003D6B8, OS_dispatch_source_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  ObjectType = swift_getObjectType();
  v35 = sub_100012DE4;
  v36 = v0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v17 = v26;
  v33 = sub_100001C14;
  v34 = &unk_100039AF8;
  v18 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  sub_1000103B0(ObjectType, v19, v20);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v18);
  (*(v4 + 8))(v6, v28);
  (*(v7 + 8))(v9, v27);

  OS_dispatch_source.activate()();
  static Logger.uv.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "SIGINFO handler activated", v23, 2u);
  }

  (*(v29 + 8))(v17, v30);
  *(v1 + 32) = v15;
  swift_unknownObjectRelease();
  return v1;
}

char *sub_10000F6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PropertyList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) != 3)
  {
    return result;
  }

  v34[0] = objc_opt_self();
  v35 = *(a2 + 40);

  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)();
  (*(v5 + 8))(v7, v4);

  PropertyList.serializableDictionary.getter();
  (*(v9 + 8))(v11, v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = 0;
  v14 = [v34[0] dataWithPropertyList:isa format:200 options:0 error:&v35];

  v15 = v35;
  if (!v14)
  {
    v22 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_19;
    }

    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (v25)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v26 <= 0x8000)
    {
LABEL_15:
      if (v19 != 2)
      {
        goto LABEL_31;
      }

      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      v25 = __OFSUB__(v27, v28);
      v20 = v27 - v28;
      if (!v25)
      {
LABEL_20:
        v21 = v20 + 200;
        if (!__OFADD__(v20, 200))
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (v19)
  {
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_51;
    }

    if (HIDWORD(v16) - v16 <= 0x8000)
    {
      goto LABEL_15;
    }

LABEL_25:
    sub_100012DEC(v16, v18);
    return 0;
  }

  v20 = BYTE6(v18);
  v21 = BYTE6(v18) + 200;
  if (__OFADD__(BYTE6(v18), 200))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    LODWORD(v32) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v32 = v32;
LABEL_37:
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v32))
    {
      *(v20 + 4) = v32;
      strcpy((v20 + 136), "previewsd state");
      if (v19 != 2)
      {
        if (!__OFSUB__(HIDWORD(v16), v16))
        {
          v33 = v20;
          goto LABEL_46;
        }

LABEL_55:
        __break(1u);
      }

      if (!__OFSUB__(*(v16 + 24), *(v16 + 16)))
      {
        v33 = v20;
        goto LABEL_46;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
LABEL_21:
    v29 = calloc(v21, 1uLL);
    if (!v29)
    {
      goto LABEL_25;
    }

    v20 = v29;
    *v29 = 1;
    if (v19 <= 1)
    {
      if (!v19)
      {
        *(v29 + 1) = BYTE6(v18);
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    v25 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v25)
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_31:
    LODWORD(v20) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_52;
    }

    v20 = v20;
    v21 = v20 + 200;
    if (__OFADD__(v20, 200))
    {
      goto LABEL_34;
    }
  }

  *(v29 + 1) = 0;
LABEL_43:
  v33 = v29;
  strcpy(v29 + 136, "previewsd state");
LABEL_46:
  Data.copyBytes(to:count:)();
  sub_100012DEC(v16, v18);
  return v33;
}

uint64_t sub_10000FB84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_10000FBD4(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v64 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Callsite();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PropertyList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v63 = &v60 - v15;
  v16 = __chkstk_darwin(v14);
  v61 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  static Logger.uv.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "SIGINFO received, logging current state dump", v22, 2u);
  }

  v23 = *(v11 + 8);
  v68 = v11 + 8;
  v23(v19, v10);
  v69 = *(v65 + 40);

  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)();
  (*(v66 + 8))(v5, v67);

  PropertyList.serializableDictionary.getter();
  (*(v7 + 8))(v9, v6);
  v24 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = 0;
  v26 = [v24 dataWithJSONObject:isa options:15 error:&v69];

  v27 = v69;
  if (!v26)
  {
    v44 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = v62;
    static Logger.uv.getter();
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v23;
      v50 = v10;
      v51 = swift_slowAlloc();
      *v48 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to log state dump due to %@", v48, 0xCu);
      sub_100004160(v51);
      v10 = v50;
      v23 = v49;
    }

    else
    {
    }

    v57 = v45;
    v58 = v10;
    return (v23)(v57, v58);
  }

  v28 = v10;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  static String.Encoding.utf8.getter();
  v32 = String.init(data:encoding:)();
  if (!v33)
  {
    v53 = v61;
    static Logger.uv.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to log state dump as JSON couldn't be converted to string", v56, 2u);
    }

    sub_100012DEC(v29, v31);

    v57 = v53;
    v58 = v10;
    return (v23)(v57, v58);
  }

  v34 = v33;
  v35 = v23;
  v36 = v32;
  v37 = v63;
  static Logger.uv.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69 = v41;
    *v40 = 136315138;
    v42 = sub_10001BD80(v36, v34, &v69);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s", v40, 0xCu);
    sub_1000041C8(v41);

    sub_100012DEC(v29, v31);

    v43 = v63;
  }

  else
  {

    sub_100012DEC(v29, v31);

    v43 = v37;
  }

  return v35(v43, v28);
}

uint64_t sub_1000103B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100012E4C(&qword_10003D6C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001CC8(&unk_10003CC60, &qword_10002E490);
  sub_100004334(&qword_10003D6D0, &unk_10003CC60, &qword_10002E490, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10001049C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v29 = a1;
  v28 = type metadata accessor for Callsite();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25 = v8;
    v20 = v5;
    v21 = v19;
    v30 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001BD80(v29, a2, &v30);
    _os_log_impl(&_mh_execute_header, v15, v16, "state dump provider '%s' added", v18, 0xCu);
    sub_1000041C8(v21);
    v5 = v20;
    v8 = v25;

    a4 = v26;
  }

  (*(v12 + 8))(v14, v11);
  v30 = *(v5 + 40);

  v22 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v22);
  *(&v24 - 4) = v29;
  *(&v24 - 3) = a2;
  *(&v24 - 2) = v27;
  *(&v24 - 1) = a4;
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v8 + 8))(v10, v28);
}

uint64_t sub_1000107FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_100012248(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v12;
  return result;
}

uint64_t sub_100010898()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10001091C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_10001097C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_1000109F0(uint64_t a1)
{
  type metadata accessor for PreviewsService.Variant();
  sub_100012E4C(&qword_10003D700, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100010C54(a1, v2, &type metadata accessor for PreviewsService.Variant, &qword_10003D708, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
}

unint64_t sub_100010AC4(uint64_t a1)
{
  type metadata accessor for Identifier();
  sub_100012E4C(&qword_10003D6E8, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100010C54(a1, v2, &type metadata accessor for Identifier, &qword_10003D6F0, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
}

unint64_t sub_100010B98(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100010DF4(a1, v4);
}

unint64_t sub_100010BDC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100010EBC(a1, a2, v4);
}

unint64_t sub_100010C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100012E4C(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100010DF4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012E94(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100012EF0(v8);
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

unint64_t sub_100010EBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100010F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PreviewsService.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100001CC8(&qword_10003D6F8, qword_10002EE10);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = result + 64;
    v40 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v45 = *(v6 + 72);
      v26 = v25 + v45 * v24;
      if (v41)
      {
        (*v42)(v46, v26, v5);
        v27 = *(v9 + 56) + 32 * v24;
        v44 = *v27;
        v43 = *(v27 + 8);
        v47 = *(v27 + 16);
      }

      else
      {
        (*v38)(v46, v26, v5);
        v28 = *(v9 + 56) + 32 * v24;
        v44 = *v28;
        v43 = *(v28 + 8);
        v47 = *(v28 + 16);
      }

      sub_100012E4C(&qword_10003D700, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v11 + 48) + v45 * v19, v46, v5);
      v20 = *(v11 + 56) + 32 * v19;
      *v20 = v44;
      *(v20 + 8) = v43;
      *(v20 + 16) = v47;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100011398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100012E4C(&qword_10003D6E8, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100011774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100011A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001CC8(&qword_10003D6A0, &qword_10002EDE8);
  v33 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100011CEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v31 = a1;
  v32 = a3;
  v30 = a2;
  v11 = type metadata accessor for PreviewsService.Variant();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1000109F0(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_100012560();
      goto LABEL_9;
    }

    sub_100010F74(v20, a6 & 1);
    v23 = sub_1000109F0(a5);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 32 * v17;
    *v27 = v31;
    *(v27 + 8) = v30 & 1;
    *(v27 + 16) = v25;
    *(v27 + 24) = a4;
  }

  else
  {
    (*(v12 + 16))(v14, a5, v11);
    return sub_1000123D0(v17, v14, v31, v30 & 1, v25, a4, v26);
  }
}

void sub_100011EF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100010AC4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100012810();
      goto LABEL_7;
    }

    sub_100011398(v17, a3 & 1);
    v23 = sub_100010AC4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000124A8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1000120C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100011774(v18, a5 & 1);
      v13 = sub_100010BDC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100012A84();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_100012248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100011A34(v18, a5 & 1);
      v13 = sub_100010BDC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100012BFC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1000123D0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for PreviewsService.Variant();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1000124A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Identifier();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_100012560()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewsService.Variant();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CC8(&qword_10003D6F8, qword_10002EE10);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v43 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = (v25 + 32 * v20);
        v42 = *v27;
        v41 = *(v27 + 8);
        v28 = v27[2];
        v29 = v27[3];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = *(v30 + 56) + v26;
        v5 = v36;
        *v31 = v42;
        *(v31 + 8) = v41;
        *(v31 + 16) = v28;
        *(v31 + 24) = v29;

        v15 = v43;
      }

      while (v43);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_100012810()
{
  v1 = v0;
  v31 = type metadata accessor for Identifier();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100012A84()
{
  v1 = v0;
  sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100012BFC()
{
  v1 = v0;
  sub_100001CC8(&qword_10003D6A0, &qword_10002EDE8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100012D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012D9C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100012DEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100012E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012F4C(unsigned __int8 a1)
{
  v1 = static PreviewsServiceConnection.Listener.hostToSim(machServiceName:description:)();

  return v1;
}

uint64_t sub_100013014()
{
  type metadata accessor for DaemonTransactionManager();
  inited = swift_initStaticObject();
  if (qword_10003CC28 != -1)
  {
    swift_once();
  }

  result = sub_10001049C(0xD000000000000018, 0x800000010002EE10, sub_1000130B8, 0);
  qword_10003DC28 = inited;
  return result;
}

uint64_t sub_1000130B8()
{
  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.currentState.getter();
}

uint64_t sub_100013164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000131B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v6;
    sub_100011CEC(a1, a2 & 1, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v13 = type metadata accessor for PreviewsService.Variant();
    result = (*(*(v13 - 8) + 8))(a5, v13);
    *v6 = v26;
  }

  else
  {
    v15 = sub_1000109F0(a5);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        sub_100012560();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for PreviewsService.Variant();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_100013F88(v17, v19);
      result = (v23)(a5, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for PreviewsService.Variant();
      v25 = *(*(v24 - 8) + 8);

      return v25(a5, v24);
    }
  }

  return result;
}

uint64_t sub_10001339C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100011EF4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for Identifier();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100010AC4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100012810();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for Identifier();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1000142A8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for Identifier();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100013570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = *a5;
  v6 = type metadata accessor for Identifier();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000136B0, 0, 0);
}

uint64_t sub_1000136B0()
{
  if (qword_10003CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_10003DC18;
  *(v0 + 176) = qword_10003DC18;
  *(v0 + 184) = PreviewsServiceConnection.remotePid.getter();

  return _swift_task_switch(sub_10001376C, v1, 0);
}

uint64_t sub_10001376C()
{
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 46)];
  v2 = v0[13];
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 46);
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = 0;
    *(v5 + 28) = v4;
    *(v5 + 32) = sub_100013E44;
    *(v5 + 40) = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100013F24;
    *(v6 + 24) = v5;
    v0[6] = sub_100013F48;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100013164;
    v0[5] = &unk_100039B48;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 monitorWithConfiguration:v7];
    _Block_release(v7);

    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return _swift_task_switch(v10, v11, v12);
    }

    v13 = v0[22];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[16];
    v27 = v0[21];
    v17 = v0[15];

    Identifier.init()();
    swift_beginAccess();
    v18 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v13 + 112);
    *(v13 + 112) = 0x8000000000000000;
    sub_100011EF4(v18, v14, isUniquelyReferenced_nonNull_native);
    *(v13 + 112) = v28;
    swift_endAccess();
    (*(v16 + 16))(v15, v14, v17);
    v20 = v3;
    v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    (*(v16 + 32))(v22 + v21, v15, v17);

    CancelationToken<>.init(dsoHandle:file:line:column:function:_:)();

    (*(v16 + 8))(v14, v17);
    v23 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v23 - 8) + 56))(v27, 0, 1, v23);
  }

  else
  {
    v24 = v0[21];

    v25 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  }

  v10 = sub_100013B6C;
  v11 = 0;
  v12 = 0;

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100013B6C()
{
  v1 = v0[20];
  sub_100013E4C(v0[21], v1);
  v2 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[20];
    sub_100013EBC(v0[21]);
    sub_100013EBC(v4);
  }

  else
  {
    v0[11] = v0[13];
    v6 = v0[20];
    v5 = v0[21];
    sub_1000146F0(&qword_10003D7C8, &protocol conformance descriptor for DaemonConnection<A>);
    CancelationToken<>.cancel<A>(onInvalidationOf:)();
    sub_100013EBC(v5);
    (*(v3 + 8))(v6, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100013CE8(uint64_t *a1)
{
  v2 = type metadata accessor for InvalidationTrace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = a1;
  static InvalidationTrace.empty.getter();
  sub_1000146F0(&qword_10003D838, &protocol conformance descriptor for DaemonConnection<A>);
  AnyInvalidatable.invalidate(file:line:column:function:trace:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100013E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013EBC(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100013F88(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for PreviewsService.Variant();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_100014740(&qword_10003D700, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (a1 != v10 || v29 >= v30 + 2)
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1000142A8(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Identifier();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100014740(&qword_10003D6E8, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1000145C8()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001468C()
{
  v1 = *(type metadata accessor for Identifier() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100004E68(v2, v3);
}

uint64_t sub_1000146F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100001D74(&qword_10003D7D0, qword_10002EE68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100014798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005B8C(a3, v25 - v10, &qword_10003D060, &qword_10002E6B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D330(v11, &qword_10003D060, &qword_10002E6B0);
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

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

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

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
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

uint64_t sub_100014A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005B8C(a3, v25 - v10, &qword_10003D060, &qword_10002E6B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D330(v11, &qword_10003D060, &qword_10002E6B0);
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

      sub_100001CC8(&qword_10003D990, &qword_10002F000);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

      return v22;
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

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100001CC8(&qword_10003D990, &qword_10002F000);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100014DAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for CancellationToken();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PropertyList();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for ShellService();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for PreviewsService.Variant();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v2[18] = *(v8 + 64);
  v2[19] = swift_task_alloc();
  sub_100001CC8(&qword_10003DA40, &qword_10002F158);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100014FD4, 0, 0);
}

uint64_t sub_100014FD4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[4];
  static Timeout.seconds(_:)();
  v6 = type metadata accessor for Timeout();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[21] = v8;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_100015178;
  v10 = v0[20];

  return withTimeout<A>(_:perform:makeTimeoutError:)(v0 + 24, v10, &unk_10002F160, v8, &unk_10002E630, 0, &type metadata for Int32);
}

uint64_t sub_100015178()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  sub_10000D330(*(v2 + 160), &qword_10003DA40, &qword_10002F158);

  if (v0)
  {
    v3 = sub_100022188;
  }

  else
  {
    v3 = sub_1000152D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000152D8()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  (*(v3 + 104))(v2, enum case for ShellService.hostToShellPipeService(_:), v4);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v6 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  if (v1)
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v11 = v6;
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[6];
    v21 = v0[5];
    v22 = v0[3];
    (*(v0[11] + 8))();
    (*(v13 + 8))(v12, v14);
    type metadata accessor for PreviewAssertionManager();
    static PreviewAssertionManager.shared.getter();
    PreviewAssertionManager.takeActivePreviewAssertion(for:)();

    v0[2] = v11;
    (*(v17 + 16))(v16, v15, v21);
    v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v19 = swift_allocObject();
    (*(v17 + 32))(v19 + v18, v16, v21);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    ConcurrentInvalidatable.onInvalidation(_:)();

    v22[3] = v5;
    v22[4] = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    *v22 = v11;
    (*(v17 + 8))(v15, v21);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100015620(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for CancellationToken();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PropertyList();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for ShellService();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for PreviewsService.Variant();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v2[18] = *(v8 + 64);
  v2[19] = swift_task_alloc();
  sub_100001CC8(&qword_10003DA40, &qword_10002F158);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100015848, 0, 0);
}

uint64_t sub_100015848()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[4];
  static Timeout.seconds(_:)();
  v6 = type metadata accessor for Timeout();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[21] = v8;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1000159EC;
  v10 = v0[20];

  return withTimeout<A>(_:perform:makeTimeoutError:)(v0 + 24, v10, &unk_10002F168, v8, &unk_10002E630, 0, &type metadata for Int32);
}

uint64_t sub_1000159EC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  sub_10000D330(*(v2 + 160), &qword_10003DA40, &qword_10002F158);

  if (v0)
  {
    v3 = sub_100015EE0;
  }

  else
  {
    v3 = sub_100015B4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015B4C()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  v6 = enum case for ShellService.Instance.hostSide(_:);
  v7 = type metadata accessor for ShellService.Instance();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  (*(v3 + 104))(v2, enum case for ShellService.hostToAgentPipeService(_:), v4);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v8 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  if (v1)
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[15];
    v15 = v8;
    v16 = v0[13];
    v17 = v0[9];
    v18 = v0[6];
    v23 = v0[8];
    v19 = v0[5];
    v24 = v0[3];
    (*(v0[11] + 8))();
    (*(v13 + 8))(v14, v16);
    type metadata accessor for PreviewAssertionManager();
    static PreviewAssertionManager.shared.getter();
    PreviewAssertionManager.takeActivePreviewAssertion(for:)();

    v0[2] = v15;
    (*(v18 + 16))(v23, v17, v19);
    v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v21 = swift_allocObject();
    (*(v18 + 32))(v21 + v20, v23, v19);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    ConcurrentInvalidatable.onInvalidation(_:)();

    v24[3] = v5;
    v24[4] = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8, &protocol conformance descriptor for ShellConnection<A>);
    *v24 = v15;
    (*(v18 + 8))(v17, v19);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100015EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015F88(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Callsite();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v5 - 8);
  v46 = &v36 - v6;
  v7 = type metadata accessor for CancellationToken();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = __chkstk_darwin(v7);
  v41 = v9;
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v36 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10001BD80(0x6C65685374736F48, 0xEF6D65747379536CLL, &v52);
    *(v17 + 12) = 2080;
    v51 = a1;
    type metadata accessor for PreviewsServiceConnection();

    v18 = String.init<A>(describing:)();
    v20 = sub_10001BD80(v18, v19, &v52);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "PipeListener<%s> got incoming connection: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v12 + 8))(v14, v11);
  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v40 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v21 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v38 = type metadata accessor for TaskPriority();
  v22 = *(v38 - 8);
  v37 = *(v22 + 56);
  v39 = v22 + 56;
  v23 = v46;
  v37(v46, 1, 1, v38);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = v21;

  sub_100014798(0, 0, v23, &unk_10002F048, v24);

  v25 = v49;
  v52 = *(v49 + 32);

  v26 = v43;
  v27 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v27);
  *(&v36 - 2) = 1;
  *(&v36 - 1) = v25;
  sub_100001CC8(&qword_10003D9B0, &qword_10002F050);
  sub_100004334(&qword_10003D9B8, &qword_10003D9B0, &qword_10002F050, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v44 + 8))(v26, v45);

  v52 = v21;
  v29 = v47;
  v28 = v48;
  v30 = v42;
  v31 = v50;
  (*(v47 + 16))(v42, v50, v48);
  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v25;
  (*(v29 + 32))(v33 + v32, v30, v28);
  sub_100004334(&qword_10003D7C8, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);

  ConcurrentInvalidatable.onInvalidation(_:)();

  v37(v23, 1, 1, v38);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v25;
  v34[5] = v21;

  sub_100014798(0, 0, v23, &unk_10002F060, v34);

  return (*(v29 + 8))(v31, v28);
}

uint64_t sub_100016724(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Callsite();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v5 - 8);
  v46 = &v36 - v6;
  v7 = type metadata accessor for CancellationToken();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = __chkstk_darwin(v7);
  v41 = v9;
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v36 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10001BD80(0x6E65674174736F48, 0xEF6D657473795374, &v52);
    *(v17 + 12) = 2080;
    v51 = a1;
    type metadata accessor for PreviewsServiceConnection();

    v18 = String.init<A>(describing:)();
    v20 = sub_10001BD80(v18, v19, &v52);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "PipeListener<%s> got incoming connection: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v12 + 8))(v14, v11);
  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v40 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v21 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v38 = type metadata accessor for TaskPriority();
  v22 = *(v38 - 8);
  v37 = *(v22 + 56);
  v39 = v22 + 56;
  v23 = v46;
  v37(v46, 1, 1, v38);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = v21;

  sub_100014798(0, 0, v23, &unk_10002F088, v24);

  v25 = v49;
  v52 = *(v49 + 32);

  v26 = v43;
  v27 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v27);
  *(&v36 - 2) = 1;
  *(&v36 - 1) = v25;
  sub_100001CC8(&qword_10003D9D8, &qword_10002F090);
  sub_100004334(&qword_10003D9E0, &qword_10003D9D8, &qword_10002F090, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v44 + 8))(v26, v45);

  v52 = v21;
  v29 = v47;
  v28 = v48;
  v30 = v42;
  v31 = v50;
  (*(v47 + 16))(v42, v50, v48);
  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v25;
  (*(v29 + 32))(v33 + v32, v30, v28);
  sub_100004334(&qword_10003D7C8, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);

  ConcurrentInvalidatable.onInvalidation(_:)();

  v37(v23, 1, 1, v38);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v25;
  v34[5] = v21;

  sub_100014798(0, 0, v23, &unk_10002F0A0, v34);

  return (*(v29 + 8))(v31, v28);
}

uint64_t sub_100016EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v16[1] = a3;
  v11 = type metadata accessor for Callsite();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[7] = *(a2 + 32);

  Callsite.init(_:_:_:_:)();
  v16[4] = -1;
  v16[5] = a2;
  sub_100001CC8(a4, a5);
  sub_100004334(a6, a4, a5, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v12 + 8))(v14, v11);

  return CancellationToken.cancel(dsoHandle:file:line:column:function:)();
}

uint64_t sub_10001709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = type metadata accessor for InvalidationTrace();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000171E0, 0, 0);
}

uint64_t sub_1000171E0()
{
  v1 = v0[9];
  v0[5] = v0[10];
  v0[6] = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1000172D4;

  return MessagePipe.addLeftTransport(_:)(v0 + 2);
}

uint64_t sub_1000172D4()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100022214, 0, 0);
  }

  else
  {
    sub_1000041C8(v2 + 2);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100017424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = type metadata accessor for InvalidationTrace();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100017568, 0, 0);
}

uint64_t sub_100017568()
{
  v1 = v0[9];
  v0[5] = v0[10];
  v0[6] = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10001765C;

  return MessagePipe.addLeftTransport(_:)(v0 + 2);
}

uint64_t sub_10001765C()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000177AC, 0, 0);
  }

  else
  {
    sub_1000041C8(v2 + 2);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1000177AC()
{
  sub_1000041C8(v0 + 2);
  static Logger.uv.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to attach client to message pipe: %@", v3, 0xCu);
    sub_10000D330(v4, &qword_10003CE68, &unk_10002EE00);
  }

  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v14 = v0[11];
  v11 = v0[9];

  (*(v7 + 8))(v6, v9);
  v0[7] = v11;
  static InvalidationTrace.empty.getter();
  sub_100004334(&qword_10003D838, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  AnyInvalidatable.invalidate(file:line:column:function:trace:)();

  (*(v10 + 8))(v8, v14);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000179EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else
  {
    *a1 = v13;
    if (a1[1])
    {
      sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
      Task.cancel()();
    }

    a1[1] = 0;
    if (!v13)
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a3;

      result = sub_100018A68(0, 0, v12, a5, v15);
      a1[1] = result;
    }
  }

  return result;
}

uint64_t sub_100017B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Callsite();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100017CF0, 0, 0);
}

uint64_t sub_100017CF0(uint64_t a1)
{
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Last pipe listener client went away, scheduling teardown...", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_100017E6C;

  return sub_10001B844(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100017E6C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000221FC;
  }

  else
  {
    v5 = sub_100017FDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100017FDC(uint64_t a1)
{
  v14 = v1;
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001BD80(0x6C65685374736F48, 0xEF6D65747379536CLL, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down pipe listener on %s", v8, 0xCu);
    sub_1000041C8(v9);
  }

  v5(v6, v7);
  Callsite.init(_:_:_:_:)();
  v10 = swift_task_alloc();
  v1[16] = v10;
  *v10 = v1;
  v10[1] = sub_100022200;
  v11 = v1[5];

  return MessagePipe.teardown(callsite:)(v11);
}

uint64_t sub_1000181C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Callsite();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001834C, 0, 0);
}

uint64_t sub_10001834C(uint64_t a1)
{
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Last pipe listener client went away, scheduling teardown...", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_1000184C8;

  return sub_10001B844(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000184C8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100018824;
  }

  else
  {
    v5 = sub_100018638;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100018638(uint64_t a1)
{
  v14 = v1;
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001BD80(0x6E65674174736F48, 0xEF6D657473795374, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down pipe listener on %s", v8, 0xCu);
    sub_1000041C8(v9);
  }

  v5(v6, v7);
  Callsite.init(_:_:_:_:)();
  v10 = swift_task_alloc();
  v1[16] = v10;
  *v10 = v1;
  v10[1] = sub_1000188B0;
  v11 = v1[5];

  return MessagePipe.teardown(callsite:)(v11);
}

uint64_t sub_100018824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000188B0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100018A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005B8C(a3, v22 - v9, &qword_10003D060, &qword_10002E6B0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D330(v10, &qword_10003D060, &qword_10002E6B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100018D14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v14 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v14;

  sub_100014798(0, 0, v13, &unk_10002EF50, v17);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v18 = type metadata accessor for CancellationToken();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  v16(v13, 1, 1, v15);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v19 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = v28;
  v20[7] = v14;
  sub_100021C70(v8, v20 + v19, &qword_10003D930, "~)");

  v23 = v22;

  sub_100014798(0, 0, v13, &unk_10002EF60, v20);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_1000190E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v14 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v14;

  sub_100014798(0, 0, v13, &unk_10002EFB8, v17);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v18 = type metadata accessor for CancellationToken();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  v16(v13, 1, 1, v15);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v19 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = v28;
  v20[7] = v14;
  sub_100021C70(v8, v20 + v19, &qword_10003D930, "~)");

  v23 = v22;

  sub_100014798(0, 0, v13, &unk_10002EFC8, v20);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_1000194AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v14 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v14;

  sub_100014798(0, 0, v13, &unk_10002F010, v17);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v18 = type metadata accessor for CancellationToken();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  v16(v13, 1, 1, v15);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v19 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = v28;
  v20[7] = v14;
  sub_100021C70(v8, v20 + v19, &qword_10003D930, "~)");

  v23 = v22;

  sub_100014798(0, 0, v13, &unk_10002F020, v20);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_100019878(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v14 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v14;

  sub_100014798(0, 0, v13, &unk_10002F0B8, v17);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v18 = type metadata accessor for CancellationToken();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  v16(v13, 1, 1, v15);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v19 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = v28;
  v20[7] = v14;
  sub_100021C70(v8, v20 + v19, &qword_10003D930, "~)");

  v23 = v22;

  sub_100014798(0, 0, v13, &unk_10002F0C8, v20);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_100019C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  sub_100001CC8(&qword_10003D930, "~)");
  v8[3] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100019D2C;

  return sub_10001C578(a7, a5, a6);
}

uint64_t sub_100019D2C()
{

  return _swift_task_switch(sub_100022184, 0, 0);
}

uint64_t sub_100019E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  sub_100001CC8(&qword_10003D930, "~)");
  v8[3] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100019D2C;

  return sub_10001E160(a7, a5, a6);
}

uint64_t sub_100019F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  sub_100001CC8(&qword_10003D930, "~)");
  v8[3] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100019FF8;

  return sub_10001F2D0(a7, a5, a6);
}

uint64_t sub_100019FF8()
{

  return _swift_task_switch(sub_10001A0F4, 0, 0);
}

uint64_t sub_10001A0F4()
{
  v1 = v0[3];
  sub_100005B8C(v0[2], v1, &qword_10003D930, "~)");
  v2 = type metadata accessor for CancellationToken();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[3];
  if (v4 == 1)
  {
    sub_10000D330(v0[3], &qword_10003D930, "~)");
  }

  else
  {
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v3 + 8))(v5, v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  sub_100001CC8(&qword_10003D930, "~)");
  v8[3] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100019D2C;

  return sub_100020B74(a7, a5, a6);
}

void *sub_10001A32C(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = type metadata accessor for PreviewsService.Variant();
  v4 = *(v3 - 8);
  v104 = v4[8];
  v5 = __chkstk_darwin(v3);
  v83 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v89 = v81 - v8;
  __chkstk_darwin(v7);
  v85 = v81 - v9;
  v10 = type metadata accessor for PreviewsService();
  v90 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreviewsServiceConnection.Listener();
  v15 = *(v11 + 104);
  v101 = v11 + 104;
  v15(v13, enum case for PreviewsService.processExit(_:), v10);
  v88 = v15;
  v99 = v14;
  v16 = static PreviewsServiceConnection.Listener.local(service:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v93 = v11 + 8;
  v94 = v17;
  v102 = v2;
  v2[3] = v16;
  v2[4] = sub_100024A1C;
  v2[5] = 0;
  v96 = enum case for PreviewsService.Variant.default(_:);
  v97 = v4;
  v18 = v4[13];
  v92 = v4 + 13;
  v100 = v18;
  v19 = v85;
  (v18)(v85);
  v20 = v4 + 2;
  v21 = v4[2];
  v98 = v20;
  v91 = v21;
  v22 = v89;
  v21(v89, v19, v3);
  v21(v13, v19, v3);
  v23 = v90;
  v15(v13, enum case for PreviewsService.agentPipe(_:), v90);
  v24 = static PreviewsServiceConnection.Listener.local(service:)();
  v17(v13, v23);
  v81[5] = sub_100001CC8(&qword_10003DA10, &qword_10002F0F8);
  v25 = swift_allocObject();
  v105 = 0;
  v106 = 0;
  v81[4] = sub_100001CC8(&qword_10003DA18, &qword_10002F100);
  v25[4] = OSAllocatedUnfairLock.init(value:)();
  v25[2] = v24;
  v81[3] = sub_100001CC8(&qword_10003DA20, &qword_10002F108);
  v26 = v83;
  v27 = v91;
  v91(v83, v22, v3);
  v28 = v97;
  v103 = *(v97 + 80);
  v29 = (v103 + 16) & ~v103;
  v95 = v29;
  v30 = swift_allocObject();
  v31 = v28[4];
  v86 = v28 + 4;
  v87 = v31;
  v31(v30 + v29, v26, v3);
  v32 = MessagePipe.__allocating_init(makeRightTransport:)();
  v33 = v28[1];
  v97 = v28 + 1;
  v84 = v33;
  v34 = v89;
  v33(v89, v3);
  v25[3] = v32;
  v35 = v85;
  v33(v85, v3);
  v102[6] = v25;
  v100(v35, v96, v3);
  v27(v34, v35, v3);
  v27(v13, v35, v3);
  v36 = v90;
  v88(v13, enum case for PreviewsService.shellPipe(_:), v90);
  v37 = static PreviewsServiceConnection.Listener.local(service:)();
  v94(v13, v36);
  v81[2] = sub_100001CC8(&qword_10003DA28, &qword_10002F120);
  v38 = swift_allocObject();
  v105 = 0;
  v106 = 0;
  v81[1] = sub_100001CC8(&qword_10003DA30, &qword_10002F128);
  v38[4] = OSAllocatedUnfairLock.init(value:)();
  v38[2] = v37;
  v81[0] = sub_100001CC8(&qword_10003DA38, &qword_10002F130);
  v39 = v83;
  v40 = v89;
  v27(v83, v89, v3);
  v41 = v27;
  v42 = v95;
  v43 = swift_allocObject();
  v87(v43 + v42, v39, v3);
  v44 = MessagePipe.__allocating_init(makeRightTransport:)();
  v45 = v40;
  v46 = v84;
  v84(v40, v3);
  v38[3] = v44;
  v46(v35, v3);
  v102[7] = v38;
  v100(v35, v96, v3);
  v41(v13, v35, v3);
  v47 = v90;
  v48 = v88;
  v88(v13, enum case for PreviewsService.preview(_:), v90);
  v83 = static PreviewsServiceConnection.Listener.local(service:)();
  v94(v13, v47);
  v49 = v87;
  v87(v45, v35, v3);
  v50 = v95;
  v51 = swift_allocObject();
  v49(v51 + v50, v45, v3);
  v52 = v49;
  v53 = v102;
  v102[8] = v83;
  v53[9] = sub_100021EA8;
  v53[10] = v51;
  v54 = v85;
  v100(v85, v96, v3);
  v91(v13, v54, v3);
  v55 = v90;
  v48(v13, enum case for PreviewsService.install(_:), v90);
  v83 = static PreviewsServiceConnection.Listener.local(service:)();
  v56 = v55;
  v94(v13, v55);
  v52(v45, v54, v3);
  v57 = v95;
  v58 = swift_allocObject();
  v52((v58 + v57), v45, v3);
  v59 = v102;
  v102[11] = v83;
  v59[12] = sub_100021EC0;
  v59[13] = v58;
  v60 = v96;
  v61 = v100;
  v100(v54, v96, v3);
  v88(v13, enum case for PreviewsService.crashListener(_:), v56);
  v101 = static PreviewsServiceConnection.Listener.local(service:)();
  v94(v13, v56);
  v62 = v54;
  v63 = v54;
  v64 = v87;
  v87(v45, v62, v3);
  v65 = v95;
  v66 = swift_allocObject();
  v64(v66 + v65, v45, v3);
  v67 = v64;
  v68 = v102;
  v102[14] = v101;
  v68[15] = sub_100021ED8;
  v68[16] = v66;
  v61(v63, v60, v3);
  v69 = sub_100012F4C(1u);
  v70 = swift_allocObject();
  v105 = 0;
  v106 = 0;
  v70[4] = OSAllocatedUnfairLock.init(value:)();
  v70[2] = v69;
  v71 = v89;
  v91(v89, v63, v3);
  v72 = v95;
  v73 = swift_allocObject();
  v67(v73 + v72, v71, v3);
  v74 = MessagePipe.__allocating_init(makeRightTransport:)();
  v75 = v84;
  v84(v63, v3);
  v70[3] = v74;
  v68[17] = v70;
  v100(v63, v96, v3);
  v76 = sub_100012F4C(2u);
  v77 = swift_allocObject();
  v105 = 0;
  v106 = 0;
  v77[4] = OSAllocatedUnfairLock.init(value:)();
  v77[2] = v76;
  v91(v71, v63, v3);
  v78 = swift_allocObject();
  v67(v78 + v72, v71, v3);
  v79 = MessagePipe.__allocating_init(makeRightTransport:)();
  v75(v63, v3);
  v77[3] = v79;
  v68[18] = v77;
  v68[19] = sub_100012F4C(0);
  v68[20] = sub_10000AFC4;
  v68[21] = 0;
  v68[2] = v82;
  return v68;
}

uint64_t sub_10001AEF8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "activate Daemon", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 40);
  v10 = swift_allocObject();
  v11 = *(v1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 32) = v9;
  v12 = v11;

  PreviewsServiceConnection.Listener.activate(handler:)();

  PreviewsServiceConnection.Listener.activate(handler:)();

  PreviewsServiceConnection.Listener.activate(handler:)();

  v13 = *(v1 + 104);
  v14 = swift_allocObject();
  v15 = *(v1 + 88);
  *(v14 + 16) = v15;
  *(v14 + 32) = v13;
  v16 = v15;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v17 = *(v1 + 80);
  v18 = swift_allocObject();
  v19 = *(v1 + 64);
  *(v18 + 16) = v19;
  *(v18 + 32) = v17;
  v20 = v19;

  PreviewsServiceConnection.Listener.activate(handler:)();

  PreviewsServiceConnection.Listener.activate(handler:)();

  PreviewsServiceConnection.Listener.activate(handler:)();

  v21 = *(v1 + 168);
  v22 = swift_allocObject();
  v23 = *(v1 + 152);
  *(v22 + 16) = v23;
  *(v22 + 32) = v21;
  v23;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v24 = *(v1 + 128);
  v25 = swift_allocObject();
  v26 = *(v1 + 112);
  *(v25 + 16) = v26;
  *(v25 + 32) = v24;
  v26;

  PreviewsServiceConnection.Listener.activate(handler:)();
}

uint64_t sub_10001B2FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);

  v5 = *(v0 + 152);

  return v0;
}

uint64_t sub_10001B394()
{
  sub_10001B2FC();

  return _swift_deallocClassInstance(v0, 176, 7);
}

uint64_t sub_10001B424()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_100013570(a1, v4, v5, v7, v6);
}

uint64_t sub_10001B530(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019C44(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001B654(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001B74C;

  return v6(a1);
}

uint64_t sub_10001B74C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10001B944, 0, 0);
}

uint64_t sub_10001B944()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100020440(&qword_10003D9C8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100020440(&qword_10003D9D0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10001BAD4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10001BAD4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10001BC90, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10001BC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001BD24(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10001BD80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10001BD80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001BE4C(v11, 0, 0, 1, a1, a2);
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
    sub_10001DEEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000041C8(v11);
  return v7;
}

unint64_t sub_10001BE4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001BF58(a5, a6);
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

char *sub_10001BF58(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001BFA4(a1, a2);
  sub_10001C0D4(&off_100039390);
  return v3;
}

char *sub_10001BFA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001C1C0(v5, 0);
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
        v7 = sub_10001C1C0(v10, 0);
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

uint64_t sub_10001C0D4(uint64_t result)
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

  result = sub_10001C234(result, v11, 1, v3);
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

void *sub_10001C1C0(uint64_t a1, uint64_t a2)
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

  sub_100001CC8(&qword_10003D970, &qword_10002EF98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}