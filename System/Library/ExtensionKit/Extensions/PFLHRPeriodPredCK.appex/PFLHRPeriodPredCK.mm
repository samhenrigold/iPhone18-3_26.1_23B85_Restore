uint64_t sub_100001150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002528;

  return sub_100001728();
}

uint64_t sub_1000011F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001298;

  return sub_100001D34(a1);
}

uint64_t sub_100001298(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100001394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100001478;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001478()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000156C(uint64_t a1)
{
  v2 = sub_1000016D4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001618();
  sub_1000025CC();
  return 0;
}

unint64_t sub_100001618()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_1000016D4()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001728()
{
  sub_100002338(&qword_100008038, &qword_1000028B0);
  v0[2] = swift_task_alloc();
  v1 = sub_10000256C();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  sub_100002338(&qword_100008040, &qword_1000028B8);
  v0[7] = swift_task_alloc();
  sub_100002338(&qword_100008048, &qword_1000028C0);
  v0[8] = swift_task_alloc();
  v2 = sub_10000253C();
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v3 = sub_10000257C();
  v0[12] = v3;
  v0[13] = *(v3 - 8);
  v0[14] = swift_task_alloc();
  v4 = sub_1000025AC();
  v0[15] = v4;
  v0[16] = *(v4 - 8);
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000019AC, 0, 0);
}

uint64_t sub_1000019AC()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  v27 = v0[2];
  v28 = v0[3];
  (*(v5 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v4);
  sub_10000258C();
  (*(v5 + 8))(v3, v4);
  (*(v1 + 56))(v6, 1, 1, v2);
  v9 = sub_1000025BC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_10000252C();
  sub_10000255C();
  sub_10000259C();
  if ((*(v8 + 48))(v27, 1, v28) == 1)
  {
    sub_1000024C0(v0[2]);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    v10 = sub_10000254C();
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    if (v10)
    {
      v14 = objc_allocWithZone(sub_10000261C());
      v29 = sub_10000260C();
      v15 = *(v12 + 8);
      v15(v11, v13);
      v16 = v15;
      goto LABEL_7;
    }

    (*(v12 + 8))(v0[5], v0[3]);
  }

  v17 = v0[4];
  v18 = objc_allocWithZone(sub_10000261C());
  v29 = sub_10000260C();
  v16 = *(v17 + 8);
LABEL_7:
  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v16(v0[6], v0[3]);
  (*(v22 + 8))(v23, v24);
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25(v29);
}

uint64_t sub_100001D34(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_1000025FC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10000264C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_10000269C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100001EAC, 0, 0);
}

uint64_t sub_100001EAC()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[11];
  sub_100002338(&qword_100008010, &qword_100002898);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000027B0;
  sub_10000266C();
  sub_10000267C();
  sub_10000268C();
  sub_10000265C();
  v0[7] = v4;
  sub_10000242C(&qword_100008018, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_100002338(&qword_100008020, &qword_1000028A0);
  sub_100002380();
  sub_1000026CC();
  (*(v2 + 104))(v1, enum case for PFLTaskSource.CKProd(_:), v11);
  sub_1000026BC();
  swift_allocObject();
  v0[18] = sub_1000026AC();
  v5 = sub_1000025EC();
  (*(v3 + 104))(v13, enum case for HIDPFLUseCase.HR_Period_Prediction_CK(_:), v12);
  v6 = sub_1000025DC();
  v0[19] = v6;
  v0[5] = v5;
  v7 = sub_10000242C(&qword_100008030, &type metadata accessor for NightingalePFLRunner, &protocol conformance descriptor for NightingalePFLRunner);
  v0[2] = v6;
  v0[6] = v7;
  v14 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100002198;
  v9 = v0[8];

  return (v14)(v9, v0 + 2);
}

uint64_t sub_100002198(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 168) = a1;

  sub_100002474((v2 + 16));

  return _swift_task_switch(sub_1000022A0, 0, 0);
}

uint64_t sub_1000022A0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_100002338(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002380()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000023E4(&qword_100008020, &qword_1000028A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000023E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000242C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002474(void *a1)
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

uint64_t sub_1000024C0(uint64_t a1)
{
  v2 = sub_100002338(&qword_100008038, &qword_1000028B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}