int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100000D1C()
{
  sub_100001194();
  *(v0 + 16) = sub_100001184();
  nullsub_1();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100000DC4;

  return static SNDaemon.soundanalysisdLaunch()();
}

uint64_t sub_100000DC4()
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_100001174();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v7 = sub_100000F88;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_100001174();
      v5 = v6;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v7 = sub_100000F50;
  }

  return _swift_task_switch(v7, v3, v5);
}

uint64_t sub_100000F88()
{
  v1 = *(v0 + 32);

  return _swift_errorInMain(v1);
}

uint64_t sub_100000FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000106C;

  return sub_100000D1C();
}

uint64_t sub_10000106C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}