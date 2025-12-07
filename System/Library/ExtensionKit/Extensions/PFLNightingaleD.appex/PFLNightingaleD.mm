uint64_t sub_100001270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000020BC;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000013C8;

  return sub_100001858(a1);
}

uint64_t sub_1000013C8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000014C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000015A8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000015A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000169C(uint64_t a1)
{
  v2 = sub_100001804();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001748();
  sub_1000020C0();
  return 0;
}

unint64_t sub_100001748()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

unint64_t sub_100001804()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_100001858(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1000020F0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_100002150();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_1000021A0();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000019D0, 0, 0);
}

uint64_t sub_1000019D0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = v0[15];
    v4 = v0[14];
    v16 = v0[13];
    v5 = v0[11];
    v17 = v0[12];
    v18 = v0[10];
    sub_1000021D0();

    v0[7] = &type metadata for PFLNightingaleD;
    sub_100001F34(&qword_100008020, &qword_1000023E0);
    sub_1000021E0();
    sub_100001F34(&qword_100008028, &qword_1000023E8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100002320;
    sub_100002170();
    sub_100002180();
    sub_100002190();
    sub_100002160();
    v0[8] = v6;
    sub_100002028(&qword_100008030, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
    sub_100001F34(&qword_100008038, &qword_1000023F0);
    sub_100001F7C();
    sub_1000021F0();
    (*(v4 + 104))(v3, enum case for PFLTaskSource.CKProd(_:), v16);
    sub_1000021C0();
    swift_allocObject();
    v0[19] = sub_1000021B0();
    v7 = sub_1000020E0();
    (*(v5 + 104))(v17, enum case for HIDPFLUseCase.NightingaleD_CK(_:), v18);
    v8 = sub_1000020D0();
    v0[20] = v8;
    v0[5] = v7;
    v9 = sub_100002028(&qword_100008048, &type metadata accessor for NightingaleDPFLRunner, &protocol conformance descriptor for NightingaleDPFLRunner);
    v0[2] = v8;
    v0[6] = v9;
    v19 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_100001D94;
    v11 = v0[9];

    return (v19)(v11, v0 + 2);
  }

  else
  {
    v13 = objc_allocWithZone(sub_100002110());
    v14 = sub_100002100();

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_100001D94(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 176) = a1;

  sub_100002070((v2 + 16));

  return _swift_task_switch(sub_100001E9C, 0, 0);
}

uint64_t sub_100001E9C()
{

  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100001F34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001F7C()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    sub_100001FE0(&qword_100008038, &qword_1000023F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

uint64_t sub_100001FE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002070(void *a1)
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