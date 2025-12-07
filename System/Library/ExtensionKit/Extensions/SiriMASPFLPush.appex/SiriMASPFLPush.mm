uint64_t sub_1000010F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100001DC0;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_1000011A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001250;

  return sub_1000016E0(a1);
}

uint64_t sub_100001250(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100001430;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001430()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001524(uint64_t a1)
{
  v2 = sub_10000168C();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000015D0();
  sub_100001DE4();
  return 0;
}

unint64_t sub_1000015D0()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_10000168C()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_1000016E0(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_100001E34();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_100001E64();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000017FC, 0, 0);
}

uint64_t sub_1000017FC()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  sub_100001E24();
  sub_100001C38(&qword_100008010, &qword_100002088);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100001FB0;
  sub_100001E54();
  sub_100001E44();
  v0[7] = v4;
  sub_100001D2C(&qword_100008018, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_100001C38(&qword_100008020, &qword_100002090);
  sub_100001C80();
  sub_100001E94();
  (*(v2 + 104))(v1, enum case for PFLTaskSource.CKProd(_:), v3);
  sub_100001E84();
  swift_allocObject();
  v0[15] = sub_100001E74();
  v5 = sub_100001DD4();
  swift_allocObject();
  v6 = sub_100001DC4();
  v0[16] = v6;
  v0[5] = v5;
  v7 = sub_100001D2C(&unk_100008030, &type metadata accessor for SiriMASPFLPluginRunner, &protocol conformance descriptor for SiriMASPFLPluginRunner);
  v0[2] = v6;
  v0[6] = v7;
  v11 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_100001AA4;
  v9 = v0[8];

  return (v11)(v9, v0 + 2);
}

uint64_t sub_100001AA4(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 144) = a1;

  sub_100001D74((v2 + 16));

  return _swift_task_switch(sub_100001BAC, 0, 0);
}

uint64_t sub_100001BAC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_100001C38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001C80()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_100001CE4(&qword_100008020, &qword_100002090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100001CE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001D74(void *a1)
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