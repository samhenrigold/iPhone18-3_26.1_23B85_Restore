void EnterSandbox(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B578();
  }

  bzero(v3, 0x400uLL);
  [v1 cString];
  if (!_set_user_dir_suffix() || !confstr(65537, v3, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B648();
    }

LABEL_11:
    exit(1);
  }

  v2 = realpath_DARWIN_EXTSN(v3, 0);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B5C0();
    }

    goto LABEL_11;
  }

  free(v2);
}

NSString sub_100001604()
{
  result = sub_10000BC30();
  qword_1000148A8 = result;
  return result;
}

double sub_100001644()
{
  type metadata accessor for JetServiceState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  qword_1000148B0 = v0;
  return result;
}

uint64_t sub_10000167C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v2 = sub_10000210C(&qword_100014560, &qword_10000C3C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_10000B750();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BBC0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_10000BBA0();
  v16 = sub_10000BBB0();
  v17 = sub_10000BCD0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v10;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received request for PromotedContentJetService", v18, 2u);
    v10 = v26;
  }

  v19 = *(v10 + 8);
  v19(v15, v9);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  if (*(qword_1000148B0 + 32))
  {
    sub_10000B950();
    sub_1000021CC(&qword_100014568, &type metadata accessor for JetServiceReceiver, &protocol conformance descriptor for JetServiceReceiver);

    sub_10000BBF0();
  }

  else
  {
    type metadata accessor for JetServiceState();
    sub_100002214(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100002154(v4);
      sub_10000BBA0();
      v21 = sub_10000BBB0();
      v22 = sub_10000BCF0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create JetPack cache directory", v23, 2u);
      }

      v19(v13, v9);
      return sub_10000BC00();
    }

    else
    {
      v24 = (*(v6 + 32))(v8, v4, v5);
      __chkstk_darwin(v24);
      *(&v25 - 2) = v8;
      sub_10000B950();
      sub_1000021CC(&qword_100014568, &type metadata accessor for JetServiceReceiver, &protocol conformance descriptor for JetServiceReceiver);
      sub_10000BBF0();
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_100001B6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10000BB00();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000BBC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BBA0();
  v9 = sub_10000BBB0();
  v10 = sub_10000BCD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Using existing JavaScript environment", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  sub_100002E20();

  v12 = qword_1000148B0;
  sub_10000B8E0();
  swift_allocObject();

  v13 = sub_10000B8D0();
  sub_10000BAF0();
  sub_10000B7D0();
  swift_allocObject();
  v14 = sub_10000B7A0();
  type metadata accessor for JetServiceProcessor();
  v15 = swift_allocObject();
  *(v15 + 40) = v12;
  *(v15 + 48) = &off_1000108E0;
  *(v15 + 32) = 1;
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  *(v15 + 56) = v13;
  sub_1000021CC(&qword_100014570, type metadata accessor for JetServiceProcessor, &unk_10000C5D0);
  sub_10000B950();
  swift_allocObject();

  result = sub_10000B940();
  *a2 = result;
  return result;
}

uint64_t sub_100001E44@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10000BB00();
  __chkstk_darwin(v4 - 8);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000353C(a1);

  v6 = qword_1000148B0;
  sub_10000B8E0();
  swift_allocObject();

  v7 = sub_10000B8D0();
  sub_10000BAF0();
  sub_10000B7D0();
  swift_allocObject();
  v8 = sub_10000B7A0();
  type metadata accessor for JetServiceProcessor();
  v9 = swift_allocObject();
  *(v9 + 40) = v6;
  *(v9 + 48) = &off_1000108E0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  *(v9 + 56) = v7;
  sub_1000021CC(&qword_100014570, type metadata accessor for JetServiceProcessor, &unk_10000C5D0);
  sub_10000B950();
  swift_allocObject();
  v10 = sub_10000B940();

  *a2 = v10;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000BBE0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000BC30();
  EnterSandbox(v4);

  sub_10000BBD0();
  sub_10000BC20();
  swift_allocObject();
  sub_10000BC10();
  dispatch_main();
}

uint64_t sub_10000210C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002154(uint64_t a1)
{
  v2 = sub_10000210C(&qword_100014560, &qword_10000C3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000021CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002214@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000BBC0();
  v40 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000B710();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000B750();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  v15 = [objc_opt_self() defaultManager];
  v41[0] = 0;
  v16 = [v15 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v41];

  v17 = v41[0];
  if (v16)
  {
    sub_10000B720();
    v18 = v17;

    v41[0] = 0xD000000000000026;
    v41[1] = 0x800000010000CF10;
    v36 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v37 = a1;
    v20 = v38;
    v19 = v39;
    v35 = *(v38 + 104);
    v35(v7);
    v34[1] = sub_100005CA8();
    sub_10000B740();
    v40 = v8;
    v21 = *(v20 + 8);
    v21(v7, v19);
    v22 = v9;
    v23 = *(v9 + 8);
    v23(v12, v40);
    strcpy(v41, "JetPackCache");
    BYTE5(v41[1]) = 0;
    HIWORD(v41[1]) = -5120;
    (v35)(v7, v36, v19);
    a1 = v37;
    sub_10000B740();
    v21(v7, v19);
    v8 = v40;
    v23(v14, v40);
    v24 = 0;
  }

  else
  {
    v25 = v40;
    v39 = v9;
    v26 = v41[0];
    sub_10000B700();

    swift_willThrow();
    sub_10000BBA0();
    swift_errorRetain();
    v27 = sub_10000BBB0();
    v28 = sub_10000BCF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v2;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get cache directory %@", v30, 0xCu);
      sub_100005FE4(v31, &qword_100014780, &qword_10000C4C0);

      v2 = v29;
    }

    else
    {
    }

    (*(v25 + 8))(v4, v2);
    v24 = 1;
    v22 = v39;
  }

  return (*(v22 + 56))(a1, v24, 1, v8);
}

uint64_t sub_100002734(uint64_t a1, const char *a2, char a3)
{
  v6 = v3;
  v7 = sub_10000BBC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B930();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_10000BBA0();
    v12 = sub_10000BBB0();
    v13 = sub_10000BCE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
    }

    result = (*(v8 + 8))(v10, v7);
    *(v6 + 16) = a3;
  }

  return result;
}

uint64_t sub_100002934()
{
  v0 = sub_10000B780();
  sub_100005C44(v0, qword_1000148B8);
  sub_100005B44(v0, qword_1000148B8);
  return sub_10000B770();
}

uint64_t sub_100002990@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10000BA00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000210C(&qword_1000147A0, &unk_10000C528);
  sub_10000BA20();
  *(swift_allocObject() + 16) = xmmword_10000C3E0;
  v5 = enum case for DeviceCapability.Platform.iOS(_:);
  v6 = *(v2 + 104);
  v6(v4, enum case for DeviceCapability.Platform.iOS(_:), v1);
  sub_10000BA10();
  v7 = *(v2 + 8);
  v7(v4, v1);
  v6(v4, v5, v1);
  sub_10000BA10();
  v7(v4, v1);
  v8 = [objc_opt_self() longBuildVersion];
  sub_10000BC40();

  [objc_opt_self() isAppleInternalInstall];
  return sub_10000B9E0();
}

void sub_100002BF8()
{
  v1 = sub_10000BBC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = 0;

  v0[2] = 0;

  v0[5] = 0;

  v5 = v0[3];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_10000BBA0();
    v6 = sub_10000BBB0();
    v7 = sub_10000BCE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Removing JSStack reload listener", v8, 2u);
    }

    (*(v2 + 8))(v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = qword_1000144E8;
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_1000148A8;
    v12 = sub_10000BC30();
    [v9 removeObserver:v5 name:v11 object:v12];

    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_100002E20()
{
  v1 = sub_10000BBC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = sub_10000BCC0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_10000BC90();
    swift_retain_n();
    v10 = sub_10000BC80();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    sub_10000323C(0, 0, v7, &unk_10000C520, v11);
  }

  else
  {
    sub_10000BBA0();
    v13 = sub_10000BBB0();
    v14 = sub_10000BCF0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Tried to restart the watchdog when one doesn't exist", v15, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_10000BC90();
  v4[4] = sub_10000BC80();
  sub_10000BAD0();
  sub_1000062D0(&qword_100014798, 255, &type metadata accessor for TaskTimer, &protocol conformance descriptor for TaskTimer);
  v6 = sub_10000BC70();

  return _swift_task_switch(sub_10000314C, v6, v5);
}

uint64_t sub_10000314C()
{
  sub_10000BAC0();
  v1 = sub_10000BC70();

  return _swift_task_switch(sub_1000031DC, v1, v0);
}

uint64_t sub_1000031DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005F7C(a3, v25 - v10, &qword_100014790, &qword_10000C4C8);
  v12 = sub_10000BCC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005FE4(v11, &qword_100014790, &qword_10000C4C8);
  }

  else
  {
    sub_10000BCB0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000BC70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000BC50() + 32;
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

      sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);

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

  sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);
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

uint64_t sub_10000353C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10000BBC0();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10000B9F0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v2[5])
  {
    type metadata accessor for BuildMonitor();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v2[5] = v14;
  }

  sub_100002990(v13);
  v15 = v2[5];
  if (v15)
  {
    v16 = type metadata accessor for BuildMonitor();
    v18 = sub_1000062D0(&qword_100014768, v17, type metadata accessor for BuildMonitor, &unk_10000C478);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v36 = 0;
    v37 = 0;
  }

  aBlock = v15;
  v38 = v16;
  v39 = v18;

  v19 = sub_1000051BC(a1, v13, &aBlock);
  (*(v11 + 8))(v13, v10);
  sub_100005FE4(&aBlock, &qword_100014760, &qword_10000C4B0);
  v2[4] = v19;

  v20 = sub_10000BCC0();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_10000BC90();

  v21 = sub_10000BC80();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v2;
  sub_10000323C(0, 0, v9, &unk_10000C4D8, v22);

  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_10000BBA0();
    v23 = sub_10000BBB0();
    v24 = sub_10000BCE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Listening for environment changes to reload JSStack", v25, 2u);
    }

    (*(v4 + 8))(v6, v34);
    v26 = [objc_opt_self() defaultCenter];
    if (qword_1000144E8 != -1)
    {
      swift_once();
    }

    v27 = qword_1000148A8;
    v28 = sub_10000BC30();
    v29 = [objc_opt_self() currentQueue];
    v39 = sub_100005DB4;
    v40 = v2;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_10000460C;
    v38 = &unk_100010920;
    v30 = _Block_copy(&aBlock);

    v31 = [v26 addObserverForName:v27 object:v28 queue:v29 usingBlock:v30];
    _Block_release(v30);

    v2[3] = v31;
    swift_unknownObjectRelease();
  }

  return v19;
}

uint64_t sub_100003A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10000BCC0();
  v4[3] = swift_task_alloc();
  sub_10000BC90();
  v4[4] = sub_10000BC80();
  v6 = sub_10000BC70();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100003B30, v6, v5);
}

uint64_t sub_100003B30()
{
  v1 = v0[2];
  sub_10000BAD0();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;

  sub_10000BCA0();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100003C50;
  v4 = v0[3];
  v5.n128_u64[0] = 30.0;

  return _s25PromotedContentJetSupport9TaskTimerC12timeInterval4name8priority7repeats6active9operationACSd_SSScPS2byyYaYbKYAcntYacfC(0xD00000000000001FLL, 0x800000010000D070, v4, 0, 1, &unk_10000C510, v2, v5);
}

uint64_t sub_100003C50(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_100003D78, v4, v3);
}

uint64_t sub_100003D78()
{
  v1 = v0[8];
  v2 = v0[2];

  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100003E1C()
{
  sub_10000BC90();
  *(v0 + 24) = sub_10000BC80();
  v2 = sub_10000BC70();

  return _swift_task_switch(sub_100003EB0, v2, v1);
}

uint64_t sub_100003EB0()
{

  sub_100002BF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003F18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_10000BCC0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_100004360(0, 0, v5, &unk_10000C4E8, v7);
}

uint64_t sub_100004024()
{
  v1 = sub_10000BBC0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100004110;

  return sub_100004700();
}

uint64_t sub_100004110()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10000425C, 0, 0);
  }
}

uint64_t sub_10000425C(uint64_t a1)
{
  sub_10000BBA0();
  v2 = sub_10000BBB0();
  v3 = sub_10000BCD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reloaded JavaScript environment after a configuration change", v4, 2u);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_100004360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005F7C(a3, v22 - v9, &qword_100014790, &qword_10000C4C8);
  v11 = sub_10000BCC0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100005FE4(v10, &qword_100014790, &qword_10000C4C8);
  }

  else
  {
    sub_10000BCB0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10000BC70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10000BC50() + 32;

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

      sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);

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

  sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000460C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B6E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_10000B6D0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100004700()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_10000BBC0();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10000B9F0();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_10000210C(&qword_100014560, &qword_10000C3C8);
  v1[15] = swift_task_alloc();
  v4 = sub_10000B750();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_10000BC90();
  v1[19] = sub_10000BC80();
  v6 = sub_10000BC70();
  v1[20] = v6;
  v1[21] = v5;

  return _swift_task_switch(sub_10000490C, v6, v5);
}

uint64_t sub_10000490C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_100002214(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[15];

    sub_100005FE4(v4, &qword_100014560, &qword_10000C3C8);
    sub_10000BBA0();
    v5 = sub_10000BBB0();
    v6 = sub_10000BCF0();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to reload JetPack while getting cache directory", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_15;
  }

  v12 = v0[7];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  if (!*(v12 + 40))
  {
    type metadata accessor for BuildMonitor();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v12 + 40) = v13;
  }

  v14 = *(v0[7] + 32);
  v0[22] = v14;
  if (!v14)
  {

    v17 = v0[7];
    sub_100002990(v0[14]);
    v18 = *(v17 + 40);
    if (v18)
    {
      v19 = type metadata accessor for BuildMonitor();
      v21 = sub_1000062D0(&qword_100014768, v20, type metadata accessor for BuildMonitor, &unk_10000C478);
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v0[3] = 0;
      v0[4] = 0;
    }

    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
    v28 = v0[7];
    v0[2] = v18;
    v0[5] = v19;
    v0[6] = v21;

    v29 = sub_1000051BC(v22, v25, (v0 + 2));
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    sub_100005FE4((v0 + 2), &qword_100014760, &qword_10000C4B0);
    *(v28 + 32) = v29;

LABEL_15:

    v30 = v0[1];

    return v30();
  }

  v31 = (&async function pointer to dispatch thunk of IntentDispatcher.requestGarbageCollection() + async function pointer to dispatch thunk of IntentDispatcher.requestGarbageCollection());

  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_100004C7C;

  return v31();
}

uint64_t sub_100004C7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10000632C;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100004DC0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100004DC0()
{

  v1 = v0[7];
  sub_100002990(v0[14]);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = type metadata accessor for BuildMonitor();
    v5 = sub_1000062D0(&qword_100014768, v4, type metadata accessor for BuildMonitor, &unk_10000C478);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[7];
  v0[2] = v2;
  v0[5] = v3;
  v0[6] = v5;

  v13 = sub_1000051BC(v6, v9, (v0 + 2));
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  sub_100005FE4((v0 + 2), &qword_100014760, &qword_10000C4B0);
  *(v12 + 32) = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_100004F58()
{

  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100004FCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000050C4;

  return v6(a1);
}

uint64_t sub_1000050C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000051BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v3 = sub_10000B830();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000B750();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000BBC0();
  v7 = *(v53 - 8);
  v8 = __chkstk_darwin(v53);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v46 = &v43 - v12;
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = sub_10000210C(&qword_100014770, &qword_10000C4B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_10000B780();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000B890();
  v54 = *(v22 - 8);
  v55 = v22;
  __chkstk_darwin(v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B880();
  sub_10000B930();
  swift_allocObject();
  v57 = sub_10000B920();
  v56 = objc_opt_self();
  if ([v56 isAppleInternalInstall])
  {
    sub_10000B870();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_100005FE4(v17, &qword_100014770, &qword_10000C4B8);
    }

    else
    {
      (*(v19 + 32))(v21, v17, v18);
      sub_10000B980();

      (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    if (qword_1000144F8 != -1)
    {
      swift_once();
    }

    sub_100005B44(v18, qword_1000148B8);
    sub_10000B980();
  }

  sub_10000B9D0();
  sub_10000B9A0();
  sub_10000B9B0();

  sub_10000BAA0();
  swift_allocObject();
  sub_10000BA90();
  sub_10000BA50();

  v25 = sub_10000B9F0();
  v60[3] = v25;
  v60[4] = sub_1000062D0(&qword_100014778, 255, &type metadata accessor for DeviceInfo, &protocol conformance descriptor for DeviceInfo);
  v26 = sub_100005B7C(v60);
  (*(*(v25 - 8) + 16))(v26, v51, v25);
  sub_10000BA60();

  sub_100005BE0(v60);
  sub_100005F7C(v52, &v58, &qword_100014760, &qword_10000C4B0);
  if (v59)
  {
    sub_100005C2C(&v58, v60);
    sub_10000BA40();

    sub_100005BE0(v60);
  }

  else
  {
    sub_100005FE4(&v58, &qword_100014760, &qword_10000C4B0);
  }

  if (sub_10000B850())
  {
    sub_10000BBA0();
    v27 = sub_10000BBB0();
    v28 = sub_10000BCD0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Only using bundled JetPack.", v29, 2u);
    }

    (*(v7 + 8))(v14, v53);
LABEL_24:
    sub_10000BA70();

    goto LABEL_25;
  }

  if (![v56 isAppleInternalInstall])
  {
LABEL_21:
    sub_10000BBA0();
    v38 = sub_10000BBB0();
    v39 = sub_10000BCD0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Either use cache or fallback to bundled JetPack.", v40, 2u);
    }

    (*(v7 + 8))(v10, v53);
    sub_10000BA70();

    goto LABEL_24;
  }

  sub_10000B840();
  v31 = v47;
  v30 = v48;
  if ((*(v47 + 88))(v5, v48) != enum case for JetServiceSettings.Environment.custom(_:))
  {
    (*(v31 + 8))(v5, v30);
    goto LABEL_21;
  }

  (*(v31 + 96))(v5, v30);
  v32 = v44;
  v33 = v45;
  (*(v44 + 32))(v49, v5, v45);
  sub_10000BBA0();
  v34 = sub_10000BBB0();
  v35 = sub_10000BCD0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Only use custom URL to fetch JetPack.", v36, 2u);
  }

  (*(v7 + 8))(v46, v53);
  swift_allocObject();
  sub_10000B9C0();
  sub_10000B970();

  v37 = v49;
  sub_10000B990();

  sub_10000BA70();

  (*(v32 + 8))(v37, v33);
LABEL_25:
  if ([v56 isAppleInternalInstall] && (sub_10000B860() & 1) != 0)
  {
    sub_10000BA30();
  }

  v41 = sub_10000BA80();

  (*(v54 + 8))(v24, v55);
  return v41;
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005B7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100005BE0(void *a1)
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

uint64_t sub_100005C2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_100005C44(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100005CA8()
{
  result = qword_100014788;
  if (!qword_100014788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014788);
  }

  return result;
}

uint64_t sub_100005D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006328;

  return sub_100003A6C(a1, v4, v5, v6);
}

uint64_t sub_100005DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005E88;

  return sub_100004024();
}

uint64_t sub_100005E88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005FE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000210C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006044()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000607C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006328;

  return sub_100004FCC(a1, v4);
}

uint64_t sub_100006134()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006328;

  return sub_100003DFC(v2, v3, v4);
}

uint64_t sub_1000061DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000621C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005E88;

  return sub_100003068(a1, v4, v5, v6);
}

uint64_t sub_1000062D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_10000B8F0();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_10000BBC0();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_10000BB30();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_10000B910();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = sub_10000BB20();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v11 = sub_10000BB00();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  sub_10000210C(&qword_100014868, &qword_10000C618);
  v5[36] = swift_task_alloc();

  return _swift_task_switch(sub_10000662C, 0, 0);
}

uint64_t sub_10000662C()
{
  v0[37] = *(v0[13] + 16);
  v4 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_1000066E0;
  v2 = v0[36];

  return v4(v2);
}

uint64_t sub_1000066E0()
{

  return _swift_task_switch(sub_1000067DC, 0, 0);
}

uint64_t sub_1000067DC()
{
  v54 = v0;
  v1 = v0[36];
  v2 = sub_10000B7F0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100005FE4(v1, &qword_100014868, &qword_10000C618);
    v51 = 0xE200000000000000;
    v47 = 16718;
  }

  else
  {
    v47 = sub_10000B7E0();
    v51 = v4;
    (*(v3 + 8))(v1, v2);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[24];
  v48 = v0[25];
  v10 = v0[23];
  v11 = v0[11];
  v0[39] = *(v0[13] + 24);
  sub_10000B790();
  sub_10000B7C0();
  v50 = *(v8 + 16);
  v50(v6, v5, v7);
  sub_10000B2E4();
  sub_100007350();
  sub_10000B338(v12, v13);
  (*(v9 + 16))(v48, v11, v10);
  sub_10000B348();
  sub_100007350();
  sub_10000B338(v14, v15);

  v16 = sub_10000BB10();
  v17 = sub_10000BD30();

  if (sub_10000BD40())
  {
    v18 = v0[34];
    v49 = v17;
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[24];
    v22 = v0[25];
    v46 = v0[23];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 134349570;
    *(v23 + 4) = sub_10000BAE0();
    v25 = *(v19 + 8);
    v25(v18, v20);
    *(v23 + 12) = 2050;
    *(v23 + 14) = sub_10000B900();
    (*(v21 + 8))(v22, v46);
    *(v23 + 22) = 2082;
    v26 = sub_10000AB6C(v47, v51, &v53);

    *(v23 + 24) = v26;
    v27 = sub_10000BAE0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v49, v27, "Dispatch Intent", "id=%{name=id,public}llu type=%{name=type,public}ld jsVersion=%{name=jsVersion,public}s", v23, 0x20u);
    sub_100005BE0(v24);
  }

  else
  {
    v28 = v0[34];
    v30 = v0[30];
    v29 = v0[31];
    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[23];

    (*(v32 + 8))(v31, v33);
    v25 = *(v29 + 8);
    v25(v28, v30);
  }

  v0[40] = v25;
  v34 = v0[29];
  v35 = v0[26];
  v36 = v0[27];
  v37 = v0[10];
  v50(v0[33], v0[35], v0[30]);
  sub_10000BB70();
  swift_allocObject();
  v0[41] = sub_10000BB60();
  v38 = *(v36 + 8);
  v0[42] = v38;
  v0[43] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v34, v35);
  v40 = v37[3];
  v39 = v37[4];
  v41 = sub_10000B3EC(v37, v40);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  v0[7] = swift_getAssociatedConformanceWitness();
  v0[8] = swift_getAssociatedConformanceWitness();
  v42 = sub_100005B7C(v0 + 2);
  v52 = &async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:dependencies:) + async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:dependencies:);
  v43 = swift_task_alloc();
  v0[44] = v43;
  *v43 = v0;
  v43[1] = sub_100006D0C;
  v44 = v0[12];

  return (v52)(v42, v41, v44, v40, v39);
}

uint64_t sub_100006D0C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1000071B8;
  }

  else
  {
    v2 = sub_100006E20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006E20()
{
  sub_10000B7C0();
  v1 = sub_10000BB10();
  sub_10000BB50();
  v2 = sub_10000BD20();
  if (sub_10000BD40())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);

    sub_10000BB80();

    if ((*(v4 + 88))(v3, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_10000BAE0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v8, "Dispatch Intent", v6, v7, 2u);
  }

  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
  v13 = *(v0 + 224);
  v14 = *(v0 + 208);

  v10(v11, v12);
  v9(v13, v14);
  sub_10000BBA0();
  v15 = sub_10000BBB0();
  v16 = sub_10000BCD0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully dispatched request. Sending reply...", v17, 2u);
  }

  v18 = *(v0 + 280);
  v30 = *(v0 + 320);
  v19 = *(v0 + 240);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 136);
  v23 = *(v0 + 72);

  (*(v21 + 8))(v20, v22);
  v24 = *(v0 + 40);
  v29 = *(v0 + 56);
  v25 = sub_10000B3EC((v0 + 16), v24);
  *(v23 + 24) = v24;
  *(v23 + 32) = v29;
  v26 = sub_100005B7C(v23);
  (*(*(v24 - 8) + 16))(v26, v25, v24);

  v30(v18, v19);
  sub_100005BE0((v0 + 16));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000071B8()
{
  v1 = v0[13];
  sub_10000B39C(v0 + 2);
  if (*(v1 + 56))
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    (*(v3 + 104))(v2, enum case for JetServiceTelemetryErrorCode.jsError(_:), v4);
    sub_10000B8C0();
    (*(v3 + 8))(v2, v4);
  }

  v5 = v0[40];
  v6 = v0[35];
  v7 = v0[30];
  swift_willThrow();

  v5(v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000073C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10000B8F0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10000210C(&qword_100014868, &qword_10000C618);
  v3[8] = swift_task_alloc();
  v5 = sub_10000BBC0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_10000B750();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_10000B8A0();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000075F4, 0, 0);
}

uint64_t sub_1000075F4()
{
  v96 = v0;
  v1 = *(v0 + 176);
  sub_10000B174(*(v0 + 24), v1);
  v2 = sub_10000210C(&qword_100014878, &qword_10000C630);
  v3 = (*(*(v2 - 8) + 48))(v1, 2, v2);
  if (v3)
  {
    if (v3 == 1)
    {
      v91 = (&async function pointer to dispatch thunk of IntentDispatcher.clearCache() + async function pointer to dispatch thunk of IntentDispatcher.clearCache());
      v4 = swift_task_alloc();
      *(v0 + 184) = v4;
      *v4 = v0;
      v4[1] = sub_100008024;

      return v91();
    }

    else
    {
      v93 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
      v30 = swift_task_alloc();
      *(v0 + 320) = v30;
      *v30 = v0;
      v30[1] = sub_100009640;
      v31 = *(v0 + 64);

      return v93(v31);
    }
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = (v6 + *(v2 + 48));
  v12 = *v11;
  *(v0 + 216) = *v11;
  v92 = v11[1];
  *(v0 + 224) = v92;
  *(v0 + 328) = *(v6 + *(v2 + 64));
  (*(v9 + 32))(v7);
  sub_10000BB90();
  v13 = *(v9 + 16);
  *(v0 + 232) = v13;
  *(v0 + 240) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v7, v10);
  v14 = sub_10000BBB0();
  v15 = sub_10000BD10();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v89 = *(v0 + 128);
  v19 = *(v0 + 120);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  if (v16)
  {
    v86 = v12;
    v22 = swift_slowAlloc();
    v83 = v21;
    v23 = swift_slowAlloc();
    v95[0] = v23;
    *v22 = 136315138;
    v79 = v15;
    v24 = sub_10000B730(1);
    v81 = v19;
    v26 = v25;
    v27 = *(v18 + 8);
    v27(v17, v89);
    v28 = sub_10000AB6C(v24, v26, v95);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v14, v79, "[%s] Fetching JetPack", v22, 0xCu);
    sub_100005BE0(v23);

    v12 = v86;

    v29 = *(v20 + 8);
    v29(v81, v83);
  }

  else
  {

    v27 = *(v18 + 8);
    v27(v17, v89);
    v29 = *(v20 + 8);
    v29(v19, v21);
  }

  *(v0 + 248) = v27;
  *(v0 + 256) = v29;
  v32 = objc_allocWithZone(AMSSnapshotBag);
  sub_10000B1D8(v12, v92);
  isa = sub_10000B760().super.isa;
  v34 = [v32 initWithData:isa];
  *(v0 + 264) = v34;

  sub_10000B22C(v12, v92);
  if (v34)
  {
    v94 = (&async function pointer to dispatch thunk of IntentDispatcher.fetchForCache(_:bag:) + async function pointer to dispatch thunk of IntentDispatcher.fetchForCache(_:bag:));
    v35 = swift_task_alloc();
    *(v0 + 272) = v35;
    *v35 = v0;
    v35[1] = sub_100008518;
    v36 = *(v0 + 168);

    return v94(v36, v34);
  }

  sub_10000B280();
  swift_allocError();
  swift_willThrow();
  v37 = *(v0 + 232);
  v38 = *(v0 + 168);
  v39 = *(v0 + 144);
  v40 = *(v0 + 128);
  sub_10000BB90();
  v37(v39, v38, v40);
  v41 = sub_10000BBB0();
  v87 = sub_10000BD10();
  v42 = os_log_type_enabled(v41, v87);
  v44 = *(v0 + 248);
  v43 = *(v0 + 256);
  v45 = *(v0 + 144);
  v46 = *(v0 + 128);
  v47 = *(v0 + 96);
  v48 = *(v0 + 72);
  if (v42)
  {
    v84 = *(v0 + 72);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v95[0] = v50;
    *v49 = 136315138;
    v80 = v47;
    v82 = v43;
    v51 = sub_10000B730(1);
    v53 = v52;
    v44(v45, v46);
    v54 = sub_10000AB6C(v51, v53, v95);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v41, v87, "[%s] Failed to fetch JetPack", v49, 0xCu);
    sub_100005BE0(v50);

    v82(v80, v84);
  }

  else
  {

    v44(v45, v46);
    v43(v47, v48);
  }

  v55 = sub_10000B6F0();
  v56 = [v55 domain];

  v57 = sub_10000BC40();
  v59 = v58;

  if (v57 == 0x44726F727245504ALL && v59 == 0xED00006E69616D6FLL)
  {

    goto LABEL_23;
  }

  v60 = sub_10000BD70();

  if (v60)
  {
LABEL_23:
    if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
    {
      v62 = *(v0 + 48);
      v61 = *(v0 + 56);
      v63 = *(v0 + 40);
      (*(v62 + 104))(v61, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v63);

      sub_10000B8C0();

      (*(v62 + 8))(v61, v63);
    }

    sub_10000BBA0();
    v64 = sub_10000BBB0();
    v65 = sub_10000BD00();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Downloaded Malformed JetPack. Cache was not updated.", v66, 2u);
    }

    v67 = *(v0 + 256);
    v69 = *(v0 + 216);
    v68 = *(v0 + 224);
    v88 = *(v0 + 168);
    v90 = *(v0 + 248);
    v85 = *(v0 + 128);
    v70 = *(v0 + 88);
    v71 = *(v0 + 72);
    v72 = *(v0 + 16);

    v67(v70, v71);
    *(v72 + 24) = &type metadata for String;
    *(v72 + 32) = &protocol witness table for String;
    *(v72 + 40) = &protocol witness table for String;

    sub_10000B22C(v69, v68);
    strcpy(v72, "Update Failed");
    *(v72 + 14) = -4864;
    v90(v88, v85);

    v73 = *(v0 + 8);
    goto LABEL_30;
  }

  v74 = *(v0 + 248);
  v75 = *(v0 + 216);
  v76 = *(v0 + 224);
  v77 = *(v0 + 168);
  v78 = *(v0 + 128);
  swift_willThrow();
  sub_10000B22C(v75, v76);
  v74(v77, v78);

  v73 = *(v0 + 8);
LABEL_30:

  return v73();
}

uint64_t sub_100008024()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009960;
  }

  else
  {
    v2 = sub_100008138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008138()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1000081CC;

  return sub_100004700();
}

uint64_t sub_1000081CC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100008418;
  }

  else
  {
    v2 = sub_1000082E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000082E0()
{
  v1 = *(v0 + 16);
  v1[3] = &type metadata for String;
  v1[4] = &protocol witness table for String;
  v1[5] = &protocol witness table for String;
  *v1 = 0x6574656C706D6F43;
  v1[1] = 0xE900000000000064;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100008418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008518(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 329) = a3;
  *(v5 + 296) = v3;

  if (v3)
  {
    v6 = sub_100009A60;
  }

  else
  {
    v6 = sub_100008634;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100008634(uint64_t a1)
{
  v55 = v1;
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  sub_10000BBA0();
  sub_10000B2D4(v3, v2);
  v4 = sub_10000BBB0();
  v5 = sub_10000BCE0();
  sub_10000B2DC(v3, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v50 = *(v1 + 112);
    v52 = *(v1 + 256);
    v6 = *(v1 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v54 = v8;
    *v7 = 136315138;
    v9 = sub_10000B960();
    v11 = sub_10000AB6C(v9, v10, &v54);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cache fetch result: %s", v7, 0xCu);
    sub_100005BE0(v8);

    v52(v50, v6);
    if ((*(v1 + 329) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(v1 + 256);
    v17 = *(v1 + 112);
    v18 = *(v1 + 72);

    v16(v17, v18);
    if ((*(v1 + 329) & 1) == 0)
    {
LABEL_3:
      if (*(v1 + 328) == 1)
      {
        v12 = *(v1 + 32);
        v14 = *(v1 + 280);
        v13 = *(v1 + 288);
        if (*(v12 + 56))
        {
          v15 = *(v12 + 32);

          v57._countAndFlagsBits = v14;
          v57._object = v13;
          sub_10000B8B0(0, v57, v15);
          sub_10000B2DC(v14, v13);

LABEL_13:
          v23 = *(v1 + 232);
          v24 = *(v1 + 168);
          v25 = *(v1 + 152);
          v26 = *(v1 + 128);
          sub_10000BB90();
          v23(v25, v24, v26);
          v27 = sub_10000BBB0();
          v28 = sub_10000BD10();
          v29 = os_log_type_enabled(v27, v28);
          v30 = *(v1 + 256);
          v31 = *(v1 + 248);
          v32 = *(v1 + 224);
          v33 = *(v1 + 168);
          v34 = *(v1 + 152);
          v35 = *(v1 + 128);
          v49 = *(v1 + 216);
          v51 = *(v1 + 72);
          v53 = *(v1 + 104);
          if (v29)
          {
            v47 = *(v1 + 264);
            v48 = *(v1 + 224);
            v36 = swift_slowAlloc();
            v44 = v28;
            v37 = swift_slowAlloc();
            v54 = v37;
            *v36 = 136315138;
            v45 = v30;
            v46 = v33;
            v38 = sub_10000B730(1);
            v40 = v39;
            v31(v34, v35);
            v41 = sub_10000AB6C(v38, v40, &v54);

            *(v36 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v27, v44, "[%s] Successfully fetched JetPack", v36, 0xCu);
            sub_100005BE0(v37);

            sub_10000B22C(v49, v48);
            v45(v53, v51);
            v31(v46, v35);
          }

          else
          {

            sub_10000B22C(v49, v32);
            v31(v34, v35);
            v30(v53, v51);
            v31(v33, v35);
          }

          v42 = *(v1 + 16);
          v42[3] = &type metadata for String;
          v42[4] = &protocol witness table for String;
          v42[5] = &protocol witness table for String;
          *v42 = 0x6574656C706D6F43;
          v42[1] = 0xE900000000000064;

          v43 = *(v1 + 8);

          return v43();
        }

        v21 = *(v1 + 280);
        v22 = *(v1 + 288);
      }

      else
      {
        v21 = *(v1 + 280);
        v22 = *(v1 + 288);
      }

      sub_10000B2DC(v21, v22);
      goto LABEL_13;
    }
  }

  v19 = swift_task_alloc();
  *(v1 + 304) = v19;
  *v19 = v1;
  v19[1] = sub_100008BC4;

  return sub_100004700();
}

uint64_t sub_100008BC4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100009090;
  }

  else
  {
    v2 = sub_100008CD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008CD8()
{
  v39 = v0;
  if (*(v0 + 328) == 1)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 329);
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    if (*(v1 + 56))
    {
      v5 = *(v1 + 32);

      v41._countAndFlagsBits = v4;
      v41._object = v3;
      sub_10000B8B0(v2 & 1, v41, v5);
      sub_10000B2DC(v4, v3);

      goto LABEL_7;
    }

    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
  }

  else
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
  }

  sub_10000B2DC(v6, v7);
LABEL_7:
  v8 = *(v0 + 232);
  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  sub_10000BB90();
  v8(v10, v9, v11);
  v12 = sub_10000BBB0();
  v13 = sub_10000BD10();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 168);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v35 = *(v0 + 216);
  v36 = *(v0 + 72);
  v37 = *(v0 + 104);
  if (v14)
  {
    v33 = *(v0 + 264);
    v34 = *(v0 + 224);
    v21 = swift_slowAlloc();
    v30 = v13;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v31 = v15;
    v32 = v18;
    v23 = sub_10000B730(1);
    v25 = v24;
    v16(v19, v20);
    v26 = sub_10000AB6C(v23, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v12, v30, "[%s] Successfully fetched JetPack", v21, 0xCu);
    sub_100005BE0(v22);

    sub_10000B22C(v35, v34);
    v31(v37, v36);
    v16(v32, v20);
  }

  else
  {

    sub_10000B22C(v35, v17);
    v16(v19, v20);
    v15(v37, v36);
    v16(v18, v20);
  }

  v27 = *(v0 + 16);
  v27[3] = &type metadata for String;
  v27[4] = &protocol witness table for String;
  v27[5] = &protocol witness table for String;
  *v27 = 0x6574656C706D6F43;
  v27[1] = 0xE900000000000064;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100009090()
{
  v53 = v0;
  v1 = *(v0 + 264);
  sub_10000B2DC(*(v0 + 280), *(v0 + 288));

  v2 = *(v0 + 232);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  sub_10000BB90();
  v2(v4, v3, v5);
  v6 = sub_10000BBB0();
  v49 = sub_10000BD10();
  v7 = os_log_type_enabled(v6, v49);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  if (v7)
  {
    v47 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136315138;
    v45 = v12;
    v46 = v8;
    v16 = sub_10000B730(1);
    v18 = v17;
    v9(v10, v11);
    v19 = sub_10000AB6C(v16, v18, &v52);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v49, "[%s] Failed to fetch JetPack", v14, 0xCu);
    sub_100005BE0(v15);

    v46(v45, v47);
  }

  else
  {

    v9(v10, v11);
    v8(v12, v13);
  }

  v20 = sub_10000B6F0();
  v21 = [v20 domain];

  v22 = sub_10000BC40();
  v24 = v23;

  if (v22 == 0x44726F727245504ALL && v24 == 0xED00006E69616D6FLL)
  {
  }

  else
  {
    v25 = sub_10000BD70();

    if ((v25 & 1) == 0)
    {
      v39 = *(v0 + 248);
      v40 = *(v0 + 216);
      v41 = *(v0 + 224);
      v42 = *(v0 + 168);
      v43 = *(v0 + 128);
      swift_willThrow();
      sub_10000B22C(v40, v41);
      v39(v42, v43);

      v38 = *(v0 + 8);
      goto LABEL_15;
    }
  }

  if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
  {
    v27 = *(v0 + 48);
    v26 = *(v0 + 56);
    v28 = *(v0 + 40);
    (*(v27 + 104))(v26, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v28);

    sub_10000B8C0();

    (*(v27 + 8))(v26, v28);
  }

  sub_10000BBA0();
  v29 = sub_10000BBB0();
  v30 = sub_10000BD00();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Downloaded Malformed JetPack. Cache was not updated.", v31, 2u);
  }

  v32 = *(v0 + 256);
  v34 = *(v0 + 216);
  v33 = *(v0 + 224);
  v50 = *(v0 + 168);
  v51 = *(v0 + 248);
  v48 = *(v0 + 128);
  v35 = *(v0 + 88);
  v36 = *(v0 + 72);
  v37 = *(v0 + 16);

  v32(v35, v36);
  *(v37 + 24) = &type metadata for String;
  *(v37 + 32) = &protocol witness table for String;
  *(v37 + 40) = &protocol witness table for String;

  sub_10000B22C(v34, v33);
  strcpy(v37, "Update Failed");
  *(v37 + 14) = -4864;
  v51(v50, v48);

  v38 = *(v0 + 8);
LABEL_15:

  return v38();
}

uint64_t sub_100009640()
{

  return _swift_task_switch(sub_10000973C, 0, 0);
}

uint64_t sub_10000973C()
{
  v1 = v0[8];
  v2 = sub_10000B7F0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    sub_100005FE4(v1, &qword_100014868, &qword_10000C618);
    v5[3] = &type metadata for String;
    v5[4] = &protocol witness table for String;
    v5[5] = &protocol witness table for String;
  }

  else
  {
    v6 = sub_10000B7E0();
    v8 = v7;
    (*(v3 + 8))(v1, v2);
    v5[3] = &type metadata for String;
    v5[4] = &protocol witness table for String;
    v5[5] = &protocol witness table for String;
    if (v8)
    {
      v9 = v0[2];
      *v9 = v6;
      goto LABEL_6;
    }
  }

  v9 = v0[2];
  *v9 = 0x6E776F6E6B6E55;
  v8 = 0xE700000000000000;
LABEL_6:
  v9[1] = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009A60()
{
  v52 = v0;

  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  sub_10000BB90();
  v1(v3, v2, v4);
  v5 = sub_10000BBB0();
  v48 = sub_10000BD10();
  v6 = os_log_type_enabled(v5, v48);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  if (v6)
  {
    v46 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51 = v14;
    *v13 = 136315138;
    v44 = v11;
    v45 = v7;
    v15 = sub_10000B730(1);
    v17 = v16;
    v8(v9, v10);
    v18 = sub_10000AB6C(v15, v17, &v51);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v48, "[%s] Failed to fetch JetPack", v13, 0xCu);
    sub_100005BE0(v14);

    v45(v44, v46);
  }

  else
  {

    v8(v9, v10);
    v7(v11, v12);
  }

  v19 = sub_10000B6F0();
  v20 = [v19 domain];

  v21 = sub_10000BC40();
  v23 = v22;

  if (v21 == 0x44726F727245504ALL && v23 == 0xED00006E69616D6FLL)
  {
  }

  else
  {
    v24 = sub_10000BD70();

    if ((v24 & 1) == 0)
    {
      v38 = *(v0 + 248);
      v39 = *(v0 + 216);
      v40 = *(v0 + 224);
      v41 = *(v0 + 168);
      v42 = *(v0 + 128);
      swift_willThrow();
      sub_10000B22C(v39, v40);
      v38(v41, v42);

      v37 = *(v0 + 8);
      goto LABEL_15;
    }
  }

  if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
  {
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    (*(v26 + 104))(v25, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v27);

    sub_10000B8C0();

    (*(v26 + 8))(v25, v27);
  }

  sub_10000BBA0();
  v28 = sub_10000BBB0();
  v29 = sub_10000BD00();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Downloaded Malformed JetPack. Cache was not updated.", v30, 2u);
  }

  v31 = *(v0 + 256);
  v33 = *(v0 + 216);
  v32 = *(v0 + 224);
  v49 = *(v0 + 168);
  v50 = *(v0 + 248);
  v47 = *(v0 + 128);
  v34 = *(v0 + 88);
  v35 = *(v0 + 72);
  v36 = *(v0 + 16);

  v31(v34, v35);
  *(v36 + 24) = &type metadata for String;
  *(v36 + 32) = &protocol witness table for String;
  *(v36 + 40) = &protocol witness table for String;

  sub_10000B22C(v33, v32);
  strcpy(v36, "Update Failed");
  *(v36 + 14) = -4864;
  v50(v49, v47);

  v37 = *(v0 + 8);
LABEL_15:

  return v37();
}

uint64_t sub_10000A004(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10000B820();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10000BBC0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_10000210C(&qword_100014868, &qword_10000C618);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000A164, 0, 0);
}

uint64_t sub_10000A164()
{
  v4 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10000A214;
  v2 = *(v0 + 88);

  return v4(v2);
}

uint64_t sub_10000A214()
{

  return _swift_task_switch(sub_10000A310, 0, 0);
}

uint64_t sub_10000A310()
{
  v0[13] = *(v0[3] + 40);
  sub_10000BC90();
  v0[14] = sub_10000BC80();
  v2 = sub_10000BC70();

  return _swift_task_switch(sub_10000A3B0, v2, v1);
}

uint64_t sub_10000A3B0()
{
  v1 = *(v0 + 104);

  v2 = *(v1 + 40);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 16);
  }

  *(v0 + 120) = v2;

  return _swift_task_switch(sub_10000A428, 0, 0);
}

uint64_t sub_10000A428()
{
  v29 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_10000AA38(v0[11], v0[10]);
  sub_10000B810();
  sub_10000BBA0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_10000BBB0();
  v6 = sub_10000BCE0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  if (v7)
  {
    v27 = v0[7];
    v15 = swift_slowAlloc();
    v24 = v6;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v25 = v9;
    v26 = v8;
    v17 = sub_10000B800();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_10000AB6C(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v5, v24, "Including metadata in response: %s", v15, 0xCu);
    sub_100005BE0(v16);

    (*(v10 + 8))(v25, v27);
    v21 = v26;
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
    v21 = v8;
  }

  sub_100005FE4(v21, &qword_100014868, &qword_10000C618);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10000A6A4()
{

  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10000A718(uint64_t a1)
{
  v2 = sub_10000210C(&qword_100014898, &qword_10000C640);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_10000BB00();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_10000B7B0();
  return sub_100005FE4(v4, &qword_100014898, &qword_10000C640);
}

uint64_t sub_10000A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006328;

  return sub_100006330(a1, a2, a3, a4);
}

uint64_t sub_10000A8F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005E88;

  return sub_1000073C0(a1, a2);
}

uint64_t sub_10000A9A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006328;

  return sub_10000A004(a1);
}

uint64_t sub_10000AA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100014868, &qword_10000C618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000AAB0()
{
  sub_10000BDC0();
  sub_10000BDD0(0);
  return sub_10000BDE0();
}

Swift::Int sub_10000AB1C(uint64_t a1)
{
  sub_10000BDC0();
  sub_10000BDD0(0);
  return sub_10000BDE0();
}

unint64_t sub_10000AB6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AC38(v11, 0, 0, 1, a1, a2);
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
    sub_10000B114(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005BE0(v11);
  return v7;
}

unint64_t sub_10000AC38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000AD44(a5, a6);
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
    result = sub_10000BD60();
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

char *sub_10000AD44(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000AD90(a1, a2);
  sub_10000AEC0(&off_1000108B8);
  return v3;
}

char *sub_10000AD90(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AFAC(v5, 0);
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

  result = sub_10000BD60();
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
        v10 = sub_10000BC60();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AFAC(v10, 0);
        result = sub_10000BD50();
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

uint64_t sub_10000AEC0(uint64_t result)
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

  result = sub_10000B020(result, v11, 1, v3);
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

void *sub_10000AFAC(uint64_t a1, uint64_t a2)
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

  sub_10000210C(&qword_100014870, &qword_10000C620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B020(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_100014870, &qword_10000C620);
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

uint64_t sub_10000B114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B8A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B1D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000B22C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000B280()
{
  result = qword_100014880;
  if (!qword_100014880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014880);
  }

  return result;
}

unint64_t sub_10000B2E4()
{
  result = qword_100014888;
  if (!qword_100014888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014888);
  }

  return result;
}

uint64_t sub_10000B338(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000B348()
{
  result = qword_100014890;
  if (!qword_100014890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014890);
  }

  return result;
}

void *sub_10000B39C(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

void *sub_10000B3EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetServiceProcessor.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JetServiceProcessor.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000B524()
{
  result = qword_1000148A0;
  if (!qword_1000148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000148A0);
  }

  return result;
}

void sub_10000B5C0()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to resolve temporary directory: %{darwin.errno}d", v1, 8u);
}

void sub_10000B648()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}