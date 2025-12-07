uint64_t sub_100000EC8()
{
  sub_100002574();
  v0[2] = sub_100002564();
  v2 = sub_100002554();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100000F5C, v2, v1);
}

uint64_t sub_100000F5C()
{
  sub_1000019B4();
  if (qword_100008000 != -1)
  {
    swift_once();
  }

  v1 = sub_100002544();
  *(v0 + 40) = sub_100001858(v1, qword_100008020);
  v2 = sub_100002524();
  v3 = sub_100002594();
  if (sub_10000198C(v3))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v4, v5, "Starting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10000107C;

  return sub_1000019C0();
}

uint64_t sub_10000107C()
{
  sub_1000019B4();
  v2 = *v1;
  sub_1000019A8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100001258;
  }

  else
  {
    v7 = sub_1000011B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000011B0()
{
  sub_1000019B4();

  v0 = sub_100002524();
  v1 = sub_100002594();
  if (sub_10000198C(v1))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v2, v3, "Exiting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  sub_100001960();

  return v4();
}

uint64_t sub_100001258()
{

  swift_errorRetain();
  v0 = sub_100002524();
  v1 = sub_100002584();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "Failed to create listener, error: %@", v2, 0xCu);
    sub_100001890(v3);
  }

  else
  {
  }

  v5 = sub_100002524();
  v6 = sub_100002594();
  if (sub_10000198C(v6))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v7, v8, "Exiting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  sub_100001960();

  return v9();
}

uint64_t sub_1000013F4()
{
  v0[2] = sub_100002574();
  v0[3] = sub_100002564();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100001498;

  return sub_100000EC8();
}

uint64_t sub_100001498()
{
  sub_1000019B4();
  sub_1000019A8();
  *v3 = v2;
  v4 = *v1;
  sub_1000019A8();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_100002554();
  if (v0)
  {
    v9 = sub_100001620;
  }

  else
  {
    v9 = sub_1000015E8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100001620()
{
  v1 = *(v0 + 40);

  return _swift_errorInMain(v1);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1000016E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000176C;

  return sub_1000013F4();
}

uint64_t sub_10000176C()
{
  v1 = *v0;
  sub_1000019A8();
  *v2 = v1;

  sub_100001960();

  return v3();
}

uint64_t sub_100001858(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001890(uint64_t a1)
{
  v2 = sub_1000018F8(&qword_100008008, &unk_100002748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000018F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100001940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100001970()
{
}

BOOL sub_10000198C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000019C0()
{
  v1 = sub_100002474();
  v0[2] = v1;
  sub_100002384(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v3 = sub_100002494();
  v0[5] = v3;
  sub_100002384(v3);
  v0[6] = v4;
  v0[7] = swift_task_alloc();
  v5 = sub_1000024D4();
  v0[8] = v5;
  sub_100002384(v5);
  v0[9] = v6;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100001B1C, 0, 0);
}

uint64_t sub_100001B1C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 104))(v1, enum case for RunnerServiceDispatcherActor.XPCService.Role.server(_:), v3);
  v0[11] = sub_1000024E4();
  (*(v2 + 8))(v1, v3);
  sub_100002514();

  v4 = sub_1000024F4();
  v0[12] = v4;
  sub_1000024C4();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100001C64;
  v6 = v0[7];
  v7 = v0[4];

  return _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKF(v6, &unk_100002768, v4, v7);
}

uint64_t sub_100001C64()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  sub_100002374();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v7 = sub_100001E5C;
  }

  else
  {
    v7 = sub_100001DC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100001DC8()
{

  sub_100002394();

  return v0();
}

uint64_t sub_100001E5C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10000232C(&qword_100008010, &type metadata accessor for XPCSystem.SetupError, &protocol conformance descriptor for XPCSystem.SetupError);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  sub_100002394();

  return v5();
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100001F94, 0, 0);
}

uint64_t sub_100001F94()
{
  sub_100002514();
  sub_100002504();
  sub_10000232C(&qword_100008018, &type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  sub_1000024B4();

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000020B0;
  v2 = *(v0 + 16);

  return XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()(v2);
}

uint64_t sub_1000020B0()
{
  v1 = *v0;
  sub_100002374();
  *v2 = v1;

  sub_100002394();

  return v3();
}

uint64_t sub_100002198(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100002244;

  return sub_100001F70(a1, a2, v2);
}

uint64_t sub_100002244()
{
  v1 = *v0;
  sub_100002374();
  *v2 = v1;

  sub_100002394();

  return v3();
}

uint64_t sub_10000232C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000023A0()
{
  v0 = sub_100002544();
  sub_100002410(v0, qword_100008020);
  sub_100001858(v0, qword_100008020);
  return sub_100002534();
}

uint64_t *sub_100002410(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}