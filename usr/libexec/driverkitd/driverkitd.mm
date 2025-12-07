uint64_t sub_1000015F8(void *a1)
{
  qword_100139890 = objc_retainBlock(a1);

  return _objc_release_x1();
}

uint64_t sub_10000162C()
{
  if (!qword_100139890)
  {
    return 3758097112;
  }

  (*(qword_100139890 + 16))();
  return 0;
}

uint64_t sub_10000168C(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [OSLaunchdJob alloc];
  v5 = +[OSLaunchdDomain systemDomain];
  v6 = [v4 initWithPlist:v3 domain:v5];

  v11 = 0;
  v7 = [v6 submitAndStart:&v11];
  v8 = v11;
  if (v7)
  {
    if ([v7 state] == 2)
    {
      v9 = 0;
      if (a2)
      {
        *a2 = [v7 pid];
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000F0594(v7);
      }

      v9 = 8;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000F0618(v8);
    }

    v9 = 72;
  }

  return v9;
}

uint64_t (*sub_1000017E4(uint64_t a1))()
{
  if (*(a1 + 20) == 77000)
  {
    return sub_100001804;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_100001804(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000162C();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_100001860(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 77000)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      *(a2 + 32) = sub_10000162C();
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  os_transaction_create();
  sub_100001944();
  swift_unknownObjectRelease();
  dispatch_main();
}

uint64_t sub_100001944()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v5 = pthread_self();
  v57 = 4;
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0);
  pthread_getschedparam(v5, &v57, &v58);
  v57 = 4;
  v58.sched_priority = 50;
  pthread_setschedparam(v5, 4, &v58);
  static os_signpost_type_t.begin.getter();
  if (qword_100133AB0 != -1)
  {
    swift_once();
  }

  v6 = qword_10014E970;
  static OSSignpostID.exclusive.getter();
  v51[2] = v6;
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v1 + 8);
  v53 = v1 + 8;
  v54 = v0;
  v52 = v7;
  v7(v4, v0);
  v8 = type metadata accessor for DriverKitDaemonSideEffects();
  swift_allocObject();
  v9 = sub_10008FC14();
  sub_1000DF65C(&v63);
  sub_100003C4C(&v63, *(&v64 + 1));
  v10 = sub_10006AC28();
  sub_100003C90(&v63);
  if ((v10 & 0x100) == 0)
  {
    sub_1000DF9D4(&v63);
    v11 = *(&v64 + 1);
    v12 = v65;
    sub_100003C4C(&v63, *(&v64 + 1));
    (*(v12 + 168))(&v59, 0x6E6F632F7665642FLL, 0xEC000000656C6F73, v11, v12);
    if (v60)
    {
      sub_100009F34(&v59, v62);
      sub_100003C90(&v63);
      sub_10000A990(v62, &v59);
      v13 = swift_allocObject();
      sub_100009F34(&v59, v13 + 16);
      *&v65 = sub_100009F84;
      *(&v65 + 1) = v13;
      *&v63 = _NSConcreteStackBlock;
      *(&v63 + 1) = 1107296256;
      *&v64 = sub_100002568;
      *(&v64 + 1) = &unk_100126C70;
      v14 = _Block_copy(&v63);

      v15 = os_log_set_hook();
      _Block_release(v14);
      _Block_release(v15);
      v16 = v62;
    }

    else
    {
      sub_10000A184(&v59, &qword_100133C78, &unk_1000F32D0);
      v16 = &v63;
    }

    sub_100003C90(v16);
  }

  if (qword_100133B38 != -1)
  {
    swift_once();
  }

  if (byte_100138870 == 1)
  {
    v17 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000F3160;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100003D24();
    *(v18 + 32) = 0xD000000000000024;
    *(v18 + 40) = 0x80000001001038C0;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v19, "(NOT AN ERROR) Starting driverkitd (%{public}s)", 47, 2, v18);
  }

  else
  {
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000F3160;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100003D24();
    *(v20 + 32) = 0xD000000000000024;
    *(v20 + 40) = 0x80000001001038C0;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Starting driverkitd (%{public}s)", 32, 2, &_mh_execute_header, v19, v21, v20);
  }

  if (_set_user_dir_suffix())
  {
    sub_100003D78(v62);
    v75 = v62[12];
    v76 = v62[13];
    v77 = v62[14];
    v78 = v62[15];
    v71 = v62[8];
    v72 = v62[9];
    v73 = v62[10];
    v74 = v62[11];
    v67 = v62[4];
    v68 = v62[5];
    v69 = v62[6];
    v70 = v62[7];
    v63 = v62[0];
    v64 = v62[1];
    v65 = v62[2];
    v66 = v62[3];
    sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);

    v22 = static OS_dispatch_queue.main.getter();
    v60 = v8;
    v61 = &off_10012A108;
    *&v59 = v9;
    type metadata accessor for DriverKitDaemon();
    v23 = swift_allocObject();
    v24 = sub_100003DA0(&v59, v8);
    __chkstk_darwin(v24, v24);
    v26 = (v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    sub_1000087AC(*v26, v22, &v63, v23);
    sub_100003C90(&v59);
    v56 = 0;
    v28 = bootstrap_check_in(bootstrap_port, "com.apple.KernelManagementPingServer", &v56);
    v51[1] = v9;
    if (!v28)
    {
      v29 = v56;
      sub_100003CDC(&qword_100133C60, &qword_1000F32B8);
      swift_allocObject();
      v30 = sub_100002A4C(v29);
      sub_1000025C8(v30);

      type metadata accessor for ApplicationRequestSource();
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      sub_1000026EC(v31);

      v32 = static os_signpost_type_t.event.getter();
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v33 = static OS_os_log.default.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000F3160;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_100003D24();
      *(v34 + 32) = 0xD000000000000022;
      *(v34 + 40) = 0x80000001001039D0;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)(v32, &_mh_execute_header, v33, "daemonInit()", 12, 2, v4, "Server name: %{public}s", 23, 2, v34);

      v35 = v54;
      v36 = v52;
      v52(v4, v54);
      v37 = objc_allocWithZone(NSXPCListener);
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 initWithMachServiceName:v38];

      v40 = objc_allocWithZone(sub_100003CDC(&qword_100133C68, &unk_1000F32C0));
      v41 = sub_1000032C0(v39, 0xD000000000000027, 0x8000000100103A00);
      sub_1000027FC(v41);
      sub_1000E0280(&v59);
      sub_100003CDC(&qword_100133C70, &qword_100101860);
      type metadata accessor for RealApprovalsXPCPublisher();
      swift_dynamicCast();
      sub_10000293C(v55);
      sub_10008F6F0();
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      return v36(v4, v35);
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    v43 = v28;
    _StringGuts.grow(_:)(34);

    *&v59 = 0xD00000000000001BLL;
    *(&v59 + 1) = 0x8000000100103980;
    LODWORD(v55) = v43;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 10272;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    if (mach_error_string(v43))
    {
      v46 = String.init(cString:)();
      v48 = v47;
    }

    else
    {
      v48 = 0xE900000000000029;
      v46 = 0x6E776F6E6B6E7528;
    }

    v49 = v48;
    String.append(_:)(*&v46);

    v50._countAndFlagsBits = 41;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100002450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1000024C0(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v4 = os_log_copy_decorated_message();
  if (v4)
  {
    v5 = v4;
    v6 = String.init(cString:)();
    v8 = v7;
    v9 = a3[3];
    v10 = a3[4];
    sub_100003C4C(a3, v9);
    sub_1000EBF18(v6, v8, v9, v10);

    free(v5);
  }
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1000025C8(uint64_t a1)
{
  v2 = v1;
  *(a1 + 16) = v2;

  sub_100002D14();
  swift_beginAccess();
  v4 = *(v2 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 56) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000311E4(0, v4[2] + 1, 1, v4);
    *(v2 + 56) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000311E4((v6 > 1), v7 + 1, 1, v4);
  }

  v10 = sub_100003CDC(&qword_100133C60, &qword_1000F32B8);
  v11 = &off_100129608;
  *&v9 = a1;
  v4[2] = v7 + 1;
  sub_100009F34(&v9, &v4[5 * v7 + 4]);
  *(v2 + 56) = v4;
  return swift_endAccess();
}

uint64_t sub_1000026EC(uint64_t a1)
{
  *(a1 + 16) = v1;

  swift_beginAccess();
  v3 = *(v1 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000311E4(0, v3[2] + 1, 1, v3);
    *(v1 + 56) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000311E4((v5 > 1), v6 + 1, 1, v3);
  }

  v9 = type metadata accessor for ApplicationRequestSource();
  v10 = &off_100129CC0;
  *&v8 = a1;
  v3[2] = v6 + 1;
  sub_100009F34(&v8, &v3[5 * v6 + 4]);
  *(v1 + 56) = v3;
  return swift_endAccess();
}

uint64_t sub_1000027FC(void *a1)
{
  *(a1 + *((swift_isaMask & *a1) + 0x60)) = v1;

  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000311E4(0, v3[2] + 1, 1, v3);
    *(v1 + 56) = v3;
  }

  v7 = v3[2];
  v6 = v3[3];
  if (v7 >= v6 >> 1)
  {
    v3 = sub_1000311E4((v6 > 1), v7 + 1, 1, v3);
  }

  v10 = sub_100003CDC(&qword_100133C68, &unk_1000F32C0);
  v11 = &off_1001295F8;
  *&v9 = v4;
  v3[2] = v7 + 1;
  sub_100009F34(&v9, &v3[5 * v7 + 4]);
  *(v1 + 56) = v3;
  return swift_endAccess();
}

uint64_t sub_10000293C(uint64_t a1)
{
  *(a1 + 64) = v1;

  swift_beginAccess();
  v3 = *(v1 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000311E4(0, v3[2] + 1, 1, v3);
    *(v1 + 56) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000311E4((v5 > 1), v6 + 1, 1, v3);
  }

  v9 = type metadata accessor for RealApprovalsXPCPublisher();
  v10 = &off_10012E4E8;
  *&v8 = a1;
  v3[2] = v6 + 1;
  sub_100009F34(&v8, &v3[5 * v6 + 4]);
  *(v1 + 56) = v3;
  return swift_endAccess();
}

uint64_t sub_100002A4C(int a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v3 - 8);
  v14 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8, v10);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (a1)
  {
    *(v1 + 40) = a1;
    v12 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
    static DispatchQoS.userInitiated.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
    sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v13 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
    *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100002D14()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009FEC(0, &qword_100133C98, OS_dispatch_source_ptr);
  *(v0 + 24) = static OS_dispatch_source.makeMachReceiveSource(port:queue:)();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v23 = sub_10000A034;
  v24 = v0;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v16[2] = &v21;
  v21 = sub_10006CCB0;
  v22 = &unk_100126C98;
  v10 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  sub_100003174();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v10);
  swift_unknownObjectRelease();
  v11 = *(v2 + 8);
  v16[3] = v2 + 8;
  v17 = v1;
  v11(v5, v1);
  v12 = v18;
  v13 = *(v6 + 8);
  v16[1] = v6 + 8;
  v13(v9, v18);

  if (*(v0 + 24))
  {
    swift_getObjectType();
    v23 = sub_10000A050;
    v24 = v0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10006CCB0;
    v22 = &unk_100126CC0;
    v14 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    sub_100003174();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v14);
    swift_unknownObjectRelease();
    v11(v5, v17);
    v13(v9, v12);

    v23 = sub_10000A058;
    v24 = v0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10006CCB0;
    v22 = &unk_100126CE8;
    v15 = _Block_copy(&aBlock);

    sub_1000015F8(v15);
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000030F8(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  if (*(a1 + 24))
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClassUnconditional();
    a3 = sub_10006CCAC;
    a2 = 36;
  }

  else
  {
    __break(1u);
  }

  return _dispatch_mig_server(a1, a2, a3);
}

uint64_t sub_100003174()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000A060(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10000A0A8(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000324C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v6 = type metadata accessor for DriverKitDaemon();
    v7 = &off_10012A0B8;
    *&v5 = v1;
    sub_100009F34(&v5, v8);
    sub_100003C4C(v8, v8[3]);

    sub_1000907D8(v2, v3, v4);
    return sub_100003C90(v8);
  }

  return result;
}

void *sub_1000032C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *((swift_isaMask & *v3) + 0x60)) = 0;
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + *((swift_isaMask & *v3) + 0x70)) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v26;
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = v26;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 interfaceWithProtocol:{&OBJC_PROTOCOL____TtP10driverkitd29DriverKitDaemonClientProtocol_, v24, v25}];
  *(v4 + *((swift_isaMask & *v4) + 0x78)) = v17;
  v18 = sub_100003CDC(&qword_100133C68, &unk_1000F32C0);
  v27.receiver = v4;
  v27.super_class = v18;
  v19 = objc_msgSendSuper2(&v27, "init");
  v20 = *((swift_isaMask & *v19) + 0x68);
  v21 = *(v19 + v20);
  v22 = v19;
  [v21 setDelegate:v22];
  [*(v19 + v20) _setQueue:*(v22 + *((swift_isaMask & *v22) + 0x70))];

  return v22;
}

uint64_t sub_100003690(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000370C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003790@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000037E4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003824(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000387C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

Swift::Int sub_100003994(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

_DWORD *sub_100003A10@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100003A24(void *a1, uint64_t *a2)
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

uint64_t sub_100003AAC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100003B18(uint64_t a1)
{
  v2 = sub_10000A060(&qword_100133D78, type metadata accessor for FileAttributeKey, &unk_1000F36B8);
  v3 = sub_10000A060(&unk_100133D80, type metadata accessor for FileAttributeKey, &unk_1000F3478);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003BD8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003C20@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100003C4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003C90(void *a1)
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

uint64_t sub_100003CDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003D24()
{
  result = qword_100135FD0;
  if (!qword_100135FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135FD0);
  }

  return result;
}

double sub_100003D78(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100003DA0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100003DF0(uint64_t a1)
{
  v2 = sub_10000A060(&qword_100133D68, type metadata accessor for URLResourceKey, &unk_1000F3628);
  v3 = sub_10000A060(&qword_100133D70, type metadata accessor for URLResourceKey, &unk_1000F35C8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DriverKitDaemonSideEffects();
  v29[3] = v13;
  v29[4] = &off_10012A108;
  v29[0] = a3;
  *(a4 + 64) = _swiftEmptyArrayStorage;
  *(a4 + 72) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 514;
  *(a4 + 56) = a1;
  sub_10000A990(v29, a4 + 16);
  (*(v9 + 16))(v12, a2, v8);
  sub_10000A990(v29, v28);
  v14 = sub_100003DA0(v28, v28[3]);
  __chkstk_darwin(v14, v14);
  v16 = (&v27[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v27[3] = v13;
  v27[4] = &off_10012A108;
  v27[0] = v18;
  type metadata accessor for ApplicationCache(0);
  v19 = swift_allocObject();
  v20 = sub_100003DA0(v27, v13);
  __chkstk_darwin(v20, v20);
  v22 = (&v27[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v19[5] = v13;
  v19[6] = &off_10012A108;
  v19[2] = v24;
  *(v19 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached) = 0;
  (*(v9 + 32))(v19 + OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath, v12, v8);
  sub_100003C90(v27);
  (*(v9 + 8))(a2, v8);
  sub_100003C90(v29);
  sub_100003C90(v28);
  *(a4 + 80) = v19;
  return a4;
}

uint64_t sub_1000041B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DriverKitDaemonSideEffects();
  v18 = &off_10012A108;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager) = 0;
  v17 = v8;
  *&v16 = a3;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  *(a4 + v9) = [objc_allocWithZone(NSRecursiveLock) init];
  v10 = OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___infoLocation;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(a4 + v10, 1, 1, v11);
  v13(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___nextInfoLocation, 1, 1, v11);
  v14 = (a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue) = a1;
  sub_100009F34(&v16, a4 + 16);
  (*(v12 + 32))(a4 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, a2, v11);
  return a4;
}

uint64_t sub_100004354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DriverKitDaemonSideEffects();
  v14[4] = &off_10012A108;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager) = 0;
  v14[3] = v8;
  v14[0] = a3;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager) = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers) = _swiftEmptyArrayStorage;
  v9 = (a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  *v9 = 0;
  v9[1] = 0;
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue) = a1;
  v10 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a4 + v10, a2, v11);
  sub_10000A990(v14, a4 + 16);
  (*(v12 + 8))(a2, v11);
  sub_100003C90(v14);
  *(a4 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests) = _swiftEmptyArrayStorage;
  return a4;
}

uint64_t sub_1000044BC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[8];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 544175136;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    sub_100003CDC(&qword_100133D00, &qword_1000F3330);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[7];
  v8 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[8] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_1001271C8;
  a2[8] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_10012A4F0;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v27._countAndFlagsBits = 0xD00000000000002FLL;
    v27._object = 0x8000000100103D00;
    String.append(_:)(v27);
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 544175136;
    v29._object = 0xE400000000000000;
    String.append(_:)(v29);
    sub_100003CDC(&qword_100133D00, &qword_1000F3330);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x6373627573207327;
    v31._object = 0xEE00737265626972;
    String.append(_:)(v31);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v22);
}

uint64_t sub_100004A44(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  v12 = a2[8];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    while (*v14 != a1)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(a5, a6);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 544175136;
    v33._object = 0xE400000000000000;
    String.append(_:)(v33);
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + *a3);
  v16 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v17 = v15;
  v18 = v16;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v20 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1000310B0(0, v20[2] + 1, 1, v20);
    a2[8] = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1000310B0((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = a1;
  v24[5] = a4;
  a2[8] = v20;
  swift_endAccess();
  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  v26 = swift_allocObject();
  *(v26 + 16) = &_swiftEmptySetSingleton;
  v27 = swift_allocObject();
  *(v27 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = &off_1001271C8;

  v29 = sub_1000C5A64(v28, v26, v27, v25);

  if ((v29 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v35._countAndFlagsBits = 0xD00000000000002FLL;
    v35._object = 0x8000000100103D00;
    String.append(_:)(v35);
    sub_100003CDC(a5, a6);
    v36._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 544175136;
    v37._object = 0xE400000000000000;
    String.append(_:)(v37);
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v38._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x6373627573207327;
    v39._object = 0xEE00737265626972;
    String.append(_:)(v39);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v30);
}

uint64_t sub_100004FD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = a2[8];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    while (*v12 != a1)
    {
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 544175136;
    v31._object = 0xE400000000000000;
    String.append(_:)(v31);
    sub_100003CDC(a4, a5);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v13 = a1[13];
  v14 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v15 = v13;
  v16 = v14;
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v18 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1000310B0(0, v18[2] + 1, 1, v18);
    a2[8] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1000310B0((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = a1;
  v22[5] = &off_100126EF0;
  a2[8] = v18;
  swift_endAccess();
  v23 = swift_allocObject();
  *(v23 + 16) = _swiftEmptyArrayStorage;
  v24 = swift_allocObject();
  *(v24 + 16) = &_swiftEmptySetSingleton;
  v25 = swift_allocObject();
  *(v25 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v27 = sub_1000C5A64(v26, v24, v25, v23);

  if ((v27 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v33._countAndFlagsBits = 0xD00000000000002FLL;
    v33._object = 0x8000000100103D00;
    String.append(_:)(v33);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 544175136;
    v35._object = 0xE400000000000000;
    String.append(_:)(v35);
    sub_100003CDC(a4, a5);
    v36._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0x6373627573207327;
    v37._object = 0xEE00737265626972;
    String.append(_:)(v37);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v28);
}

uint64_t sub_100005554(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[8];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 544175136;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[9];
  v8 = a2[7];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[8] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[8] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_10012E178;
  a2[8] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001271C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v27._countAndFlagsBits = 0xD00000000000002FLL;
    v27._object = 0x8000000100103D00;
    String.append(_:)(v27);
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 544175136;
    v29._object = 0xE400000000000000;
    String.append(_:)(v29);
    sub_100003CDC(&qword_100133CD8, &qword_1000F3308);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x6373627573207327;
    v31._object = 0xEE00737265626972;
    String.append(_:)(v31);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v22);
}

uint64_t sub_100005ADC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 544175136;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  v8 = a2[8];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[2] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_100127AD8;
  a2[2] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001273C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v27._countAndFlagsBits = 0xD00000000000002FLL;
    v27._object = 0x8000000100103D00;
    String.append(_:)(v27);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 544175136;
    v29._object = 0xE400000000000000;
    String.append(_:)(v29);
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x6373627573207327;
    v31._object = 0xEE00737265626972;
    String.append(_:)(v31);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v22);
}

uint64_t sub_100006070(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 544175136;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[13];
  v8 = a2[8];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[2] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_100126EF0;
  a2[2] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_1001273C8;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v27._countAndFlagsBits = 0xD00000000000002FLL;
    v27._object = 0x8000000100103D00;
    String.append(_:)(v27);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 544175136;
    v29._object = 0xE400000000000000;
    String.append(_:)(v29);
    sub_100003CDC(&qword_100133CF8, &qword_1000F3328);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x6373627573207327;
    v31._object = 0xEE00737265626972;
    String.append(_:)(v31);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v22);
}

uint64_t sub_1000065F8(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 544175136;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = *(a1 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100129F40;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x8000000100103D00;
    String.append(_:)(v28);
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x6373627573207327;
    v32._object = 0xEE00737265626972;
    String.append(_:)(v32);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v23);
}

uint64_t sub_100006BA4(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 544175136;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[13];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100126EF0;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x8000000100103D00;
    String.append(_:)(v28);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x6373627573207327;
    v32._object = 0xEE00737265626972;
    String.append(_:)(v32);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v23);
}

uint64_t sub_100007144(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 544175136;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[9];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_10012E178;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100127AD8;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x8000000100103D00;
    String.append(_:)(v28);
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    sub_100003CDC(&qword_100133CF0, &qword_1000F3320);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x6373627573207327;
    v32._object = 0xEE00737265626972;
    String.append(_:)(v32);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v23);
}

uint64_t sub_1000076E4(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 544175136;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[13];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_100126EF0;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100129F40;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x8000000100103D00;
    String.append(_:)(v28);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x6373627573207327;
    v32._object = 0xEE00737265626972;
    String.append(_:)(v32);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v23);
}

uint64_t sub_100007C84(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 544175136;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v8 = a1[9];
  v9 = *(a2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v10 = v8;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000310B0(0, v13[2] + 1, 1, v13);
    *(a2 + v4) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000310B0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a1;
  v17[5] = &off_10012E178;
  *(a2 + v4) = v13;
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = &off_100129F40;

  v22 = sub_1000C5A64(v21, v19, v20, v18);

  if ((v22 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x8000000100103D00;
    String.append(_:)(v28);
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    sub_100003CDC(&qword_100133CE8, &qword_1000F3318);
    v31._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x6373627573207327;
    v32._object = 0xEE00737265626972;
    String.append(_:)(v32);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v23);
}

uint64_t sub_100008224(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a2[19];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (*v6 != a1)
    {
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(33);

    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 544175136;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    while (1)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

LABEL_5:
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v7 = a1[9];
  v8 = a2[13];
  sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v9 = v7;
  v10 = v8;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = a2[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[19] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000310B0(0, v12[2] + 1, 1, v12);
    a2[19] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1000310B0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = &off_10012E178;
  a2[19] = v12;
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for StateManagerWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = &off_100126EF0;

  v21 = sub_1000C5A64(v20, v18, v19, v17);

  if ((v21 & 1) == 0)
  {

    _StringGuts.grow(_:)(69);
    v27._countAndFlagsBits = 0xD00000000000002FLL;
    v27._object = 0x8000000100103D00;
    String.append(_:)(v27);
    sub_100003CDC(&qword_100133CD0, &qword_1000F3300);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 544175136;
    v29._object = 0xE400000000000000;
    String.append(_:)(v29);
    sub_100003CDC(&qword_100133CE0, &qword_1000F3310);
    v30._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x6373627573207327;
    v31._object = 0xEE00737265626972;
    String.append(_:)(v31);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_10008DD24(v22);
}

uint64_t sub_1000087AC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  v8 = *a4;
  v9 = type metadata accessor for URL();
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DriverKitDaemonSideEffects();
  v203[4] = &off_10012A108;
  v181 = v13;
  v203[3] = v13;
  v203[0] = a1;
  *(a4 + 56) = _swiftEmptyArrayStorage;
  sub_10000A990(v203, a4 + 16);
  *(a4 + 64) = a2;
  v14 = a3[13];
  v234[1] = a3[12];
  v234[2] = v14;
  v15 = a3[15];
  v234[3] = a3[14];
  v234[4] = v15;
  v16 = a3[9];
  v232[2] = a3[8];
  v232[3] = v16;
  v17 = a3[11];
  v233 = a3[10];
  v234[0] = v17;
  v18 = a3[5];
  v230 = a3[4];
  v231 = v18;
  v19 = a3[7];
  v232[0] = a3[6];
  v232[1] = v19;
  v20 = a3[1];
  v226 = *a3;
  v227 = v20;
  v21 = a3[3];
  v228 = a3[2];
  v229 = v21;
  v22 = sub_10000A0FC(&v226);
  v182 = v8;
  v183 = a2;
  v184 = v12;
  if (v22 == 1)
  {
    v23 = a2;
    sub_1000703B4(v204, v203);
    v24 = v204[0];
    v25 = v204[1];
    v187 = v205;
    v26 = v206;
    v27 = v207;
    v28 = v208;
    v29 = v209;
    v30 = v210;
    v31 = v211;
    v32 = v212;
    v33 = v214;
    v34 = v215;
    v35 = v216;
    v36 = v213;
    v37 = v217;
    v38 = v218;
    v39 = v219;
    v40 = v221;
    v41 = v222;
    v42 = v223;
    v43 = v224;
    v44 = v220;
    v45 = v225;
  }

  else
  {
    v186 = v226;
    v179 = v227;
    v185 = *(&v228 + 1);
    v187 = v228;
    v180 = v229;
    v177 = v230;
    v178 = *(&v229 + 1);
    v175 = v231;
    v176 = *(&v230 + 1);
    v46 = *(&v231 + 1);
    v173 = *(&v232[1] + 8);
    v174 = *(v232 + 8);
    v36 = *&v232[0];
    v37 = *(&v232[3] + 1);
    v39 = *(&v233 + 1);
    v47 = v233;
    v171 = *(v234 + 8);
    v172 = *(&v232[2] + 8);
    v169 = *(&v234[2] + 8);
    v170 = *(&v234[1] + 8);
    v168 = *(&v234[3] + 8);
    v44 = *&v234[0];
    v45 = *(&v234[4] + 1);
    v48 = a2;
    v43 = v168;
    v42 = v169;
    v41 = v170;
    v40 = v171;
    v38 = v47;
    v35 = v172;
    v34 = v173;
    v33 = v174;
    v32 = v46;
    v31 = v175;
    v30 = v176;
    v29 = v177;
    v28 = v178;
    v25 = v179;
    v27 = v180;
    v26 = v185;
    v24 = v186;
  }

  v49 = 0x8000000100103BD0;
  v50 = v40;
  v188 = v24;
  v189 = v25;
  *&v174 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v49 = *(&v40 + 1);
  }

  else
  {
    v50 = 0xD000000000000036;
  }

  v177 = v49;
  v178 = v50;
  *&v190 = v187;
  *(&v190 + 1) = v26;
  v51 = 0x8000000100103C10;
  *&v191 = v27;
  *(&v191 + 1) = v28;
  *&v173 = *(&v41 + 1);
  v52 = v41;
  if (!*(&v41 + 1))
  {
    v52 = 0xD00000000000003CLL;
  }

  v180 = v52;
  *&v192 = v29;
  *(&v192 + 1) = v30;
  if (*(&v41 + 1))
  {
    v51 = *(&v41 + 1);
  }

  *&v179 = v51;
  *&v193 = v31;
  *(&v193 + 1) = v32;
  v53 = 0x8000000100103C50;
  v54 = v42;
  *&v194[0] = v36;
  *(v194 + 8) = v33;
  if (*(&v42 + 1))
  {
    v53 = *(&v42 + 1);
  }

  else
  {
    v54 = 0xD000000000000038;
  }

  v175 = v53;
  v176 = v54;
  *(&v194[1] + 8) = v34;
  *(&v194[2] + 8) = v35;
  *(&v194[3] + 1) = v37;
  *&v195 = v38;
  *(&v195 + 1) = v39;
  *&v196[0] = v44;
  *(v196 + 8) = v40;
  *(&v196[1] + 8) = v41;
  *(&v196[2] + 8) = v42;
  *(&v196[3] + 8) = v43;
  *(&v196[4] + 1) = v45;
  v235[3] = v191;
  v235[2] = v190;
  v235[1] = v189;
  v235[0] = v188;
  v235[7] = v194[1];
  v235[6] = v194[0];
  v235[5] = v193;
  v235[4] = v192;
  v235[11] = v196[0];
  v235[10] = v195;
  v235[9] = v194[3];
  v235[8] = v194[2];
  v235[15] = v196[4];
  v235[14] = v196[3];
  v235[13] = v196[2];
  v235[12] = v196[1];
  v55 = *(a4 + 64);
  sub_10000A990(v203, v200);
  v56 = sub_100003DA0(v200, v201);
  __chkstk_darwin(v56, v56);
  v58 = (&v168 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v58;
  v199 = &off_10012A108;
  v61 = v181;
  v198 = v181;
  v197[0] = v60;
  type metadata accessor for ActivationStateManager();
  v62 = swift_allocObject();
  v63 = sub_100003DA0(v197, v61);
  v187 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v63, v63);
  v65 = (&v168 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = *(v66 + 16);
  *&v172 = v66 + 16;
  v185 = v67;
  *&v186 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67(v65);
  v68 = *v65;
  *(v62 + 40) = v61;
  *(v62 + 48) = &off_10012A108;
  *(v62 + 16) = v68;
  *(v62 + 72) = 2;
  *(v62 + 56) = v55;
  *(v62 + 64) = _swiftEmptyArrayStorage;

  v69 = v55;

  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 120) = v62;
  *&v174 = *(a4 + 64);
  v70 = v184;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v203, v200);
  v71 = sub_100003DA0(v200, v201);
  v176 = &v168;
  __chkstk_darwin(v71, v71);
  v73 = (&v168 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v73;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v75;
  type metadata accessor for ApplicationManager();
  v76 = swift_allocObject();
  v77 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v77, v77);
  v78 = v185;
  v79 = v186;
  v185(&v168 - v186);
  v80 = sub_100003EAC(v174, v70, *(&v168 - v79), v76);
  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 72) = v80;
  sub_10000A990(v203, v200);
  v81 = *(a4 + 64);
  v82 = sub_100003DA0(v200, v201);
  v176 = &v168;
  __chkstk_darwin(v82, v82);
  v84 = (&v168 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84);
  v86 = *v84;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v86;
  type metadata accessor for KernelStateManager();
  v87 = swift_allocObject();
  v88 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v88, v88);
  v89 = (&v168 - v79);
  v90 = &v168 - v79;
  v91 = v78;
  v78(v90);
  v92 = *v89;
  v93 = v81;
  v94 = sub_10000A594(v235, v92, v93, v87);

  sub_10000A680(&v188);
  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 80) = v94;
  v176 = *(a4 + 64);
  v95 = v184;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v203, v200);
  v96 = sub_100003DA0(v200, v201);
  v178 = &v168;
  __chkstk_darwin(v96, v96);
  v98 = (&v168 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98);
  v100 = *v98;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v100;
  type metadata accessor for DriverBinManager(0);
  v101 = swift_allocObject();
  v102 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v102, v102);
  v103 = v186;
  v91(&v168 - v186);
  v104 = v95;
  v105 = sub_1000041B0(v176, v95, *(&v168 - v103), v101);
  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 88) = v105;
  v178 = *(a4 + 64);
  v106 = v104;
  URL.init(fileURLWithPath:)();

  sub_10000A990(v203, v200);
  v107 = sub_100003DA0(v200, v201);
  v180 = &v168;
  __chkstk_darwin(v107, v107);
  v109 = (&v168 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v110 + 16))(v109);
  v111 = *v109;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v111;
  type metadata accessor for ApprovalManager(0);
  v112 = swift_allocObject();
  v113 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v113, v113);
  v114 = v185;
  v185(&v168 - v103);
  v115 = sub_100004354(v178, v106, *(&v168 - v103), v112);
  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 96) = v115;
  v116 = *(a4 + 64);
  sub_10000A990(v203, v200);
  v117 = sub_100003DA0(v200, v201);
  v184 = &v168;
  __chkstk_darwin(v117, v117);
  v119 = (&v168 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = *v119;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v121;
  type metadata accessor for ApprovalSettingsStateManager();
  v122 = swift_allocObject();
  v123 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v123, v123);
  v114(&v168 - v103);
  v124 = *(&v168 - v103);
  v125 = v116;
  v126 = sub_10000A6D4(v125, v124, v122);

  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 104) = v126;
  v127 = *(a4 + 64);
  sub_10000A990(v203, v200);
  v128 = sub_100003DA0(v200, v201);
  __chkstk_darwin(v128, v128);
  v130 = (&v168 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v131 + 16))(v130);
  v132 = *v130;
  v199 = &off_10012A108;
  v198 = v61;
  v197[0] = v132;
  type metadata accessor for ActiveDriversStateManager();
  v133 = swift_allocObject();
  v134 = sub_100003DA0(v197, v61);
  __chkstk_darwin(v134, v134);
  v135 = (&v168 - v186);
  v185(&v168 - v186);
  v136 = *v135;
  v133[6] = v61;
  v133[7] = &off_10012A108;
  v133[3] = v136;
  v133[2] = _swiftEmptyArrayStorage;
  v133[8] = v127;
  v133[9] = 0;
  v137 = v127;
  sub_100003C90(v197);
  sub_100003C90(v200);
  *(a4 + 112) = v133;
  v138 = *(a4 + 80);
  v202 = &off_10012A090;
  v201 = v182;
  v200[0] = a4;
  sub_10000A990(v200, v197);
  swift_beginAccess();

  sub_10000A9F4(v197, v138 + 64);
  swift_endAccess();
  sub_100003C90(v200);
  v139 = *(a4 + 72);
  v140 = *(a4 + 120);
  v139[9] = v140;
  swift_retain_n();
  swift_retain_n();

  sub_1000044BC(v139, v140);

  v141 = *(a4 + 88);
  v142 = *(a4 + 72);
  *(v141 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager) = v142;
  swift_retain_n();
  swift_retain_n();

  sub_100004A44(v141, v142, &OBJC_IVAR____TtC10driverkitd16DriverBinManager_stateManagerQueue, &off_100127AD8, &qword_100133CF0, &qword_1000F3320);

  v143 = *(a4 + 88);
  v144 = *(a4 + 112);
  *(v143 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager) = v144;
  swift_retain_n();
  swift_retain_n();

  sub_100005ADC(v143, v144);

  v146 = *(a4 + 88);
  v145 = *(a4 + 96);
  *(v145 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager) = v146;
  swift_retain_n();
  swift_retain_n();

  sub_1000065F8(v145, v146);

  *(*(a4 + 96) + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager) = *(a4 + 80);
  swift_retain_n();

  v147 = *(a4 + 96);
  v148 = *(a4 + 72);
  *(v147 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager) = v148;
  swift_retain_n();
  swift_retain_n();

  sub_100004A44(v147, v148, &OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue, &off_100129F40, &qword_100133CE8, &qword_1000F3318);

  v149 = *(a4 + 80);
  v150 = *(a4 + 120);
  v149[18] = v150;
  swift_retain_n();
  swift_retain_n();

  sub_100004FD0(v149, v150, &off_10012A4F0, &qword_100133D00, &qword_1000F3330);

  v152 = *(a4 + 72);
  v151 = *(a4 + 80);
  v151[16] = v152;
  swift_retain_n();
  swift_retain_n();

  sub_100004FD0(v151, v152, &off_1001271C8, &qword_100133CD8, &qword_1000F3308);

  v153 = *(a4 + 80);
  v154 = *(a4 + 96);
  v153[14] = v154;
  swift_retain_n();
  swift_retain_n();

  sub_1000076E4(v153, v154);

  v155 = *(a4 + 80);
  v156 = *(a4 + 88);
  v155[15] = v156;
  swift_retain_n();
  swift_retain_n();

  sub_100006BA4(v155, v156);

  v157 = *(a4 + 80);
  v158 = *(a4 + 112);
  v157[17] = v158;
  swift_retain_n();
  swift_retain_n();

  sub_100006070(v157, v158);

  v159 = *(a4 + 104);
  v160 = *(a4 + 88);
  v159[10] = v160;
  swift_retain_n();
  swift_retain_n();

  sub_100007144(v159, v160);

  v162 = *(a4 + 96);
  v161 = *(a4 + 104);
  v161[12] = v162;
  swift_retain_n();
  swift_retain_n();

  sub_100007C84(v161, v162);

  v163 = *(a4 + 104);
  v164 = *(a4 + 80);
  v163[11] = v164;
  swift_retain_n();
  swift_retain_n();

  sub_100008224(v163, v164);

  v165 = *(a4 + 104);
  v166 = *(a4 + 72);
  v165[13] = v166;
  swift_retain_n();
  swift_retain_n();

  sub_100005554(v165, v166);

  sub_100003C90(v203);
  return a4;
}

uint64_t sub_100009F34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100009F4C()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009FA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009FEC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000A060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A0A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000A114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003CDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A1E4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v10[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v10[4] = &off_10012A108;
  v10[0] = a1;

  a4(&v9, v6);

  v7 = v9;
  sub_100003C90(v10);
  return v7;
}

uint64_t sub_10000A594(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = type metadata accessor for DriverKitDaemonSideEffects();
  v12 = &off_10012A108;
  v10[0] = a2;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 152) = _swiftEmptyArrayStorage;
  sub_10000A990(v10, a4 + 16);
  *(a4 + 104) = a3;
  v7 = *sub_100003C4C(v10, v11);
  v8 = a3;
  *(a4 + 56) = sub_10000A1E4(v7, 0xD000000000000025, 0x8000000100103DA0, sub_10000AA9C);
  sub_100003C90(v10);
  return a4;
}

uint64_t sub_10000A6D4(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10, v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8, v13);
  v21[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v21[4] = &off_10012A108;
  v21[0] = a2;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = _swiftEmptyArrayStorage;
  sub_10000A990(v21, a3 + 16);
  *(a3 + 72) = a1;
  *(a3 + 56) = &_swiftEmptySetSingleton;
  v14 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);
  v18[1] = "Already added subscriber ";
  v18[2] = v14;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000A060(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100003C90(v21);
  *(a3 + 64) = v16;
  return a3;
}

uint64_t sub_10000A990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC8, &qword_1000F32F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AA64()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000AB08(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000ADE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_100003C4C(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  sub_10000AE48(v3);
  v5 = v4;

  return v5;
}

void sub_10000AE48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003CDC(qword_100133F88, &qword_1000F3818);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10000B430(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_10000B48C(v24, v23);
    sub_100009FEC(0, &qword_100133F80, NSObject_ptr);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_100061588(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

Class sub_10000B0BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100009FEC(0, &qword_100133F80, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10000B1B4()
{
  v0 = static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000F3160;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100003D24();
  strcpy((v1 + 32), "send(event:)");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v3, "Unexpected call to %s", v2);
}

void sub_10000B2B4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100003C4C(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  sub_10000A990(a1, v8);
  v5 = swift_allocObject();
  sub_100009F34(v8, v5 + 16);
  aBlock[4] = sub_10000B410;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B0BC;
  aBlock[3] = &unk_100126E58;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10000B3D8()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000B48C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int KMAllocatedUnfairLock.Ownership.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B53C(uint64_t a1)
{
  Hasher.init(_seed:)();
  KMAllocatedUnfairLock.Ownership.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_10000B598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for KextsOutOfOSImageFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KextsOutOfOSImageFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000B7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10000A990(a1, v16);
  sub_10000A990(a1, v15);
  v7 = sub_100003DA0(v15, v15[3]);
  __chkstk_darwin(v7, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  sub_100014838(a2, &v14);
  sub_100013060(v11, a2, 2150449, v17);
  sub_100003C90(v15);
  type metadata accessor for ExtensionManager();
  swift_allocObject();
  result = sub_1000A059C(v16, v17);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_10000B908()
{
  v1 = v0;
  v2 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 120))
  {

    v6 = sub_100048948();
    v8 = v7;

    v9 = *(*(v0 + 56) + 656);

    os_unfair_lock_lock((v9 + 72));
    v10 = *(v9 + 32);
    v27[0] = *(v9 + 16);
    v27[1] = v10;
    v27[2] = *(v9 + 48);
    v28 = *(v9 + 64);
    sub_100013848(v27, &v26);
    os_unfair_lock_unlock((v9 + 72));

    swift_storeEnumTagMultiPayload();
    v11 = sub_100054F6C(v5, 0, 0);
    sub_1000138A4(v27);
    sub_100014780(v5, type metadata accessor for LookupSpec);
    if (v11)
    {
      v26 = _swiftEmptyArrayStorage;
      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      v22 = v8;
      if (v11 >> 62)
      {
        goto LABEL_18;
      }

      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        while (1)
        {
          v14 = 0;
          v15 = v11 & 0xC000000000000001;
          v23 = v11 & 0xC000000000000001;
          v24 = v11;
          while (v15)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

LABEL_11:
            v25 = v16;
            if (sub_1000139A8(&v25, v6, v1))
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v15 = v23;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v11 = v24;
            }

            else
            {
            }

            ++v14;
            if (v17 == v13)
            {
              goto LABEL_19;
            }
          }

          if (v14 < *(v12 + 16))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
            goto LABEL_19;
          }
        }

        v16 = *(v11 + 8 * v14 + 32);

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_19:

      v19 = v26;
      KeyPath = swift_getKeyPath();
      v18 = sub_1000C64C8(KeyPath, v19);
    }

    else
    {
LABEL_16:

      return _swiftEmptyArrayStorage;
    }

    return v18;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10000BC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a2;
  v23[1] = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v10 = v9 - 8;
  v12 = __chkstk_darwin(v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v23 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  sub_100014718(v23[0], &v17[*(v10 + 56)], type metadata accessor for DriverBinEntry);
  sub_100014894(v17, v14, &unk_1001373B0, &unk_1000F3A40);
  v20 = &v14[*(v10 + 56)];
  v21 = type metadata accessor for DriverBinEntry(0);
  (*(v5 + 16))(v8, v20 + *(v21 + 28), v4);
  sub_100014780(v20, type metadata accessor for DriverBinEntry);
  LOBYTE(v20) = static URL.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  sub_10000A184(v17, &unk_1001373B0, &unk_1000F3A40);
  (*(v19 + 8))(v14, v18);
  return v20 & 1;
}

char *sub_10000BE84()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v187 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v186 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v185 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveDriverInfo(0);
  v203 = *(active - 8);
  v9 = __chkstk_darwin(active, v8);
  v194 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v197 = &v181 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v195 = &v181 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v204 = &v181 - v19;
  __chkstk_darwin(v18, v20);
  v211 = (&v181 - v21);
  v22 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v181 - v24;
  v26 = type metadata accessor for URL();
  v196 = *(v26 - 8);
  v28 = __chkstk_darwin(v26, v27);
  *&v209 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v206 = (&v181 - v31);
  v32 = type metadata accessor for LookupSpec(0);
  result = __chkstk_darwin(v32, v33);
  v36 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[15])
  {
    __break(1u);
    goto LABEL_126;
  }

  v184 = v5;

  v192 = sub_100048948();
  v38 = v37;
  v191 = v39;

  if (!v0[14])
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v190 = sub_100089030();
  v210 = v40;

  v198 = v0;
  v41 = v0[16];
  if (!v41)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v42 = *(v41 + 88);
  v183 = v1;
  v182 = v2;
  v208 = v32;
  v207 = v38;
  if (v42)
  {
    v43 = v42;
  }

  else
  {

    sub_10001B0B4();
    v43 = v44;
    *(v41 + 88) = v44;
  }

  v45 = sub_10000DA8C(v43);

  v46 = sub_1000EB6CC(v45);

  v48 = v198;
  v49 = v198[7];
  v50 = *(v49 + 656);
  __chkstk_darwin(v47, v51);
  v52 = v207;
  *(&v181 - 8) = v192;
  *(&v181 - 7) = v52;
  v53 = v190;
  *(&v181 - 6) = v191;
  *(&v181 - 5) = v53;
  *(&v181 - 4) = v210;
  *(&v181 - 3) = v46;
  v188 = v46;
  *(&v181 - 2) = v48;

  os_unfair_lock_lock((v50 + 72));
  sub_100013820((v50 + 16), v222);
  v202 = 0;
  os_unfair_lock_unlock((v50 + 72));
  v189 = *&v222[0];

  v54 = *(v49 + 656);

  os_unfair_lock_lock((v54 + 72));
  v55 = *(v54 + 32);
  v222[0] = *(v54 + 16);
  v222[1] = v55;
  v222[2] = *(v54 + 48);
  v223 = *(v54 + 64);
  sub_100013848(v222, &aBlock);
  os_unfair_lock_unlock((v54 + 72));

  swift_storeEnumTagMultiPayload();
  v56 = sub_100054F6C(v36, 0, 0);
  sub_1000138A4(v222);
  result = sub_100014780(v36, type metadata accessor for LookupSpec);
  if (!v56)
  {
    goto LABEL_75;
  }

  if (v48[17])
  {

    v57 = sub_10001E490();
    v58 = v57;
    v59 = *(v57 + 16);
    if (v59)
    {
      v60 = sub_100032594(*(v57 + 16), 0);
      v61 = sub_1000591AC(&aBlock, v60 + ((*(v203 + 80) + 32) & ~*(v203 + 80)), v59, v58);
      sub_1000145A4(aBlock);
      if (v61 != v59)
      {
        __break(1u);
        goto LABEL_124;
      }
    }

    else
    {

      v60 = _swiftEmptyArrayStorage;
    }

    v62 = v56 & 0xFFFFFFFFFFFFFF8;
    if (v56 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v201 = v60;
    if (v63)
    {
      v64 = 0;
      v210 = v56 & 0xC000000000000001;
      v208 = (v196 + 56);
      v200 = (v196 + 48);
      v193 = (v196 + 32);
      v207 = _swiftEmptyArrayStorage;
      v205 = v56 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v210)
        {
          v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v64 >= *(v62 + 16))
          {
            goto LABEL_119;
          }

          v59 = *(v56 + 8 * v64 + 32);

          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            v142 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_77;
          }
        }

        sub_1000138F8(*(v59 + 24) + 24, &aBlock);
        if (v221)
        {
          sub_100013954(&aBlock);

          (*v208)(v25, 1, 1, v26);
        }

        else
        {
          sub_100009F34(&aBlock, &v213);
          sub_100009F34(&v213, &v214);
          v66 = v63;
          v67 = v56;
          v68 = *(&v215 + 1);
          v69 = v216;
          sub_100003C4C(&v214, *(&v215 + 1));
          v70 = *(v69 + 64);
          v71 = v68;
          v63 = v66;
          v72 = v69;
          v56 = v67;
          v62 = v205;
          v70(v71, v72);

          (*v208)(v25, 0, 1, v26);
          sub_100003C90(&v214);
          if ((*v200)(v25, 1, v26) != 1)
          {
            v59 = *v193;
            (*v193)(v206, v25, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v207 = sub_100031468(0, v207[2] + 1, 1, v207);
            }

            v74 = v207[2];
            v73 = v207[3];
            if (v74 >= v73 >> 1)
            {
              v207 = sub_100031468((v73 > 1), v74 + 1, 1, v207);
            }

            v75 = v207;
            v207[2] = v74 + 1;
            (v59)(v75 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v74, v206, v26);
            goto LABEL_20;
          }
        }

        sub_10000A184(v25, &unk_1001389D0, &qword_1000F4F60);
LABEL_20:
        ++v64;
        if (v65 == v63)
        {
          goto LABEL_35;
        }
      }
    }

    v207 = _swiftEmptyArrayStorage;
LABEL_35:

    v76 = sub_1000EB530(v207);

    v77 = v201;
    v48 = _swiftEmptyArrayStorage;
    v200 = v201[2];
    if (v200)
    {
      v78 = 0;
      v210 = v76 + 56;
      v208 = (v196 + 16);
      v79 = (v196 + 8);
      while (v78 < v77[2])
      {
        v207 = v48;
        v80 = *(v203 + 72);
        v206 = ((*(v203 + 80) + 32) & ~*(v203 + 80));
        v205 = v80;
        sub_100014718(v206 + v77 + v80 * v78, v211, type metadata accessor for ActiveDriverInfo);
        if (*(v76 + 16) && (sub_100014614(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v81 = dispatch thunk of Hashable._rawHashValue(seed:)(), v82 = -1 << *(v76 + 32), v56 = v81 & ~v82, ((*(v210 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
        {
          v83 = ~v82;
          v84 = *(v196 + 72);
          v85 = *(v196 + 16);
          while (1)
          {
            v59 = v209;
            v85(v209, *(v76 + 48) + v84 * v56, v26);
            sub_100014614(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v86 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v79)(v59, v26);
            if (v86)
            {
              break;
            }

            v56 = (v56 + 1) & v83;
            if (((*(v210 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          sub_100014780(v211, type metadata accessor for ActiveDriverInfo);
          v48 = v207;
        }

        else
        {
LABEL_45:
          sub_1000145AC(v211, v204, type metadata accessor for ActiveDriverInfo);
          v48 = v207;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100063648(0, v48[2] + 1, 1);
            v48 = aBlock;
          }

          v89 = v48[2];
          v88 = v48[3];
          v56 = v89 + 1;
          if (v89 >= v88 >> 1)
          {
            sub_100063648((v88 > 1), v89 + 1, 1);
            v48 = aBlock;
          }

          v48[2] = v56;
          sub_1000145AC(v204, v206 + v48 + v89 * v205, type metadata accessor for ActiveDriverInfo);
        }

        v78 = (v78 + 1);
        v77 = v201;
        if (v78 == v200)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_120;
    }

LABEL_50:

    v61 = v48[2];
    if (!v61)
    {
LABEL_74:

LABEL_75:
      v141 = sub_10000B908();
      v59 = v141;
      v56 = v141 & 0xFFFFFFFFFFFFFF8;
      if (v141 >> 62)
      {
        goto LABEL_121;
      }

      v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
      v143 = _swiftEmptyArrayStorage;
      if (v142)
      {
        v144 = 0;
        do
        {
          v145 = v144;
          while (1)
          {
            if ((v59 & 0xC000000000000001) != 0)
            {
              v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v144 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (v145 >= *(v56 + 16))
              {
                goto LABEL_117;
              }

              v146 = *(v59 + 8 * v145 + 32);

              v144 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }
            }

            sub_1000138F8(*(v146 + 24) + 24, &aBlock);
            if (!v221)
            {
              break;
            }

            sub_100013954(&aBlock);
            v214 = 0u;
            v215 = 0u;
            v216 = 0;

            sub_10000A184(&v214, &qword_1001342A8, &unk_1000F39C0);
            ++v145;
            if (v144 == v142)
            {
              goto LABEL_94;
            }
          }

          sub_100009F34(&aBlock, &v213);
          sub_100009F34(&v213, &v214);
          sub_10000A184(&v214, &qword_1001342A8, &unk_1000F39C0);
          v147 = sub_100023AFC(0, 0, 0);
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v211 = v147;
          if ((v148 & 1) == 0)
          {
            v143 = sub_100031664(0, v143[2] + 1, 1, v143);
          }

          v150 = v143[2];
          v149 = v143[3];
          v210 = v150 + 1;
          if (v150 >= v149 >> 1)
          {
            v143 = sub_100031664((v149 > 1), v150 + 1, 1, v143);
          }

          v143[2] = v210;
          v143[v150 + 4] = v211;
        }

        while (v144 != v142);
      }

LABEL_94:

      v151 = v198;
      v152 = v198[18];
      if (v152)
      {

        v153 = *(v152 + 72);
        v154 = v189;
        if (v153 == 2)
        {
          v155 = sub_10009E624();
          *(v152 + 72) = v155 & 1;

          if (v155)
          {
            goto LABEL_97;
          }
        }

        else
        {

          if (v153)
          {
LABEL_97:
            if (*(v154 + 2))
            {
LABEL_98:
              v156 = sub_10006BE08(0, 0, 0, 0, v143);
              sub_100003C4C(v151 + 2, v151[5]);
              sub_1000DF65C(&aBlock);
              sub_100003C4C(&aBlock, v219);
              v157 = sub_10002055C(v156);

              *(&v215 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
              *&v214 = v157;
              v158 = sub_10009C698(&v214);
              v160 = v159;
              sub_100003C90(&v214);
              if (v160 >> 60 == 15)
              {
                sub_10001449C();
                v161 = swift_allocError();
                *v162 = 0u;
                *(v162 + 16) = 0u;
                *(v162 + 32) = 0u;
                *(v162 + 48) = 0u;
                *(v162 + 64) = 0;
                *(v162 + 72) = 75;
                swift_willThrow();
LABEL_109:
                sub_100003C90(&aBlock);
                if (qword_100133AD0 != -1)
                {
                  swift_once();
                }

                v167 = type metadata accessor for Logger();
                sub_1000144F0(v167, qword_10014E9B0);
                swift_errorRetain();
                v168 = Logger.logObject.getter();
                v169 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v168, v169))
                {
                  v170 = swift_slowAlloc();
                  v171 = swift_slowAlloc();
                  *&aBlock = v171;
                  *v170 = 136315138;
                  *&v214 = v161;
                  swift_errorRetain();
                  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
                  v172 = String.init<A>(describing:)();
                  v174 = sub_1000E3AF8(v172, v173, &aBlock);

                  *(v170 + 4) = v174;
                  _os_log_impl(&_mh_execute_header, v168, v169, "An error occurred while loading dext personalities: %s", v170, 0xCu);
                  sub_100003C90(v171);
                }

                else
                {
                }

                return v154;
              }

              v166 = v202;
              sub_10009C774(v158, v160);
              if (v166)
              {
                v161 = v166;
                sub_100014528(v158, v160);
                goto LABEL_109;
              }

              sub_100014528(v158, v160);
              sub_100003C90(&aBlock);
              v175 = v151[13];
              v220 = sub_10001453C;
              v221 = v151;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              v218 = sub_10006CCB0;
              v219 = &unk_100126F28;
              v176 = _Block_copy(&aBlock);
              v177 = v175;

              v178 = v185;
              static DispatchQoS.unspecified.getter();
              *&v214 = _swiftEmptyArrayStorage;
              sub_100014614(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100003CDC(&unk_100137370, &unk_1000F32E0);
              sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0, &protocol conformance descriptor for [A]);
              v179 = v187;
              v180 = v183;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v176);

              (*(v182 + 8))(v179, v180);
              (*(v186 + 8))(v178, v184);

              return v154;
            }

LABEL_106:

            return 0;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_100030EA0(0, *(v154 + 2) + 1, 1, v154);
        }

        v164 = *(v154 + 2);
        v163 = *(v154 + 3);
        if (v164 >= v163 >> 1)
        {
          v154 = sub_100030EA0((v163 > 1), v164 + 1, 1, v154);
        }

        *(v154 + 2) = v164 + 1;
        v165 = &v154[16 * v164];
        *(v165 + 4) = 0xD00000000000001BLL;
        *(v165 + 5) = 0x8000000100104180;
        if (*(v154 + 2))
        {
          goto LABEL_98;
        }

        goto LABEL_106;
      }

      goto LABEL_128;
    }

    if (qword_100133AD0 == -1)
    {
LABEL_52:
      v90 = type metadata accessor for Logger();
      v91 = sub_1000144F0(v90, qword_10014E9B0);

      v210 = v91;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      v94 = os_log_type_enabled(v92, v93);
      v207 = v48;
      if (v94)
      {
        LODWORD(v209) = v93;
        v211 = v92;
        v95 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v214 = v206;
        v208 = v95;
        *v95 = 136315138;
        *&v213 = _swiftEmptyArrayStorage;
        sub_1000635A4(0, v61, 0);
        v96 = v48;
        v97 = v213;
        v98 = v96 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
        v99 = *(v203 + 72);
        do
        {
          v100 = v195;
          sub_100014718(v98, v195, type metadata accessor for ActiveDriverInfo);
          *&aBlock = 8224;
          *(&aBlock + 1) = 0xE200000000000000;
          v101._countAndFlagsBits = URL.path.getter();
          String.append(_:)(v101);

          v102 = aBlock;
          sub_100014780(v100, type metadata accessor for ActiveDriverInfo);
          *&v213 = v97;
          v104 = *(v97 + 16);
          v103 = *(v97 + 24);
          if (v104 >= v103 >> 1)
          {
            sub_1000635A4((v103 > 1), v104 + 1, 1);
            v97 = v213;
          }

          *(v97 + 16) = v104 + 1;
          *(v97 + 16 * v104 + 32) = v102;
          v98 += v99;
          --v61;
        }

        while (v61);
        *&aBlock = v97;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
        v105 = BidirectionalCollection<>.joined(separator:)();
        v107 = v106;

        v108 = sub_1000E3AF8(v105, v107, &v214);

        v109 = v208;
        *(v208 + 1) = v108;
        v110 = v211;
        _os_log_impl(&_mh_execute_header, v211, v209, "Drivers that should be unloaded:\n%s", v109, 0xCu);
        sub_100003C90(v206);

        v48 = v207;
      }

      else
      {
      }

      v112 = v48[2];
      v113 = v197;
      if (v112)
      {
        v114 = v48 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
        v211 = *(v203 + 72);
        *&v111 = 136315394;
        v209 = v111;
        while (1)
        {
          sub_100014718(v114, v113, type metadata accessor for ActiveDriverInfo);
          v115 = (v113 + *(active + 20));
          v116 = *v115;
          v117 = v115[1];

          v118 = sub_10006BD14(v116, v117);
          sub_100003C4C(v198 + 2, v198[5]);
          sub_1000DF65C(&aBlock);
          sub_100003C4C(&aBlock, v219);
          v119 = sub_1000206B8(v118);

          *(&v215 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
          *&v214 = v119;
          sub_10000B430(&v214, &v213);
          type metadata accessor for CFDictionary(0);
          v120 = swift_dynamicCast() ? v212 : 0;
          v212 = v120;
          sub_100003CDC(&qword_1001342C0, &qword_1000F39E0);
          v121 = Optional._bridgeToObjectiveC()();

          v122 = IOCFSerialize(v121, 0);
          swift_unknownObjectRelease();
          if (!v122)
          {
            break;
          }

          v123 = v122;
          v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          sub_100003C90(&v214);
          v127 = v202;
          sub_10009C774(v124, v126);
          if (v127)
          {
            sub_1000128D8(v124, v126);
            v128 = v127;
            v202 = 0;
            v113 = v197;
LABEL_71:
            sub_100003C90(&aBlock);
            v130 = v194;
            sub_100014718(v113, v194, type metadata accessor for ActiveDriverInfo);
            swift_errorRetain();
            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              *&aBlock = swift_slowAlloc();
              *v133 = v209;
              v134 = (v130 + *(active + 20));
              v136 = *v134;
              v135 = v134[1];

              sub_100014780(v130, type metadata accessor for ActiveDriverInfo);
              v137 = sub_1000E3AF8(v136, v135, &aBlock);

              *(v133 + 4) = v137;
              *(v133 + 12) = 2080;
              *&v214 = v128;
              swift_errorRetain();
              sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
              v138 = String.init<A>(describing:)();
              v140 = sub_1000E3AF8(v138, v139, &aBlock);

              *(v133 + 14) = v140;
              _os_log_impl(&_mh_execute_header, v131, v132, "Failed to unload driver %s: %s", v133, 0x16u);
              swift_arrayDestroy();

              v113 = v197;
            }

            else
            {

              sub_100014780(v130, type metadata accessor for ActiveDriverInfo);
            }

            sub_100014780(v113, type metadata accessor for ActiveDriverInfo);
            goto LABEL_63;
          }

          v202 = 0;
          sub_1000128D8(v124, v126);
          v113 = v197;
          sub_100014780(v197, type metadata accessor for ActiveDriverInfo);
          sub_100003C90(&aBlock);
LABEL_63:
          v114 += v211;
          if (!--v112)
          {
            goto LABEL_74;
          }
        }

        sub_100003C90(&v214);
        sub_10001449C();
        v128 = swift_allocError();
        *v129 = 0u;
        *(v129 + 16) = 0u;
        *(v129 + 32) = 0u;
        *(v129 + 48) = 0u;
        *(v129 + 64) = 0;
        *(v129 + 72) = 75;
        swift_willThrow();
        v202 = 0;
        goto LABEL_71;
      }

      goto LABEL_74;
    }

LABEL_124:
    swift_once();
    goto LABEL_52;
  }

LABEL_129:
  __break(1u);
  return result;
}

void *sub_10000DA8C(uint64_t a1)
{
  v3 = type metadata accessor for ApplicationRecord(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3, v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v38 = _swiftEmptyArrayStorage;
  sub_10006368C(0, v6, 0);
  v7 = v38;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v30 = a1 + 72;
  v31 = v6;
  v32 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v36 = v11;
    v37 = v14;
    v15 = v33;
    sub_100014718(*(a1 + 56) + *(v34 + 72) * v10, v33, type metadata accessor for ApplicationRecord);
    v16 = (v15 + *(v35 + 28));
    v18 = *v16;
    v17 = v16[1];
    sub_1000146C4(*v16, v17);
    result = sub_100014780(v15, type metadata accessor for ApplicationRecord);
    v38 = v7;
    v20 = v7[2];
    v19 = v7[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_10006368C((v19 > 1), v20 + 1, 1);
      v7 = v38;
    }

    v7[2] = v20 + 1;
    v21 = &v7[2 * v20];
    v21[4] = v18;
    v21[5] = v17;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v32;
    v22 = *(v32 + 8 * v13);
    if ((v22 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v10 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1000147E0(v10, v37, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v10, v37, 0);
    }

LABEL_4:
    v11 = v36 + 1;
    v10 = v12;
    if (v36 + 1 == v31)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000DD80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, void *a5@<X7>, void *a6@<X8>)
{
  v380 = a5;
  v378 = a4;
  v394 = a1;
  v365 = a6;
  v9 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v373 = &v342 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v355 = &v342 - v14;
  v386 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v386, v15);
  v387 = &v342 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 1);
  v20 = __chkstk_darwin(v17, v19);
  v366 = &v342 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v400 = &v342 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v395 = &v342 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v377 = &v342 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v376 = &v342 - v33;
  v35 = __chkstk_darwin(v32, v34);
  v363 = &v342 - v36;
  __chkstk_darwin(v35, v37);
  v403 = &v342 - v38;
  v398 = type metadata accessor for DriverBinEntry(0);
  v384 = *(v398 - 8);
  v40 = __chkstk_darwin(v398, v39);
  v369 = &v342 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v40, v42);
  __chkstk_darwin(v43, v44);
  v383 = &v342 - v46;
  v47 = a2 + 64;
  v48 = 1 << *(a2 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a2 + 64);
  v51 = (v48 + 63) >> 6;
  v404 = (v18 + 16);
  v405 = (v18 + 8);
  v364 = v18;
  v401 = (v18 + 56);
  v350 = 0x8000000100104210;
  v351 = 0x8000000100104240;
  v357 = 0x80000001001041C0;
  v362 = 0x8000000100104280;
  v353 = "<Missing Identifier>";
  v354 = "Could not create bundle for ";
  v352 = ", removed from manager";
  v349 = 0x8000000100104260;
  v388 = a2;
  v52 = v45;

  v53 = 0;
  v371 = a3;
  v367 = (a3 + 64);
  v381 = _swiftEmptyArrayStorage;
  *&v54 = 136315138;
  v379 = v54;
  *&v54 = 136315394;
  v358 = v54;
  v406 = v17;
  v396 = v52;
  v382 = v47;
  v385 = v51;
  while (2)
  {
    while (2)
    {
      if (v50)
      {
        goto LABEL_11;
      }

      do
      {
        v63 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
          goto LABEL_377;
        }

        if (v63 >= v51)
        {
          v309 = v388;

          v310 = v391;
          v311 = sub_10008101C(v309);
          v51 = v310;
          v53 = sub_1000EB530(v311);

          v312 = v394[1];
          v418 = *v394;
          v419 = v312;
          v420 = v394[2];
          *&v421[0] = *(v394 + 6);
          v313 = v387;
          swift_storeEnumTagMultiPayload();
          v314 = sub_100054F6C(v313, 0, 0);
          sub_100014780(v313, type metadata accessor for LookupSpec);
          if (v314)
          {
            v6 = v314 & 0xFFFFFFFFFFFFFF8;
            v390 = v314;
            if (v314 >> 62)
            {
              goto LABEL_382;
            }

            v315 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v316 = v373;
            if (v315)
            {
              goto LABEL_344;
            }

LABEL_383:
          }

LABEL_385:
          *v365 = v381;
          return result;
        }

        v50 = *(v47 + 8 * v63);
        ++v53;
      }

      while (!v50);
      v53 = v63;
LABEL_11:
      v64 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v65 = v383;
      sub_100014718(*(v388 + 56) + *(v384 + 72) * (v64 | (v53 << 6)), v383, type metadata accessor for DriverBinEntry);
      sub_1000145AC(v65, v52, type metadata accessor for DriverBinEntry);
      v6 = *v404;
      v66 = v403;
      (*v404)(v403, v52 + *(v398 + 28), v17);
      v67 = v394[1];
      v411 = *v394;
      v412 = v67;
      v413 = v394[2];
      v414 = *(v394 + 6);
      v68 = v387;
      v399 = v6;
      (v6)(v387, v66, v17);
      swift_storeEnumTagMultiPayload();
      v69 = sub_100054F6C(v68, 0, 0);
      sub_100014780(v68, type metadata accessor for LookupSpec);
      v397 = v50;
      if (!v69)
      {
        goto LABEL_173;
      }

      if (!(v69 >> 62))
      {
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

LABEL_172:

LABEL_173:
        if (qword_100133AD0 != -1)
        {
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        v6 = sub_1000144F0(v148, qword_10014E9B0);
        v149 = v376;
        (v399)(v376, v403, v17);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v389 = v53;
          v153 = v152;
          v154 = v149;
          v402 = swift_slowAlloc();
          *&v418 = v402;
          *v153 = v379;
          sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v155 = v6;
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v158 = v157;
          v392 = *v405;
          (v392)(v154, v17);
          v159 = v156;
          v6 = v155;
          v160 = sub_1000E3AF8(v159, v158, &v418);

          *(v153 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v150, v151, "Bundle at %s not in manager", v153, 0xCu);
          sub_100003C90(v402);

          v53 = v389;
        }

        else
        {

          v392 = *v405;
          (v392)(v149, v17);
        }

        v415 = *(&v413 + 1);
        swift_bridgeObjectRetain_n();
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();
        sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v418 = v164;
          *v163 = v379;
          sub_100003CDC(&qword_1001342D0, &qword_1000F39F0);
          sub_100014614(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v165 = Dictionary.Keys.description.getter();
          v167 = sub_1000E3AF8(v165, v166, &v418);

          *(v163 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v161, v162, "Available URLs: %s", v163, 0xCu);
          sub_100003C90(v164);
        }

        v168 = v377;
        v169 = v396;
        v170 = v396 + *(v398 + 20);
        v171 = &v170[*(type metadata accessor for ApplicationRecord(0) + 28)];
        if ((sub_100081F78(*v171, *(v171 + 1), v378) & 1) == 0)
        {
          v192 = v369;
          sub_100014718(v169, v369, type metadata accessor for DriverBinEntry);
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v193, v194))
          {
            v55 = swift_slowAlloc();
            v402 = swift_slowAlloc();
            *&v416[0] = v402;
            *v55 = v379;
            *&v418 = 0;
            *(&v418 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(27);

            strcpy(&v418, "Staged bundle ");
            HIBYTE(v418) = -18;
            v56 = v398;
            sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v57);

            v58._countAndFlagsBits = 0x70706120726F6620;
            v58._object = 0xE900000000000020;
            String.append(_:)(v58);
            v59 = *(v56 + 20);
            v6 = v396;
            String.append(_:)(*(v192 + v59));
            v61 = *(&v418 + 1);
            v60 = v418;
            sub_100014780(v192, type metadata accessor for DriverBinEntry);
            v62 = sub_1000E3AF8(v60, v61, v416);

            *(v55 + 4) = v62;
            _os_log_impl(&_mh_execute_header, v193, v194, "Found stale staged driver %s belonging to an uninstalled app", v55, 0xCu);
            sub_100003C90(v402);

            v17 = v406;

            v52 = v6;
            sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
            (v392)(v403, v17);
            v51 = v385;
            v50 = v397;
            goto LABEL_5;
          }

          sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
          sub_100014780(v192, type metadata accessor for DriverBinEntry);
          v17 = v406;
          (v392)(v403, v406);
          v51 = v385;
          v50 = v397;
          goto LABEL_321;
        }

        v368 = v6;
        sub_100003C4C(v380 + 2, v380[5]);
        sub_1000DFF08(v416);
        v6 = v406;
        (v399)(v168, v403, v406);
        v172 = type metadata accessor for UncachedBundle();
        v173 = swift_allocObject();
        URL._bridgeToObjectiveC()(v174);
        v176 = v175;
        Unique = _CFBundleCreateUnique();

        if (!Unique)
        {
          (v392)(v168, v6);
          sub_100003C90(v416);
          swift_deallocPartialClassInstance();
          *&v418 = 0;
          *(&v418 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          *&v418 = 0xD00000000000001CLL;
          *(&v418 + 1) = v357;
          v236 = v403;
          v237._countAndFlagsBits = URL.path.getter();
          String.append(_:)(v237);

          v239 = *(&v418 + 1);
          v238 = v418;
          sub_10001449C();
          v240 = swift_allocError();
          *v241 = __PAIR128__(v239, v238);
          v242 = v240;
          v243 = *&v421[0];
          v245 = v419;
          v244 = v420;
          *(v241 + 16) = v418;
          *(v241 + 32) = v245;
          *(v241 + 48) = v244;
          *(v241 + 64) = v243;
          *(v241 + 72) = 19;
          swift_willThrow();
          v391 = 0;
          v246 = v366;
          v51 = v385;
          goto LABEL_307;
        }

        v389 = v53;
        v178 = Unique;
        (v392)(v168, v6);

        *(v173 + 16) = v178;
        *(&v423 + 1) = v172;
        v424 = sub_100014614(&qword_1001373C0, type metadata accessor for UncachedBundle, &unk_1000F980C);
        *&v422 = v173;
        sub_100003C90(v416);
        sub_100009F34(&v422, v425);
        sub_100003C4C(v425, v426);
        v179 = sub_1000990BC();
        if (!v180)
        {
          strcpy(&v418, "Bundle ");
          *(&v418 + 1) = 0xE700000000000000;
          v236 = v403;
          v247._countAndFlagsBits = URL.path.getter();
          String.append(_:)(v247);

          v248._countAndFlagsBits = 0xD000000000000025;
          v248._object = (v354 | 0x8000000000000000);
          String.append(_:)(v248);
          v250 = *(&v418 + 1);
          v249 = v418;
          sub_10001449C();
          v251 = swift_allocError();
          *v252 = __PAIR128__(v250, v249);
          v242 = v251;
          v253 = *&v421[0];
          v255 = v419;
          v254 = v420;
          *(v252 + 16) = v418;
          *(v252 + 32) = v255;
          *(v252 + 48) = v254;
          *(v252 + 64) = v253;
          *(v252 + 72) = 9;
          swift_willThrow();
          sub_100003C90(v425);
          v391 = 0;
          v246 = v366;
          v51 = v385;
          v50 = v397;
          v53 = v389;
          goto LABEL_318;
        }

        v181 = v180;
        v182 = *(v371 + 16);
        if (!v182)
        {
          v17 = v6;
          v53 = v389;
LABEL_328:
          sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);

          (v392)(v403, v17);
          v51 = v385;
          v52 = v396;
          v50 = v397;
          goto LABEL_329;
        }

        v183 = v179;
        v184 = *v171;
        v185 = *(v171 + 1);
        if (*v171)
        {
          v186 = 0;
        }

        else
        {
          v186 = v185 == 0xC000000000000000;
        }

        v187 = v185 >> 62;
        v188 = !v186;
        LODWORD(v372) = v188;
        v346 = HIDWORD(v184);
        v189 = __OFSUB__(HIDWORD(v184), v184);
        LODWORD(v360) = v189;
        v359 = HIDWORD(v184) - v184;
        v370 = v185;
        v374 = v184;
        v375 = BYTE6(v185);
        v190 = v184;
        v191 = v184 >> 32;
        v348 = v190;
        v344 = v191 - v190;
        v345 = v191;
        v51 = v367;
        v17 = v6;
        v53 = v389;
        v356 = v180;
        v390 = v179;
        v393 = v185 >> 62;
        while (2)
        {
          v195 = *(v51 - 16);
          v196 = *(v51 - 8);
          v197 = *v51;
          if (*(v51 - 32) == v183 && v181 == *(v51 - 24))
          {
            if (v196 >> 60 == 15)
            {
              goto LABEL_197;
            }
          }

          else
          {
            LODWORD(v402) = *v51;
            v6 = v195;
            v199 = v181;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v183 = v390;
              v187 = v393;
              v181 = v199;
              goto LABEL_197;
            }

            v183 = v390;
            v187 = v393;
            v181 = v199;
            v197 = v402;
            if (v196 >> 60 == 15)
            {
LABEL_197:
              v51 += 40;
              if (!--v182)
              {
                goto LABEL_328;
              }

              continue;
            }
          }

          break;
        }

        v200 = v196 >> 62;
        if (v196 >> 62 == 3)
        {
          if (v195)
          {
            v201 = 0;
          }

          else
          {
            v201 = v196 == 0xC000000000000000;
          }

          v203 = !v201 || v187 < 3;
          if (((v203 | v372) & 1) == 0)
          {
            LODWORD(v402) = v197;
            goto LABEL_309;
          }

LABEL_228:
          v204 = 0;
          if (v187 > 1)
          {
            goto LABEL_229;
          }

LABEL_225:
          v207 = v375;
          if (v187)
          {
            v207 = v359;
            if (v360)
            {
              goto LABEL_381;
            }
          }
        }

        else
        {
          if (v200 <= 1)
          {
            if (v200)
            {
              LODWORD(v204) = HIDWORD(v195) - v195;
              if (__OFSUB__(HIDWORD(v195), v195))
              {
                goto LABEL_389;
              }

              v204 = v204;
              if (v187 > 1)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v204 = BYTE6(v196);
              if (v187 > 1)
              {
                goto LABEL_229;
              }
            }

            goto LABEL_225;
          }

          if (v200 != 2)
          {
            goto LABEL_228;
          }

          v206 = *(v195 + 16);
          v205 = *(v195 + 24);
          v104 = __OFSUB__(v205, v206);
          v204 = v205 - v206;
          if (v104)
          {
            goto LABEL_388;
          }

          if (v187 <= 1)
          {
            goto LABEL_225;
          }

LABEL_229:
          if (v187 != 2)
          {
            LODWORD(v402) = v197;
            if (!v204)
            {
              goto LABEL_309;
            }

            goto LABEL_197;
          }

          v209 = *(v374 + 16);
          v208 = *(v374 + 24);
          v104 = __OFSUB__(v208, v209);
          v207 = v208 - v209;
          if (v104)
          {
            goto LABEL_380;
          }
        }

        if (v204 != v207)
        {
          goto LABEL_197;
        }

        LODWORD(v402) = v197;
        if (v204 < 1)
        {
          goto LABEL_309;
        }

        if (v200 > 1)
        {
          if (v200 != 2)
          {
            v6 = v181;
            *(&v418 + 6) = 0;
            *&v418 = 0;

            v210 = v195;
            sub_1000146B0(v195, v196);
LABEL_250:
            v217 = v391;
            sub_100045F4C(&v418, v374, v370, v416);
            v391 = v217;
            if (v217)
            {
              goto LABEL_433;
            }

            sub_100014528(v210, v196);
            v183 = v390;
            v187 = v393;
            v181 = v6;
            if (v416[0])
            {
              goto LABEL_309;
            }

            goto LABEL_197;
          }

          v6 = *(v195 + 16);

          v361 = v195;
          sub_1000146B0(v195, v196);
          v211 = __DataStorage._bytes.getter();
          if (v211)
          {
            v212 = v211;
            v213 = __DataStorage._offset.getter();
            if (__OFSUB__(v6, v213))
            {
              goto LABEL_394;
            }

            v347 = (v6 - v213 + v212);
          }

          else
          {
            v347 = 0;
          }

          v17 = v406;
          __DataStorage._length.getter();
          if (v393 != 2)
          {
            if (v393 == 1)
            {
              if (v345 < v348)
              {
                goto LABEL_400;
              }

              v218 = v17;
              v219 = __DataStorage._bytes.getter();
              if (v219)
              {
                v6 = v219;
                v220 = __DataStorage._offset.getter();
                if (__OFSUB__(v348, v220))
                {
                  goto LABEL_409;
                }

                v221 = &v348[v6 - v220];
              }

              else
              {
                v221 = 0;
              }

              v234 = __DataStorage._length.getter();
              v227 = v344;
              if (v234 < v344)
              {
                v227 = v234;
              }

              v228 = v347;
              if (!v347)
              {
                goto LABEL_426;
              }

              if (!v221)
              {
                goto LABEL_425;
              }

              goto LABEL_302;
            }

            v229 = v347;
            LODWORD(v418) = v374;
            BYTE4(v418) = v346;
            *(&v418 + 5) = *(&v374 + 5);
            BYTE7(v418) = HIBYTE(v374);
            DWORD2(v418) = v370;
            WORD6(v418) = WORD2(v370);
            if (!v347)
            {
              goto LABEL_423;
            }

            goto LABEL_290;
          }

          v224 = *(v374 + 16);
          v343 = *(v374 + 24);
          v221 = __DataStorage._bytes.getter();
          if (v221)
          {
            v225 = __DataStorage._offset.getter();
            if (__OFSUB__(v224, v225))
            {
              goto LABEL_408;
            }

            v221 += v224 - v225;
          }

          v104 = __OFSUB__(v343, v224);
          v6 = v343 - v224;
          if (v104)
          {
            goto LABEL_401;
          }

          v226 = __DataStorage._length.getter();
          if (v226 >= v6)
          {
            v227 = v6;
          }

          else
          {
            v227 = v226;
          }

          v228 = v347;
          if (!v347)
          {
            goto LABEL_432;
          }

          v218 = v406;
          if (!v221)
          {
            goto LABEL_431;
          }
        }

        else
        {
          if (!v200)
          {
            v6 = v181;
            *&v418 = v195;
            WORD4(v418) = v196;
            BYTE10(v418) = BYTE2(v196);
            BYTE11(v418) = BYTE3(v196);
            BYTE12(v418) = BYTE4(v196);
            BYTE13(v418) = BYTE5(v196);
            v361 = &v418 + BYTE6(v196);

            v210 = v195;
            sub_1000146B0(v195, v196);
            goto LABEL_250;
          }

          v6 = v195;
          if (v195 > v195 >> 32)
          {
            goto LABEL_391;
          }

          v361 = v195;
          sub_1000146B0(v195, v196);
          v214 = __DataStorage._bytes.getter();
          if (v214)
          {
            v215 = v214;
            v216 = __DataStorage._offset.getter();
            if (__OFSUB__(v195, v216))
            {
              goto LABEL_395;
            }

            v347 = (v195 - v216 + v215);
          }

          else
          {
            v347 = 0;
          }

          v17 = v406;
          __DataStorage._length.getter();
          if (v393 != 2)
          {
            if (v393 == 1)
            {
              if (v345 < v348)
              {
                goto LABEL_402;
              }

              v218 = v17;
              v222 = __DataStorage._bytes.getter();
              if (v222)
              {
                v6 = v222;
                v223 = __DataStorage._offset.getter();
                if (__OFSUB__(v348, v223))
                {
                  goto LABEL_411;
                }

                v221 = &v348[v6 - v223];
              }

              else
              {
                v221 = 0;
              }

              v235 = __DataStorage._length.getter();
              v227 = v344;
              if (v235 < v344)
              {
                v227 = v235;
              }

              v228 = v347;
              if (!v347)
              {
                goto LABEL_430;
              }

              if (!v221)
              {
                goto LABEL_428;
              }

              goto LABEL_302;
            }

            v229 = v347;
            LODWORD(v418) = v374;
            BYTE4(v418) = v346;
            *(&v418 + 5) = *(&v374 + 5);
            BYTE7(v418) = HIBYTE(v374);
            DWORD2(v418) = v370;
            WORD6(v418) = WORD2(v370);
            if (!v347)
            {
              goto LABEL_424;
            }

LABEL_290:
            v233 = memcmp(v229, &v418, v375);

            sub_100014528(v361, v196);
LABEL_304:
            v183 = v390;
            v187 = v393;
            v181 = v356;
            if (!v233)
            {
              goto LABEL_309;
            }

            goto LABEL_197;
          }

          v230 = *(v374 + 16);
          v343 = *(v374 + 24);
          v221 = __DataStorage._bytes.getter();
          if (v221)
          {
            v231 = __DataStorage._offset.getter();
            if (__OFSUB__(v230, v231))
            {
              goto LABEL_410;
            }

            v221 += v230 - v231;
          }

          v104 = __OFSUB__(v343, v230);
          v6 = v343 - v230;
          if (v104)
          {
            goto LABEL_403;
          }

          v232 = __DataStorage._length.getter();
          if (v232 >= v6)
          {
            v227 = v6;
          }

          else
          {
            v227 = v232;
          }

          v228 = v347;
          if (!v347)
          {
            goto LABEL_429;
          }

          v218 = v406;
          if (!v221)
          {
            goto LABEL_427;
          }
        }

LABEL_302:
        if (v228 == v221)
        {

          sub_100014528(v361, v196);
          v17 = v218;
          v53 = v389;
LABEL_309:
          v51 = v385;
          v52 = v396;
          v50 = v397;
          if (v402 == 1)
          {
            v256 = v380[7];
            v257 = v355;
            (*v401)(v355, 1, 1, v17);
            v258 = v391;
            v259 = sub_10007AD60(v425, v257, 0);
            v242 = v258;
            if (v258)
            {
              v6 = v17;

              *&v416[0] = v258;
              swift_errorRetain();
              sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
              v261 = swift_dynamicCast();
              v262 = v394;
              v246 = v366;
              if (v261)
              {
                v428[2] = v420;
                v429[0] = v421[0];
                *(v429 + 9) = *(v421 + 9);
                v428[0] = v418;
                v428[1] = v419;
                v263 = sub_1000DDB58(v425);
                if (v263)
                {
                  v264 = v263;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v418 = *(v262 + 1);
                  sub_100039104(v428, v264, isUniquelyReferenced_nonNull_native);
                  v242 = v258;

                  *(v262 + 1) = v418;
                  goto LABEL_316;
                }

                swift_willThrow();
                sub_10001465C(v428);
              }

              else
              {
LABEL_316:
                swift_willThrow();
              }

              v391 = 0;
              v51 = v385;
              sub_10000A184(v355, &unk_1001389D0, &qword_1000F4F60);
              sub_100003C90(v425);
              v236 = v403;
LABEL_318:
              (v399)(v246, v236, v6);
              swift_errorRetain();
              v266 = Logger.logObject.getter();
              v267 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v266, v267))
              {
                v268 = swift_slowAlloc();
                v399 = swift_slowAlloc();
                *&v418 = v399;
                *v268 = v358;
                v269 = v242;
                v270 = URL.path.getter();
                v272 = v271;
                (v392)(v246, v406);
                v273 = sub_1000E3AF8(v270, v272, &v418);

                *(v268 + 4) = v273;
                *(v268 + 12) = 2080;
                v402 = v269;
                *&v416[0] = v269;
                swift_errorRetain();
                sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
                v274 = String.init<A>(describing:)();
                v276 = sub_1000E3AF8(v274, v275, &v418);

                *(v268 + 14) = v276;
                v277 = v396;
                v6 = v403;
                v278 = v406;
                _os_log_impl(&_mh_execute_header, v266, v267, "Could not insert bundle at %s into manager: %s", v268, 0x16u);
                swift_arrayDestroy();
                v50 = v397;

                v51 = v385;

                v52 = v277;

                sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
                (v392)(v6, v278);
                v17 = v278;
LABEL_5:
                sub_100014780(v52, type metadata accessor for DriverBinEntry);
                v47 = v382;
                continue;
              }

              sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
              v279 = v392;
              (v392)(v246, v6);
              v279(v403, v6);
              v17 = v6;
LABEL_321:
              v52 = v396;
              goto LABEL_5;
            }

            v260 = v394;
            sub_100099D48(v259, v394, 0);
            v402 = 0;

            sub_10000A184(v355, &unk_1001389D0, &qword_1000F4F60);
            v280 = v260[1];
            v407 = *v260;
            v408 = v280;
            v409 = v260[2];
            v410 = *(v260 + 6);
            v281 = v426;
            v282 = v427;
            sub_100003C4C(v425, v426);
            v283 = *(v282 + 64);
            v284 = v395;
            v285 = v282;
            v6 = v406;
            v283(v281, v285);
            v286 = sub_100055C50(v284);
            (v392)(v284, v6);
            if (v286)
            {
              sub_1000138F8(*(v286 + 24) + 24, v416);
              v287 = v403;
              if (v417)
              {

                sub_100013954(v416);
                v422 = 0u;
                v423 = 0u;
                v424 = 0;
                sub_10000A184(&v422, &qword_1001342A8, &unk_1000F39C0);
                sub_10001449C();
                v242 = swift_allocError();
                v288 = v351;
                *v289 = 0xD00000000000001BLL;
                *(v289 + 8) = v288;
                v290 = *&v421[0];
                v292 = v419;
                v291 = v420;
                *(v289 + 16) = v418;
                *(v289 + 32) = v292;
                *(v289 + 48) = v291;
                *(v289 + 64) = v290;
                *(v289 + 72) = 50;
                swift_willThrow();

                sub_100003C90(v425);
                v391 = 0;
                v246 = v366;
                v50 = v397;
                v236 = v287;
                goto LABEL_318;
              }

              sub_100009F34(v416, &v422);
              sub_10000A184(&v422, &qword_1001342A8, &unk_1000F39C0);
              *&v418 = 0xD000000000000014;
              *(&v418 + 1) = v349;
              v298._countAndFlagsBits = v390;
              v298._object = v356;
              String.append(_:)(v298);

              v299._countAndFlagsBits = 544497952;
              v299._object = 0xE400000000000000;
              String.append(_:)(v299);
              v300._countAndFlagsBits = URL.path.getter();
              String.append(_:)(v300);

              v301._countAndFlagsBits = 0x616D206F746E6920;
              v301._object = 0xED0000726567616ELL;
              String.append(_:)(v301);
              v302 = v418;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v381 = sub_100030EA0(0, *(v381 + 2) + 1, 1, v381);
              }

              v6 = *(v381 + 2);
              v303 = *(v381 + 3);
              if (v6 >= v303 >> 1)
              {
                v381 = sub_100030EA0((v303 > 1), v6 + 1, 1, v381);
              }

              v304 = v381;
              *(v381 + 2) = v6 + 1;
              *&v304[16 * v6 + 32] = v302;
              sub_100003C4C(v380 + 2, v380[5]);
              sub_1000E00C4(&v418);
              v305 = *(&v419 + 1);
              v306 = v420;
              sub_100003C4C(&v418, *(&v419 + 1));
              v307 = *(v256 + 160);
              v308 = *(v256 + 168);

              sub_100015B50(v286, v307, v308, v305, v306);

              sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
              v17 = v406;
              (v392)(v403, v406);
              v52 = v396;
              sub_100014780(v396, type metadata accessor for DriverBinEntry);
              sub_100003C90(&v418);
              v391 = v402;
              v51 = v385;
              v50 = v397;
LABEL_330:
              sub_100003C90(v425);
              v47 = v382;
              continue;
            }

            sub_10001449C();
            v242 = swift_allocError();
            v293 = v350;
            *v294 = 0xD000000000000028;
            *(v294 + 8) = v293;
            v295 = *&v421[0];
            v297 = v419;
            v296 = v420;
            *(v294 + 16) = v418;
            *(v294 + 32) = v297;
            *(v294 + 48) = v296;
            *(v294 + 64) = v295;
            *(v294 + 72) = 50;
            swift_willThrow();
            sub_100003C90(v425);
            v391 = 0;
            v246 = v366;
            v236 = v403;
LABEL_307:
            v50 = v397;
            goto LABEL_318;
          }

          (v392)(v403, v17);

          sub_10000A184(&v415, &qword_1001342C8, &qword_1000F39E8);
LABEL_329:
          sub_100014780(v52, type metadata accessor for DriverBinEntry);
          goto LABEL_330;
        }

        v233 = memcmp(v228, v221, v227);

        sub_100014528(v361, v196);
        v17 = v218;
        v53 = v389;
        goto LABEL_304;
      }

      break;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_172;
    }

LABEL_14:
    if ((v69 & 0xC000000000000001) == 0)
    {
      v70 = v69 & 0xFFFFFFFFFFFFFF8;
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v71 = *(v69 + 32);

        goto LABEL_17;
      }

LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      v315 = _CocoaArrayWrapper.endIndex.getter();
      v316 = v373;
      if (!v315)
      {
        goto LABEL_383;
      }

LABEL_344:
      v387 = v51;
      v317 = 0;
      v51 = v390;
      v396 = (v364 + 48);
      v397 = v390 + 32;
      v402 = (v53 + 56);
      v403 = v53;
      v53 = v390 & 0xC000000000000001;
      v388 = " removed from manager";
      v389 = (v364 + 32);
      v392 = v315;
      v393 = v6;
      v391 = (v390 & 0xC000000000000001);
      while (1)
      {
        while (1)
        {
          if (v53)
          {
            v318 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v104 = __OFADD__(v317++, 1);
            if (v104)
            {
              goto LABEL_375;
            }
          }

          else
          {
            if (v317 >= *(v6 + 16))
            {
              goto LABEL_376;
            }

            v318 = *(v397 + 8 * v317);

            v104 = __OFADD__(v317++, 1);
            if (v104)
            {
              goto LABEL_375;
            }
          }

          sub_1000138F8(*(v318 + 24) + 24, v416);
          if (!v417)
          {
            break;
          }

          sub_100013954(v416);

          (*v401)(v316, 1, 1, v17);
LABEL_346:
          sub_10000A184(v316, &unk_1001389D0, &qword_1000F4F60);
          if (v317 == v315)
          {
            goto LABEL_372;
          }
        }

        sub_100009F34(v416, v425);
        v320 = v426;
        v319 = v427;
        sub_100003C4C(v425, v426);
        v17 = v406;
        (*(v319 + 64))(v320, v319);
        (*v401)(v316, 0, 1, v17);
        sub_100003C90(v425);
        if ((*v396)(v316, 1, v17) == 1)
        {

          v315 = v392;
          v6 = v393;
          v53 = v391;
          goto LABEL_346;
        }

        v321 = v400;
        (*v389)(v400, v316, v17);
        if (!v380[15])
        {
          goto LABEL_412;
        }

        URL.path.getter();
        v322._countAndFlagsBits = URL.path.getter();
        v323 = String.hasPrefix(_:)(v322);

        if (v323)
        {
          if (*(v403 + 2) && (v324 = v403, sub_100014614(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v325 = dispatch thunk of Hashable._rawHashValue(seed:)(), v326 = -1 << v324[32], v327 = v325 & ~v326, ((*(v402 + ((v327 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v327) & 1) != 0))
          {
            v398 = ~v326;
            v399 = *(v364 + 72);
            v328 = *(v364 + 16);
            while (1)
            {
              v329 = v395;
              v330 = v406;
              v328(v395, *(v403 + 6) + v399 * v327, v406);
              sub_100014614(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v331 = dispatch thunk of static Equatable.== infix(_:_:)();
              v332 = *v405;
              (*v405)(v329, v330);
              if (v331)
              {
                break;
              }

              v327 = (v327 + 1) & v398;
              if (((*(v402 + ((v327 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v327) & 1) == 0)
              {
                goto LABEL_363;
              }
            }

            v17 = v406;
            v332(v400, v406);
            v316 = v373;
          }

          else
          {
LABEL_363:
            sub_100055784(v318);
            *&v416[0] = 0;
            *(&v416[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(76);
            v333._countAndFlagsBits = 0x6120726576697244;
            v333._object = 0xEE00204C52552074;
            String.append(_:)(v333);
            sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v334 = v406;
            v335._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v335);

            v336._countAndFlagsBits = 0xD00000000000003CLL;
            v336._object = (v388 | 0x8000000000000000);
            String.append(_:)(v336);
            v337 = v416[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v381 = sub_100030EA0(0, *(v381 + 2) + 1, 1, v381);
            }

            v339 = *(v381 + 2);
            v338 = *(v381 + 3);
            v316 = v373;
            if (v339 >= v338 >> 1)
            {
              v381 = sub_100030EA0((v338 > 1), v339 + 1, 1, v381);
            }

            (*v405)(v400, v334);
            v340 = v381;
            *(v381 + 2) = v339 + 1;
            *&v340[16 * v339 + 32] = v337;
            v17 = v334;
          }
        }

        else
        {
          v17 = v406;
          (*v405)(v321, v406);
        }

        v51 = v390;
        v53 = v391;
        v315 = v392;
        v6 = v393;
        if (v317 == v392)
        {
LABEL_372:

          goto LABEL_385;
        }
      }
    }

    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v69 >> 62)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v70 = v69 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v72 = *(v70 + 16);
    }

    if (v72 != 1)
    {
      v372 = v71;
      v78 = v363;
      if (qword_100133AD0 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_1000144F0(v79, qword_10014E9B0);
      (v399)(v78, v403, v17);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v402 = swift_slowAlloc();
        *&v418 = v402;
        *v82 = v379;
        v399 = URL.path.getter();
        v84 = v83;
        v6 = *v405;
        (*v405)(v78, v406);
        v85 = sub_1000E3AF8(v399, v84, &v418);
        v50 = v397;

        *(v82 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v80, v81, "Internal error: found multiple realized infos for %s in manager", v82, 0xCu);
        sub_100003C90(v402);

        (v6)(v403, v406);
        v17 = v406;
      }

      else
      {

        v133 = *v405;
        (*v405)(v78, v17);
        v133(v403, v17);
      }

      v52 = v396;
      v51 = v385;
      goto LABEL_5;
    }

    v73 = *(*(v71 + 24) + 16);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    v74 = *(v73 + 16);
    v75 = v396;
    v389 = v53;
    if (v74 && (v76 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v77 & 1) != 0) && (sub_10000B430(*(v73 + 56) + 32 * v76, &v418), (swift_dynamicCast() & 1) != 0))
    {
      v6 = *(&v416[0] + 1);
      v402 = *&v416[0];
    }

    else
    {
      v402 = 0xD000000000000014;
      v6 = v362;
    }

    v86 = v75 + *(v398 + 20);
    v87 = &v86[*(type metadata accessor for ApplicationRecord(0) + 28)];
    v88 = *(v371 + 16);
    v359 = v87;
    if (!v88)
    {

      v95 = 0;
      v52 = v396;
      goto LABEL_160;
    }

    v372 = v71;
    v90 = *v87;
    v89 = v87[1];
    if (v90)
    {
      v91 = 0;
    }

    else
    {
      v91 = v89 == 0xC000000000000000;
    }

    v53 = v89 >> 62;
    v92 = !v91;
    LODWORD(v375) = v92;
    v347 = HIDWORD(v90);
    v93 = __OFSUB__(HIDWORD(v90), v90);
    LODWORD(v361) = v93;
    v360 = HIDWORD(v90) - v90;
    v374 = v89;
    v392 = BYTE6(v89);
    v390 = v90;
    v356 = v90;
    v345 = (v90 >> 32) - v90;
    v346 = v90 >> 32;
    v17 = v367;
    v370 = v6;
    v399 = v89 >> 62;
    while (1)
    {
      v94 = *(v17 - 2);
      v51 = *(v17 - 1);
      v95 = *v17;
      if (*(v17 - 4) != v402 || *(v17 - 3) != v6)
      {
        break;
      }

      if (v51 >> 60 != 15)
      {
        goto LABEL_51;
      }

LABEL_42:
      v17 += 40;
      if (!--v88)
      {

        v95 = 0;
        goto LABEL_158;
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v53 = v399;
      goto LABEL_42;
    }

    v53 = v399;
    if (v51 >> 60 == 15)
    {
      goto LABEL_42;
    }

LABEL_51:
    v97 = v51 >> 62;
    if (v51 >> 62 == 3)
    {
      if (v94)
      {
        v98 = 0;
      }

      else
      {
        v98 = v51 == 0xC000000000000000;
      }

      v100 = !v98 || v53 < 3;
      if (((v100 | v375) & 1) == 0)
      {

        sub_1000146B0(0, 0xC000000000000000);

        v134 = 0;
        v135 = 0xC000000000000000;
        goto LABEL_157;
      }

LABEL_73:
      v101 = 0;
      if (v53 > 1)
      {
        goto LABEL_74;
      }

LABEL_70:
      v105 = v392;
      if (v53)
      {
        v105 = v360;
        if (v361)
        {
          goto LABEL_378;
        }
      }
    }

    else
    {
      if (v97 <= 1)
      {
        if (v97)
        {
          LODWORD(v101) = HIDWORD(v94) - v94;
          if (__OFSUB__(HIDWORD(v94), v94))
          {
            __break(1u);
LABEL_387:
            __break(1u);
LABEL_388:
            __break(1u);
LABEL_389:
            __break(1u);
LABEL_390:
            __break(1u);
LABEL_391:
            __break(1u);
LABEL_392:
            __break(1u);
LABEL_393:
            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
LABEL_396:
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
          }

          v101 = v101;
          if (v53 > 1)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v101 = BYTE6(v51);
          if (v53 > 1)
          {
            goto LABEL_74;
          }
        }

        goto LABEL_70;
      }

      if (v97 != 2)
      {
        goto LABEL_73;
      }

      v103 = *(v94 + 16);
      v102 = *(v94 + 24);
      v104 = __OFSUB__(v102, v103);
      v101 = v102 - v103;
      if (v104)
      {
        goto LABEL_387;
      }

      if (v53 <= 1)
      {
        goto LABEL_70;
      }

LABEL_74:
      if (v53 != 2)
      {
        if (!v101)
        {
LABEL_154:

          sub_1000146B0(v94, v51);

          v134 = v94;
          goto LABEL_156;
        }

        goto LABEL_42;
      }

      v107 = *(v390 + 16);
      v106 = *(v390 + 24);
      v104 = __OFSUB__(v106, v107);
      v105 = v106 - v107;
      if (v104)
      {
        goto LABEL_379;
      }
    }

    if (v101 != v105)
    {
      goto LABEL_42;
    }

    if (v101 < 1)
    {
      goto LABEL_154;
    }

    v393 = v94;
    if (v97 > 1)
    {
      if (v97 != 2)
      {
        *(&v418 + 6) = 0;
        *&v418 = 0;

        sub_1000146B0(v94, v51);
        v116 = v391;
        sub_100045F4C(&v418, v390, v374, v416);
        v391 = v116;
        if (v116)
        {
          goto LABEL_433;
        }

        if (LOBYTE(v416[0]) == 1)
        {
LABEL_155:

          v134 = v393;
LABEL_156:
          v135 = v51;
LABEL_157:
          sub_100014528(v134, v135);
LABEL_158:
          v51 = v385;
          v17 = v406;
          v52 = v396;
LABEL_159:
          v71 = v372;
LABEL_160:
          v136 = sub_100081F78(*v359, *(v359 + 8), v378);
          v53 = v389;
          if (v136)
          {
            if (v95 == 1)
            {
              (*v405)(v403, v17);

              goto LABEL_5;
            }

            v137 = v403;
            v6 = v17;
            sub_100055784(v71);
            *&v418 = 0;
            *(&v418 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v141._countAndFlagsBits = 0x20726576697244;
            v141._object = 0xE700000000000000;
            String.append(_:)(v141);
            *&v416[0] = v71;
            type metadata accessor for RealizedInfo(0);
            _print_unlocked<A, B>(_:_:)();
            v139 = 0xD000000000000025;
            v140 = v352;
          }

          else
          {
            v137 = v403;
            v6 = v17;
            sub_100055784(v71);
            *&v418 = 0;
            *(&v418 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(47);
            v138._countAndFlagsBits = 0x20726576697244;
            v138._object = 0xE700000000000000;
            String.append(_:)(v138);
            *&v416[0] = v71;
            type metadata accessor for RealizedInfo(0);
            _print_unlocked<A, B>(_:_:)();
            v139 = 0xD000000000000026;
            v140 = v353;
          }

          v142 = v140 | 0x8000000000000000;
          String.append(_:)(*&v139);
          v143 = *(&v418 + 1);
          v402 = v418;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v381 = sub_100030EA0(0, *(v381 + 2) + 1, 1, v381);
          }

          v145 = *(v381 + 2);
          v144 = *(v381 + 3);
          if (v145 >= v144 >> 1)
          {
            v381 = sub_100030EA0((v144 > 1), v145 + 1, 1, v381);
          }

          (*v405)(v137, v6);
          v146 = v381;
          *(v381 + 2) = v145 + 1;
          v147 = &v146[16 * v145];
          *(v147 + 4) = v402;
          *(v147 + 5) = v143;
          v17 = v6;
          v52 = v396;
          sub_100014780(v396, type metadata accessor for DriverBinEntry);
          v47 = v382;
          v51 = v385;
          continue;
        }

        goto LABEL_149;
      }

      LODWORD(v368) = v95;
      v109 = *(v94 + 16);

      sub_1000146B0(v94, v51);
      v110 = __DataStorage._bytes.getter();
      if (v110)
      {
        v111 = v110;
        v112 = __DataStorage._offset.getter();
        if (__OFSUB__(v109, v112))
        {
          goto LABEL_392;
        }

        v348 = (v109 - v112 + v111);
      }

      else
      {
        v348 = 0;
      }

      __DataStorage._length.getter();
      v50 = v397;
      v6 = v370;
      if (v53 == 2)
      {
        v123 = *(v390 + 16);
        v344 = *(v390 + 24);
        v6 = __DataStorage._bytes.getter();
        if (v6)
        {
          v124 = __DataStorage._offset.getter();
          if (__OFSUB__(v123, v124))
          {
            goto LABEL_404;
          }

          v6 += v123 - v124;
        }

        v53 = v399;
        v104 = __OFSUB__(v344, v123);
        v125 = v344 - v123;
        if (v104)
        {
          goto LABEL_397;
        }

        v126 = __DataStorage._length.getter();
        if (v126 >= v125)
        {
          v119 = v125;
        }

        else
        {
          v119 = v126;
        }

        v120 = v348;
        if (!v348)
        {
          goto LABEL_417;
        }

        v50 = v397;
        v95 = v368;
        if (!v6)
        {
          goto LABEL_414;
        }

        goto LABEL_144;
      }

      if (v53 == 1)
      {
        if (v346 < v356)
        {
          goto LABEL_396;
        }

        v6 = __DataStorage._bytes.getter();
        if (v6)
        {
          v117 = __DataStorage._offset.getter();
          if (__OFSUB__(v356, v117))
          {
            goto LABEL_405;
          }

          v6 += v356 - v117;
        }

        v53 = v399;
        v118 = __DataStorage._length.getter();
        v119 = v345;
        if (v118 < v345)
        {
          v119 = v118;
        }

        v120 = v348;
        if (!v348)
        {
          goto LABEL_418;
        }

        v95 = v368;
        if (!v6)
        {
          goto LABEL_415;
        }

LABEL_144:
        if (v120 == v6)
        {

          sub_100014528(v393, v51);
          v17 = v406;
          v52 = v396;
          v51 = v385;
          goto LABEL_159;
        }

        v132 = memcmp(v120, v6, v119);
        v6 = v370;
        if (!v132)
        {
          goto LABEL_155;
        }

        goto LABEL_149;
      }

      v95 = v368;
      v127 = v348;
      LODWORD(v418) = v390;
      BYTE4(v418) = v347;
      *(&v418 + 5) = *(&v390 + 5);
      BYTE7(v418) = HIBYTE(v390);
      DWORD2(v418) = v374;
      WORD6(v418) = WORD2(v374);
      if (!v348)
      {
        goto LABEL_420;
      }

LABEL_148:
      if (!memcmp(v127, &v418, v392))
      {
        goto LABEL_155;
      }

LABEL_149:

      sub_100014528(v393, v51);
      goto LABEL_42;
    }

    break;
  }

  if (!v97)
  {
    *&v418 = v94;
    WORD4(v418) = v51;
    BYTE10(v418) = BYTE2(v51);
    BYTE11(v418) = BYTE3(v51);
    BYTE12(v418) = BYTE4(v51);
    BYTE13(v418) = BYTE5(v51);

    sub_1000146B0(v94, v51);
    v108 = v391;
    sub_100045F4C(&v418, v390, v374, v416);
    v391 = v108;
    if (v108)
    {
      goto LABEL_433;
    }

    v53 = v399;
    if (v416[0])
    {
      goto LABEL_155;
    }

    goto LABEL_149;
  }

  if (v94 > v94 >> 32)
  {
    goto LABEL_390;
  }

  LODWORD(v368) = v95;

  sub_1000146B0(v94, v51);
  v113 = __DataStorage._bytes.getter();
  if (v113)
  {
    v114 = v113;
    v115 = __DataStorage._offset.getter();
    if (__OFSUB__(v94, v115))
    {
      goto LABEL_393;
    }

    v348 = (v94 - v115 + v114);
  }

  else
  {
    v348 = 0;
  }

  __DataStorage._length.getter();
  v50 = v397;
  v6 = v370;
  if (v53 == 2)
  {
    v128 = *(v390 + 16);
    v344 = *(v390 + 24);
    v6 = __DataStorage._bytes.getter();
    if (v6)
    {
      v129 = __DataStorage._offset.getter();
      if (__OFSUB__(v128, v129))
      {
        goto LABEL_406;
      }

      v6 += v128 - v129;
    }

    v53 = v399;
    v104 = __OFSUB__(v344, v128);
    v130 = v344 - v128;
    if (v104)
    {
      goto LABEL_399;
    }

    v131 = __DataStorage._length.getter();
    if (v131 >= v130)
    {
      v119 = v130;
    }

    else
    {
      v119 = v131;
    }

    v120 = v348;
    if (!v348)
    {
      goto LABEL_419;
    }

    v50 = v397;
    v95 = v368;
    if (!v6)
    {
      goto LABEL_416;
    }

    goto LABEL_144;
  }

  if (v53 == 1)
  {
    if (v346 < v356)
    {
      goto LABEL_398;
    }

    v6 = __DataStorage._bytes.getter();
    if (v6)
    {
      v121 = __DataStorage._offset.getter();
      if (__OFSUB__(v356, v121))
      {
        goto LABEL_407;
      }

      v6 += v356 - v121;
    }

    v53 = v399;
    v122 = __DataStorage._length.getter();
    v119 = v345;
    if (v122 < v345)
    {
      v119 = v122;
    }

    v120 = v348;
    if (!v348)
    {
      goto LABEL_422;
    }

    v95 = v368;
    if (!v6)
    {
      goto LABEL_421;
    }

    goto LABEL_144;
  }

  v95 = v368;
  v127 = v348;
  LODWORD(v418) = v390;
  BYTE4(v418) = v347;
  *(&v418 + 5) = *(&v390 + 5);
  BYTE7(v418) = HIBYTE(v390);
  DWORD2(v418) = v374;
  WORD6(v418) = WORD2(v374);
  if (v348)
  {
    goto LABEL_148;
  }

  __break(1u);
LABEL_414:
  __break(1u);
LABEL_415:
  __break(1u);
LABEL_416:
  __break(1u);
LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:
  __break(1u);
LABEL_425:
  __break(1u);
LABEL_426:
  __break(1u);
LABEL_427:
  __break(1u);
LABEL_428:
  __break(1u);
LABEL_429:
  __break(1u);
LABEL_430:
  __break(1u);
LABEL_431:
  __break(1u);
LABEL_432:
  __break(1u);
LABEL_433:

  __break(1u);
  return result;
}

uint64_t sub_1000110DC(uint64_t result)
{
  if (*(result + 136))
  {

    sub_100083E80(0xD000000000000010, 0x80000001001041A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10001113C()
{
  v1 = type metadata accessor for URL();
  v179 = *(v1 - 8);
  v3 = __chkstk_darwin(v1, v2);
  v186 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v5);
  v178 = &v171 - v6;
  v7 = sub_100003CDC(&qword_100134280, &qword_1000F39A8);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v171 - v13;
  v172 = v0;
  v15 = *(*(v0 + 56) + 656);

  os_unfair_lock_lock((v15 + 72));
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = *(v15 + 48);
  v19 = *(v15 + 56);
  v21 = *(v15 + 64);
  v182 = *(v15 + 16);

  v181 = v16;

  v177 = v17;

  v174 = v18;

  v180 = v19;

  v173 = v21;

  os_unfair_lock_unlock((v15 + 72));

  v196 = 0xD000000000000024;
  v197 = 0x80000001001040D0;
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v176 = 0x8000000100104100;
  v189 = v20;

  v27 = 0;
  v175 = v1;
  v184 = v14;
  v185 = v11;
  *&v187 = v20 + 64;
  v183 = v26;
LABEL_6:
  if (v25)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_144;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
LABEL_11:
      v30 = __clz(__rbit64(v25)) | (v27 << 6);
      v31 = (*(v189 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(*(v189 + 56) + 8 * v30);
      v35 = v34 >> 62;
      if (v34 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 &= v25 - 1;
      if (!v36)
      {
        v195._countAndFlagsBits = v32;
        v195._object = v33;

        v28._countAndFlagsBits = 0x3E7974706D653C20;
        v28._object = 0xE90000000000000ALL;
        String.append(_:)(v28);
        String.append(_:)(v195);

        goto LABEL_5;
      }

      v190 = v34 & 0xC000000000000001;
      if ((v34 & 0xC000000000000001) == 0)
      {
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v37 = *(v34 + 32);

          v188 = v37;

          v38 = v34 & 0xFFFFFFFFFFFFFF8;
          if (!v35)
          {
            goto LABEL_17;
          }

LABEL_32:
          v39 = _CocoaArrayWrapper.endIndex.getter();
          if (v39 == 1)
          {
            goto LABEL_33;
          }

LABEL_18:
          v195._countAndFlagsBits = 0;
          v195._object = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          v195._countAndFlagsBits = 0xD00000000000001ELL;
          v195._object = v176;
          v40._countAndFlagsBits = v32;
          v40._object = v33;
          String.append(_:)(v40);

          v41._countAndFlagsBits = 2618;
          v41._object = 0xE200000000000000;
          String.append(_:)(v41);
          String.append(_:)(v195);

          if (v39)
          {
            v195._countAndFlagsBits = _swiftEmptyArrayStorage;
            sub_1000635A4(0, v39 & ~(v39 >> 63), 0);
            if (v39 < 0)
            {
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
            }

            v171 = v25;
            v42 = 0;
            countAndFlagsBits = v195._countAndFlagsBits;
            do
            {
              if (v190)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              v44 = sub_100024758();
              v46 = v45;

              v195._countAndFlagsBits = countAndFlagsBits;
              v48 = countAndFlagsBits[2];
              v47 = countAndFlagsBits[3];
              if (v48 >= v47 >> 1)
              {
                sub_1000635A4((v47 > 1), v48 + 1, 1);
                countAndFlagsBits = v195._countAndFlagsBits;
              }

              ++v42;
              countAndFlagsBits[2] = v48 + 1;
              v49 = &countAndFlagsBits[2 * v48];
              v49[4] = v44;
              v49[5] = v46;
            }

            while (v39 != v42);

            v25 = v171;
          }

          else
          {

            countAndFlagsBits = _swiftEmptyArrayStorage;
          }

          v195._countAndFlagsBits = countAndFlagsBits;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
          v50 = BidirectionalCollection<>.joined(separator:)();
          v52 = v51;

          v53._countAndFlagsBits = 9;
          v53._object = 0xE100000000000000;
          v54 = String.init(repeating:count:)(v53, 1);
          v55 = v54._countAndFlagsBits;
          object = v54._object;
          v195._countAndFlagsBits = v50;
          v195._object = v52;
          v193 = 10;
          v194 = 0xE100000000000000;
          v191 = 10;
          v192 = 0xE100000000000000;
          String.append(_:)(v54);
          sub_100012814();
          v57 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v59 = v58;

          v195._countAndFlagsBits = v55;
          v195._object = object;

          v60._countAndFlagsBits = v57;
          v60._object = v59;
          String.append(_:)(v60);

          v61._countAndFlagsBits = 10;
          v61._object = 0xE100000000000000;
          String.append(_:)(v61);

          String.append(_:)(v195);

          v1 = v175;
          goto LABEL_5;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        v121 = _CocoaArrayWrapper.endIndex.getter();
        if (!v121)
        {
          goto LABEL_154;
        }

LABEL_78:
        v122 = 0;
        v179 = "Latest Drivers:\n";
        v180 = v27 & 0xC000000000000001;
        v174 = v27 & 0xFFFFFFFFFFFFFF8;
        v173 = v27 + 32;
        v178 = 0xD000000000000014;
        v187 = xmmword_1000F3160;
        v176 = v27;
        v175 = v121;
        while (1)
        {
          if (v180)
          {
            v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v130 = __OFADD__(v122++, 1);
            if (v130)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v122 >= *(v174 + 16))
            {
              goto LABEL_149;
            }

            v129 = *(v173 + 8 * v122);

            v130 = __OFADD__(v122++, 1);
            if (v130)
            {
              goto LABEL_146;
            }
          }

          v195._countAndFlagsBits = 0;
          v195._object = 0xE000000000000000;
          _StringGuts.grow(_:)(25);
          v131 = **(v129 + 24);
          v132 = 4144959;
          if (v131 == _TtC10driverkitd15DriverExtension)
          {
            v132 = 1954047300;
            v133 = 1;
          }

          else
          {
            v133 = v131 == _TtC10driverkitd15KernelExtension;
          }

          v134 = 0xE300000000000000;
          if (v133)
          {
            v134 = 0xE400000000000000;
          }

          if (v131 == _TtC10driverkitd15KernelExtension)
          {
            v132 = 1954047307;
          }

          v195._countAndFlagsBits = v132;
          v195._object = v134;
          v135._countAndFlagsBits = 32;
          v135._object = 0xE100000000000000;
          String.append(_:)(v135);
          v136._countAndFlagsBits = sub_1000D7374();
          String.append(_:)(v136);

          v137._countAndFlagsBits = 30240;
          v137._object = 0xE200000000000000;
          String.append(_:)(v137);
          v138 = sub_1000D7614();
          if (v139)
          {
            v140 = v139;
          }

          else
          {
            v138 = 0x293F3F3F28;
            v140 = 0xE500000000000000;
          }

          v141 = v140;
          String.append(_:)(*&v138);

          v142._countAndFlagsBits = 544106784;
          v142._object = 0xE400000000000000;
          String.append(_:)(v142);
          v143._countAndFlagsBits = sub_1000DAD64();
          String.append(_:)(v143);

          v144._object = (v179 | 0x8000000000000000);
          v144._countAndFlagsBits = v178;
          String.append(_:)(v144);
          v181 = v129;
          v145 = sub_100024C38();
          v147 = v145;
          v148 = v146;
          v149 = v146 >> 62;
          v186 = HIDWORD(v145);
          if ((v146 >> 62) > 1)
          {
            if (v149 == 2)
            {
              v152 = *(v145 + 16);
              v151 = *(v145 + 24);
              v150 = v151 - v152;
              if (__OFSUB__(v151, v152))
              {
                goto LABEL_151;
              }

              if (v150)
              {
                goto LABEL_107;
              }
            }
          }

          else if (v149)
          {
            v153 = v186 - v145;
            if (__OFSUB__(v186, v145))
            {
              goto LABEL_152;
            }

            v150 = v153;
            if (v153)
            {
LABEL_107:
              v191 = _swiftEmptyArrayStorage;
              sub_1000635A4(0, v150 & ~(v150 >> 63), 0);
              v185 = v147;
              if (v149)
              {
                if (v149 == 2)
                {
                  v154 = *(v147 + 16);
                }

                else
                {
                  v154 = v185;
                }
              }

              else
              {
                v154 = 0;
              }

              v190 = v154;
              if (v150 < 0)
              {
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
                goto LABEL_150;
              }

              v177 = v122;
              v155 = 0;
              v123 = v191;
              v183 = v147 >> 32;
              v184 = BYTE6(v148);
              v182 = &v193 + v190;
              v188 = v150;
              v189 = v149;
              while (2)
              {
                if (v155 >= v150)
                {
                  goto LABEL_136;
                }

                v156 = (v155 + 1);
                if (__OFADD__(v155, 1))
                {
                  goto LABEL_137;
                }

                v157 = v190 + v155;
                if (v149 == 2)
                {
                  if (v157 < *(v147 + 16))
                  {
                    goto LABEL_139;
                  }

                  if (v157 >= *(v147 + 24))
                  {
                    goto LABEL_141;
                  }

                  v162 = __DataStorage._bytes.getter();
                  if (!v162)
                  {
                    goto LABEL_157;
                  }

                  v159 = v162;
                  v163 = __DataStorage._offset.getter();
                  v161 = v157 - v163;
                  if (__OFSUB__(v157, v163))
                  {
                    goto LABEL_143;
                  }

LABEL_128:
                  v164 = *(v159 + v161);
                }

                else
                {
                  if (v149 == 1)
                  {
                    if (v157 < v185 || v157 >= v183)
                    {
                      goto LABEL_140;
                    }

                    v158 = __DataStorage._bytes.getter();
                    if (!v158)
                    {
                      goto LABEL_156;
                    }

                    v159 = v158;
                    v160 = __DataStorage._offset.getter();
                    v161 = v157 - v160;
                    if (__OFSUB__(v157, v160))
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_128;
                  }

                  if (v157 >= v184)
                  {
                    goto LABEL_138;
                  }

                  LOWORD(v193) = v147;
                  BYTE2(v193) = BYTE2(v147);
                  BYTE3(v193) = BYTE3(v147);
                  BYTE4(v193) = v186;
                  BYTE5(v193) = BYTE5(v147);
                  BYTE6(v193) = BYTE6(v147);
                  HIBYTE(v193) = HIBYTE(v147);
                  LOWORD(v194) = v148;
                  BYTE2(v194) = BYTE2(v148);
                  BYTE3(v194) = BYTE3(v148);
                  BYTE4(v194) = BYTE4(v148);
                  BYTE5(v194) = BYTE5(v148);
                  v164 = v182[v155];
                }

                sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
                v165 = swift_allocObject();
                *(v165 + 16) = v187;
                *(v165 + 56) = &type metadata for UInt8;
                *(v165 + 64) = &protocol witness table for UInt8;
                *(v165 + 32) = v164;
                v166 = String.init(format:_:)();
                v149 = v167;
                v191 = v123;
                v27 = v123[2];
                v168 = v123[3];
                if (v27 >= v168 >> 1)
                {
                  sub_1000635A4((v168 > 1), v27 + 1, 1);
                  v123 = v191;
                }

                v123[2] = v27 + 1;
                v169 = &v123[2 * v27];
                v169[4] = v166;
                v169[5] = v149;
                ++v155;
                v150 = v188;
                LODWORD(v149) = v189;
                if (v156 == v188)
                {
                  v27 = v176;
                  v121 = v175;
                  v122 = v177;
                  goto LABEL_80;
                }

                continue;
              }
            }
          }

          else
          {
            v150 = BYTE6(v146);
            if (BYTE6(v146))
            {
              goto LABEL_107;
            }
          }

          v123 = _swiftEmptyArrayStorage;
LABEL_80:
          v193 = v123;
          sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
          sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
          v124 = BidirectionalCollection<>.joined(separator:)();
          v126 = v125;
          sub_1000128D8(v147, v148);

          v127._countAndFlagsBits = v124;
          v127._object = v126;
          String.append(_:)(v127);

          v128._countAndFlagsBits = 10;
          v128._object = 0xE100000000000000;
          String.append(_:)(v128);
          String.append(_:)(v195);

          if (v122 == v121)
          {
            goto LABEL_154;
          }
        }
      }

      v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = v34 & 0xFFFFFFFFFFFFFF8;
      if (v35)
      {
        goto LABEL_32;
      }

LABEL_17:
      v39 = *(v38 + 16);
      if (v39 != 1)
      {
        goto LABEL_18;
      }

LABEL_33:

      v195._countAndFlagsBits = sub_100024758();
      v195._object = v62;
      v63._countAndFlagsBits = 10;
      v63._object = 0xE100000000000000;
      String.append(_:)(v63);
      String.append(_:)(v195);

LABEL_5:
      v14 = v184;
      v11 = v185;
      v22 = v187;
      v26 = v183;
      goto LABEL_6;
    }
  }

  v64._countAndFlagsBits = 10;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0xD00000000000001DLL;
  v65._object = 0x8000000100104120;
  String.append(_:)(v65);

  v27 = 0;
  v66 = v180 + 64;
  v67 = 1 << *(v180 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v180 + 64);
  v70 = (v67 + 63) >> 6;
  v177 = (v179 + 16);
  v188 = (v179 + 32);
  v181 = (v179 + 8);
  v182 = v70;
  v71 = v186;
  v183 = v180 + 64;
  while (2)
  {
    if (v69)
    {
      v75 = v27;
      goto LABEL_50;
    }

    if (v70 <= (v27 + 1))
    {
      v76 = v27 + 1;
    }

    else
    {
      v76 = v70;
    }

    v77 = v76 - 1;
    do
    {
      v75 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (v75 >= v70)
      {
        v101 = sub_100003CDC(&qword_100134298, &qword_1000F39B8);
        (*(*(v101 - 8) + 56))(v11, 1, 1, v101);
        v189 = 0;
        v27 = v77;
        goto LABEL_51;
      }

      v69 = *(v66 + 8 * v75);
      ++v27;
    }

    while (!v69);
    v27 = v75;
LABEL_50:
    v189 = (v69 - 1) & v69;
    v78 = __clz(__rbit64(v69)) | (v75 << 6);
    v79 = v180;
    v80 = v179;
    v81 = v178;
    (*(v179 + 16))(v178, *(v180 + 48) + *(v179 + 72) * v78, v1);
    v82 = *(*(v79 + 56) + 8 * v78);
    v83 = sub_100003CDC(&qword_100134298, &qword_1000F39B8);
    v84 = *(v83 + 48);
    (*(v80 + 32))(v11, v81, v1);
    *&v11[v84] = v82;
    (*(*(v83 - 8) + 56))(v11, 0, 1, v83);

    v71 = v186;
LABEL_51:
    sub_100012868(v11, v14);
    v85 = sub_100003CDC(&qword_100134298, &qword_1000F39B8);
    if ((*(*(v85 - 8) + 48))(v14, 1, v85) != 1)
    {
      v86 = v14;
      v87 = *&v14[*(v85 + 48)];
      (*v188)(v71, v86, v1);
      v88 = v87 >> 62;
      if (!(v87 >> 62))
      {
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

LABEL_37:

        sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v72 = v71;
        v195._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v195._object = v73;
        v74._countAndFlagsBits = 0x3E7974706D653C20;
        v74._object = 0xE90000000000000ALL;
        String.append(_:)(v74);
        String.append(_:)(v195);
LABEL_38:

LABEL_39:
        v14 = v184;
        v11 = v185;
        (*v181)(v72, v1);
        v71 = v72;
        v70 = v182;
        v66 = v183;
        v69 = v189;
        continue;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_37;
      }

LABEL_54:
      v190 = v87 & 0xC000000000000001;
      if ((v87 & 0xC000000000000001) == 0)
      {
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          *&v187 = *(v87 + 32);

          v89 = v87 & 0xFFFFFFFFFFFFFF8;
          if (!v88)
          {
            goto LABEL_57;
          }

LABEL_74:
          v90 = _CocoaArrayWrapper.endIndex.getter();
          if (v90 == 1)
          {
            goto LABEL_75;
          }

          goto LABEL_58;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      *&v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v89 = v87 & 0xFFFFFFFFFFFFFF8;
      if (v88)
      {
        goto LABEL_74;
      }

LABEL_57:
      v90 = *(v89 + 16);
      if (v90 == 1)
      {
LABEL_75:

        sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v72 = v71;
        v195._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v195._object = v114;
        v115._countAndFlagsBits = 8250;
        v115._object = 0xE200000000000000;
        String.append(_:)(v115);
        v116._countAndFlagsBits = sub_100024758();
        String.append(_:)(v116);

        v117._countAndFlagsBits = 10;
        v117._object = 0xE100000000000000;
        String.append(_:)(v117);
        String.append(_:)(v195);

        goto LABEL_38;
      }

LABEL_58:
      v195._countAndFlagsBits = 0;
      v195._object = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v195._countAndFlagsBits = 0xD00000000000001ELL;
      v195._object = v176;
      sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v92._countAndFlagsBits = 2618;
      v92._object = 0xE200000000000000;
      String.append(_:)(v92);
      String.append(_:)(v195);

      if (v90)
      {
        v195._countAndFlagsBits = _swiftEmptyArrayStorage;
        sub_1000635A4(0, v90 & ~(v90 >> 63), 0);
        if (v90 < 0)
        {
          goto LABEL_147;
        }

        v93 = 0;
        v94 = v195._countAndFlagsBits;
        do
        {
          if (v190)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v95 = sub_100024758();
          v97 = v96;

          v195._countAndFlagsBits = v94;
          v99 = v94[2];
          v98 = v94[3];
          if (v99 >= v98 >> 1)
          {
            sub_1000635A4((v98 > 1), v99 + 1, 1);
            v94 = v195._countAndFlagsBits;
          }

          ++v93;
          v94[2] = v99 + 1;
          v100 = &v94[2 * v99];
          v100[4] = v95;
          v100[5] = v97;
        }

        while (v90 != v93);
      }

      else
      {

        v94 = _swiftEmptyArrayStorage;
      }

      v195._countAndFlagsBits = v94;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
      v102 = BidirectionalCollection<>.joined(separator:)();
      v104 = v103;

      v105._countAndFlagsBits = 9;
      v105._object = 0xE100000000000000;
      v106 = String.init(repeating:count:)(v105, 1);
      v107 = v106._countAndFlagsBits;
      v108 = v106._object;
      v195._countAndFlagsBits = v102;
      v195._object = v104;
      v193 = 10;
      v194 = 0xE100000000000000;
      v191 = 10;
      v192 = 0xE100000000000000;
      String.append(_:)(v106);
      sub_100012814();
      v109 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v111 = v110;

      v195._countAndFlagsBits = v107;
      v195._object = v108;

      v112._countAndFlagsBits = v109;
      v112._object = v111;
      String.append(_:)(v112);

      v113._countAndFlagsBits = 10;
      v113._object = 0xE100000000000000;
      String.append(_:)(v113);

      String.append(_:)(v195);

      v1 = v175;
      v72 = v186;
      goto LABEL_39;
    }

    break;
  }

  v118._countAndFlagsBits = 10;
  v118._object = 0xE100000000000000;
  String.append(_:)(v118);
  v119._countAndFlagsBits = 0xD000000000000010;
  v119._object = 0x8000000100104140;
  String.append(_:)(v119);
  v120 = sub_10000B908();
  v27 = v120;
  if (v120 >> 62)
  {
    goto LABEL_153;
  }

  v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v121)
  {
    goto LABEL_78;
  }

LABEL_154:

  return v196;
}

uint64_t sub_100012708()
{
  sub_100003C90((v0 + 16));

  sub_10000A184(v0 + 64, &qword_100133CC8, &qword_1000F32F8);

  return v0;
}

uint64_t sub_100012780()
{
  sub_100012708();

  return swift_deallocClassInstance();
}

double sub_1000127D8()
{
  swift_beginAccess();

  return result;
}

unint64_t sub_100012814()
{
  result = qword_100134290;
  if (!qword_100134290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134290);
  }

  return result;
}

uint64_t sub_100012868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134280, &qword_1000F39A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000128D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001292C(unint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v47 = &v44 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v44 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v44 - v23;
  v65 = type metadata accessor for DriverKitDaemonSideEffects();
  v66 = &off_10012A108;
  v64[0] = a4;
  v25 = a3[13];
  v60 = a3[12];
  v61 = v25;
  v26 = a3[15];
  v62 = a3[14];
  v63 = v26;
  v27 = a3[9];
  v56 = a3[8];
  v57 = v27;
  v28 = a3[11];
  v58 = a3[10];
  v59 = v28;
  v29 = a3[5];
  v52 = a3[4];
  v53 = v29;
  v30 = a3[7];
  v54 = a3[6];
  v55 = v30;
  v31 = a3[1];
  v48 = *a3;
  v49 = v31;
  v32 = a3[3];
  v50 = a3[2];
  v51 = v32;
  v45 = a4;

  sub_100014838(a3, v67);
  v44 = a2;
  swift_getAtKeyPath();
  v67[12] = v60;
  v67[13] = v61;
  v67[14] = v62;
  v67[15] = v63;
  v67[8] = v56;
  v67[9] = v57;
  v67[10] = v58;
  v67[11] = v59;
  v67[4] = v52;
  v67[5] = v53;
  v67[6] = v54;
  v67[7] = v55;
  v67[0] = v48;
  v67[1] = v49;
  v67[2] = v50;
  v67[3] = v51;
  sub_10000A680(v67);
  if (a1 < 5)
  {
    URL.init(fileURLWithPath:)();

    if (a1 <= 1)
    {
      v33 = v47;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v33 = v47;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      URL.appendingPathExtension(_:)();

      (*(v10 + 8))(v14, v9);
      goto LABEL_12;
    }

LABEL_10:

    (*(v10 + 32))(v33, v14, v9);
LABEL_12:
    v35 = URL.path.getter();
    (*(v10 + 8))(v33, v9);
    goto LABEL_13;
  }

  v47 = *(a1 + 16);
  sub_100014968(v47);

  URL.init(fileURLWithPath:)();

  URL.appendingPathExtension(_:)();

  v34 = *(v10 + 8);
  v34(v21, v9);
  v35 = URL.path.getter();
  v37 = v36;
  v34(v24, v9);
  sub_100003C4C(v64, v65);
  sub_1000DF9D4(&v48);
  v38 = *(&v49 + 1);
  v39 = v50;
  sub_100003C4C(&v48, *(&v49 + 1));
  v40 = (*(v39 + 136))(v35, v37, 0, v38, v39);
  sub_100003C90(&v48);
  if (v40)
  {
    v41 = v47;
  }

  else
  {

    v42 = v47;
    v35 = sub_10001292C(v47, v44, a3, v45, v46);
    v41 = v42;
  }

  sub_100014978(v41);
LABEL_13:
  sub_100003C90(v64);
  return v35;
}

uint64_t sub_100012DB4(uint64_t a1)
{
  v25[3] = type metadata accessor for DriverKitDaemonSideEffects();
  v25[4] = &off_10012A108;
  v25[0] = a1;
  v23 = v25;

  v2 = sub_10007B08C(sub_1000148FC, v22, &off_100126190);
  if (*(v2 + 16) == 1)
  {
    v3 = *(v2 + 32);

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000F3160;
    v24[0] = v3;
    sub_100003CDC(&qword_1001342F8, &qword_1000F3AF8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100003D24();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10001491C();
    v8 = static OS_os_log.default.getter();
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("kextsOutOfOSImageFeatureFlags: %{public}s", 41, 2, &_mh_execute_header, v8, v9, v4);
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F3160;
    v12 = Array.description.getter();
    v14 = v13;

    *(v11 + 56) = &type metadata for String;
    v15 = sub_100003D24();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_10001491C();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v16, "KextsOutOfOSImageFeatureFlags should have only one checkpoint enabled. Found %{public}s", 87, 2, v11);

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000F3160;
    v18 = StaticString.description.getter();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v15;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v8 = static OS_os_log.default.getter();
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("forcing checkpoint to %{public}s", 32, 2, &_mh_execute_header, v8, v20, v17);
    v3 = 0;
  }

  sub_100003C90(v25);
  return v3;
}

uint64_t sub_100013060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 13);
  v102 = *(a2 + 12);
  v103 = v8;
  v9 = *(a2 + 15);
  v104 = *(a2 + 14);
  v105 = v9;
  v10 = *(a2 + 9);
  v98 = *(a2 + 8);
  v99 = v10;
  v11 = *(a2 + 11);
  v100 = *(a2 + 10);
  v101 = v11;
  v12 = *(a2 + 5);
  v94 = *(a2 + 4);
  v95 = v12;
  v13 = *(a2 + 7);
  v96 = *(a2 + 6);
  v97 = v13;
  v14 = *(a2 + 1);
  v90 = *a2;
  v91 = v14;
  v15 = *(a2 + 3);
  v92 = *(a2 + 2);
  v93 = v15;
  v88 = type metadata accessor for DriverKitDaemonSideEffects();
  v89 = &off_10012A108;
  v87[0] = a1;
  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  sub_100003C4C(v84, v85);
  v16 = sub_10006AB90();
  v18 = v17;
  sub_100003C90(v84);
  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  v19 = sub_10006B514(0xD000000000000012, 0x8000000100104340);
  v21 = v20;
  sub_100003C90(v84);

  v22 = sub_100080C1C(v19, v21, v16, v18);
  if (v22 == 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_100003C4C(v87, v88);
  v26 = sub_10001292C(v23, KeyPath, a2, *v25, v23);
  v78 = v27;
  v79 = v26;

  v28 = swift_getKeyPath();
  v29 = sub_100003C4C(v87, v88);
  v30 = sub_10001292C(v23, v28, a2, *v29, v23);
  v76 = v31;
  v77 = v30;

  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  sub_100003C4C(v84, v85);
  if (sub_10006A9B0())
  {
    sub_100003C90(v84);
  }

  else
  {
    sub_100003C4C(v87, v88);
    sub_1000DF65C(v82);
    sub_100003C4C(v82, v83);
    v32 = sub_10006A9CC();
    sub_100003C90(v82);
    sub_100003C90(v84);
    if ((v32 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  sub_100003C4C(v84, v85);
  sub_10006A9E8();
  sub_100003C90(v84);
LABEL_8:
  v33 = swift_getKeyPath();
  v34 = sub_100003C4C(v87, v88);
  v80 = v23;
  v35 = sub_10001292C(v23, v33, a2, *v34, v23);
  v74 = v36;
  v75 = v35;

  sub_100003C4C(v87, v88);
  sub_1000E05F8(v84);
  sub_100003C90(v84);
  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  sub_100003C4C(v84, v85);
  LOBYTE(v33) = sub_10006AA04();
  sub_100003C90(v84);
  if (v33)
  {
    v37 = 1645;
  }

  else
  {
    v37 = 1632;
  }

  v38 = v37 | a3;
  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  sub_100003C4C(v84, v85);
  if (sub_10006A9B0())
  {
    sub_100003C90(v84);
  }

  else
  {
    sub_100003C4C(v87, v88);
    sub_1000DF65C(v82);
    sub_100003C4C(v82, v83);
    v39 = sub_10006A9CC();
    sub_100003C90(v82);
    sub_100003C90(v84);
    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v38 |= 0x4000Cu;
LABEL_15:
  if (qword_100133B38 != -1)
  {
    swift_once();
  }

  v40 = byte_100138870;
  v82[0] = a2[14];
  v81 = v82[0];
  sub_100014894(v82, v84, &qword_100136C80, &qword_1000F39B0);

  sub_100030728(v41);
  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F3160;
  v43 = a2[22];
  *(v42 + 32) = a2[21];
  *(v42 + 40) = v43;

  sub_100030728(v42);
  sub_100003C4C(v87, v88);
  sub_1000DF65C(v84);
  v44 = sub_10006C000();
  v46 = v45;
  sub_100003C90(v84);
  if (v46 < 2 || (sub_100003C4C(v87, v88), sub_1000DF65C(v84), v73 = sub_10006C000(), v48 = v47, sub_100003C90(v84), v72 = v48, v48 < 2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    if (v44 == 0x34365F363878 && v46 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_10009C570(&off_100126140);
    }

    v49 = v38 & 0xFFDFFFFF;
    if (!v40)
    {
      v49 = v38;
    }

    v71 = v49;
    sub_100003C4C(v87, v88);
    sub_1000E043C(v84);
    v50 = v85;
    v51 = v86;
    sub_100003C4C(v84, v85);
    v52 = (*(v51 + 8))(47, 0xE100000000000000, v50, v51);
    v54 = v53;
    sub_100003C90(v84);
    v55 = sub_100003C4C(v87, v88);
    v70 = sub_100012DB4(*v55);
    v56 = *a2;
    v58 = a2[8];
    v57 = a2[9];
    v59 = a2[17];
    v60 = a2[29];

    result = sub_100003C90(v87);
    *a4 = v56;
    *(a4 + 8) = v79;
    *(a4 + 16) = v78;
    *(a4 + 24) = v75;
    *(a4 + 32) = v74;
    *(a4 + 40) = v77;
    *(a4 + 48) = v76;
    *(a4 + 56) = v58;
    *(a4 + 64) = v57;
    *(a4 + 72) = v81;
    *(a4 + 80) = &_swiftEmptySetSingleton;
    *(a4 + 88) = &_swiftEmptySetSingleton;
    *(a4 + 96) = v59;
    *(a4 + 104) = v44;
    *(a4 + 112) = v46;
    *(a4 + 120) = v73;
    *(a4 + 128) = v72;
    *(a4 + 136) = v80;
    *(a4 + 144) = 47;
    *(a4 + 152) = 0xE100000000000000;
    *(a4 + 160) = _swiftEmptyArrayStorage;
    *(a4 + 168) = _swiftEmptyArrayStorage;
    *(a4 + 176) = v52;
    *(a4 + 184) = v54;
    v62 = v103;
    *(a4 + 384) = v102;
    *(a4 + 400) = v62;
    v63 = v105;
    *(a4 + 416) = v104;
    *(a4 + 432) = v63;
    v64 = v99;
    *(a4 + 320) = v98;
    *(a4 + 336) = v64;
    v65 = v101;
    *(a4 + 352) = v100;
    *(a4 + 368) = v65;
    v66 = v95;
    *(a4 + 256) = v94;
    *(a4 + 272) = v66;
    v67 = v97;
    *(a4 + 288) = v96;
    *(a4 + 304) = v67;
    v68 = v91;
    *(a4 + 192) = v90;
    *(a4 + 208) = v68;
    v69 = v93;
    *(a4 + 224) = v92;
    *(a4 + 240) = v69;
    *(a4 + 448) = v60;
    *(a4 + 456) = 0u;
    *(a4 + 472) = 0u;
    *(a4 + 488) = 0u;
    *(a4 + 504) = 0u;
    *(a4 + 520) = 0u;
    *(a4 + 536) = 0u;
    *(a4 + 552) = 0u;
    *(a4 + 568) = 0u;
    *(a4 + 584) = 0;
    *(a4 + 592) = v71;
    *(a4 + 596) = v70;
  }

  return result;
}

uint64_t sub_1000139A8(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v91 = a2;
  v93 = a1;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  __chkstk_darwin(v3 - 8, v4);
  v89 = &v82 - v5;
  v6 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  __chkstk_darwin(v6 - 8, v7);
  v92 = &v82 - v8;
  v9 = sub_100003CDC(&qword_1001342E8, &qword_1000F4F50);
  __chkstk_darwin(v9, v10);
  v12 = &v82 - v11;
  v13 = type metadata accessor for DriverBinEntry(0);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v82 - v19;
  v21 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v21 - 8, v22);
  v24 = &v82 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25, v27);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *v93;
  sub_1000138F8(v93[3] + 24, v94);
  if (!v95)
  {
    v84 = v12;
    v85 = v13;
    v83 = v17;
    v86 = v20;
    v87 = v29;
    sub_100009F34(v94, v96);
    v30 = v97;
    v31 = v98;
    v88 = v26;
    sub_100003C4C(v96, v97);
    v32 = *(v31 + 64);
    v33 = v31;
    v34 = v99;
    v35 = v88;
    v32(v30, v33);
    (*(v35 + 56))(v24, 0, 1, v25);
    sub_100003C90(v96);
    if ((*(v35 + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_4;
    }

    v45 = v87;
    v46 = (*(v35 + 32))();
    __chkstk_darwin(v46, v47);
    *(&v82 - 2) = v45;
    v48 = sub_10004C8C4(sub_100014818, (&v82 - 4), v91);
    v49 = v92;
    sub_10005B834(v48, v92);
    v50 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {

      sub_10000A184(v49, &qword_1001342E0, &unk_1000F3A30);
      (*(v35 + 8))(v45, v25);
      return 1;
    }

    v99 = v34;
    v91 = *(v50 + 48);
    v82 = *(v9 + 48);
    v51 = type metadata accessor for UUID();
    v52 = *(v51 - 8);
    v53 = v84;
    (*(v52 + 32))(v84, v49, v51);
    sub_1000145AC(v49 + v91, &v53[v82], type metadata accessor for DriverBinEntry);
    sub_1000145AC(&v53[*(v9 + 48)], v86, type metadata accessor for DriverBinEntry);
    result = (*(v52 + 8))(v53, v51);
    v54 = *(v90 + 128);
    if (!v54)
    {
      __break(1u);
      return result;
    }

    v55 = *(v54 + 88);
    v56 = v83;
    v57 = v85;
    v58 = v89;
    if (v55)
    {
    }

    else
    {
      sub_10001B0B4();
      v55 = v59;
      *(v54 + 88) = v59;

      v35 = v88;
    }

    v60 = v86;
    v61 = type metadata accessor for ApplicationRecord(0);
    v62 = v61;
    if (*(v55 + 16) && (v63 = (v60 + *(v57 + 20) + *(v61 + 32)), v64 = sub_1000618A8(*v63, v63[1]), (v65 & 1) != 0))
    {
      v66 = *(v62 - 8);
      sub_100014718(*(v55 + 56) + *(v66 + 72) * v64, v58, type metadata accessor for ApplicationRecord);

      v67 = 1;
      (*(v66 + 56))(v58, 0, 1, v62);
      v35 = v88;
      sub_10000A184(v58, &qword_1001342D8, &unk_100101820);
      sub_100014780(v60, type metadata accessor for DriverBinEntry);
    }

    else
    {

      (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
      sub_10000A184(v58, &qword_1001342D8, &unk_100101820);
      if (qword_100133AD0 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_1000144F0(v68, qword_10014E9B0);
      sub_100014718(v60, v56, type metadata accessor for DriverBinEntry);

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v94[0] = v99;
        *v71 = 136315394;
        v72 = sub_1000D77B8();
        v74 = v56;
        v75 = sub_1000E3AF8(v72, v73, v94);

        *(v71 + 4) = v75;
        *(v71 + 12) = 2080;
        sub_100014614(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        sub_100014780(v74, type metadata accessor for DriverBinEntry);
        v79 = sub_1000E3AF8(v76, v78, v94);
        v80 = v87;

        *(v71 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v69, v70, "Omitting third party driver %s at %s: app is not installed", v71, 0x16u);
        swift_arrayDestroy();

        v35 = v88;

        sub_100014780(v86, type metadata accessor for DriverBinEntry);
        v81 = v80;
        v67 = 0;
LABEL_24:
        (*(v35 + 8))(v81, v25);
        return v67;
      }

      sub_100014780(v56, type metadata accessor for DriverBinEntry);
      sub_100014780(v60, type metadata accessor for DriverBinEntry);
      v67 = 0;
    }

    v81 = v87;
    goto LABEL_24;
  }

  sub_100013954(v94);
  (*(v26 + 56))(v24, 1, 1, v25);
LABEL_4:
  sub_10000A184(v24, &unk_1001389D0, &qword_1000F4F60);
  if (qword_100133AD0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000144F0(v36, qword_10014E9B0);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v94[0] = v40;
    *v39 = 136315138;
    v41 = sub_1000D77B8();
    v43 = sub_1000E3AF8(v41, v42, v94);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "Omitting driver %s: does not have a bundle", v39, 0xCu);
    sub_100003C90(v40);
  }

  return 0;
}

unint64_t sub_10001449C()
{
  result = qword_1001372E0;
  if (!qword_1001372E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001372E0);
  }

  return result;
}

uint64_t sub_1000144F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100014528(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000128D8(result, a2);
  }

  return result;
}

uint64_t sub_100014544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001455C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000145AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000146B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000146C4(result, a2);
  }

  return result;
}

uint64_t sub_1000146C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000147E0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000147EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7374();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100014894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001491C()
{
  result = qword_100133C50;
  if (!qword_100133C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133C50);
  }

  return result;
}

unint64_t sub_100014968(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

unint64_t sub_100014978(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

void sub_1000149AC(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setArguments:isa];
}

void sub_100014A24(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 _setAdditionalEnvironment:isa];
}

void sub_100014AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 *a5];
}

id sub_100014B6C()
{
  v3 = 0;
  if ([v0 execute:&v3])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100014C14@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 identityForDextWithServerName:v4 tagString:v5 containingAppBundleID:v6];

  result = sub_100009FEC(0, &qword_1001343B8, RBSProcessIdentity_ptr);
  a1[3] = result;
  a1[4] = &off_100126F50;
  *a1 = v7;
  return result;
}

uint64_t sub_100014CEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000A990(a1, v6);
  sub_100003CDC(&qword_1001343B0, &unk_1000F3C60);
  sub_100009FEC(0, &qword_1001343B8, RBSProcessIdentity_ptr);
  swift_dynamicCast();
  v3 = v7;
  v4 = [objc_opt_self() contextWithIdentity:v7];

  result = sub_100009FEC(0, &qword_1001343A0, RBSLaunchContext_ptr);
  a2[3] = result;
  a2[4] = &off_100126F58;
  *a2 = v4;
  return result;
}

uint64_t sub_100014DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000A990(a1, v6);
  sub_100003CDC(&qword_100134398, &qword_1000F3C58);
  sub_100009FEC(0, &qword_1001343A0, RBSLaunchContext_ptr);
  swift_dynamicCast();
  v3 = v7;
  v4 = [objc_allocWithZone(RBSLaunchRequest) initWithContext:v7];

  result = sub_100009FEC(0, &qword_1001343A8, RBSLaunchRequest_ptr);
  a2[3] = result;
  a2[4] = &off_100126FF0;
  *a2 = v4;
  return result;
}

uint64_t sub_100014ED8()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD00000000000004ELL;
  *(v0 + 8) = 0x8000000100104550;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100014F68()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD000000000000031;
  *(v0 + 8) = 0x8000000100104510;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100014FF8()
{
  sub_10001449C();
  swift_allocError();
  *v0 = 0xD000000000000030;
  *(v0 + 8) = 0x80000001001044D0;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = 50;
  return swift_willThrow();
}

uint64_t sub_100015088(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_100076E30(a1, a2);
    v8 = v7;

    a2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_66:
      v4 = _StringObject.sharedUTF8.getter();
    }

    sub_1000155A8(v4, v5, v42);

    return v42[0];
  }

  v42[0] = a1;
  v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if ((a2 & 0x100000000000000) != 0)
  {
    goto LABEL_57;
  }

  v9 = HIBYTE(a2) & 0xF;
  v6 = sub_100015AB0(v9 >> 1);
  v11 = v10;
  if (v9)
  {
    v12 = 0;
    do
    {
      if (__OFADD__(v12, 2))
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12 + 2;
      }

      v14 = *(v42 + v12);
      if ((v14 - 58) > 0xF5u)
      {
        v15 = -48;
      }

      else if ((v14 - 103) > 0xF9u)
      {
        v15 = -87;
      }

      else
      {
        if ((v14 - 71) < 0xFAu)
        {
          goto LABEL_56;
        }

        v15 = -55;
      }

      v16 = *(v42 + v12 + 1);
      if ((v16 - 58) > 0xF5u)
      {
        v17 = -48;
      }

      else if ((v16 - 103) > 0xF9u)
      {
        v17 = -87;
      }

      else
      {
        if ((v16 - 71) < 0xFAu)
        {
          goto LABEL_56;
        }

        v17 = -55;
      }

      v18 = v12 / 2;
      v19 = (v16 + v17) | (16 * (v14 + v15));
      v20 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_69;
        }

        if (v18 < *(v6 + 16))
        {
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
          goto LABEL_66;
        }

        if (v18 >= *(v6 + 24))
        {
          goto LABEL_63;
        }

        v21 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v6 + 16);
          v23 = *(v6 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v22, __DataStorage._offset.getter()))
            {
              goto LABEL_68;
            }

            if (__OFSUB__(v23, v22))
            {
              goto LABEL_65;
            }
          }

          else if (__OFSUB__(v23, v22))
          {
            goto LABEL_65;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v29 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v21 = v29;
          v9 = HIBYTE(a2) & 0xF;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v6 + 16);
          v31 = *(v6 + 24);
          type metadata accessor for Data.RangeReference();
          v32 = swift_allocObject();
          *(v32 + 16) = v30;
          *(v32 + 24) = v31;
          v9 = HIBYTE(a2) & 0xF;

          v6 = v32;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v33 = __DataStorage._bytes.getter();
        if (!v33)
        {
          goto LABEL_71;
        }

        v34 = v33;
        v11 = v21;
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v35))
        {
          __break(1u);
LABEL_56:
          sub_1000128D8(v6, v11);
LABEL_57:
          v6 = 0;
          break;
        }

        *(v34 + v18 - v35) = v19;
        v11 = v21 | 0x8000000000000000;
      }

      else if (v20)
      {
        if (v18 >= v6 >> 32 || v18 < v6)
        {
          goto LABEL_62;
        }

        v24 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v24 = v25;
          v9 = HIBYTE(a2) & 0xF;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_70;
        }

        v27 = v26;
        v28 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v28))
        {
          goto LABEL_64;
        }

        *(v27 + v18 - v28) = v19;
        v11 = v24 | 0x4000000000000000;
      }

      else
      {
        v38 = v6;
        LOWORD(v39) = v11;
        BYTE2(v39) = BYTE2(v11);
        HIBYTE(v39) = BYTE3(v11);
        LOBYTE(v40) = BYTE4(v11);
        HIBYTE(v40) = BYTE5(v11);
        v41 = BYTE6(v11);
        if (v18 >= BYTE6(v11))
        {
          goto LABEL_61;
        }

        *(&v38 + v18) = v19;
        v6 = v38;
        v11 = v37 & 0xF00000000000000 | v39 | ((v40 | (v41 << 16)) << 32);
        v37 = v11;
      }

      v12 = v13;
    }

    while (v13 < v9);
  }

  return v6;
}

uint64_t sub_1000155A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v34 = result;
  if (a2)
  {
    goto LABEL_58;
  }

  if (!a2)
  {
    v6 = 0;
    v7 = 0xC000000000000000;
    goto LABEL_59;
  }

  v4 = a2 >> 1;
  if (a2 >> 1 <= 14)
  {
    result = sub_1000D5744(a2 >> 1);
    v6 = result;
    v7 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v3 <= 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    result = __DataStorage.init(length:)();
    v5 = result;
    if (v4 > 0x7FFFFFFE)
    {
      type metadata accessor for Data.RangeReference();
      result = swift_allocObject();
      v6 = result;
      *(result + 16) = 0;
      *(result + 24) = v4;
      v7 = v5 | 0x8000000000000000;
    }

    else
    {
      v6 = v3 << 31;
      v7 = result | 0x4000000000000000;
    }
  }

  v9 = 0;
  v32 = v3;
  while (1)
  {
    v10 = __OFADD__(v9, 2) ? 0x7FFFFFFFFFFFFFFFLL : v9 + 2;
    v11 = *(v34 + v9);
    if ((v11 - 58) > 0xF5u)
    {
      v12 = -48;
    }

    else if ((v11 - 103) > 0xF9u)
    {
      v12 = -87;
    }

    else
    {
      if ((v11 - 71) < 0xFAu)
      {
        goto LABEL_57;
      }

      v12 = -55;
    }

    v13 = *(v34 + 1 + v9);
    if ((v13 - 58) > 0xF5u)
    {
      v14 = -48;
    }

    else if ((v13 - 103) > 0xF9u)
    {
      v14 = -87;
    }

    else
    {
      if ((v13 - 71) < 0xFAu)
      {
        goto LABEL_57;
      }

      v14 = -55;
    }

    v15 = v9 / 2;
    v16 = (v13 + v14) | (16 * (v11 + v12));
    v17 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      if (v15 >= v6 >> 32 || v15 < v6)
      {
        goto LABEL_62;
      }

      v21 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
        {
          goto LABEL_66;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v21 = v22;
        v3 = v32;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
        goto LABEL_69;
      }

      v24 = v23;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v15, result))
      {
        goto LABEL_64;
      }

      *(v24 + v15 - result) = v16;
      v7 = v21 | 0x4000000000000000;
    }

    else
    {
      v35 = v6;
      LOWORD(v36) = v7;
      BYTE2(v36) = BYTE2(v7);
      HIBYTE(v36) = BYTE3(v7);
      LOBYTE(v37) = BYTE4(v7);
      HIBYTE(v37) = BYTE5(v7);
      v38 = BYTE6(v7);
      if (v15 >= BYTE6(v7))
      {
        goto LABEL_61;
      }

      *(&v35 + v15) = v16;
      v6 = v35;
      v7 = v33 & 0xF00000000000000 | v36 | ((v37 | (v38 << 16)) << 32);
      v33 = v7;
    }

LABEL_11:
    v9 = v10;
    if (v10 >= v3)
    {
      goto LABEL_59;
    }
  }

  if (v17 != 2)
  {
    goto LABEL_68;
  }

  if (v15 < *(v6 + 16))
  {
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
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  if (v15 >= *(v6 + 24))
  {
    goto LABEL_63;
  }

  v18 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (__DataStorage._bytes.getter())
    {
      if (__OFSUB__(v20, __DataStorage._offset.getter()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v19, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v19, v20))
    {
      goto LABEL_65;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v18 = v25;
    v3 = v32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = *(v6 + 16);
    v27 = *(v6 + 24);
    type metadata accessor for Data.RangeReference();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;

    v6 = v28;
  }

  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v29 = __DataStorage._bytes.getter();
  if (!v29)
  {
    goto LABEL_70;
  }

  v30 = v29;
  result = __DataStorage._offset.getter();
  if (!__OFSUB__(v15, result))
  {
    *(v30 + v15 - result) = v16;
    v7 = v18 | 0x8000000000000000;
    goto LABEL_11;
  }

  __break(1u);
LABEL_57:
  result = sub_1000128D8(v6, v7);
LABEL_58:
  v6 = 0;
  v7 = 0xF000000000000000;
LABEL_59:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t sub_100015AB0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1000D5744(result);
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

uint64_t sub_100015B50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TelemetryReportExtension(0);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10001610C(a1, a2, a3, v13);
  v14 = type metadata accessor for DriverApprovalEvent(0);
  v19[3] = v14;
  v19[4] = &off_100127108;
  v15 = sub_1000193A4(v19);
  sub_100018328(v13, v15);
  v16 = (v15 + *(v14 + 20));
  *v16 = 0xD00000000000001FLL;
  v16[1] = 0x80000001001045C0;
  (*(a5 + 8))(v19, a4, a5);
  sub_10001838C(v13);
  return sub_100003C90(v19);
}

unint64_t sub_100015C8C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 4:
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100015E3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100015C8C(*a1);
  v5 = v4;
  if (v3 == sub_100015C8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100015EC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100015C8C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100015F28(uint64_t a1)
{
  sub_100015C8C(*v1);
  String.hash(into:)();
}

Swift::Int sub_100015F7C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100015C8C(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100015FDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001976C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001600C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100015C8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100016054@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001976C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100016094(uint64_t a1)
{
  v2 = sub_100019408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000160D0(uint64_t a1)
{
  v2 = sub_100019408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  v7 = sub_100003CDC(&qword_1001343C0, &unk_1000F3C90);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v78 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_1000D7374();
  v18 = v17;

  *a4 = v16;
  *(a4 + 8) = v18;

  v19 = sub_1000D7614();
  v21 = v20;

  *(a4 + 16) = v19;
  *(a4 + 24) = v21;
  sub_1000138F8(*(a1 + 24) + 24, &v82);
  if (v84)
  {
    sub_100013954(&v82);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    sub_100009F34(&v82, v85);
    v24 = v86;
    v25 = v87;
    sub_100003C4C(v85, v86);
    (*(v25 + 64))(v24, v25);
    v22 = URL.lastPathComponent.getter();
    v23 = v26;
    (*(v12 + 8))(v15, v11);
    sub_100003C90(v85);
  }

  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
  sub_1000138F8(*(a1 + 24) + 24, &v82);
  if (v84)
  {
    sub_100013954(&v82);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    sub_100009F34(&v82, v85);
    v29 = v86;
    v30 = v87;
    sub_100003C4C(v85, v86);
    (*(v30 + 64))(v29, v30);
    v27 = URL.path.getter();
    v28 = v31;
    (*(v12 + 8))(v15, v11);
    sub_100003C90(v85);
  }

  *(a4 + 48) = v27;
  *(a4 + 56) = v28;
  sub_1000138F8(*(a1 + 24) + 24, &v82);
  if (v84)
  {
    sub_100013954(&v82);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    sub_100009F34(&v82, v85);
    v34 = v86;
    v35 = v87;
    sub_100003C4C(v85, v86);
    v32 = (*(v35 + 56))(v34, v35);
    v33 = v36;
    sub_100003C90(v85);
  }

  v81 = v12;
  v79 = v11;
  *(a4 + 64) = v32;
  *(a4 + 72) = v33;

  v37 = sub_1000D790C();

  *(a4 + 80) = v37 & 1;
  sub_100014894(a1 + 32, &v82, &unk_100137390, &unk_1000F4E70);
  if (v83)
  {
    v38 = sub_100003C4C(&v82, v83);
    v40 = *(*v38 + 40);
    v39 = *(*v38 + 48);
    sub_1000146C4(v40, v39);
    v85[0] = sub_10005BD44(v40, v39);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v41 = BidirectionalCollection<>.joined(separator:)();
    v43 = v42;
    sub_1000128D8(v40, v39);

    sub_100003C90(&v82);
  }

  else
  {
    sub_10000A184(&v82, &unk_100137390, &unk_1000F4E70);
    v41 = 0;
    v43 = 0;
  }

  *(a4 + 88) = v41;
  *(a4 + 96) = v43;
  sub_100014894(a1 + 32, &v82, &unk_100137390, &unk_1000F4E70);
  if (v83)
  {
    v44 = sub_100003C4C(&v82, v83);
    v45 = *(*v44 + 32);
    if (v45 >= 2)
    {
      v46 = *(*v44 + 24);
    }

    else
    {
      v46 = 0;
      v45 = 0;
    }

    v47 = v81;
    sub_100003C90(&v82);
  }

  else
  {
    sub_10000A184(&v82, &unk_100137390, &unk_1000F4E70);
    v46 = 0;
    v45 = 0;
    v47 = v81;
  }

  *(a4 + 104) = v46;
  *(a4 + 112) = v45;
  sub_100014894(a1 + 32, &v82, &unk_100137390, &unk_1000F4E70);
  if (v83)
  {
    v48 = sub_100003C4C(&v82, v83);
    v50 = *(*v48 + 72);
    v49 = *(*v48 + 80);

    sub_100003C90(&v82);
  }

  else
  {
    sub_10000A184(&v82, &unk_100137390, &unk_1000F4E70);
    v50 = 0;
    v49 = 0;
  }

  *(a4 + 120) = v50;
  *(a4 + 128) = v49;
  sub_100014894(a1 + 32, &v82, &unk_100137390, &unk_1000F4E70);
  if (v83)
  {
    v51 = sub_100003C4C(&v82, v83);
    v53 = *(*v51 + 88);
    v52 = *(*v51 + 96);

    sub_100003C90(&v82);
  }

  else
  {
    sub_10000A184(&v82, &unk_100137390, &unk_1000F4E70);
    v53 = 0;
    v52 = 0;
  }

  *(a4 + 136) = v53;
  *(a4 + 144) = v52;
  sub_100014894(a1 + 32, &v82, &unk_100137390, &unk_1000F4E70);
  if (v83)
  {
    v54 = sub_100003C4C(&v82, v83);
    sub_100014894(*v54 + OBJC_IVAR____TtC10driverkitd19RealCodeSigningInfo_signingTime, v10, &qword_1001343C0, &unk_1000F3C90);
    sub_100003C90(&v82);
  }

  else
  {
    sub_10000A184(&v82, &unk_100137390, &unk_1000F4E70);
    v55 = type metadata accessor for Date();
    (*(*(v55 - 8) + 56))(v10, 1, 1, v55);
  }

  v56 = type metadata accessor for TelemetryReportExtension(0);
  sub_100018524(v10, a4 + v56[14]);
  v57 = *(a1 + 72);
  if (v57 > 2)
  {
    if (v57 == 3)
    {
      v58 = 0x8000000100104650;
      v59 = (a4 + v56[15]);
      v60 = 0xD000000000000021;
    }

    else if (v57 == 4)
    {
      v58 = 0x8000000100104630;
      v59 = (a4 + v56[15]);
      v60 = 0xD00000000000001ELL;
    }

    else
    {
      v58 = 0x80000001001045E0;
      v59 = (a4 + v56[15]);
      v60 = 0xD000000000000026;
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      v61 = (a4 + v56[15]);
      *v61 = 0;
      v61[1] = 0;
      goto LABEL_40;
    }

    if (v57 != 1)
    {
      *(a4 + v56[15]) = xmmword_1000F3C70;
      goto LABEL_40;
    }

    v58 = 0x8000000100104680;
    v59 = (a4 + v56[15]);
    v60 = 0xD00000000000001ALL;
  }

  *v59 = v60;
  v59[1] = v58;
LABEL_40:
  v62 = *(a1 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches);
  if (v62)
  {
    *(a4 + v56[16]) = *(v62 + 16) > 1uLL;
    *&v82 = v62;

    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;

    v66 = (a4 + v56[17]);
    *v66 = v63;
    v66[1] = v65;
  }

  else
  {
    *(a4 + v56[16]) = 2;
    v67 = (a4 + v56[17]);
    *v67 = 0;
    v67[1] = 0;
  }

  sub_100024FF4(v80, a3, 0xD000000000000012, 0x8000000100104610, &v82);

  if (!v83)
  {
    goto LABEL_48;
  }

  sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v69 = 0;
    goto LABEL_52;
  }

  v47 = v85[0];
  v68 = *(v85[0] + 16);
  if (v68 < 2)
  {

    v69 = 0;
  }

  else
  {
    v69 = sub_10003245C(*(v85[0] + 16), 0);
    v70 = sub_100059848(&v82, v69 + 4, v68, v47);
    sub_1000145A4(v82);
    if (v70 != v68)
    {
      __break(1u);
LABEL_48:
      sub_10000A184(&v82, &qword_1001343C8, &unk_1000F3CA0);
      goto LABEL_49;
    }
  }

  v47 = v81;
LABEL_52:
  *(a4 + v56[18]) = v69;
  sub_1000138F8(*(a1 + 24) + 24, &v82);
  if (v84)
  {
    sub_100013954(&v82);

    v72 = 0;
    v73 = 0;
  }

  else
  {
    sub_100009F34(&v82, v85);
    v74 = v86;
    v75 = v87;
    sub_100003C4C(v85, v86);
    (*(v75 + 64))(v74, v75);
    v72 = URL.path.getter();
    v73 = v76;

    (*(v47 + 8))(v15, v79);
    result = sub_100003C90(v85);
  }

  v77 = (a4 + v56[19]);
  *v77 = v72;
  v77[1] = v73;
  return result;
}