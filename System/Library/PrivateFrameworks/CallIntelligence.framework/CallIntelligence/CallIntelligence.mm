int main(int argc, const char **argv, const char **envp)
{
  sub_100001204(&qword_100008010, &qword_100002050);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_10000170C(0, 0, v4, &unk_100002060, v7);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 run];

  return 0;
}

uint64_t sub_100001204(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000124C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000012E0, v2, v1);
}

uint64_t sub_1000012E0()
{
  type metadata accessor for Daemon();
  swift_allocObject();
  *(v0 + 40) = Daemon.init()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100001394;

  return Daemon.start()();
}

uint64_t sub_100001394()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_100001524;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1000014B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000014B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001554()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000158C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001618;

  return sub_10000124C();
}

uint64_t sub_100001618()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001204(&qword_100008010, &qword_100002050);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000019CC(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100001A3C(v10);
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

      sub_100001A3C(a3);

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

  sub_100001A3C(a3);
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

uint64_t sub_1000019CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001204(&qword_100008010, &qword_100002050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001A3C(uint64_t a1)
{
  v2 = sub_100001204(&qword_100008010, &qword_100002050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001AA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100001B9C;

  return v6(a1);
}

uint64_t sub_100001B9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001CCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001E40;

  return sub_100001AA4(a1, v4);
}

uint64_t sub_100001D84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001618;

  return sub_100001AA4(a1, v4);
}