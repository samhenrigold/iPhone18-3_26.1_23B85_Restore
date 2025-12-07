int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v4 = __chkstk_darwin(v3);
  v6 = &v12 - v5;
  sub_1000011EC(v4, qword_100008028);
  v7 = sub_100001250(v3, qword_100008028);
  v8 = type metadata accessor for Daemon();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_autoreleasePoolPush();
  sub_100001288();
  objc_autoreleasePoolPop(v9);
  swift_beginAccess();
  sub_100002030(v7, v6, &qword_100008010, &qword_100002768);
  v10 = [objc_opt_self() mainRunLoop];
  [v10 run];

  sub_100002098(v6, &qword_100008010, &qword_100002768);
  return 0;
}

uint64_t sub_1000011A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000011EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001250(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001288()
{
  v0 = sub_1000011A4(&qword_100008018, &qword_100002770);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Daemon();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v15 = __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = sub_100001250(v15, &unk_100008028);
  Daemon.init()();
  (*(v11 + 56))(v17, 0, 1, v10);
  swift_beginAccess();
  sub_1000016FC(v17, v18);
  swift_endAccess();
  if ((*(v11 + 48))(v18, 1, v10))
  {
    static Log.default.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not determine bundle identifier, exiting", v24, 2u);
    }

    (*(v4 + 8))(v9, v3);
LABEL_10:
    exit(1);
  }

  (*(v11 + 16))(v13, v18, v10);
  Daemon.bundleIdentifier.getter();
  (*(v11 + 8))(v13, v10);
  if ((static Sandbox.bootstrap(_:)() & 1) == 0)
  {
    static Log.default.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Sandbox bootstrapped failed, exiting", v27, 2u);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_10;
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_100001B58(0, 0, v2, &unk_100002780, v20);
}

uint64_t sub_1000016FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000011A4(&qword_100008010, &qword_100002768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000176C(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Daemon();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1000011A4(&qword_100008010, &qword_100002768);
  v1[9] = sub_100001250(v3, qword_100008028);

  return _swift_task_switch(sub_100001850, 0, 0);
}

uint64_t sub_100001850()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  swift_beginAccess();
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 88) = v4;
  if (v4)
  {
    **(v0 + 40) = 1;

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_10000198C;

    return Daemon.activate()();
  }
}

uint64_t sub_10000198C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100001AE4, 0, 0);
}

uint64_t sub_100001AE4()
{
  **(v0 + 40) = *(v0 + 88) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000011A4(&qword_100008018, &qword_100002770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100002030(a3, v25 - v10, &qword_100008018, &qword_100002770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002098(v11, &qword_100008018, &qword_100002770);
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

      sub_1000011A4(&qword_100008020, &qword_100002798);
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

      sub_100002098(a3, &qword_100008018, &qword_100002770);

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

  sub_100002098(a3, &qword_100008018, &qword_100002770);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000011A4(&qword_100008020, &qword_100002798);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100001E6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001F3C;

  return sub_10000176C(a1);
}

uint64_t sub_100001F3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000011A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100002098(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000011A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000020F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000021EC;

  return v5(v2 + 32);
}

uint64_t sub_1000021EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100002300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002338(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000024AC;

  return sub_1000020F8(a1, v4);
}

uint64_t sub_1000023F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001F3C;

  return sub_1000020F8(a1, v4);
}