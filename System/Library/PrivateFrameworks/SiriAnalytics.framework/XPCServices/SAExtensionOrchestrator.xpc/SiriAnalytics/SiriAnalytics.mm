int main(int argc, const char **argv, const char **envp)
{
  qword_1000086D8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000086E0 = [objc_opt_self() serviceListener];
  [qword_1000086E0 setDelegate:qword_1000086D8];
  [qword_1000086E0 resume];
  return 0;
}

void sub_1000012C0(uint64_t a1)
{
  if (qword_100008590 != -1)
  {
    swift_once();
  }

  v1 = sub_100002DB8();
  sub_10000185C(v1, qword_1000086E8);
  swift_errorRetain();
  oslog = sub_100002D98();
  v2 = sub_100002E28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error getting remoteObjectProxy: %@", v3, 0xCu);
    sub_100001894(v4);
  }
}

void sub_10000140C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100001514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001548(void *a1)
{
  v2 = sub_100002D68();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriAnalytics29ExtensionOrchestratorProtocol_];
  [a1 setExportedInterface:v7];

  v8 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriAnalytics33ExtensionOrchestratorHostProtocol_];
  [a1 setRemoteObjectInterface:v8];

  aBlock[4] = sub_1000012C0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000140C;
  aBlock[3] = &unk_1000042C8;
  v9 = _Block_copy(aBlock);
  v10 = [a1 remoteObjectProxyWithErrorHandler:v9];
  _Block_release(v9);
  sub_100002E38();
  swift_unknownObjectRelease();
  sub_100001814(&qword_100008620, &qword_100003300);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = result;
    v13 = type metadata accessor for ExtensionOrchestrator(0);
    v14 = objc_allocWithZone(v13);
    swift_unknownObjectRetain();
    sub_100002D48();
    (*(v3 + 32))(v14 + OBJC_IVAR____TtC23SAExtensionOrchestrator21ExtensionOrchestrator_orchestrator, v5, v2);
    v17.receiver = v14;
    v17.super_class = v13;
    v15 = objc_msgSendSuper2(&v17, "init");
    [a1 setExportedObject:v15];
    [a1 resume];

    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

uint64_t sub_1000017FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000185C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001894(uint64_t a1)
{
  v2 = sub_100001814(&qword_100008628, qword_100003308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000018FC()
{
  v0 = sub_100002DB8();
  sub_100002ABC(v0, qword_1000086E8);
  sub_10000185C(v0, qword_1000086E8);
  return sub_100002DA8();
}

uint64_t sub_100001978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100001814(&qword_1000086C8, &qword_100003338);
  __chkstk_darwin();
  v7 = &v16 - v6;
  if (qword_100008590 != -1)
  {
    swift_once();
  }

  v8 = sub_100002DB8();
  sub_10000185C(v8, qword_1000086E8);
  v9 = sub_100002D98();
  v10 = sub_100002E18();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Ingest called", v11, 2u);
  }

  v12 = sub_100002E08();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v3;

  sub_100001E2C(0, 0, v7, &unk_100003348, v13);
}

uint64_t sub_100001B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100001BFC;

  return Orchestrator.ingest()();
}

uint64_t sub_100001BFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100001D9C;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100001D24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100001D24()
{
  (*(v0 + 16))(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001D9C()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001814(&qword_1000086C8, &qword_100003338);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000264C(a3, v24 - v9);
  v11 = sub_100002E08();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000026BC(v10);
  }

  else
  {
    sub_100002DF8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100002DE8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100002DD8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000026BC(a3);

      return v22;
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

  sub_1000026BC(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_100002178(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100002D78();
    isa = sub_100002DC8().super.isa;
  }

  if (a2)
  {
    v6 = sub_100002D38();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

id sub_1000022C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionOrchestrator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ExtensionOrchestrator(uint64_t a1)
{
  result = qword_1000086B8;
  if (!qword_1000086B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000023B8(uint64_t a1)
{
  result = sub_100002D68();
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

uint64_t sub_100002448()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002558;

  return sub_100001B58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100002558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000264C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001814(&qword_1000086C8, &qword_100003338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000026BC(uint64_t a1)
{
  v2 = sub_100001814(&qword_1000086C8, &qword_100003338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002724(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000281C;

  return v6(a1);
}

uint64_t sub_10000281C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D34;

  return sub_100002724(a1, v4);
}

uint64_t sub_1000029CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002558;

  return sub_100002724(a1, v4);
}

uint64_t *sub_100002ABC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002B20(uint64_t a1)
{
  if (qword_100008590 != -1)
  {
    swift_once();
  }

  v2 = sub_100002DB8();
  sub_10000185C(v2, qword_1000086E8);
  v3 = sub_100002D98();
  v4 = sub_100002E18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Publish called", v5, 2u);
  }

  v6 = sub_100002D88();
  sub_100002C98();
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for OrchestratedExtensionError.notImplemented(_:), v6);
  v8 = sub_100002D38();
  (*(a1 + 16))(a1, v8);
}

unint64_t sub_100002C98()
{
  result = qword_1000086D0;
  if (!qword_1000086D0)
  {
    sub_100002D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000086D0);
  }

  return result;
}

uint64_t sub_100002CF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}