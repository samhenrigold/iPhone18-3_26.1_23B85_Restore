uint64_t sub_100001150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100001EB8;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000012A8;

  return sub_100001738(a1);
}

uint64_t sub_1000012A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000013A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100001488;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001488()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000157C(uint64_t a1)
{
  v2 = sub_1000016E4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001628();
  sub_100001EBC();
  return 0;
}

unint64_t sub_100001628()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_1000016E4()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001738(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_100001EEC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_100001F3C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_100001F8C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000018B0, 0, 0);
}

uint64_t sub_1000018B0()
{
  v1 = v0[14];
  v2 = v0[13];
  v11 = v0[12];
  v3 = v0[10];
  v12 = v0[9];
  v13 = v0[11];
  sub_100001F2C();
  sub_100001D30(&qword_100008010, &qword_100002180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100002090;
  sub_100001F5C();
  sub_100001F6C();
  sub_100001F7C();
  sub_100001F4C();
  v0[7] = v4;
  sub_100001E24(&qword_100008018, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_100001D30(&qword_100008020, &qword_100002188);
  sub_100001D78();
  sub_100001FBC();
  (*(v2 + 104))(v1, enum case for PFLTaskSource.CKProd(_:), v11);
  sub_100001FAC();
  swift_allocObject();
  v0[18] = sub_100001F9C();
  v5 = sub_100001EDC();
  (*(v3 + 104))(v13, enum case for HIDPFLUseCase.HR_Period_Prediction_Push(_:), v12);
  v6 = sub_100001ECC();
  v0[19] = v6;
  v0[5] = v5;
  v7 = sub_100001E24(&unk_100008030, &type metadata accessor for NightingalePFLRunner, &protocol conformance descriptor for NightingalePFLRunner);
  v0[2] = v6;
  v0[6] = v7;
  v14 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100001B90;
  v9 = v0[8];

  return (v14)(v9, v0 + 2);
}

uint64_t sub_100001B90(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 168) = a1;

  sub_100001E6C((v2 + 16));

  return _swift_task_switch(sub_100001C98, 0, 0);
}

uint64_t sub_100001C98()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_100001D30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001D78()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_100001DDC(&qword_100008020, &qword_100002188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100001DDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001E6C(void *a1)
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