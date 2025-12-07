int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001150(&qword_100008010, &qword_1000024B8);
  v4 = __chkstk_darwin();
  v6 = &v12[-v5];
  sub_100001198(v4, qword_100008028);
  v7 = sub_1000011FC(v3, qword_100008028);
  v8 = type metadata accessor for Daemon();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_autoreleasePoolPush();
  sub_100001234();
  objc_autoreleasePoolPop(v9);
  swift_beginAccess();
  sub_100001E1C(v7, v6, &qword_100008010, &qword_1000024B8);
  v10 = [objc_opt_self() mainRunLoop];
  [v10 run];

  sub_100001E84(v6, &qword_100008010, &qword_1000024B8);
  return 0;
}

uint64_t sub_100001150(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001198(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000011FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001234()
{
  sub_100001150(&qword_100008018, &qword_1000024C0);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for Daemon();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001150(&qword_100008010, &qword_1000024B8);
  v6 = __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = sub_1000011FC(v6, &unk_100008028);
  Daemon.init()();
  (*(v3 + 56))(v8, 0, 1, v2);
  swift_beginAccess();
  sub_1000014D4(v8, v9);
  swift_endAccess();
  if (!(*(v3 + 48))(v9, 1, v2))
  {
    (*(v3 + 16))(v5, v9, v2);
    Daemon.bootstrapSandbox()();
    (*(v3 + 8))(v5, v2);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_100001B08(0, 0, v1, &unk_1000024D0, v11);
}

uint64_t sub_1000014D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001150(&qword_100008010, &qword_1000024B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001544(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Daemon();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100001150(&qword_100008010, &qword_1000024B8);
  v1[9] = sub_1000011FC(v3, qword_100008028);

  return _swift_task_switch(sub_100001628, 0, 0);
}

uint64_t sub_100001628()
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
    v7[1] = sub_100001764;

    return Daemon.activate()();
  }
}

uint64_t sub_100001764()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000018BC, 0, 0);
}

uint64_t sub_1000018BC()
{
  **(v0 + 40) = *(v0 + 88) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001930()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001968(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001A14;

  return sub_100001544(a1);
}

uint64_t sub_100001A14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001150(&qword_100008018, &qword_1000024C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100001E1C(a3, v24 - v9, &qword_100008018, &qword_1000024C0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100001E84(v10, &qword_100008018, &qword_1000024C0);
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
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100001150(&qword_100008020, &qword_1000024E8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100001E84(a3, &qword_100008018, &qword_1000024C0);

      return v21;
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

  sub_100001E84(a3, &qword_100008018, &qword_1000024C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100001150(&qword_100008020, &qword_1000024E8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100001E1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001150(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100001E84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001150(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100001EE4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100001FD8;

  return v5(v2 + 32);
}

uint64_t sub_100001FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000020EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002124(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002298;

  return sub_100001EE4(a1, v4);
}

uint64_t sub_1000021DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001A14;

  return sub_100001EE4(a1, v4);
}