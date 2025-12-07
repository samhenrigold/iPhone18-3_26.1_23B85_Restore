int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100009E78();
  sub_1000012EC(v3, qword_100014DC0);
  sub_100001350(v3, qword_100014DC0);
  sub_100009E68();
  qword_100014DD8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_100014DE0 = [objc_opt_self() serviceListener];
  [qword_100014DE0 setDelegate:qword_100014DD8];
  [qword_100014DE0 resume];
  exit(1);
}

uint64_t *sub_1000012EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001350(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000013AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000013F0(void *a1, const char *a2, uint64_t a3)
{
  v5 = sub_100009E78();
  sub_100001350(v5, qword_100014DC0);
  v6 = a1;
  oslog = sub_100009E58();
  v7 = sub_10000A2A8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = [v6 description];
    v11 = sub_10000A1A8();
    v13 = v12;

    v14 = sub_100009078(v11, v13, &v16);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v7, a2, v8, 0xCu);
    sub_100001FBC(v9);
  }
}

id sub_1000015F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001630(uint64_t a1, id *a2)
{
  result = sub_10000A188();
  *a2 = 0;
  return result;
}

uint64_t sub_1000016A8(uint64_t a1, id *a2)
{
  v3 = sub_10000A198();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001728@<X0>(uint64_t *a1@<X8>)
{
  sub_10000A1A8();
  v2 = sub_10000A178();

  *a1 = v2;
  return result;
}

uint64_t sub_10000176C()
{
  sub_10000A1A8();
  v0 = sub_10000A208();

  return v0;
}

uint64_t sub_1000017A8(uint64_t a1)
{
  sub_10000A1A8();
  sub_10000A1C8();
}

Swift::Int sub_1000017FC(uint64_t a1)
{
  sub_10000A1A8();
  sub_10000A3B8();
  sub_10000A1C8();
  v1 = sub_10000A3C8();

  return v1;
}

uint64_t sub_100001870(void *a1, uint64_t *a2)
{
  v2 = sub_10000A1A8();
  v4 = v3;
  if (v2 == sub_10000A1A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10000A388();
  }

  return v7 & 1;
}

uint64_t sub_1000018F8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000A178();

  *a2 = v3;
  return result;
}

uint64_t sub_100001940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A1A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000196C(uint64_t a1)
{
  v2 = sub_1000020F4(&qword_100014A70, &unk_10000AB28);
  v3 = sub_1000020F4(&qword_100014A78, &unk_10000AAC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001A04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100009E78();
  sub_100001350(v4, qword_100014DC0);
  v5 = a1;
  v6 = sub_100009E58();
  v7 = sub_10000A2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v29 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_10000A1A8();
    v13 = v12;

    v14 = sub_100009078(v11, v13, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received new XPC connection: %s", v8, 0xCu);
    sub_100001FBC(v9);
  }

  v15 = sub_10000A178();
  v16 = [v5 valueForEntitlement:v15];

  if (v16)
  {
    sub_10000A2F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v29 = v34;
  v30 = v35;
  if (*(&v35 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v33 == 1)
    {
      v17 = [objc_opt_self() interfaceWithProtocol:{&OBJC_PROTOCOL____TtP24MIBULoopbackServerHelper32MIBULoopbackServerHelperProtocol_, v29, v30}];
      [v5 setExportedInterface:v17];

      v18 = [objc_allocWithZone(type metadata accessor for MIBULoopbackServerHelper()) init];
      [v5 setExportedObject:v18];
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      v31 = sub_100001F5C;
      v32 = v19;
      *&v29 = _NSConcreteStackBlock;
      *(&v29 + 1) = 1107296256;
      *&v30 = sub_1000013AC;
      *(&v30 + 1) = &unk_100010860;
      v20 = _Block_copy(&v29);
      v21 = v5;

      [v21 setInterruptionHandler:v20];
      _Block_release(v20);
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v31 = sub_100001F98;
      v32 = v22;
      *&v29 = _NSConcreteStackBlock;
      *(&v29 + 1) = 1107296256;
      *&v30 = sub_1000013AC;
      *(&v30 + 1) = &unk_1000108B0;
      v23 = _Block_copy(&v29);
      v24 = v21;

      [v24 setInvalidationHandler:v23];
      _Block_release(v23);
      [v24 resume];

      return 1;
    }
  }

  else
  {
    sub_100001E74(&v29);
  }

  v26 = sub_100009E58();
  v27 = sub_10000A2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Reject XPC connection from unentitled client.", v28, 2u);
  }

  [v5 invalidate];
  return 0;
}

uint64_t sub_100001E74(uint64_t a1)
{
  v2 = sub_100001EDC(&qword_100014A48, &qword_10000AA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001EDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001F24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001FBC(void *a1)
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

void type metadata accessor for URLResourceKey()
{
  if (!qword_100014A50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014A50);
    }
  }
}

uint64_t sub_1000020F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_100009E78();
  *(v7 + 40) = sub_100001350(v8, qword_100014DC0);

  return _swift_task_switch(sub_1000021C8, 0, 0);
}

uint64_t sub_1000021C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  *(v1 + 48) = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  v4 = *(v2 + v3);
  *(v1 + 56) = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    *(v1 + 64) = v5;
    *v5 = v1;
    v5[1] = sub_100002354;

    return sub_100003C94();
  }

  else
  {
    v7 = sub_100009E58();
    v8 = sub_10000A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Loopback server stopped.", v9, 2u);
    }

    v10 = *(v1 + 80);
    *(*(v1 + 16) + *(v1 + 48)) = 0;

    if (v10 == 1)
    {
      (*(v1 + 24))(v11);
    }

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_100002354()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10000256C;
  }

  else
  {

    v2 = sub_100002470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002470(uint64_t a1)
{
  v2 = sub_100009E58();
  v3 = sub_10000A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loopback server stopped.", v4, 2u);
  }

  v5 = *(v1 + 80);
  *(*(v1 + 16) + *(v1 + 48)) = 0;

  if (v5 == 1)
  {
    (*(v1 + 24))(v6);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_10000256C()
{

  swift_errorRetain();
  v1 = sub_100009E58();
  v2 = sub_10000A298();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Loopback server stopped with error: %@", v3, 0xCu);
    sub_10000390C(v4, &qword_100014D30, &qword_10000AD10);
  }

  else
  {
  }

  v6 = *(v0 + 80);
  *(*(v0 + 16) + *(v0 + 48)) = 0;

  if (v6 == 1)
  {
    (*(v0 + 24))(v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100002700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EDC(&qword_100014B10, "|\b");
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000036F4(a3, v25 - v10);
  v12 = sub_10000A268();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000390C(v11, &qword_100014B10, "|\b");
  }

  else
  {
    sub_10000A258();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000A228();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000A1B8() + 32;
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

      sub_10000390C(a3, &qword_100014B10, "|\b");

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

  sub_10000390C(a3, &qword_100014B10, "|\b");
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

void sub_100002A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100009E78();
  sub_100001350(v4, qword_100014DC0);
  v5 = sub_100009E58();
  v6 = sub_10000A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping loopback server...", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  v9 = *(v3 + OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server);
  if (v9)
  {
    *(v9 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = 0;

    swift_unknownObjectRelease();
    if (*(v9 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
    {

      sub_100009F08();
    }

    *(v3 + v8) = 0;
  }

  else
  {
    oslog = sub_100009E58();
    v10 = sub_10000A2A8();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Loopback server is already stopped.", v11, 2u);
    }
  }
}

id sub_100002CF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MIBULoopbackServerHelper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100002D5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002E54;

  return v6(a1);
}

uint64_t sub_100002E54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100002F4C(int a1, uint64_t a2, unint64_t a3, char a4, char *a5, void (**a6)(void))
{
  v47 = a2;
  LODWORD(v48) = a1;
  v10 = sub_100001EDC(&qword_100014B10, "|\b");
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_100009E08();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001EDC(&qword_100014B18, &qword_10000ABF8);
  __chkstk_darwin(v15 - 8);
  v44 = &v38 - v16;
  v17 = sub_100009E48();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v43 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  v20 = sub_100009E78();
  sub_100001350(v20, qword_100014DC0);
  _Block_copy(a6);

  v21 = sub_100009E58();
  v22 = sub_10000A2A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = a5;
    v40 = v19;
    v24 = a4;
    v25 = a6;
    v26 = v23;
    v27 = v13;
    v28 = v12;
    v29 = swift_slowAlloc();
    v49 = v29;
    *v26 = 33554946;
    *(v26 + 4) = v48;
    *(v26 + 6) = 2080;
    *(v26 + 8) = sub_100009078(v47, a3, &v49);
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting loopback server with web port: '%hu' web root: '%s'", v26, 0x10u);
    sub_100001FBC(v29);
    v12 = v28;
    v13 = v27;

    a6 = v25;
    a4 = v24;
    a5 = v39;
    v19 = v40;
  }

  v30 = OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server;
  if (*&a5[OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server])
  {
    v48 = sub_100009E58();
    v31 = sub_10000A2A8();
    if (os_log_type_enabled(v48, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v48, v31, "Loopback server is already started.", v32, 2u);
    }

    v33 = v48;
  }

  else
  {
    (*(v41 + 56))(v44, 1, 1, v42);
    (*(v46 + 104))(v45, enum case for URL.DirectoryHint.inferFromPath(_:), v13);

    v34 = v43;
    sub_100009E28();
    type metadata accessor for MIBULoopbackServer(0);
    swift_allocObject();
    *&a5[v30] = sub_100003974(v48, v34);

    v35 = sub_10000A268();
    (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = a5;
    *(v36 + 40) = a4 & 1;
    *(v36 + 48) = sub_1000034D0;
    *(v36 + 56) = v19;
    v37 = a5;

    sub_100002700(0, 0, v12, &unk_10000AC08, v36);

    if ((a4 & 1) == 0)
    {
      a6[2](a6);
    }
  }
}

uint64_t sub_100003498()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000034E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003600;

  return sub_100002144(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100003600()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014B10, "|\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003764()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000379C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003970;

  return sub_100002D5C(a1, v4);
}

uint64_t sub_100003854(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003600;

  return sub_100002D5C(a1, v4);
}

uint64_t sub_10000390C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003974(int a1, uint64_t a2)
{
  v3 = v2;
  v18 = a2;
  v17 = a1;
  v16 = sub_10000A2B8();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A2C8();
  __chkstk_darwin(v7);
  v8 = sub_10000A168();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100009CC8();
  v15[0] = "ontinuation";
  v15[1] = v9;
  sub_10000A158();
  v19 = &_swiftEmptyArrayStorage;
  sub_100009D14(&qword_100014DA0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100001EDC(&qword_100014DA8, &qword_10000AD58);
  sub_100009D5C(&unk_100014DB0, &qword_100014DA8, &qword_10000AD58);
  sub_10000A308();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  *(v2 + 16) = sub_10000A2D8();
  *(v2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = 0;
  *(v2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = 0;
  v10 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
  v11 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error) = 0;
  *(v3 + 24) = v17;
  v12 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_webRoot;
  v13 = sub_100009E48();
  (*(*(v13 - 8) + 32))(v3 + v12, v18, v13);
  return v3;
}

uint64_t sub_100003C94()
{
  v1[2] = v0;
  v2 = sub_100009EA8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_100009F58();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100003DBC, 0, 0);
}

uint64_t sub_100003DBC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v15 = v0[3];
  *(v7 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_transaction) = os_transaction_create();
  swift_unknownObjectRelease();
  sub_10000A0C8();
  v0[10] = sub_10000A0B8();
  (*(v1 + 104))(v2, enum case for NWInterface.InterfaceType.loopback(_:), v4);
  sub_10000A0A8();
  sub_10000A0E8();
  v8 = sub_10000A0D8();
  v0[11] = v8;
  sub_10000A098();
  sub_100001EDC(&qword_100014D90, &qword_10000AD50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000AC40;
  *(v9 + 32) = v8;

  sub_10000A088();

  sub_100009E98();
  (*(v6 + 16))(v5, v3, v15);
  sub_100009F18();
  swift_allocObject();

  v10 = sub_100009EF8();
  v11 = v0[2];
  v12 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener;
  *(v11 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = v10;

  swift_allocObject();
  swift_weakInit();

  sub_100009EC8();

  if (*(v11 + v12))
  {
    swift_allocObject();
    swift_weakInit();

    sub_100009EB8();
  }

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_10000416C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000416C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100004338;
  }

  else
  {
    v2 = sub_100004280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004280()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100004338()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000043E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100005110(a1, v4, v5);
  }

  return result;
}

uint64_t sub_100004448(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000460C(a1);
  }

  return result;
}

uint64_t sub_1000044A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
  swift_beginAccess();
  sub_100009C40(v6, a2 + v9);
  result = swift_endAccess();
  if (*(a2 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
  {

    sub_100009EE8();
  }

  return result;
}

void sub_10000460C(uint64_t a1)
{
  v2 = sub_100001EDC(&unk_100014B88, &unk_10000ACF8);
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v76 = v74 - v3;
  v4 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  v5 = __chkstk_darwin(v4 - 8);
  v78 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v75 = v74 - v8;
  __chkstk_darwin(v7);
  v77 = v74 - v9;
  v10 = sub_10000A0F8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v81 = v74 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v74 - v18;
  __chkstk_darwin(v17);
  v21 = v74 - v20;
  v22 = sub_100009ED8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100009E78();
  sub_100001350(v26, qword_100014DC0);
  (*(v23 + 16))(v25, a1, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 == enum case for NWListener.State.waiting(_:))
  {
    (*(v23 + 96))(v25, v22);
    (*(v11 + 32))(v21, v25, v10);
    v28 = *(v11 + 16);
    v28(v19, v21, v10);
    v29 = sub_100009E58();
    v30 = sub_10000A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v31 = 138412290;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v28(v32, v19, v10);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v11 + 8);
      v34(v19, v10);
      *(v31 + 4) = v33;
      v35 = v82;
      *v82 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "HTTP listener is waiting: %@", v31, 0xCu);
      sub_10000390C(v35, &qword_100014D30, &qword_10000AD10);

      v34(v21, v10);
    }

    else
    {

      v48 = *(v11 + 8);
      v48(v19, v10);
      v48(v21, v10);
    }

    return;
  }

  if (v27 == enum case for NWListener.State.failed(_:))
  {
    (*(v23 + 96))(v25, v22);
    v36 = v81;
    (*(v11 + 32))(v81, v25, v10);
    v37 = *(v11 + 16);
    v37(v14, v36, v10);
    v38 = sub_100009E58();
    v39 = sub_10000A2A8();
    v40 = os_log_type_enabled(v38, v39);
    v74[1] = v11;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v41 = 138412290;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v37(v42, v14, v10);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v44 = v11;
      v45 = v37;
      v46 = *(v44 + 8);
      v46(v14, v10);
      *(v41 + 4) = v43;
      v47 = v80;
      *v80 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "HTTP listener failed: %@", v41, 0xCu);
      sub_10000390C(v47, &qword_100014D30, &qword_10000AD10);
    }

    else
    {

      v52 = v11;
      v45 = v37;
      v46 = *(v52 + 8);
      v46(v14, v10);
    }

    v53 = v82;
    sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v54 = swift_allocError();
    v45(v55, v36, v10);
    *(v53 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error) = v54;

    if (*(v53 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener))
    {

      sub_100009F08();
    }

    v46(v36, v10);
    return;
  }

  if (v27 != enum case for NWListener.State.ready(_:))
  {
    if (v27 != enum case for NWListener.State.cancelled(_:))
    {
      (*(v23 + 8))(v25, v22);
      return;
    }

    v56 = v82;
    v57 = sub_100009E58();
    v58 = sub_10000A2A8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "HTTP listener cancelled.", v59, 2u);
    }

    v60 = v56;
    *(v56 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_listener) = 0;

    v61 = *(v56 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_error);
    v62 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
    v63 = v79;
    v64 = (v79 + 48);
    v65 = v77;
    if (v61)
    {
      swift_beginAccess();
      sub_100009BD8(v56 + v62, v65, &qword_100014D88, &qword_10000AD48);
      v66 = v80;
      if (!(*v64)(v65, 1, v80))
      {
        v69 = v76;
        (*(v63 + 16))(v76, v65, v66);
        swift_errorRetain();
        sub_10000390C(v65, &qword_100014D88, &qword_10000AD48);
        v83 = v61;
        sub_10000A238();
        v60 = v56;
        (*(v63 + 8))(v69, v66);
        goto LABEL_29;
      }

      v67 = v65;
    }

    else
    {
      swift_beginAccess();
      v68 = v75;
      sub_100009BD8(v56 + v62, v75, &qword_100014D88, &qword_10000AD48);
      v66 = v80;
      if (!(*v64)(v68, 1, v80))
      {
        v70 = v68;
        v71 = v76;
        (*(v63 + 16))(v76, v70, v66);
        sub_10000390C(v70, &qword_100014D88, &qword_10000AD48);
        sub_10000A248();
        v60 = v56;
        (*(v63 + 8))(v71, v66);
        goto LABEL_29;
      }

      v67 = v68;
    }

    sub_10000390C(v67, &qword_100014D88, &qword_10000AD48);
LABEL_29:
    v72 = v78;
    (*(v63 + 56))(v78, 1, 1, v66);
    v73 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation;
    swift_beginAccess();
    sub_100009C40(v72, v60 + v73);
    swift_endAccess();
    return;
  }

  v49 = sub_100009E58();
  v50 = sub_10000A2A8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "HTTP listener is now ready!", v51, 2u);
  }
}

uint64_t sub_100005110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100009E78();
  sub_100001350(v4, qword_100014DC0);

  v5 = sub_100009E58();
  v6 = sub_10000A2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v16 = v8;
    sub_10000A338(18);
    v17._countAndFlagsBits = 0x656E6E6F43574E3CLL;
    v17._object = 0xEE005B6E6F697463;
    sub_10000A1E8(v17);
    sub_10000A358();
    v18._countAndFlagsBits = 15965;
    v18._object = 0xE200000000000000;
    sub_10000A1E8(v18);
    v9 = sub_100009078(0, 0xE000000000000000, &v16);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    v10 = sub_10000A018();
    v12 = sub_100009078(v10, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "HTTP listener received new HTTP connection %s: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;

  sub_100008F38(sub_100008F30, v14);
  sub_10000A028();

  return sub_10000A058();
}

void sub_10000538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v4 = sub_10000A0F8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v68 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v69 = &v63[-v9];
  v10 = __chkstk_darwin(v8);
  v12 = &v63[-v11];
  __chkstk_darwin(v10);
  v14 = &v63[-v13];
  v15 = sub_10000A048();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100009E78();
  sub_100001350(v19, qword_100014DC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    (*(v16 + 16))(v18, a1, v15);
    v22 = (*(v16 + 88))(v18, v15);
    if (v22 == enum case for NWConnection.State.waiting(_:))
    {
      (*(v16 + 96))(v18, v15);
      (*(v5 + 32))(v14, v18, v4);
      v69 = *(v5 + 16);
      (v69)(v12, v14, v4);
      v23 = v70;

      v24 = sub_100009E58();
      v25 = sub_10000A2A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v66 = v5;
        v27 = v26;
        v65 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v68 = v28;
        *v27 = 136315394;
        v72 = 0;
        v73 = 0xE000000000000000;
        v74 = v28;
        sub_10000A338(18);
        v75._countAndFlagsBits = 0x656E6E6F43574E3CLL;
        v75._object = 0xEE005B6E6F697463;
        sub_10000A1E8(v75);
        v71 = v23;
        sub_10000A358();
        v76._countAndFlagsBits = 15965;
        v76._object = 0xE200000000000000;
        sub_10000A1E8(v76);
        v29 = sub_100009078(v72, v73, &v74);
        v67 = v21;
        v30 = v29;

        *(v27 + 4) = v30;
        *(v27 + 12) = 2112;
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        (v69)(v31, v12, v4);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v66[1];
        v33(v12, v4);
        *(v27 + 14) = v32;
        v34 = v65;
        *v65 = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: Connection is waiting: %@", v27, 0x16u);
        sub_10000390C(v34, &qword_100014D30, &qword_10000AD10);

        sub_100001FBC(v68);

        v33(v14, v4);
      }

      else
      {

        v49 = *(v5 + 8);
        v49(v12, v4);
        v49(v14, v4);
      }
    }

    else if (v22 == enum case for NWConnection.State.failed(_:))
    {
      v67 = v21;
      (*(v16 + 96))(v18, v15);
      v35 = v69;
      v36 = v18;
      v37 = v4;
      (*(v5 + 32))(v69, v36, v4);
      v38 = *(v5 + 16);
      v39 = v68;
      v38(v68, v35, v37);

      v40 = sub_100009E58();
      v41 = sub_10000A2A8();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v66 = v43;
        *v42 = 136315394;
        v72 = 0;
        v73 = 0xE000000000000000;
        v74 = v43;
        v64 = v41;
        sub_10000A338(18);
        v77._countAndFlagsBits = 0x656E6E6F43574E3CLL;
        v77._object = 0xEE005B6E6F697463;
        sub_10000A1E8(v77);
        v71 = v70;
        sub_10000A358();
        v78._countAndFlagsBits = 15965;
        v78._object = 0xE200000000000000;
        sub_10000A1E8(v78);
        v44 = sub_100009078(v72, v73, &v74);

        *(v42 + 4) = v44;
        *(v42 + 12) = 2112;
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v38(v45, v39, v37);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        v47 = *(v5 + 8);
        v47(v39, v37);
        *(v42 + 14) = v46;
        v48 = v65;
        *v65 = v46;
        _os_log_impl(&_mh_execute_header, v40, v64, "%s: Connection failed: %@", v42, 0x16u);
        sub_10000390C(v48, &qword_100014D30, &qword_10000AD10);

        sub_100001FBC(v66);
      }

      else
      {

        v47 = *(v5 + 8);
        v47(v39, v37);
      }

      sub_10000A068();

      v47(v69, v37);
    }

    else
    {
      v50 = v70;
      if (v22 == enum case for NWConnection.State.ready(_:))
      {

        v51 = sub_100009E58();
        v52 = sub_10000A2A8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 136315138;
          v72 = 0;
          v73 = 0xE000000000000000;
          v74 = v54;
          sub_10000A338(18);
          v79._countAndFlagsBits = 0x656E6E6F43574E3CLL;
          v79._object = 0xEE005B6E6F697463;
          sub_10000A1E8(v79);
          v71 = v50;
          sub_10000A358();
          v80._countAndFlagsBits = 15965;
          v80._object = 0xE200000000000000;
          sub_10000A1E8(v80);
          v55 = sub_100009078(v72, v73, &v74);

          *(v53 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "%s: Connection is ready!", v53, 0xCu);
          sub_100001FBC(v54);
        }

        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = v50;

        sub_10000A008();
      }

      else if (v22 == enum case for NWConnection.State.cancelled(_:))
      {

        v58 = sub_100009E58();
        v59 = sub_10000A2A8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 136315138;
          v72 = 0;
          v73 = 0xE000000000000000;
          v74 = v61;
          sub_10000A338(18);
          v81._countAndFlagsBits = 0x656E6E6F43574E3CLL;
          v81._object = 0xEE005B6E6F697463;
          sub_10000A1E8(v81);
          v71 = v50;
          sub_10000A358();
          v82._countAndFlagsBits = 15965;
          v82._object = 0xE200000000000000;
          sub_10000A1E8(v82);
          v62 = sub_100009078(v72, v73, &v74);

          *(v60 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v58, v59, "%s: Connection cancelled!", v60, 0xCu);
          sub_100001FBC(v61);
        }
      }

      else
      {

        (*(v16 + 8))(v18, v15);
      }
    }
  }
}

uint64_t sub_100005F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v163 = a7;
  v133 = sub_100009DC8();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100009FF8();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001EDC(&qword_100014D38, &qword_10000AD18);
  v12 = __chkstk_darwin(v11 - 8);
  v158 = (v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = v120 - v14;
  v151 = sub_100009F98();
  v134 = *(v151 - 8);
  v16 = __chkstk_darwin(v151);
  v150 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v145 = v120 - v18;
  v19 = sub_100009FB8();
  v149 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v146 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v157 = v120 - v22;
  v23 = sub_10000A128();
  __chkstk_darwin(v23 - 8);
  v142 = v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_100009E88();
  v153 = *(v156 - 8);
  v25 = __chkstk_darwin(v156);
  v144 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v155 = v120 - v27;
  v130 = sub_100009DE8();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v140 = v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v139 = sub_100009E08();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v30 = v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100009E48();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v154 = v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100001EDC(&qword_100014D40, &qword_10000AD20);
  __chkstk_darwin(v32 - 8);
  v34 = v120 - v33;
  v35 = sub_100009F48();
  v161 = *(v35 - 8);
  v36 = *(v161 + 64);
  v37 = __chkstk_darwin(v35);
  v141 = v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v128 = v120 - v39;
  v40 = __chkstk_darwin(v38);
  v143 = v120 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = v120 - v43;
  __chkstk_darwin(v42);
  v159 = v120 - v45;
  v46 = sub_100009E78();
  v162 = sub_100001350(v46, qword_100014DC0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v127 = v19;
  v152 = a3;
  v160 = result;
  v48 = sub_10000A0F8();
  v126 = *(v48 - 8);
  v49 = *(v126 + 6);
  if (v49(a5, 1, v48) != 1)
  {
    sub_100009BD8(a5, v15, &qword_100014D38, &qword_10000AD18);
    v57 = v163;

    v58 = sub_100009E58();
    v59 = sub_10000A298();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v164 = v162;
      *v60 = 136315394;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_10000A338(18);
      v171._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v171._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v171);
      v166 = v57;
      sub_10000A358();
      v172._countAndFlagsBits = 15965;
      v172._object = 0xE200000000000000;
      sub_10000A1E8(v172);
      v61 = sub_100009078(v167, v168, &v164);

      *(v60 + 4) = v61;
      *(v60 + 12) = 2112;
      v62 = v158;
      sub_100009BD8(v15, v158, &qword_100014D38, &qword_10000AD18);
      if (v49(v62, 1, v48) == 1)
      {
        sub_10000390C(v62, &qword_100014D38, &qword_10000AD18);
        sub_10000390C(v15, &qword_100014D38, &qword_10000AD18);
        v63 = 0;
      }

      else
      {
        sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        (*(v126 + 4))(v87, v62, v48);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        sub_10000390C(v15, &qword_100014D38, &qword_10000AD18);
      }

      *(v60 + 14) = v63;
      v88 = v161;
      *v161 = v63;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s: Failed to receive message over connection: %@", v60, 0x16u);
      sub_10000390C(v88, &qword_100014D30, &qword_10000AD10);

      sub_100001FBC(v162);
    }

    else
    {

      sub_10000390C(v15, &qword_100014D38, &qword_10000AD18);
    }

LABEL_20:
    sub_10000A068();
  }

  if (!v152)
  {
    v64 = v163;

    v65 = sub_100009E58();
    v66 = sub_10000A298();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v164 = v68;
      *v67 = 136315138;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_10000A338(18);
      v173._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v173._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v173);
      v166 = v64;
      sub_10000A358();
      v174._countAndFlagsBits = 15965;
      v174._object = 0xE200000000000000;
      sub_10000A1E8(v174);
      v69 = sub_100009078(v167, v168, &v164);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s: Failed to extract content context.", v67, 0xCu);
      sub_100001FBC(v68);
    }

    goto LABEL_20;
  }

  sub_100009FC8();
  v50 = v161;
  if ((*(v161 + 48))(v34, 1, v35) == 1)
  {
    sub_10000390C(v34, &qword_100014D40, &qword_10000AD20);
    v51 = v163;

    v52 = sub_100009E58();
    v53 = sub_10000A298();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v164 = v55;
      *v54 = 136315138;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_10000A338(18);
      v169._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v169._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v169);
      v166 = v51;
      sub_10000A358();
      v170._countAndFlagsBits = 15965;
      v170._object = 0xE200000000000000;
      sub_10000A1E8(v170);
      v56 = sub_100009078(v167, v168, &v164);

      *(v54 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "%s: Failed to extract HTTP request.", v54, 0xCu);
      sub_100001FBC(v55);
    }

    sub_10000A068();
  }

  v70 = v50[4];
  v71 = v159;
  v70(v159, v34, v35);
  v72 = sub_100009F38();
  if (v73)
  {
    v121 = v70;
    v123 = v72;
    v124 = v73;
    v122 = v50 + 4;
    v74 = v50[2];
    v158 = v50 + 2;
    v126 = v74;
    v74(v44, v71, v35);
    v75 = v163;

    v76 = v35;
    v77 = sub_100009E58();
    v78 = sub_10000A2A8();

    v79 = os_log_type_enabled(v77, v78);
    v125 = v76;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v80 = 136315394;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_10000A338(18);
      v175._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v175._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v175);
      v166 = v75;
      sub_10000A358();
      v176._countAndFlagsBits = 15965;
      v176._object = 0xE200000000000000;
      sub_10000A1E8(v176);
      v81 = v50;
      v82 = sub_100009078(v167, v168, &v164);

      *(v80 + 4) = v82;
      *(v80 + 12) = 2080;
      v83 = sub_100009F28();
      v85 = v84;
      v120[0] = v81[1];
      (v120[0])(v44, v125);
      v86 = sub_100009078(v83, v85, &v164);

      *(v80 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s: Received HTTP request: %s", v80, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v120[0] = v50[1];
      (v120[0])(v44, v76);
    }

    v95 = [objc_allocWithZone(NSProcessInfo) init];
    v96 = [v95 processName];

    v97 = sub_10000A1A8();
    v99 = v98;

    v167 = 808333615;
    v168 = 0xE400000000000000;
    v164 = v97;
    v165 = v99;
    v164 = sub_10000A218();
    v165 = v100;
    sub_10000A1D8();
    v120[1] = v165;
    v167 = v123;
    v168 = v124;
    v101 = v138;
    v102 = v139;
    (*(v138 + 104))(v30, enum case for URL.DirectoryHint.inferFromPath(_:), v139);
    sub_10000976C();
    sub_100009E38();
    (*(v101 + 8))(v30, v102);
    sub_100001EDC(&qword_100014D50, &qword_10000AD28);
    inited = swift_initStackObject();
    v139 = xmmword_10000AC50;
    *(inited + 16) = xmmword_10000AC50;
    *(inited + 32) = NSURLFileSizeKey;
    v104 = NSURLFileSizeKey;
    sub_1000097C0(inited);
    swift_setDeallocating();
    sub_1000099B4(inited + 32);
    v105 = v140;
    sub_100009E18();
    v106 = v125;

    result = sub_100009DD8();
    if (v107)
    {
      __break(1u);
    }

    else
    {
      v108 = result;
      (*(v129 + 8))(v105, v130);

      sub_100001EDC(&qword_100014D60, &qword_10000AD30);
      sub_10000A148();
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_10000AC60;
      sub_10000A118();
      sub_10000A138();
      sub_10000A108();
      v167 = v108;
      sub_10000A378();
      sub_10000A138();
      v167 = v109;
      sub_100009D14(&qword_100014D68, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
      v110 = v155;
      v111 = v156;
      sub_10000A288();
      sub_100001EDC(&qword_100014D70, &qword_10000AD38);
      sub_100009D5C(&qword_100014D78, &qword_100014D70, &qword_10000AD38);
      sub_10000A278();
      sub_100009F68();
      v112 = v153;
      (*(v153 + 16))(v144, v110, v111);
      v113 = v157;
      sub_100009FA8();
      sub_100009FE8();
      v114 = v149;
      (*(v149 + 16))(v146, v113, v127);
      sub_100009FD8();
      v115 = v143;
      v126(v143, v159, v106);
      v116 = v161;
      v117 = (*(v161 + 80) + 24) & ~*(v161 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = v163;
      v121(v118 + v117, v115, v106);

      v119 = v154;
      sub_10000A078();

      (*(v114 + 8))(v157, v127);
      (*(v112 + 8))(v155, v156);
      (*(v147 + 8))(v119, v148);
      return (*(v116 + 8))(v159, v106);
    }
  }

  else
  {
    v89 = v163;

    v90 = sub_100009E58();
    v91 = sub_10000A298();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v164 = v93;
      *v92 = 136315138;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_10000A338(18);
      v177._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v177._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v177);
      v166 = v89;
      sub_10000A358();
      v178._countAndFlagsBits = 15965;
      v178._object = 0xE200000000000000;
      sub_10000A1E8(v178);
      v94 = sub_100009078(v167, v168, &v164);

      *(v92 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s: Failed to extract HTTP path.", v92, 0xCu);
      sub_100001FBC(v93);
      v50 = v161;
    }

    sub_10000A068();

    return (v50[1])(v71, v35);
  }

  return result;
}

void sub_1000080F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_100009F48();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100001EDC(&qword_100014D38, &qword_10000AD18);
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  v11 = sub_10000A0F8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v43 = &v36[-v16];
  v17 = sub_100009E78();
  sub_100001350(v17, qword_100014DC0);
  sub_100009BD8(a1, v10, &qword_100014D38, &qword_10000AD18);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000390C(v10, &qword_100014D38, &qword_10000AD18);
  }

  else
  {
    v18 = v43;
    (*(v12 + 32))(v43, v10, v11);
    (*(v41 + 16))(v7, v40, v42);
    v19 = *(v12 + 16);
    v19(v15, v18, v11);

    v20 = sub_100009E58();
    v21 = sub_10000A298();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = v19;
      v23 = v22;
      v39 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315650;
      v45 = 0;
      v46 = 0xE000000000000000;
      v47 = v24;
      v37 = v21;
      sub_10000A338(18);
      v48._countAndFlagsBits = 0x656E6E6F43574E3CLL;
      v48._object = 0xEE005B6E6F697463;
      sub_10000A1E8(v48);
      v44 = a2;
      sub_10000A358();
      v49._countAndFlagsBits = 15965;
      v49._object = 0xE200000000000000;
      sub_10000A1E8(v49);
      v25 = v20;
      v26 = sub_100009078(v45, v46, &v47);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_100009F28();
      v29 = v28;
      (*(v41 + 8))(v7, v42);
      v30 = sub_100009078(v27, v29, &v47);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2112;
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v38(v31, v15, v11);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v12 + 8);
      v33(v15, v11);
      *(v23 + 24) = v32;
      v34 = v39;
      *v39 = v32;
      _os_log_impl(&_mh_execute_header, v25, v37, "%s: [%s] Failed to send HTTP response: %@", v23, 0x20u);
      sub_10000390C(v34, &qword_100014D30, &qword_10000AD10);

      swift_arrayDestroy();

      v33(v43, v11);
    }

    else
    {

      v35 = *(v12 + 8);
      v35(v15, v11);
      (*(v41 + 8))(v7, v42);
      v35(v43, v11);
    }
  }

  sub_10000A068();
}

uint64_t sub_10000867C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v40 = a1;
  v8 = sub_100001EDC(&qword_100014D38, &qword_10000AD18);
  v9 = __chkstk_darwin(v8 - 8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100009F48();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100009E78();
  sub_100001350(v17, qword_100014DC0);
  (*(v14 + 16))(v16, a5, v13);
  v42 = a3;
  sub_100009BD8(a3, v12, &qword_100014D38, &qword_10000AD18);

  v18 = sub_100009E58();
  v19 = sub_10000A2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v39 = v19;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136316162;
    v45 = 0;
    v46 = 0xE000000000000000;
    v47 = v21;
    sub_10000A338(18);
    v48._countAndFlagsBits = 0x656E6E6F43574E3CLL;
    v48._object = 0xEE005B6E6F697463;
    sub_10000A1E8(v48);
    v44 = a4;
    sub_10000A358();
    v49._countAndFlagsBits = 15965;
    v49._object = 0xE200000000000000;
    sub_10000A1E8(v49);
    v22 = sub_100009078(v45, v46, &v47);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    v23 = sub_100009F28();
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v26 = sub_100009078(v23, v25, &v47);

    *(v20 + 14) = v26;
    *(v20 + 22) = 1024;
    v27 = v43;
    *(v20 + 24) = v43 & 1;
    *(v20 + 28) = 2048;
    v28 = v41;
    *(v20 + 30) = v40;
    *(v20 + 38) = 2112;
    sub_100009BD8(v12, v28, &qword_100014D38, &qword_10000AD18);
    v29 = sub_10000A0F8();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      sub_10000390C(v28, &qword_100014D38, &qword_10000AD18);
      sub_10000390C(v12, &qword_100014D38, &qword_10000AD18);
      v31 = 0;
    }

    else
    {
      sub_100009D14(&qword_100014D28, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      (*(v30 + 32))(v32, v28, v29);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      sub_10000390C(v12, &qword_100014D38, &qword_10000AD18);
    }

    *(v20 + 40) = v31;
    v33 = v37;
    *v37 = v31;
    _os_log_impl(&_mh_execute_header, v18, v39, "%s: [%s] File transfer completed: %{BOOL}d, total bytes sent: %ld, error: %@", v20, 0x30u);
    sub_10000390C(v33, &qword_100014D30, &qword_10000AD10);

    swift_arrayDestroy();

    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_10000390C(v12, &qword_100014D38, &qword_10000AD18);
    (*(v14 + 8))(v16, v13);
    if (v43)
    {
      goto LABEL_9;
    }
  }

  v34 = sub_10000A0F8();
  if ((*(*(v34 - 8) + 48))(v42, 1, v34) != 1)
  {
LABEL_9:
    sub_10000A068();
  }

  return 1;
}

uint64_t sub_100008C10()
{
  v1 = OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_webRoot;
  v2 = sub_100009E48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_10000390C(v0 + OBJC_IVAR____TtC24MIBULoopbackServerHelper18MIBULoopbackServer_continuation, &qword_100014D88, &qword_10000AD48);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MIBULoopbackServer(uint64_t a1)
{
  result = qword_100014B70;
  if (!qword_100014B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008D58(uint64_t a1)
{
  sub_100009E48();
  if (v1 <= 0x3F)
  {
    sub_100008E48(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100008E48(uint64_t a1)
{
  if (!qword_100014B80)
  {
    sub_100008EAC(&unk_100014B88, &unk_10000ACF8);
    v1 = sub_10000A2E8();
    if (!v2)
    {
      atomic_store(v1, &qword_100014B80);
    }
  }
}

uint64_t sub_100008EAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008EF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008F38(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008F48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100008F94(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000901C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100009078(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100009078(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009144(v11, 0, 0, 1, a1, a2);
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
    sub_100009630(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001FBC(v11);
  return v7;
}

unint64_t sub_100009144(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009250(a5, a6);
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
    result = sub_10000A348();
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

char *sub_100009250(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000929C(a1, a2);
  sub_1000093CC(&off_100010810);
  return v3;
}

char *sub_10000929C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000094B8(v5, 0);
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

  result = sub_10000A348();
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
        v10 = sub_10000A1F8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000094B8(v10, 0);
        result = sub_10000A328();
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

uint64_t sub_1000093CC(uint64_t result)
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

  result = sub_10000952C(result, v11, 1, v3);
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

void *sub_1000094B8(uint64_t a1, uint64_t a2)
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

  sub_100001EDC(&qword_100014D20, &qword_10000AD08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000952C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EDC(&qword_100014D20, &qword_10000AD08);
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

_BYTE **sub_100009620(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100009630(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100009690(void *__src, uint64_t a2, void *__dst)
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

void sub_1000096B0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_100009724()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000976C()
{
  result = qword_100014D48;
  if (!qword_100014D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014D48);
  }

  return result;
}

void *sub_1000097C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EDC(&qword_100014D80, &qword_10000AD40);
    v3 = sub_10000A318();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_10000A1A8();
      sub_10000A3B8();
      v27 = v7;
      sub_10000A1C8();
      v8 = sub_10000A3C8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_10000A1A8();
        v18 = v17;
        if (v16 == sub_10000A1A8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_10000A388();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000099B4(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009A14(uint64_t a1)
{
  v3 = *(sub_100009F48() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000080F4(a1, v4, v5);
}

uint64_t sub_100009A88()
{
  v1 = sub_100009F48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009B4C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_100009F48() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_10000867C(a1, a2, a3, v8, v9);
}

uint64_t sub_100009BD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100014D88, &qword_10000AD48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009CC8()
{
  result = qword_100014D98;
  if (!qword_100014D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014D98);
  }

  return result;
}

uint64_t sub_100009D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008EAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}