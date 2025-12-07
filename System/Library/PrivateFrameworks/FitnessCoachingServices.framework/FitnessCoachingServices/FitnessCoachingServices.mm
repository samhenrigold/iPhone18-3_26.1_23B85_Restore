int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000012CC(&qword_100008010, &qword_100002628);
  v4 = __chkstk_darwin();
  v6 = &v12 - v5;
  sub_100001314(v4, qword_100008028);
  v7 = sub_100001378(v3, qword_100008028);
  v8 = type metadata accessor for Daemon();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_autoreleasePoolPush();
  sub_1000013B0();
  objc_autoreleasePoolPop(v9);
  swift_beginAccess();
  sub_100001F90(v7, v6, &qword_100008010, &qword_100002628);
  v10 = [objc_opt_self() mainRunLoop];
  [v10 run];

  sub_100001FF8(v6, &qword_100008010, &qword_100002628);
  return 0;
}

uint64_t sub_1000012CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001314(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001378(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000013B0()
{
  sub_1000012CC(&qword_100008018, &qword_100002630);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for Daemon();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000012CC(&qword_100008010, &qword_100002628);
  v6 = __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = sub_100001378(v6, &unk_100008028);
  Daemon.init()();
  (*(v3 + 56))(v8, 0, 1, v2);
  swift_beginAccess();
  sub_10000165C(v8, v9);
  swift_endAccess();
  result = (*(v3 + 48))(v9, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v9, v2);
    Daemon.bundleIdentifier.getter();
    (*(v3 + 8))(v5, v2);
    static Sandbox.bootstrap(_:)();

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v1, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    sub_100001C7C(0, 0, v1, &unk_100002640, v12);
  }

  return result;
}

uint64_t sub_10000165C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000012CC(&qword_100008010, &qword_100002628);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000016CC(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Daemon();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1000012CC(&qword_100008010, &qword_100002628);
  v1[9] = sub_100001378(v3, qword_100008028);

  return _swift_task_switch(sub_1000017B0, 0, 0);
}

uint64_t sub_1000017B0()
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
    v7[1] = sub_1000018EC;

    return Daemon.activate()();
  }
}

uint64_t sub_1000018EC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100001A44, 0, 0);
}

uint64_t sub_100001A44()
{
  **(v0 + 40) = *(v0 + 88) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001AB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001AF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001B88;

  return sub_1000016CC(a1);
}

uint64_t sub_100001B88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000012CC(&qword_100008018, &qword_100002630);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100001F90(a3, v24 - v9, &qword_100008018, &qword_100002630);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100001FF8(v10, &qword_100008018, &qword_100002630);
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

      sub_1000012CC(&qword_100008020, &qword_100002658);
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

      sub_100001FF8(a3, &qword_100008018, &qword_100002630);

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

  sub_100001FF8(a3, &qword_100008018, &qword_100002630);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_1000012CC(&qword_100008020, &qword_100002658);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100001F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000012CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100001FF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000012CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002058(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10000214C;

  return v5(v2 + 32);
}

uint64_t sub_10000214C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100002260()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000240C;

  return sub_100002058(a1, v4);
}

uint64_t sub_100002350(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001B88;

  return sub_100002058(a1, v4);
}