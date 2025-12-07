uint64_t sub_268E9DE08(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268E9E070;
  }

  else
  {

    v3 = sub_268E9DF9C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E9DF9C()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268E9E320(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268E9E070()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268E9E320(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E9E160(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(a1 + 8);

  *(a2 + 8) = v5;
  v6 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  v7 = *(v6 + 28);
  v9 = sub_268F9A9C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v7), (a1 + v7), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + *(v6 + 32)) = *(a1 + *(v6 + 32));
  return result;
}

uint64_t sub_268E9E320(uint64_t a1)
{

  v2 = *(type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E9E3F8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 194) = a2 & 1;
  *(v5 + 193) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 192) = a1 & 1;
  *(v5 + 200) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_268E9E63C, 0);
}

uint64_t sub_268E9E63C()
{
  v19 = MEMORY[0x277D55BE8];
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v11 = *(v0 + 128);
  v12 = *(v0 + 120);
  v13 = *(v0 + 112);
  v14 = *(v0 + 104);
  v15 = *(v0 + 96);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);
  v16 = *(v0 + 48);
  v10 = *(v0 + 194);
  v9 = *(v0 + 193);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v11, 1);
  (v5)(v12, 1, 1, v4);
  (v5)(v13, 1, 1, v4);
  (v5)(v14, 1, 1, v4);
  (v5)(v15, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  sub_268E9AFB0(0, v11, 0, 2, v12, v13, v14, v15, v17, v6, v7, v8, v9, v10, 2);
  v16(v17);
  v24 = sub_268F9AEF4();
  v21 = v1;
  *(v0 + 152) = v1;
  sub_268E9EDDC(v17, v18);
  v22 = sub_268E9A1EC();
  *(v0 + 160) = v22;
  sub_268E9F6F0(v18);
  v23 = (v19 + *v19);
  v2 = swift_task_alloc();
  *(v20 + 168) = v2;
  *v2 = *(v20 + 32);
  v2[1] = sub_268E9E99C;

  return v23(v24, v21, v22);
}

uint64_t sub_268E9E99C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_268E9EC78;
  }

  else
  {

    v3 = sub_268E9EB30;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E9EB30()
{
  v1 = v0[18];
  v0[4] = v0;
  sub_268E9F6F0(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[22];

  return v2(v3);
}

uint64_t sub_268E9EC78()
{
  v3 = *(v0 + 144);
  *(v0 + 32) = v0;

  sub_268E9F6F0(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268E9EDDC(void *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  v30 = SettingIntentDescribeBinarySettingStateParameters[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = SettingIntentDescribeBinarySettingStateParameters[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  a2[SettingIntentDescribeBinarySettingStateParameters[7]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[7]);
  __dst = &a2[SettingIntentDescribeBinarySettingStateParameters[8]];
  __src = a1 + SettingIntentDescribeBinarySettingStateParameters[8];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[SettingIntentDescribeBinarySettingStateParameters[9]];
  v22 = a1 + SettingIntentDescribeBinarySettingStateParameters[9];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[SettingIntentDescribeBinarySettingStateParameters[10]];
  v20 = a1 + SettingIntentDescribeBinarySettingStateParameters[10];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[SettingIntentDescribeBinarySettingStateParameters[11]];
  v18 = a1 + SettingIntentDescribeBinarySettingStateParameters[11];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[SettingIntentDescribeBinarySettingStateParameters[12]];
  v16 = a1 + SettingIntentDescribeBinarySettingStateParameters[12];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[SettingIntentDescribeBinarySettingStateParameters[13]];
  v14 = a1 + SettingIntentDescribeBinarySettingStateParameters[13];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[SettingIntentDescribeBinarySettingStateParameters[14]];
  v12 = a1 + SettingIntentDescribeBinarySettingStateParameters[14];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  result = a2;
  a2[SettingIntentDescribeBinarySettingStateParameters[15]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[15]);
  a2[SettingIntentDescribeBinarySettingStateParameters[16]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[16]);
  a2[SettingIntentDescribeBinarySettingStateParameters[17]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[17]);
  return result;
}

uint64_t sub_268E9F6F0(uint64_t a1)
{

  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  v10 = SettingIntentDescribeBinarySettingStateParameters[5];
  v12 = sub_268F9A9C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!(v14)(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  v8 = a1 + SettingIntentDescribeBinarySettingStateParameters[8];
  if (!v14())
  {
    (*(v13 + 8))(v8, v12);
  }

  v7 = a1 + SettingIntentDescribeBinarySettingStateParameters[9];
  if (!v14())
  {
    (*(v13 + 8))(v7, v12);
  }

  v6 = a1 + SettingIntentDescribeBinarySettingStateParameters[10];
  if (!v14())
  {
    (*(v13 + 8))(v6, v12);
  }

  v5 = a1 + SettingIntentDescribeBinarySettingStateParameters[11];
  if (!v14())
  {
    (*(v13 + 8))(v5, v12);
  }

  v4 = a1 + SettingIntentDescribeBinarySettingStateParameters[12];
  if (!v14())
  {
    (*(v13 + 8))(v4, v12);
  }

  v3 = a1 + SettingIntentDescribeBinarySettingStateParameters[13];
  if (!v14())
  {
    (*(v13 + 8))(v3, v12);
  }

  v2 = a1 + SettingIntentDescribeBinarySettingStateParameters[14];
  if (!v14())
  {
    (*(v13 + 8))(v2, v12);
  }

  return a1;
}

uint64_t sub_268E9FADC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E9FBE8, 0);
}

uint64_t sub_268E9FBE8()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E9B680(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268EA0078(v6, v7);
  v11 = sub_268E9B2D8();
  v0[12] = v11;
  sub_268EA0238(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E9FD48;

  return v12(v13, v10, v11);
}

uint64_t sub_268E9FD48(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E9FF9C;
  }

  else
  {

    v3 = sub_268E9FEDC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E9FEDC()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268EA0238(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E9FF9C()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268EA0238(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268EA0078(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v7 = *(a1 + 2);

  *(a2 + 2) = v7;
  v8 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0) + 28);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268EA0238(uint64_t a1)
{

  v2 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268EA0328(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 48) = a4;
  *(v6 + 139) = a3 & 1;
  *(v6 + 138) = a2 & 1;
  *(v6 + 137) = a1 & 1;
  *(v6 + 32) = v6;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 136) = a1 & 1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 152) = a3 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 40) = v5;

  return MEMORY[0x2822009F8](sub_268EA050C, 0);
}

uint64_t sub_268EA050C()
{
  v12 = MEMORY[0x277D55BE8];
  v10 = *(v0 + 88);
  v11 = *(v0 + 80);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v7 = *(v0 + 139);
  v6 = *(v0 + 138);
  v5 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v8, 1);
  sub_268E9BD7C(0, 0, v5 & 1, v6 & 1, 0, v7 & 1, v8, v10);
  v9(v10);
  v17 = sub_268F9AEF4();
  v14 = v2;
  *(v0 + 96) = v2;
  sub_268EA0A74(v10, v11);
  v15 = sub_268E9B914();
  *(v0 + 104) = v15;
  sub_268EA0C50(v11);
  v16 = (v12 + *v12);
  v3 = swift_task_alloc();
  *(v13 + 112) = v3;
  *v3 = *(v13 + 32);
  v3[1] = sub_268EA070C;

  return v16(v17, v14, v15);
}

uint64_t sub_268EA070C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268EA097C;
  }

  else
  {

    v3 = sub_268EA08A0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EA08A0()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268EA0C50(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268EA097C()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268EA0C50(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268EA0A74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0) + 40);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268EA0C50(uint64_t a1)
{

  v2 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0) + 40);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268EA0D40()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EA0D7C, 0);
}

uint64_t sub_268EA0D7C()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

uint64_t sub_268EA0F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268EA1110(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E9BDD8(a1, a2);
}

uint64_t sub_268EA11D0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268E9C3E8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268EA12A8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268D7F90C;

  return sub_268E9DAA4(a1 & 1, a2, a3);
}

uint64_t sub_268EA1374(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268E9E3F8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268EA144C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E9FADC(a1, a2);
}

uint64_t sub_268EA150C(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D7F90C;

  return sub_268EA0328(a1 & 1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_268EA15F0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268EA0D40();
}

uint64_t sub_268EA16A0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EA1808(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_268EA1A68(uint64_t a1)
{
  v3 = sub_268D810E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_268EA1B50(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D81EC8(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D8154C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_268EA1D98(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D81180(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D8154C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_268EA1F9C(uint64_t a1)
{
  v6 = sub_268EA20D4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268E3B890(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D810E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_268EA20D4(uint64_t a1)
{
  v5 = qword_2802DDC88;
  if (!qword_2802DDC88)
  {
    type metadata accessor for SettingsNumericSettingAction();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DDC88);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268EA21C0(uint64_t a1)
{
  v6 = sub_268EA20D4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268E3B890(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D810E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_268EA2324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268EA2468(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 16) + **(a6 + 16));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268EA25C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v12 = (*(a5 + 24) + **(a5 + 24));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268EA2714(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 32) + **(a6 + 32));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268EA2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 40) + **(a4 + 40));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268EA29B4(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = v7;
  v16 = (*(a7 + 48) + **(a7 + 48));
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = *(v7 + 16);
  v8[1] = sub_268D82A48;

  return v16(a1 & 1, a2 & 1, a3 & 1, a4, a5, a6, a7);
}

uint64_t sub_268EA2B1C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 56) + **(a2 + 56));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t type metadata accessor for GetSettingIntentCATPatternsExecutor(uint64_t a1)
{
  v2 = qword_280FE29C8;
  if (!qword_280FE29C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268EA2CC4(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268EA2D68()
{
  v2 = qword_2802DDCA0;
  if (!qword_2802DDCA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCA0);
    return WitnessTable;
  }

  return v2;
}

char *sub_268EA2DE4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0) + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

uint64_t sub_268EA2F6C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SetNumericSettingIntent#ChangedNumericValueTo";
  *(v2 + 8) = 45;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SetNumericSettingIntent#ChangedNumericValueToSpokenOnly";
  *(v2 + 32) = 55;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SetNumericSettingIntent#ConfirmDisableSmartVolume";
  *(v2 + 56) = 49;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SetNumericSettingIntent#ConfirmMaximumVolume";
  *(v2 + 80) = 44;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SetNumericSettingIntent#NoNeedToChangeNumericValueTo";
  *(v2 + 104) = 52;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SetNumericSettingIntent#NumericValueWasUndone";
  *(v2 + 128) = 45;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SetNumericSettingIntent#RetainingCurrentNumericValue";
  *(v2 + 152) = 52;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SetNumericSettingIntent#UnspecifiedActionForSupportedNumericSetting";
  *(v2 + 176) = 67;
  *(v2 + 184) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_18:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
      goto LABEL_18;
    case 6:
      v5 = 6;
      goto LABEL_18;
    case 7:
      v5 = 7;
      goto LABEL_18;
  }

  return 8;
}

unint64_t sub_268EA3498()
{
  v2 = qword_2802DDCA8;
  if (!qword_2802DDCA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA35E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA2F6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EA361C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA3254(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EA3650(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 80) = v7;
  *(v8 + 124) = a7 & 1;
  *(v8 + 123) = a6 & 1;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 56) = a3;
  *(v8 + 122) = a2 & 1;
  *(v8 + 121) = a1 & 1;
  *(v8 + 16) = v8;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 48) = 0;
  *(v8 + 120) = a1 & 1;
  *(v8 + 128) = a2 & 1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a6 & 1;
  *(v8 + 144) = a7 & 1;
  *(v8 + 48) = v7;
  return MEMORY[0x2822009F8](sub_268EA3740, 0);
}

uint64_t sub_268EA3740()
{
  v29 = *(v0 + 56);
  v27 = *(v0 + 122);
  v25 = *(v0 + 121);
  *(v0 + 16) = v0;
  v23 = sub_268F9AEF4();
  v24 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v28 = v2;
  *v2 = sub_268F9AEF4();
  v28[1] = v3;
  v26 = MEMORY[0x277D839B0];
  v28[5] = MEMORY[0x277D839B0];
  *(v28 + 16) = v25;
  v28[6] = sub_268F9AEF4();
  v28[7] = v4;
  v28[11] = v26;
  *(v28 + 64) = v27;
  v28[12] = sub_268F9AEF4();
  v28[13] = v5;

  if (v29)
  {
    v21 = *(v22 + 56);
    v28[17] = type metadata accessor for SettingsNumericSetting(0);
    v28[14] = v21;
  }

  else
  {
    v28[14] = 0;
    v28[15] = 0;
    v28[16] = 0;
    v28[17] = 0;
  }

  v20 = *(v22 + 64);
  v28[18] = sub_268F9AEF4();
  v28[19] = v6;

  if (v20)
  {
    v19 = *(v22 + 64);
    v28[23] = type metadata accessor for SettingsNumericSettingAction();
    v28[20] = v19;
  }

  else
  {
    v28[20] = 0;
    v28[21] = 0;
    v28[22] = 0;
    v28[23] = 0;
  }

  v18 = *(v22 + 72);
  v28[24] = sub_268F9AEF4();
  v28[25] = v7;

  if (v18)
  {
    v17 = *(v22 + 72);
    v28[29] = sub_268F9AA44();
    v28[26] = v17;
  }

  else
  {
    v28[26] = 0;
    v28[27] = 0;
    v28[28] = 0;
    v28[29] = 0;
  }

  v14 = *(v22 + 124);
  v12 = *(v22 + 123);
  v28[30] = sub_268F9AEF4();
  v28[31] = v8;
  v13 = MEMORY[0x277D839B0];
  v28[35] = MEMORY[0x277D839B0];
  *(v28 + 256) = v12;
  v28[36] = sub_268F9AEF4();
  v28[37] = v9;
  v28[41] = v13;
  *(v28 + 304) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v22 + 96) = v15;
  v16 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v10 = swift_task_alloc();
  *(v22 + 104) = v10;
  *v10 = *(v22 + 16);
  v10[1] = sub_268EA3CD4;

  return v16(v23, v24, v15);
}

uint64_t sub_268EA3CD4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EA3EE0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EA3EE0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EA3FAC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#all1#first1#dialog1";
  *(v2 + 8) = 26;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#all1#first1#dialog2";
  *(v2 + 32) = 26;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#all1#first1#dialog3";
  *(v2 + 56) = 26;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#all1#first1#dialog4";
  *(v2 + 80) = 26;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#all1#first1#dialog5";
  *(v2 + 104) = 26;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#all1#first1#random1#dialog1";
  *(v2 + 128) = 34;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first1#all1#first1#random1#dialog2";
  *(v2 + 152) = 34;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first1#all1#first1#random2#dialog1";
  *(v2 + 176) = 34;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first1#all1#first1#random2#dialog2";
  *(v2 + 200) = 34;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first1#first1#dialog1";
  *(v2 + 224) = 21;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first1#first1#dialog2";
  *(v2 + 248) = 21;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first1#first1#dialog3";
  *(v2 + 272) = 21;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first1#first1#dialog4";
  *(v2 + 296) = 21;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first1#first2#dialog1";
  *(v2 + 320) = 21;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first1#first2#dialog2";
  *(v2 + 344) = 21;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first1#first2#dialog3";
  *(v2 + 368) = 21;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first1#first2#dialog4";
  *(v2 + 392) = 21;
  *(v2 + 400) = 2;
  *(v2 + 408) = "first1#first2#first1#dialog1";
  *(v2 + 416) = 28;
  *(v2 + 424) = 2;
  *(v2 + 432) = "first1#first2#first1#dialog2";
  *(v2 + 440) = 28;
  *(v2 + 448) = 2;
  *(v2 + 456) = "first1#first2#first1#dialog3";
  *(v2 + 464) = 28;
  *(v2 + 472) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_42:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_42;
    case 2:
      v5 = 2;
      goto LABEL_42;
    case 3:
      v5 = 3;
      goto LABEL_42;
    case 4:
      v5 = 4;
      goto LABEL_42;
    case 5:
      v5 = 5;
      goto LABEL_42;
    case 6:
      v5 = 6;
      goto LABEL_42;
    case 7:
      v5 = 7;
      goto LABEL_42;
    case 8:
      v5 = 8;
      goto LABEL_42;
    case 9:
      v5 = 9;
      goto LABEL_42;
    case 10:
      v5 = 10;
      goto LABEL_42;
    case 11:
      v5 = 11;
      goto LABEL_42;
    case 12:
      v5 = 12;
      goto LABEL_42;
    case 13:
      v5 = 13;
      goto LABEL_42;
    case 14:
      v5 = 14;
      goto LABEL_42;
    case 15:
      v5 = 15;
      goto LABEL_42;
    case 16:
      v5 = 16;
      goto LABEL_42;
    case 17:
      v5 = 17;
      goto LABEL_42;
    case 18:
      v5 = 18;
      goto LABEL_42;
    case 19:
      v5 = 19;
      goto LABEL_42;
  }

  return 20;
}

unint64_t sub_268EA4984()
{
  v2 = qword_2802DDCB0;
  if (!qword_2802DDCB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA4AD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA3FAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EA4B08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA45B8(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EA4B3C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 80) = v7;
  *(v8 + 124) = a7 & 1;
  *(v8 + 123) = a6 & 1;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 56) = a3;
  *(v8 + 122) = a2 & 1;
  *(v8 + 121) = a1 & 1;
  *(v8 + 16) = v8;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 48) = 0;
  *(v8 + 120) = a1 & 1;
  *(v8 + 128) = a2 & 1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a6 & 1;
  *(v8 + 144) = a7 & 1;
  *(v8 + 48) = v7;
  return MEMORY[0x2822009F8](sub_268EA4C2C, 0);
}

uint64_t sub_268EA4C2C()
{
  v30 = *(v0 + 56);
  v28 = *(v0 + 122);
  v26 = *(v0 + 121);
  *(v0 + 16) = v0;
  v24 = sub_268F9AEF4();
  v25 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v29 = v2;
  *v2 = sub_268F9AEF4();
  v29[1] = v3;
  v27 = MEMORY[0x277D839B0];
  v29[5] = MEMORY[0x277D839B0];
  *(v29 + 16) = v26;
  v29[6] = sub_268F9AEF4();
  v29[7] = v4;
  v29[11] = v27;
  *(v29 + 64) = v28;
  v29[12] = sub_268F9AEF4();
  v29[13] = v5;

  if (v30)
  {
    v22 = *(v23 + 56);
    v29[17] = type metadata accessor for SettingsNumericSetting(0);
    v29[14] = v22;
  }

  else
  {
    v29[14] = 0;
    v29[15] = 0;
    v29[16] = 0;
    v29[17] = 0;
  }

  v21 = *(v23 + 64);
  v29[18] = sub_268F9AEF4();
  v29[19] = v6;

  if (v21)
  {
    v20 = *(v23 + 64);
    v29[23] = type metadata accessor for SettingsNumericSettingAction();
    v29[20] = v20;
  }

  else
  {
    v29[20] = 0;
    v29[21] = 0;
    v29[22] = 0;
    v29[23] = 0;
  }

  v19 = *(v23 + 72);
  v29[24] = sub_268F9AEF4();
  v29[25] = v7;

  if (v19)
  {
    v18 = *(v23 + 72);
    v29[29] = sub_268F9AA44();
    v29[26] = v18;
  }

  else
  {
    v29[26] = 0;
    v29[27] = 0;
    v29[28] = 0;
    v29[29] = 0;
  }

  v15 = *(v23 + 124);
  v13 = *(v23 + 123);
  v29[30] = sub_268F9AEF4();
  v29[31] = v8;
  v14 = MEMORY[0x277D839B0];
  v29[35] = MEMORY[0x277D839B0];
  *(v29 + 256) = v13;
  v29[36] = sub_268F9AEF4();
  v29[37] = v9;
  v29[41] = v14;
  *(v29 + 304) = v15;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v23 + 96) = v16;
  v17 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v10 = swift_task_alloc();
  *(v23 + 104) = v10;
  v11 = sub_268EA4984();
  *v10 = *(v23 + 16);
  v10[1] = sub_268EA3CD4;

  return v17(v24, v25, v16, &unk_2879941D8, v11);
}

uint64_t sub_268EA51D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 121) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 120) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 120) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  return MEMORY[0x2822009F8](sub_268EA5268, 0);
}

uint64_t sub_268EA5268()
{
  v21 = *(v0 + 56);
  v19 = *(v0 + 121);
  *(v0 + 16) = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;
  v20[5] = MEMORY[0x277D839B0];
  *(v20 + 16) = v19;
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;

  if (v21)
  {
    v15 = v16[7];
    v20[11] = type metadata accessor for SettingsNumericSetting(0);
    v20[8] = v15;
  }

  else
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  v14 = v16[8];
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;

  if (v14)
  {
    v13 = v16[8];
    v20[17] = type metadata accessor for SettingsNumericSettingAction();
    v20[14] = v13;
  }

  else
  {
    v20[14] = 0;
    v20[15] = 0;
    v20[16] = 0;
    v20[17] = 0;
  }

  v12 = v16[9];
  v20[18] = sub_268F9AEF4();
  v20[19] = v6;

  if (v12)
  {
    v11 = v16[9];
    v20[23] = sub_268F9AA44();
    v20[20] = v11;
  }

  else
  {
    v20[20] = 0;
    v20[21] = 0;
    v20[22] = 0;
    v20[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v16[12] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  v16[13] = v7;
  *v7 = v16[2];
  v7[1] = sub_268EA56AC;

  return v10(v17, v18, v9);
}

uint64_t sub_268EA56AC(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EA5894, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EA5894()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EA5954(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#dialog1";
  *(v2 + 8) = 14;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog2";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog3";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#dialog4";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first2#dialog1";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first2#dialog2";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first2#random1#dialog1";
  *(v2 + 152) = 22;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first2#random1#dialog2";
  *(v2 + 176) = 22;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first2#random2#dialog1";
  *(v2 + 200) = 22;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first2#random2#dialog2";
  *(v2 + 224) = 22;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first3#dialog1";
  *(v2 + 248) = 14;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first3#dialog2";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first3#dialog3";
  *(v2 + 296) = 14;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first3#dialog4";
  *(v2 + 320) = 14;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first3#first1#dialog1";
  *(v2 + 344) = 21;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first3#first1#dialog2";
  *(v2 + 368) = 21;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first3#first1#dialog3";
  *(v2 + 392) = 21;
  *(v2 + 400) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_36:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_36;
    case 2:
      v5 = 2;
      goto LABEL_36;
    case 3:
      v5 = 3;
      goto LABEL_36;
    case 4:
      v5 = 4;
      goto LABEL_36;
    case 5:
      v5 = 5;
      goto LABEL_36;
    case 6:
      v5 = 6;
      goto LABEL_36;
    case 7:
      v5 = 7;
      goto LABEL_36;
    case 8:
      v5 = 8;
      goto LABEL_36;
    case 9:
      v5 = 9;
      goto LABEL_36;
    case 10:
      v5 = 10;
      goto LABEL_36;
    case 11:
      v5 = 11;
      goto LABEL_36;
    case 12:
      v5 = 12;
      goto LABEL_36;
    case 13:
      v5 = 13;
      goto LABEL_36;
    case 14:
      v5 = 14;
      goto LABEL_36;
    case 15:
      v5 = 15;
      goto LABEL_36;
    case 16:
      v5 = 16;
      goto LABEL_36;
  }

  return 17;
}

unint64_t sub_268EA61E4()
{
  v2 = qword_2802DDCB8;
  if (!qword_2802DDCB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA6330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA5954(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EA6368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA5E90(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EA639C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 121) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 120) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 120) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  return MEMORY[0x2822009F8](sub_268EA642C, 0);
}

uint64_t sub_268EA642C()
{
  v22 = *(v0 + 56);
  v20 = *(v0 + 121);
  *(v0 + 16) = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;
  v21[5] = MEMORY[0x277D839B0];
  *(v21 + 16) = v20;
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;

  if (v22)
  {
    v16 = v17[7];
    v21[11] = type metadata accessor for SettingsNumericSetting(0);
    v21[8] = v16;
  }

  else
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  v15 = v17[8];
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;

  if (v15)
  {
    v14 = v17[8];
    v21[17] = type metadata accessor for SettingsNumericSettingAction();
    v21[14] = v14;
  }

  else
  {
    v21[14] = 0;
    v21[15] = 0;
    v21[16] = 0;
    v21[17] = 0;
  }

  v13 = v17[9];
  v21[18] = sub_268F9AEF4();
  v21[19] = v6;

  if (v13)
  {
    v12 = v17[9];
    v21[23] = sub_268F9AA44();
    v21[20] = v12;
  }

  else
  {
    v21[20] = 0;
    v21[21] = 0;
    v21[22] = 0;
    v21[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v17[12] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = swift_task_alloc();
  v17[13] = v7;
  v8 = sub_268EA61E4();
  *v7 = v17[2];
  v7[1] = sub_268EA56AC;

  return v11(v18, v19, v10, &unk_287994268, v8);
}

uint64_t sub_268EA6888(char a1, char a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  *(v4 + 40) = a3;
  *(v4 + 90) = a2 & 1;
  *(v4 + 89) = a1 & 1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 88) = a1 & 1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_268EA6918, 0);
}

uint64_t sub_268EA6918()
{
  v18 = *(v0 + 40);
  v16 = *(v0 + 90);
  v14 = *(v0 + 89);
  *(v0 + 16) = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;
  v15 = MEMORY[0x277D839B0];
  v17[5] = MEMORY[0x277D839B0];
  *(v17 + 16) = v14;
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;
  v17[11] = v15;
  *(v17 + 64) = v16;
  v17[12] = sub_268F9AEF4();
  v17[13] = v5;

  if (v18)
  {
    v10 = v11[5];
    v17[17] = type metadata accessor for SettingsNumericSettingAction();
    v17[14] = v10;
  }

  else
  {
    v17[14] = 0;
    v17[15] = 0;
    v17[16] = 0;
    v17[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  v11[9] = v6;
  *v6 = v11[2];
  v6[1] = sub_268EA6BE4;

  return v9(v12, v13, v8);
}

uint64_t sub_268EA6BE4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EA6DC0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EA6DC0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EA6E7C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog1";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog2";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#dialog3";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#dialog4";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#dialog5";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first1#random1#dialog1";
  *(v2 + 152) = 22;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first1#random1#dialog2";
  *(v2 + 176) = 22;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first1#random2#dialog1";
  *(v2 + 200) = 22;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first1#random2#dialog2";
  *(v2 + 224) = 22;
  *(v2 + 232) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_22:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_22;
    case 2:
      v5 = 2;
      goto LABEL_22;
    case 3:
      v5 = 3;
      goto LABEL_22;
    case 4:
      v5 = 4;
      goto LABEL_22;
    case 5:
      v5 = 5;
      goto LABEL_22;
    case 6:
      v5 = 6;
      goto LABEL_22;
    case 7:
      v5 = 7;
      goto LABEL_22;
    case 8:
      v5 = 8;
      goto LABEL_22;
    case 9:
      v5 = 9;
      goto LABEL_22;
  }

  return 10;
}

unint64_t sub_268EA7498()
{
  v2 = qword_2802DDCC0;
  if (!qword_2802DDCC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA75E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA6E7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EA761C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA71DC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EA7650(char a1, char a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  *(v4 + 40) = a3;
  *(v4 + 90) = a2 & 1;
  *(v4 + 89) = a1 & 1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 88) = a1 & 1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_268EA76E0, 0);
}

uint64_t sub_268EA76E0()
{
  v19 = *(v0 + 40);
  v17 = *(v0 + 90);
  v15 = *(v0 + 89);
  *(v0 + 16) = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;
  v16 = MEMORY[0x277D839B0];
  v18[5] = MEMORY[0x277D839B0];
  *(v18 + 16) = v15;
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;
  v18[11] = v16;
  *(v18 + 64) = v17;
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;

  if (v19)
  {
    v11 = v12[5];
    v18[17] = type metadata accessor for SettingsNumericSettingAction();
    v18[14] = v11;
  }

  else
  {
    v18[14] = 0;
    v18[15] = 0;
    v18[16] = 0;
    v18[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = swift_task_alloc();
  v12[9] = v6;
  v7 = sub_268EA7498();
  *v6 = v12[2];
  v6[1] = sub_268EA6BE4;

  return v10(v13, v14, v9, &unk_2879942F8, v7);
}

uint64_t sub_268EA79C4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EA7A10, 0);
}

uint64_t sub_268EA7A10()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = sub_268F9AA44();
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EA7C78()
{
  v2 = qword_2802DDCC8;
  if (!qword_2802DDCC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA7DC4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EA7E10, 0);
}

uint64_t sub_268EA7E10()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = sub_268F9AA44();
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EA7C78();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994388, v5);
}

uint64_t sub_268EA8044(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = v5;
  *(v6 + 72) = a5;
  *(v6 + 64) = a4;
  *(v6 + 56) = a3;
  *(v6 + 122) = a2 & 1;
  *(v6 + 121) = a1 & 1;
  *(v6 + 16) = v6;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 120) = a1 & 1;
  *(v6 + 128) = a2 & 1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  return MEMORY[0x2822009F8](sub_268EA80F4, 0);
}

uint64_t sub_268EA80F4()
{
  v24 = *(v0 + 56);
  v22 = *(v0 + 122);
  v20 = *(v0 + 121);
  *(v0 + 16) = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v23 = v2;
  *v2 = sub_268F9AEF4();
  v23[1] = v3;
  v21 = MEMORY[0x277D839B0];
  v23[5] = MEMORY[0x277D839B0];
  *(v23 + 16) = v20;
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;
  v23[11] = v21;
  *(v23 + 64) = v22;
  v23[12] = sub_268F9AEF4();
  v23[13] = v5;

  if (v24)
  {
    v16 = v17[7];
    v23[17] = type metadata accessor for SettingsNumericSetting(0);
    v23[14] = v16;
  }

  else
  {
    v23[14] = 0;
    v23[15] = 0;
    v23[16] = 0;
    v23[17] = 0;
  }

  v15 = v17[8];
  v23[18] = sub_268F9AEF4();
  v23[19] = v6;

  if (v15)
  {
    v14 = v17[8];
    v23[23] = type metadata accessor for SettingsNumericSettingAction();
    v23[20] = v14;
  }

  else
  {
    v23[20] = 0;
    v23[21] = 0;
    v23[22] = 0;
    v23[23] = 0;
  }

  v13 = v17[9];
  v23[24] = sub_268F9AEF4();
  v23[25] = v7;

  if (v13)
  {
    v12 = v17[9];
    v23[29] = sub_268F9AA44();
    v23[26] = v12;
  }

  else
  {
    v23[26] = 0;
    v23[27] = 0;
    v23[28] = 0;
    v23[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v17[12] = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  v17[13] = v8;
  *v8 = v17[2];
  v8[1] = sub_268EA85A0;

  return v11(v18, v19, v10);
}

uint64_t sub_268EA85A0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EA8794, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EA8794()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EA8858(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "all1#first1#dialog1";
  *(v2 + 8) = 19;
  *(v2 + 16) = 2;
  *(v2 + 24) = "all1#first1#dialog2";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "all1#first1#dialog3";
  *(v2 + 56) = 19;
  *(v2 + 64) = 2;
  *(v2 + 72) = "all1#first1#dialog4";
  *(v2 + 80) = 19;
  *(v2 + 88) = 2;
  *(v2 + 96) = "all1#first1#dialog5";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "all1#first1#dialog6";
  *(v2 + 128) = 19;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first1#dialog1";
  *(v2 + 152) = 14;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first1#dialog2";
  *(v2 + 176) = 14;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first1#dialog3";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first1#dialog4";
  *(v2 + 224) = 14;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first1#dialog5";
  *(v2 + 248) = 14;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first2#dialog1";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first2#dialog2";
  *(v2 + 296) = 14;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first2#dialog3";
  *(v2 + 320) = 14;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first2#dialog4";
  *(v2 + 344) = 14;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first2#dialog5";
  *(v2 + 368) = 14;
  *(v2 + 376) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_34:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
  }

  return 16;
}

unint64_t sub_268EA9080()
{
  v2 = qword_2802DDCD0;
  if (!qword_2802DDCD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA91CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA8858(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EA9204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA8D54(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EA9238(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = v5;
  *(v6 + 72) = a5;
  *(v6 + 64) = a4;
  *(v6 + 56) = a3;
  *(v6 + 122) = a2 & 1;
  *(v6 + 121) = a1 & 1;
  *(v6 + 16) = v6;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 120) = a1 & 1;
  *(v6 + 128) = a2 & 1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  return MEMORY[0x2822009F8](sub_268EA92E8, 0);
}

uint64_t sub_268EA92E8()
{
  v25 = *(v0 + 56);
  v23 = *(v0 + 122);
  v21 = *(v0 + 121);
  *(v0 + 16) = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v2;
  *v2 = sub_268F9AEF4();
  v24[1] = v3;
  v22 = MEMORY[0x277D839B0];
  v24[5] = MEMORY[0x277D839B0];
  *(v24 + 16) = v21;
  v24[6] = sub_268F9AEF4();
  v24[7] = v4;
  v24[11] = v22;
  *(v24 + 64) = v23;
  v24[12] = sub_268F9AEF4();
  v24[13] = v5;

  if (v25)
  {
    v17 = v18[7];
    v24[17] = type metadata accessor for SettingsNumericSetting(0);
    v24[14] = v17;
  }

  else
  {
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
    v24[17] = 0;
  }

  v16 = v18[8];
  v24[18] = sub_268F9AEF4();
  v24[19] = v6;

  if (v16)
  {
    v15 = v18[8];
    v24[23] = type metadata accessor for SettingsNumericSettingAction();
    v24[20] = v15;
  }

  else
  {
    v24[20] = 0;
    v24[21] = 0;
    v24[22] = 0;
    v24[23] = 0;
  }

  v14 = v18[9];
  v24[24] = sub_268F9AEF4();
  v24[25] = v7;

  if (v14)
  {
    v13 = v18[9];
    v24[29] = sub_268F9AA44();
    v24[26] = v13;
  }

  else
  {
    v24[26] = 0;
    v24[27] = 0;
    v24[28] = 0;
    v24[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v18[12] = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = swift_task_alloc();
  v18[13] = v8;
  v9 = sub_268EA9080();
  *v8 = v18[2];
  v8[1] = sub_268EA85A0;

  return v12(v19, v20, v11, &unk_287994418, v9);
}

uint64_t sub_268EA97AC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268EA9808, 0);
}

uint64_t sub_268EA9808()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsNumericSetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = type metadata accessor for SettingsNumericSettingAction();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

uint64_t sub_268EA9AF0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#all1#first1#random1#dialog1";
  *(v2 + 8) = 34;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#all1#first1#random1#dialog2";
  *(v2 + 32) = 34;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#all1#first1#random2#dialog1";
  *(v2 + 56) = 34;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#all1#first1#random2#dialog2";
  *(v2 + 80) = 34;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#first1#dialog1";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#first1#dialog2";
  *(v2 + 128) = 21;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first1#first2#dialog1";
  *(v2 + 152) = 21;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first1#first2#dialog2";
  *(v2 + 176) = 21;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first1#first2#first1#dialog1";
  *(v2 + 200) = 28;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first1#first2#first1#dialog2";
  *(v2 + 224) = 28;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first1#first2#first1#dialog3";
  *(v2 + 248) = 28;
  *(v2 + 256) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_24:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
  }

  return 11;
}

unint64_t sub_268EAA190()
{
  v2 = qword_2802DDCD8;
  if (!qword_2802DDCD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAA2DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EA9AF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EAA314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EA9E98(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EAA348(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268EAA3A4, 0);
}

uint64_t sub_268EAA3A4()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsNumericSetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = type metadata accessor for SettingsNumericSettingAction();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268EAA190();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_2879944A8, v6);
}

uint64_t sub_268EAA6A4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EAA6F0, 0);
}

uint64_t sub_268EAA6F0()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = sub_268F9AA44();
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EAA958()
{
  v2 = qword_2802DDCE0;
  if (!qword_2802DDCE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAAAA4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EAAAF0, 0);
}

uint64_t sub_268EAAAF0()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = sub_268F9AA44();
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EAA958();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994538, v5);
}

uint64_t sub_268EAAD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268EAAD90, 0);
}

uint64_t sub_268EAAD90()
{
  v19 = v0[7];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = v15[7];
    v18[5] = type metadata accessor for SettingsNumericSetting(0);
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = v15[8];
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;

  if (v13)
  {
    v12 = v15[8];
    v18[11] = type metadata accessor for SettingsNumericSettingAction();
    v18[8] = v12;
  }

  else
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  v11 = v15[9];
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;

  if (v11)
  {
    v10 = v15[9];
    v18[17] = sub_268F9AA44();
    v18[14] = v10;
  }

  else
  {
    v18[14] = 0;
    v18[15] = 0;
    v18[16] = 0;
    v18[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v15[12] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  v15[13] = v6;
  *v6 = v15[2];
  v6[1] = sub_268DF69EC;

  return v9(v16, v17, v8);
}

uint64_t sub_268EAB15C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268EAB368()
{
  v2 = qword_2802DDCE8;
  if (!qword_2802DDCE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAB4B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EAB15C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EAB4EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EAB290(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EAB524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268EAB590, 0);
}

uint64_t sub_268EAB590()
{
  v20 = v0[7];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = v16[7];
    v19[5] = type metadata accessor for SettingsNumericSetting(0);
    v19[2] = v15;
  }

  else
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  v14 = v16[8];
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;

  if (v14)
  {
    v13 = v16[8];
    v19[11] = type metadata accessor for SettingsNumericSettingAction();
    v19[8] = v13;
  }

  else
  {
    v19[8] = 0;
    v19[9] = 0;
    v19[10] = 0;
    v19[11] = 0;
  }

  v12 = v16[9];
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;

  if (v12)
  {
    v11 = v16[9];
    v19[17] = sub_268F9AA44();
    v19[14] = v11;
  }

  else
  {
    v19[14] = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v16[12] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = swift_task_alloc();
  v16[13] = v6;
  v7 = sub_268EAB368();
  *v6 = v16[2];
  v6[1] = sub_268DF69EC;

  return v10(v17, v18, v9, &unk_2879945C8, v7);
}

uint64_t type metadata accessor for SetNumericSettingIntentCATsSimple(uint64_t a1)
{
  v2 = qword_2802DDCF0;
  if (!qword_2802DDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268EAB9E8(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268EABAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A9D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268EABCF0(int a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = sub_268F9AB24();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14, v11, v14, v3);
  v9 = &v7 - v8;
  v17 = v10 & 1;
  v16 = v5;
  v18 = v2;
  (*(v12 + 16))(v4);
  v15 = sub_268F9A9E4();

  v18 = v15;
  (*(v12 + 8))(v11, v14);

  return v15;
}

uint64_t sub_268EABE60(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 19) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 236;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 20;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EABFC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEC)
  {
    v5 = ((a3 + 19) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEC)
  {
    v4 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 19;
    }
  }

  return result;
}

unint64_t sub_268EAC27C()
{
  v2 = qword_2802DDD00;
  if (!qword_2802DDD00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC310()
{
  v2 = qword_2802DDD08;
  if (!qword_2802DDD08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC3A4()
{
  v2 = qword_2802DDD10;
  if (!qword_2802DDD10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC438()
{
  v2 = qword_2802DDD18;
  if (!qword_2802DDD18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC4CC()
{
  v2 = qword_2802DDD20;
  if (!qword_2802DDD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC560()
{
  v2 = qword_2802DDD28;
  if (!qword_2802DDD28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC5F4()
{
  v2 = qword_2802DDD30;
  if (!qword_2802DDD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC688()
{
  v2 = qword_2802DDD38;
  if (!qword_2802DDD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC71C()
{
  v2 = qword_2802DDD40;
  if (!qword_2802DDD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EAC798()
{
  if (qword_280FE6688 != -1)
  {
    swift_once();
  }

  return &qword_280FE8390;
}

uint64_t sub_268EAC810()
{
  type metadata accessor for GetSiriVolumeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268EAC890();
  result = sub_268EAC8C0(v2, v0, 1);
  qword_280FE8390 = result;
  return result;
}

uint64_t sub_268EAC890()
{
  v1 = *sub_268E8F370();

  return v1;
}

uint64_t sub_268EAC920()
{
  v1 = *sub_268EAC798();

  return v1;
}

uint64_t sub_268EAC950(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 16) = a1;

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return v8;
}

double sub_268EAC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetSiriVolumeHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBBA14();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 32);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268EACC94, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268EACBFC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{

  v6 = sub_268D3BC60();

  return sub_268EADD7C(a2, a3, v6);
}

uint64_t sub_268EACCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "GetSiriVolumeHandler.handleGetSidekickSiriVolumeRequest | start.", 64, 2);

  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BE0](a1);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;
  v11[5] = a1;
  sub_268D46844(sub_268EAD19C, v11);
}

uint64_t sub_268EACE58(void *a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    [a1 floatValue];
    v21 = v5;
    MEMORY[0x277D82BD8](a1);
    v22 = v21;
    v23 = 0;
  }

  else
  {
    v22 = 0.0;
    v23 = 1;
  }

  if (v23)
  {
    v13 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v14 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "GetSiriVolumeHandler.handleGetSidekickSiriVolumeRequest | Unable to determine current value of the smart siri volume setting.", 125, 2);

    MEMORY[0x277D82BD8](v14);

    v11 = sub_268E948B8(19);
    v15 = sub_268E41B70(v11, v12);

    a2(v15);
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v19 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v20 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v18 = v7;
    MEMORY[0x277D82BE0](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v16 = sub_268F9AE64();
    v17 = v8;
    v18[3] = MEMORY[0x277D837D0];
    v18[4] = sub_268CDD224();
    *v18 = v16;
    v18[1] = v17;
    sub_268CD0F7C();
    sub_268F9AC14(v19, &dword_268CBE000, v20, "Sidekick siri volume read via Ace command: %@.", 46, 2);

    MEMORY[0x277D82BD8](v20);
    return sub_268EADD7C(a5, a2, v22);
  }
}

uint64_t sub_268EAD1B0(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 56) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 104) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_268EAD208, 0);
}

uint64_t sub_268EAD208(uint64_t a1)
{
  v7 = v1[8];
  v1[2] = v1;
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "GetSiriVolumeHandler.handleGetSidekickSiriVolumeRequestAsync | start.", 69, 2);

  MEMORY[0x277D82BD8](v6);
  v1[10] = *(v7 + 16);

  v3 = swift_task_alloc();
  *(v8 + 88) = v3;
  *v3 = *(v8 + 16);
  v3[1] = sub_268EAD368;

  return sub_268D46DDC();
}

uint64_t sub_268EAD368(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 96) = a1;

  return MEMORY[0x2822009F8](sub_268EAD4A4, 0);
}

uint64_t sub_268EAD4A4()
{
  v29 = v0[12];
  v0[2] = v0;
  v0[5] = v29;
  MEMORY[0x277D82BE0](v29);
  if (v29)
  {
    v24 = *(v28 + 96);
    [v24 floatValue];
    v25 = v1;
    MEMORY[0x277D82BD8](v24);
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v26 = 0.0;
    v27 = 1;
  }

  if (v27)
  {
    v13 = *(v28 + 96);
    v11 = sub_268F9B294();
    v6 = sub_268DC7AE8();
    v12 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "GetSiriVolumeHandler.handleGetSidekickSiriVolumeRequestAsync | Unable to determine current value of the smart siri volume setting.", 130, 2);

    MEMORY[0x277D82BD8](v12);
    v7 = sub_268E948B8(19);
    v14 = sub_268E41B70(v7, v8);

    v5 = MEMORY[0x277D82BD8](v13);
    v23 = v14;
  }

  else
  {
    v21 = *(v28 + 96);
    v20 = *(v28 + 56);
    *(v28 + 104) = v26;
    v18 = sub_268F9B284();
    v2 = sub_268DC7AE8();
    v19 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B734();
    v17 = v3;
    MEMORY[0x277D82BE0](v21);
    *(v28 + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v15 = sub_268F9AE64();
    v16 = v4;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "Sidekick siri volume read via Ace command: %@.", 46, 2);

    MEMORY[0x277D82BD8](v19);
    v22 = sub_268EADE24(v20, v26);
    v5 = MEMORY[0x277D82BD8](v21);
    v23 = v22;
  }

  v9 = *(*(v28 + 16) + 8);

  return v9(v23, v5);
}

float sub_268EAD884(float a1)
{
  v9[1] = a1;
  v23 = 0;
  v22 = 0;
  v17 = sub_268F9B6F4();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v11 = *(v15 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v2, v17, v3);
  v18 = v9 - v10;
  v12 = v10;
  v7 = MEMORY[0x28223BE20](v9 - v10, v4, v5, v6);
  v14 = v9 - v12;
  v23 = LODWORD(v7);
  v22 = v1;
  v13 = *&v7 / 0.05;
  v19 = MEMORY[0x277D84678];
  (*(v15 + 104))();
  v21 = v13;
  (*(v15 + 16))(v18, v14, v17);
  v20 = (*(v15 + 88))(v18, v17);
  if (v20 == *v19)
  {
    v21 = roundf(v13);
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D84670])
  {
    v21 = rintf(v13);
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v21 = ceilf(v13);
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v21 = floorf(v13);
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D84660])
  {
    v21 = truncf(v13);
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D84668])
  {
    if ((sub_268F9B154() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_268F9B144();
  (*(v15 + 8))(v18, v17);
LABEL_15:
  v9[0] = v21;
  (*(v15 + 8))(v14, v17);
  return v9[0] * 0.05;
}

BOOL sub_268EADBD0()
{
  v21 = 0;
  v13 = sub_268F99214();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v1, v2, v3);
  v17 = &v6 - v16;
  v21 = v0;
  v18 = *(v0 + 16);

  v20 = sub_268D44174();

  if (v20)
  {
    v10 = *(v19 + 16);

    v11 = sub_268D443B4();

    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  v9 = v12;

  if (v9)
  {
    return 0;
  }

  else
  {
    v6 = *(v19 + 24);

    sub_268EAC7F8(v4);
    v7 = sub_268E90658(v17);
    (*(v14 + 8))(v17, v13);

    return v7;
  }
}

uint64_t sub_268EADD7C(uint64_t a1, void (*a2)(void), float a3)
{

  v7 = sub_268EADE24(a1, a3);
  a2();
  MEMORY[0x277D82BD8](v7);
}

id sub_268EADE24(uint64_t a1, float a2)
{
  v40 = a1;
  v46 = a2;
  v39 = "Sending back response %@";
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v44 = 0;
  v52 = sub_268F9B6F4();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v41 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40, v3, v4, v5);
  v53 = &v22[-v41];
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v7, &v22[-v41], v8, v9);
  v49 = &v22[-v42];
  v61 = v11;
  v60 = LODWORD(v10);
  v59 = v2;
  v43 = [v11 settingMetadata];
  v45 = sub_268DD26C8();
  v47 = sub_268D34FD4();
  v48 = sub_268E5587C(v46);
  v54 = MEMORY[0x277D84678];
  (*(v50 + 104))(v49, *MEMORY[0x277D84678], v52);
  v58 = v48;
  (*(v50 + 16))(v53, v49, v52);
  v55 = (*(v50 + 88))(v53, v52);
  if (v55 == *v54)
  {
    v58 = roundf(v48);
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277D84670])
  {
    v58 = rintf(v48);
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v58 = ceilf(v48);
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v58 = floorf(v48);
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277D84660])
  {
    v58 = truncf(v48);
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277D84668])
  {
    if ((sub_268F9B154() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_268F9B144();
  (*(v50 + 8))(v53, v52);
LABEL_15:
  v23 = v58;
  (*(v50 + 8))(v49, v52);
  v12 = sub_268EAE3A8(v23);
  v26 = 1;
  v25 = sub_268E3E3F0(v12, 1);
  v24 = sub_268D4AA1C();
  v13 = sub_268D4AA1C();
  v27 = 0;
  v38 = sub_268E41A08(v43, v25, v24, v13, 0, 0);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v43);
  v57 = v38;
  v35 = sub_268F9B284();
  v37 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v37);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v34 = sub_268F9B734();
  v32 = v14;
  MEMORY[0x277D82BE0](v38);
  v29 = &v56;
  v56 = v38;
  v28 = sub_268CDD0DC();
  sub_268CDD1A4();
  v30 = sub_268F9AE74();
  v31 = v15;
  v32[3] = MEMORY[0x277D837D0];
  v16 = sub_268CDD224();
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v32[4] = v16;
  *v19 = v17;
  v19[1] = v18;
  sub_268CD0F7C();
  v36 = v20;
  sub_268F9AC14(v35, &dword_268CBE000, v37, v39, 24, 2);

  MEMORY[0x277D82BD8](v37);
  return v38;
}

uint64_t sub_268EAE3E8()
{

  return v1;
}

uint64_t *sub_268EAE4B0()
{
  if (qword_2802DB780 != -1)
  {
    swift_once();
  }

  return &qword_2802F1600;
}

uint64_t sub_268EAE510()
{
  type metadata accessor for SetBinarySettingNLContextProvider(0);
  result = sub_268D592B0();
  qword_2802F1600 = result;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingNLContextProvider(uint64_t a1)
{
  v2 = qword_2802DDD48;
  if (!qword_2802DDD48)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268EAE5B8()
{
  v1 = *sub_268EAE4B0();

  return v1;
}

uint64_t sub_268EAE5E8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v18 = a4;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v15, v16, v5);
  v17 = &v12 - v13;
  v23 = v6;
  v22 = v7;
  v20 = v8;
  v21 = v9;
  v19 = v4;

  sub_268EAE738(v14, v15, v17);
  v10 = sub_268F999A4();
  (*(*(v10 - 8) + 56))(v17, 0, 1);
  v16(v17);
  sub_268D34AC0(v17);
}

uint64_t sub_268EAE738@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v99 = a1;
  v79 = a2;
  v70 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v71 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v72 = v55 - v71;
  v73 = 0;
  v74 = sub_268F9ACE4();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v7, v8, v9);
  v78 = v55 - v77;
  v107 = v55 - v77;
  v80 = sub_268F999A4();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v84 = *(v81 + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99, v79, v10, v11);
  v85 = v55 - v83;
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v55 - v83, v14);
  v98 = v55 - v86;
  v106 = v55 - v86;
  v105 = v15;
  v104 = v16;
  v103 = v17;
  sub_268F99994();
  v92 = 1;
  sub_268F9AEF4();
  sub_268F99964();
  sub_268F99944();
  v89 = 1;
  v97 = MEMORY[0x277D837D0];
  v88 = sub_268F9B734();
  v87 = v18;
  v93 = "com.apple.siri.nl.SettingConfirmation.Value.CANCEL";
  v94 = 50;
  v19 = sub_268F9AEF4();
  v20 = v87;
  *v87 = v19;
  v20[1] = v21;
  sub_268CD0F7C();
  sub_268F99954();
  v91 = sub_268F9B734();
  v90 = v22;
  v23 = sub_268F9AEF4();
  v24 = v90;
  *v90 = v23;
  v24[1] = v25;
  sub_268CD0F7C();
  sub_268F99984();
  v96 = sub_268F9B734();
  v95 = v26;
  v27 = sub_268F9AEF4();
  v28 = v95;
  *v95 = v27;
  v28[1] = v29;
  v30 = sub_268F9AEF4();
  v31 = v95;
  v95[2] = v30;
  v31[3] = v32;
  v33 = sub_268F9AEF4();
  v34 = v95;
  v95[4] = v33;
  v34[5] = v35;
  sub_268CD0F7C();
  sub_268F99974();
  sub_268F27D28();
  sub_268F99924();
  v100 = [v99 settingMetadata];
  if (v100)
  {
    v68 = v100;
    v67 = v100;
    v101 = v100;
    sub_268E5B124(v72);
    if ((*(v75 + 48))(v72, 1, v74) == 1)
    {
      sub_268D59D2C(v72);
    }

    else
    {
      (*(v75 + 32))(v78, v72, v74);
      v66 = sub_268F9B734();
      (*(v75 + 16))(v36, v78, v74);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v75 + 8))(v78, v74);
    }

    MEMORY[0x277D82BD8](v67);
  }

  v63 = sub_268F9B284();
  v65 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v65);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v61 = sub_268F9B734();
  v60 = v37;
  MEMORY[0x277D82BE0](v99);
  v55[2] = &v102;
  v102 = v99;
  v55[1] = sub_268CD7620();
  sub_268D28940();
  v56 = sub_268F9AE74();
  v57 = v38;
  v58 = MEMORY[0x277D837D0];
  v60[3] = MEMORY[0x277D837D0];
  v39 = sub_268CDD224();
  v40 = v56;
  v41 = v57;
  v42 = v60;
  v43 = v81;
  v44 = v98;
  v45 = v80;
  v46 = v39;
  v47 = v85;
  v59 = v46;
  v60[4] = v46;
  *v42 = v40;
  v42[1] = v41;
  (*(v43 + 16))(v47, v44, v45);
  v48 = sub_268F9AE64();
  v49 = v59;
  v50 = v60;
  v60[8] = v58;
  v50[9] = v49;
  v50[5] = v48;
  v50[6] = v51;
  sub_268CD0F7C();
  v64 = v52;
  sub_268F9AC14(v63, &dword_268CBE000, v65, v70, 66, 2);

  v53 = MEMORY[0x277D82BD8](v65);
  return (*(v81 + 32))(v69, v98, v80, v53);
}

uint64_t sub_268EAEF28(void *a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v49 = a1;
  v43 = a2;
  v41 = a3;
  v42 = a4;
  v30 = "There was no setting ID to donate in makeContextForHandleIntent.";
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v31 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v32 = &v23[-v31];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v33 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v34 = &v23[-v33];
  v35 = 0;
  v36 = sub_268F9ACE4();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v13, v14, v15);
  v40 = &v23[-v39];
  v58 = &v23[-v39];
  v44 = sub_268F999A4();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49, v43, v41, v42);
  v48 = &v23[-v47];
  v57 = &v23[-v47];
  v56 = v16;
  v55 = v17;
  v53 = v18;
  v54 = v19;
  v52 = v4;
  sub_268F99994();
  v50 = [v49 settingMetadata];
  if (v50)
  {
    v29 = v50;
    v28 = v50;
    v51 = v50;
    sub_268E5B124(v34);
    if ((*(v37 + 48))(v34, 1, v36) != 1)
    {
      (*(v37 + 32))(v40, v34, v36);
      v27 = sub_268F9B734();
      (*(v37 + 16))(v20, v40, v36);
      sub_268CD0F7C();
      sub_268F99914();

      (*(v45 + 16))(v32, v48, v44);
      (*(v45 + 56))(v32, 0, 1, v44);
      v41(v32);
      sub_268D34AC0(v32);

      (*(v37 + 8))(v40, v36);
      v21 = MEMORY[0x277D82BD8](v28);
      return (*(v45 + 8))(v48, v44, v21);
    }

    sub_268D59D2C(v34);
    MEMORY[0x277D82BD8](v28);
  }

  v24 = sub_268F9B284();
  v26 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v25 = sub_268F9B734();
  sub_268F9AC14(v24, &dword_268CBE000, v26, v30, 64, 2);

  MEMORY[0x277D82BD8](v26);

  (*(v45 + 56))(v32, 1, 1, v44);
  v41(v32);
  sub_268D34AC0(v32);

  return (*(v45 + 8))(v48, v44);
}

uint64_t sub_268EAF4D8(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

id sub_268EAF564(uint64_t a1, void *a2)
{
  v22 = a1;
  v21 = a2;
  sub_268E42694(&v19);
  if (v19 == 65)
  {
    v14 = 0uLL;
  }

  else
  {
    *&v14 = BinarySettingIdentifier.rawValue.getter();
    *(&v14 + 1) = v2;
  }

  v18 = v14;
  if (*(&v14 + 1))
  {
    v20 = v18;
  }

  else
  {
    sub_268E4262C();
    if (v17 == 13)
    {
      v20 = 0uLL;
    }

    else
    {
      *&v20 = NumericSettingIdentifier.rawValue.getter();
      *(&v20 + 1) = v3;
    }
  }

  v12 = v20;
  v13 = sub_268E49138();
  if (v13 == 16)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_268E42B68(v13);
    v11 = v4;
  }

  v8 = sub_268F2B6D8(v10, v11);

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_268F284EC(v12, *(&v12 + 1), a2, 0, v8);
  sub_268D2E630();
  v9 = [v6 initWithSettingMetadata:v7 confirmationValue:sub_268EAF80C()];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v9);
  v23 = v9;
  MEMORY[0x277D82BD8](v8);

  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v23);
  return v9;
}

uint64_t sub_268EAF80C()
{
  v2 = sub_268E48F04();
  if (v2 == 2)
  {
    return 0;
  }

  if (v2)
  {
    return 2;
  }

  return 1;
}

SiriSettingsIntents::NumericSettingIdentifier_optional __swiftcall NumericSettingIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_268F9B734();
  *v2 = "battery";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "brightness";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  *(v2 + 48) = "displayBrightness";
  *(v2 + 56) = 17;
  *(v2 + 64) = 2;
  *(v2 + 72) = "mediaType";
  *(v2 + 80) = 9;
  *(v2 + 88) = 2;
  *(v2 + 96) = "mute";
  *(v2 + 104) = 4;
  *(v2 + 112) = 2;
  *(v2 + 120) = "none";
  *(v2 + 128) = 4;
  *(v2 + 136) = 2;
  *(v2 + 144) = "unmute";
  *(v2 + 152) = 6;
  *(v2 + 160) = 2;
  *(v2 + 168) = "voice";
  *(v2 + 176) = 5;
  *(v2 + 184) = 2;
  *(v2 + 192) = "persistentVoiceVolume";
  *(v2 + 200) = 21;
  *(v2 + 208) = 2;
  *(v2 + 216) = "volume";
  *(v2 + 224) = 6;
  *(v2 + 232) = 2;
  *(v2 + 240) = "bass";
  *(v2 + 248) = 4;
  *(v2 + 256) = 2;
  *(v2 + 264) = "immersion";
  *(v2 + 272) = 9;
  *(v2 + 280) = 2;
  *(v2 + 288) = "textSize";
  *(v2 + 296) = 8;
  *(v2 + 304) = 2;
  sub_268CD0F7C();
  v5 = sub_268F9B5C4();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 4;
        break;
      case 5:
        v6 = 5;
        break;
      case 6:
        v6 = 6;
        break;
      case 7:
        v6 = 7;
        break;
      case 8:
        v6 = 8;
        break;
      case 9:
        v6 = 9;
        break;
      case 10:
        v6 = 10;
        break;
      case 11:
        v6 = 11;
        break;
      case 12:
        v6 = 12;
        break;
      default:

        *v4 = 13;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

void static NumericSettingIdentifier.allCases.getter()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  sub_268CD0F7C();
}

uint64_t sub_268EB0030()
{
  v7 = *v0;
  if (*v0)
  {
    switch(v7)
    {
      case 1:
        sub_268D35434();

        v5 = sub_268D36508();

        return v5;
      case 2:
        sub_268D35434();

        v4 = sub_268D36508();

        return v4;
      case 7:
        return sub_268F9AEF4();
      case 12:
        sub_268D35434();

        v2 = sub_268D3A0B4();

        return v2;
      default:
        return 0;
    }
  }

  else
  {
    sub_268D35434();

    v3 = sub_268D39948();

    return v3;
  }
}

void sub_268EB0234(uint64_t a1@<X8>)
{
  v15 = 0;
  v15 = *v1;
  v13 = 0;
  v14 = 0;
  if (v15 == 1)
  {
    v9 = sub_268F9AEF4();
    v10 = v2;

    v13 = v9;
    v14 = v10;

    v11 = v10;
  }

  else
  {
    if (v15 != 2)
    {
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a1, 1);
      sub_268CD9D30(&v13);
      return;
    }

    v7 = sub_268F9AEF4();
    v8 = v3;

    v13 = v7;
    v14 = v8;

    v11 = v8;
  }

  if (v11)
  {
    sub_268F9A9A4();
    v5 = sub_268F9A9C4();
    (*(*(v5 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    v6 = sub_268F9A9C4();
    (*(*(v6 - 8) + 56))(a1, 1);
  }

  sub_268CD9D30(&v13);
}

void sub_268EB0474(uint64_t a1@<X8>)
{
  v15 = 0;
  v15 = *v1;
  v13 = 0;
  v14 = 0;
  if (v15 == 1)
  {
    v9 = sub_268F9AEF4();
    v10 = v2;

    v13 = v9;
    v14 = v10;

    v11 = v10;
  }

  else
  {
    if (v15 != 2)
    {
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a1, 1);
      sub_268CD9D30(&v13);
      return;
    }

    v7 = sub_268F9AEF4();
    v8 = v3;

    v13 = v7;
    v14 = v8;

    v11 = v8;
  }

  if (v11)
  {
    sub_268F9A9A4();
    v5 = sub_268F9A9C4();
    (*(*(v5 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    v6 = sub_268F9A9C4();
    (*(*(v6 - 8) + 56))(a1, 1);
  }

  sub_268CD9D30(&v13);
}

uint64_t sub_268EB06B4()
{
  v6 = 0;
  v6 = *v0;
  sub_268F9B734();
  *v1 = 7;
  v1[1] = 9;
  v1[2] = 8;
  sub_268CD0F7C();
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
  sub_268DB7A80();
  sub_268D91118();
  v4 = sub_268F9AFC4();
  sub_268CD7930(&v5);
  return v4 & 1;
}

uint64_t sub_268EB0794()
{
  if (*v0 == 11)
  {
    sub_268E53518();
    SettingsFeatureFlagsImpl.isImmersionEnabled()();
  }

  return sub_268F9AEF4();
}

unint64_t sub_268EB0AEC()
{
  v2 = qword_280FE3F38;
  if (!qword_280FE3F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB0C5C@<X0>(uint64_t *a1@<X8>)
{
  result = NumericSettingIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EB0D00(uint64_t a1, uint64_t a2)
{
  sub_268EB0D58();
  sub_268EB0DD4();
  sub_268EB0AEC();
  return sub_268F9A4A4();
}

unint64_t sub_268EB0D58()
{
  v2 = qword_2802DDD58;
  if (!qword_2802DDD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB0DD4()
{
  v2 = qword_2802DDD60;
  if (!qword_2802DDD60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB0E98()
{
  v2 = qword_2802DDD68;
  if (!qword_2802DDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB0FC0()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1618 = v2;
  return result;
}

uint64_t *sub_268EB1000()
{
  if (qword_2802DB788 != -1)
  {
    swift_once();
  }

  return &qword_2802F1618;
}

uint64_t sub_268EB1060()
{
  v0 = sub_268EB1000();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EB1098()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_268EB10C4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = v6;

  v6[12] = a3;
  sub_268CDE730(a1, v16);
  sub_268CDF978(v16, v6 + 2);
  sub_268CDE730(a2, v15);
  sub_268CDF978(v15, v6 + 7);

  v6[13] = a4;

  v6[14] = a5;

  v6[15] = a6;

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_268EB11EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268F9B284();
  v3 = sub_268DC9AA0();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v7, &dword_268CBE000, v8, "SetLabeledSettingHandleIntentFlowStrategy: makeSiriKitIntentHandler.", 68, 2);

  MEMORY[0x277D82BD8](v8);

  v4 = sub_268EB1000();
  MEMORY[0x277D82BE0](*v4);
  MEMORY[0x277D82BE0](a2);
  sub_268DC0720();
  sub_268F99694();
  v5 = sub_268F996A4();
  return (*(*(v5 - 8) + 56))(a3, 0, 1);
}

uint64_t sub_268EB1354(uint64_t a1, uint64_t a2)
{
  v3[23] = v2;
  v3[22] = a2;
  v3[21] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[26] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](sub_268EB14EC, 0);
}

uint64_t sub_268EB14EC(uint64_t a1)
{
  v18 = v1[29];
  v15 = v1[26];
  v19 = v1[25];
  v1[17] = v1;
  v13 = sub_268F9B284();
  v2 = sub_268DC9AA0();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "SetLabeledSettingHandleIntentFlowStrategy: makeIntentHandledResponse.", 69, 2);

  MEMORY[0x277D82BD8](v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDD70, &qword_268FA7DF0);
  sub_268F99B34();
  v17 = sub_268F99B44();
  v16 = sub_268F99B24();
  sub_268E8A910(v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);

  sub_268D2DFAC(v19, (v1 + 20), v18);
  v10 = v12[29];
  v9 = v12[27];
  v11 = v12[24];
  v6 = v12[23];
  v7 = v12[21];
  v8 = v12[28];
  sub_268CDE730(v6 + 16, (v12 + 2));
  sub_268CDE730(v6 + 16, (v12 + 7));
  __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
  sub_268F997C4();
  sub_268D34954();
  sub_268F9B734();
  v3 = sub_268F999A4();
  (*(*(v3 - 8) + 56))(v11, 1);
  v12[12] = 0;
  v12[13] = 0;
  v12[14] = 0;
  v12[15] = 0;
  v12[16] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v7[3] = sub_268F99C74();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_268F998D4();

  sub_268D28414(v12 + 12);
  sub_268D34AC0(v11);

  __swift_destroy_boxed_opaque_existential_0(v12 + 7);
  __swift_destroy_boxed_opaque_existential_0(v12 + 2);
  (*(v8 + 8))(v10, v9);

  v4 = *(v12[17] + 8);

  return v4();
}

uint64_t sub_268EB1998(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a2;
  v3[23] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[21] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[26] = swift_task_alloc();
  v3[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[28] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](sub_268EB1B34, 0);
}

uint64_t sub_268EB1B34(uint64_t a1)
{
  v20 = v1[31];
  v16 = v1[28];
  v21 = v1[27];
  v1[17] = v1;
  v14 = sub_268F9B284();
  v2 = sub_268DC9AA0();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v14, &dword_268CBE000, v15, "SetLabeledSettingHandleIntentFlowStrategy: makeFailureHandlingIntentResponse.", 77, 2);

  MEMORY[0x277D82BD8](v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDD70, &qword_268FA7DF0);
  v19 = sub_268F99B34();
  v18 = sub_268F99B44();
  v17 = sub_268F99B24();
  sub_268E8AA78(v19, v18, v17, v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);

  sub_268D2DFAC(v21, (v1 + 20), v20);
  v11 = v13[25];
  sub_268D34954();
  v12 = sub_268F9B734();
  v13[21] = v12;
  sub_268CDE730(v11 + 16, (v13 + 2));
  sub_268CDE730(v11 + 16, (v13 + 7));
  __swift_project_boxed_opaque_existential_1(v13 + 7, v13[10]);
  sub_268F997C4();
  v13[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D349B8();
  sub_268F9AF84();
  v9 = v13[31];
  v8 = v13[29];
  v10 = v13[26];
  v6 = v13[23];
  v7 = v13[30];
  v3 = sub_268F999A4();
  (*(*(v3 - 8) + 56))(v10, 1);
  v13[12] = 0;
  v13[13] = 0;
  v13[14] = 0;
  v13[15] = 0;
  v13[16] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v6[3] = sub_268F99C74();
  v6[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_268F998D4();

  sub_268D28414(v13 + 12);
  sub_268D34AC0(v10);

  __swift_destroy_boxed_opaque_existential_0(v13 + 7);
  __swift_destroy_boxed_opaque_existential_0(v13 + 2);

  (*(v7 + 8))(v9, v8);

  v4 = *(v13[17] + 8);

  return v4();
}

uint64_t sub_268EB20B0(void *a1, void *a2)
{
  v55[1] = 0;
  v52 = 0;
  v55[3] = a1;
  v55[2] = a2;
  sub_268D34954();
  v55[0] = sub_268F9B734();
  v43 = [a2 errorDetail];
  if (v43)
  {
    v36 = sub_268F9AE24();
    v37 = v2;
    MEMORY[0x277D82BD8](v43);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v34 = sub_268E948B8(4);
  v35 = v3;

  v53[0] = v38;
  v53[1] = v39;
  *&v54 = v34;
  *(&v54 + 1) = v35;
  if (v39)
  {
    sub_268D28874(v53, &v46);
    if (*(&v54 + 1))
    {
      v45 = v46;
      v44 = v54;
      v32 = MEMORY[0x26D62DB50](v46, *(&v46 + 1), v54, *(&v54 + 1));
      sub_268CD9D30(&v44);
      sub_268CD9D30(&v45);
      sub_268CD9D30(v53);
      v33 = v32;
      goto LABEL_10;
    }

    sub_268CD9D30(&v46);
    goto LABEL_12;
  }

  if (*(&v54 + 1))
  {
LABEL_12:
    sub_268D28550(v53);
    v33 = 0;
    goto LABEL_10;
  }

  sub_268CD9D30(v53);
  v33 = 1;
LABEL_10:

  if (v33)
  {

    v30 = *(v41 + 112);

    v31 = [a1 settingMetadata];
    if (v31)
    {
      v25 = [v31 settingId];
      v26 = sub_268F9AE24();
      v27 = v4;
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v25);
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v24 = sub_268F36E44(v30, v28, v29);

    if (v24)
    {
      v52 = v24;
      v23 = sub_268F9B284();
      v5 = sub_268DC7CC8();
      oslog = *v5;
      MEMORY[0x277D82BE0](*v5);
      MEMORY[0x277D82BE0](v24);
      v16 = swift_allocObject();
      *(v16 + 16) = v24;
      v18 = swift_allocObject();
      *(v18 + 16) = 32;
      v19 = swift_allocObject();
      *(v19 + 16) = 8;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_268D350F4;
      *(v17 + 24) = v16;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_268CD7608;
      *(v20 + 24) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v21 = v6;

      *v21 = sub_268CD7600;
      v21[1] = v18;

      v21[2] = sub_268CD7600;
      v21[3] = v19;

      v21[4] = sub_268CD7614;
      v21[5] = v20;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v23))
      {
        buf = sub_268F9B3A4();
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v14 = sub_268CD5448(0, v12, v12);
        v15 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v51[0] = buf;
        v50 = v14;
        v49 = v15;
        sub_268CD549C(2, v51);
        sub_268CD549C(1, v51);
        v47 = sub_268CD7600;
        v48 = v18;
        sub_268CD54B0(&v47, v51, &v50, &v49);
        v47 = sub_268CD7600;
        v48 = v19;
        sub_268CD54B0(&v47, v51, &v50, &v49);
        v47 = sub_268CD7614;
        v48 = v20;
        sub_268CD54B0(&v47, v51, &v50, &v49);
        _os_log_impl(&dword_268CBE000, oslog, v23, "HandleLabeledSettingFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v14, 0, v12);
        sub_268CD54FC(v15, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v24);
      v51[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v24);
    }

    else
    {
      v10 = sub_268F9B284();
      v7 = sub_268DC7CC8();
      v11 = *v7;
      MEMORY[0x277D82BE0](*v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v10, &dword_268CBE000, v11, "HandleLabeledSettingFlowStrategy: could not render punchout button.", 67, 2);

      MEMORY[0x277D82BD8](v11);
    }
  }

  v9 = v55[0];

  sub_268CD7930(v55);
  return v9;
}

uint64_t sub_268EB296C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v2;
}

uint64_t sub_268EB2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v6, a4);
}

uint64_t sub_268EB2AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v6, a4);
}

uint64_t sub_268EB2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v6, a4);
}

uint64_t sub_268EB2C88(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EB1354(a1, a2);
}

uint64_t sub_268EB2D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v6, a4);
}

uint64_t sub_268EB2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v6, a4);
}

uint64_t sub_268EB2EF0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EB1998(a1, a2);
}

uint64_t sub_268EB2FC8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  v2 = sub_268EB3098();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EB3098()
{
  v2 = qword_2802DDD78;
  if (!qword_2802DDD78)
  {
    type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB3118(uint64_t a1)
{
  result = sub_268EB3144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EB3144()
{
  v2 = qword_2802DDD80;
  if (!qword_2802DDD80)
  {
    type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB31DC()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1620 = v2;
  return result;
}

uint64_t *sub_268EB321C()
{
  if (qword_2802DB790 != -1)
  {
    swift_once();
  }

  return &qword_2802F1620;
}

uint64_t sub_268EB327C()
{
  v0 = sub_268EB321C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EB32B4()
{
  v9 = 0;
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5[1], v0, v1, v2);
  v8 = v5 - v6;
  v9 = v3;
  sub_268EB33CC(v3, v5 - v6);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(uint64_t a1)
{
  v2 = qword_2802DDDA0;
  if (!qword_2802DDDA0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_268EB33CC(const void *a1, void *a2)
{
  v6 = type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268EB34F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268EB32B4();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268EB3618()
{
  v2 = qword_2802DDD88;
  if (!qword_2802DDD88)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB3710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = v2;
  v112 = v3;
  v116 = "SetLabeledSettingFlowStrategy: actionForInput.";
  v92 = "SetLabeledSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v93 = "SetLabeledSettingFlowStrategy: %@ handling NLX intent.";
  v94 = "SetLabeledSettingFlowStrategy: Error parsing uso parse.";
  v95 = "SetLabeledSettingFlowStrategy: %@ handling NLV3Intent.";
  v135 = 0;
  v134 = 0;
  v137 = 0;
  v96 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v136 = 0;
  v126 = 0;
  v125 = 0;
  v114 = 0;
  v97 = sub_268F99CB4();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v101 = &v44[-v100];
  v102 = sub_268F99C64();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, v8, v9, v10);
  v106 = &v44[-v105];
  v137 = &v44[-v105];
  v107 = sub_268F9A704();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, v11, v12, v13);
  v111 = &v44[-v110];
  v136 = &v44[-v110];
  v123 = sub_268F99C34();
  v120 = *(v123 - 8);
  v121 = v123 - 8;
  v113 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123, v14, v15, v16);
  v122 = &v44[-v113];
  v135 = a1;
  v134 = v17;
  v117 = sub_268F9B284();
  v119 = *sub_268DC97D0();
  MEMORY[0x277D82BE0](v119);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v118 = sub_268F9B734();
  sub_268F9AC14(v117, &dword_268CBE000, v119, v116, 46, 2);

  MEMORY[0x277D82BD8](v119);
  sub_268F99BE4();
  v124 = (*(v120 + 88))(v122, v123);
  if (v124 == *MEMORY[0x277D5C128])
  {
    (*(v120 + 96))(v122, v123);
    (*(v108 + 32))(v111, v122, v107);
    v136 = v111;
    v88 = v128;
    memset(v128, 0, sizeof(v128));
    v87 = &v127;
    sub_268D8E52C(&v127);
    v89 = sub_268DA7690(v111, v88, v87);
    sub_268D28414(v87);
    sub_268D28414(v88);
    v126 = v89;
    MEMORY[0x277D82BE0](v89);
    if (v89)
    {
      v86 = v89;
      v84 = v89;
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v83 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v83 = 0;
      }

      v82 = v83;
    }

    else
    {
      v82 = 0;
    }

    v79 = v82 != 0;
    v125 = v82 != 0;
    MEMORY[0x277D82BD8](v82);
    v77 = sub_268F9B284();
    v78 = *sub_268DC99B0();
    MEMORY[0x277D82BE0](v78);
    v80 = sub_268F9B734();
    v81 = v18;
    if (v79)
    {
      v76 = sub_268F9AEF4();
      v75 = v19;
      v81[3] = MEMORY[0x277D837D0];
      v20 = sub_268CDD224();
      v21 = v75;
      v22 = v81;
      v23 = v20;
      v24 = v76;
    }

    else
    {
      v74 = sub_268F9AEF4();
      v73 = v25;
      v81[3] = MEMORY[0x277D837D0];
      v26 = sub_268CDD224();
      v21 = v73;
      v22 = v81;
      v23 = v26;
      v24 = v74;
    }

    v81[4] = v23;
    *v22 = v24;
    v22[1] = v21;
    sub_268CD0F7C();
    v72 = v27;
    sub_268F9AC14(v77, &dword_268CBE000, v78, v95, 54, 2);

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v28 = MEMORY[0x277D82BD8](v89);
    return (*(v108 + 8))(v111, v107, v28);
  }

  else if (v124 == *MEMORY[0x277D5C160])
  {
    v29 = v96;
    v30 = v106;
    (*(v120 + 96))(v122, v123);
    (*(v103 + 32))(v30, v122, v102);
    v137 = v30;
    sub_268F99C54();
    v68 = &v133;
    sub_268CDE730(v112 + 16, &v133);
    v69 = &v132;
    sub_268D8E52C(&v132);
    v70 = sub_268E17680(v101, v68, v69);
    v71 = v29;
    if (v29)
    {
      v51 = v71;
      sub_268D28414(&v132);
      sub_268D28414(&v133);
      (*(v98 + 8))(v101, v97);
      v42 = v51;
      v131 = v51;
      v48 = sub_268F9B294();
      v50 = *sub_268DC99B0();
      MEMORY[0x277D82BE0](v50);
      v49 = sub_268F9B734();
      sub_268F9AC14(v48, &dword_268CBE000, v50, v94, 55, 2);

      MEMORY[0x277D82BD8](v50);

      sub_268F998A4();
      return (*(v103 + 8))(v106, v102);
    }

    else
    {
      v67 = v70;
      sub_268D28414(&v132);
      sub_268D28414(&v133);
      (*(v98 + 8))(v101, v97);
      v130 = v67;
      MEMORY[0x277D82BE0](v67);
      if (v67)
      {
        v66 = v67;
        v64 = v67;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v63 = v65;
        }

        else
        {
          MEMORY[0x277D82BD8](v64);
          v63 = 0;
        }

        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v59 = v62 != 0;
      v129 = v62 != 0;
      MEMORY[0x277D82BD8](v62);
      v57 = sub_268F9B284();
      v58 = *sub_268DC99B0();
      MEMORY[0x277D82BE0](v58);
      v60 = sub_268F9B734();
      v61 = v31;
      if (v59)
      {
        v56 = sub_268F9AEF4();
        v55 = v32;
        v61[3] = MEMORY[0x277D837D0];
        v33 = sub_268CDD224();
        v34 = v55;
        v35 = v61;
        v36 = v33;
        v37 = v56;
      }

      else
      {
        v54 = sub_268F9AEF4();
        v53 = v38;
        v61[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v34 = v53;
        v35 = v61;
        v36 = v39;
        v37 = v54;
      }

      v61[4] = v36;
      *v35 = v37;
      v35[1] = v34;
      sub_268CD0F7C();
      v52 = v40;
      sub_268F9AC14(v57, &dword_268CBE000, v58, v93, 54, 2);

      MEMORY[0x277D82BD8](v58);
      if (v59)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v41 = MEMORY[0x277D82BD8](v67);
      return (*(v103 + 8))(v106, v102, v41);
    }
  }

  else
  {
    v45 = sub_268F9B284();
    v47 = *sub_268DC99B0();
    MEMORY[0x277D82BE0](v47);
    v46 = sub_268F9B734();
    sub_268F9AC14(v45, &dword_268CBE000, v47, v92, 72, 2);

    MEMORY[0x277D82BD8](v47);
    sub_268F998A4();
    return (*(v120 + 8))(v122, v123);
  }
}

uint64_t sub_268EB4694(uint64_t a1, uint64_t a2)
{
  v3[33] = v2;
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = sub_268F99C64();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v6 = sub_268F9A704();
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v7 = sub_268F99C34();
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;

  return MEMORY[0x2822009F8](sub_268EB4950, 0);
}

uint64_t sub_268EB4950(uint64_t a1)
{
  v82 = v1[47];
  v80 = v1[45];
  v81 = v1[44];
  v78 = v1[32];
  v1[22] = v1;
  v76 = sub_268F9B284();
  v2 = sub_268DC99B0();
  v77 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v76, &dword_268CBE000, v77, "SetLabeledSettingFlowStrategy: makeIntentFromParse.", 51, 2);

  v3 = MEMORY[0x277D82BD8](v77);
  v79 = *(v80 + 16);
  (v79)(v82, v78, v81, v3);
  v83 = (*(v80 + 88))(v82, v81);
  if (v83 == *MEMORY[0x277D5C128])
  {
    v71 = v75[47];
    v73 = v75[43];
    v72 = v75[40];
    v70 = v75[41];
    (*(v75[45] + 96))();
    (*(v70 + 32))(v73, v71, v72);
    v75[30] = v73;
    v75[12] = 0;
    v75[13] = 0;
    v75[14] = 0;
    v75[15] = 0;
    v75[16] = 0;
    sub_268D8E52C(v75 + 17);
    v74 = sub_268DA7690(v73, v75 + 12, v75 + 17);
    sub_268D28414(v75 + 17);
    sub_268D28414(v75 + 12);
    if (v74)
    {
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v68 = v69;
      }

      else
      {
        MEMORY[0x277D82BD8](v74);
        v68 = 0;
      }

      v67 = v68;
    }

    else
    {
      v67 = 0;
    }

    if (v67)
    {
      v4 = v75[43];
      v5 = v75[41];
      v6 = v75[40];
      v75[31] = v67;
      (*(v5 + 8))(v4, v6);
      v66 = v67;
      goto LABEL_22;
    }

    v64 = v75[43];
    v58 = v75[42];
    v65 = v75[40];
    v57 = v75[41];
    v7 = sub_268DC99B0();
    v63 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v62 = sub_268F9B294();
    sub_268F9B734();
    v61 = v8;
    (*(v57 + 16))(v58, v64, v65);
    sub_268DA7B0C();
    v59 = sub_268F9AE74();
    v60 = v9;
    v61[3] = MEMORY[0x277D837D0];
    v61[4] = sub_268CDD224();
    *v61 = v59;
    v61[1] = v60;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v63, v62);

    MEMORY[0x277D82BD8](v63);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
    sub_268EB5870();
    swift_allocError();
    v79();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v57 + 8))(v64, v65);
LABEL_25:

    v17 = v56;
    v18 = *(v75[22] + 8);

    return v18(v17);
  }

  if (v83 != *MEMORY[0x277D5C160])
  {
    v41 = v75[47];
    v33 = v75[46];
    v42 = v75[44];
    v39 = v75[32];
    v40 = v75[45];
    v14 = sub_268DC99B0();
    v38 = *v14;
    MEMORY[0x277D82BE0](*v14);
    v37 = sub_268F9B294();
    sub_268F9B734();
    v36 = v15;
    (v79)(v33, v39, v42);
    v34 = sub_268F9AE64();
    v35 = v16;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04("Received not an NLV4 or NLv3IntentOnly: %@.", 43, 2, &dword_268CBE000, v38, v37);

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
    sub_268EB5870();
    swift_allocError();
    v79();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v40 + 8))(v41, v42);
    goto LABEL_25;
  }

  v51 = v75[47];
  v10 = v75[39];
  v52 = v75[37];
  v54 = v75[36];
  v53 = v75[33];
  v50 = v75[38];
  (*(v75[45] + 96))();
  (*(v50 + 32))(v10, v51, v52);
  v75[26] = v10;
  sub_268F99C54();
  sub_268CDE730(v53 + 16, (v75 + 2));
  sub_268D8E52C(v75 + 7);
  v55 = sub_268E17680(v54, v75 + 2, v75 + 7);
  v49 = v75[36];
  v48 = v75[34];
  v47 = v75[35];
  sub_268D28414(v75 + 7);
  sub_268D28414(v75 + 2);
  (*(v47 + 8))(v49, v48);
  if (v55)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v45 = v46;
    }

    else
    {
      MEMORY[0x277D82BD8](v55);
      v45 = 0;
    }

    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  if (!v44)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
    sub_268EB5870();
    v43 = swift_allocError();
    v79();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v31 = v75[39];
    v32 = v75[37];
    v30 = v75[38];
    v19 = v43;
    v75[27] = v43;
    v20 = sub_268DC99B0();
    v29 = *v20;
    MEMORY[0x277D82BE0](*v20);
    v28 = sub_268F9B294();
    sub_268F9B734();
    v27 = v21;
    v22 = v43;
    v75[28] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v25 = sub_268F9AE64();
    v26 = v23;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(0);
    sub_268EB5870();
    swift_allocError();
    v79();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v30 + 8))(v31, v32);
    goto LABEL_25;
  }

  v11 = v75[39];
  v12 = v75[38];
  v13 = v75[37];
  v75[29] = v44;
  (*(v12 + 8))(v11, v13);
  v66 = v44;
LABEL_22:

  v17 = v66;
  v18 = *(v75[22] + 8);

  return v18(v17);
}

unint64_t sub_268EB5870()
{
  v2 = qword_2802DDD90;
  if (!qword_2802DDD90)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB5914(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268EB4694(a1, a2);
}

uint64_t sub_268EB5A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v7, a5);
}

uint64_t sub_268EB5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v7, a5);
}

uint64_t sub_268EB5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v7, a5);
}

uint64_t sub_268EB5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v8, a6);
}

uint64_t sub_268EB5DC8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy();
  v2 = sub_268EB5E70();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EB5E70()
{
  v2 = qword_2802DDD98;
  if (!qword_2802DDD98)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v8, a6);
}

uint64_t sub_268EB604C(uint64_t a1)
{
  v3 = sub_268F99C34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_268EB60F4()
{
  v2 = qword_2802DDDB0;
  if (!qword_2802DDDB0)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB618C()
{
  v2 = qword_2802DDDB8;
  if (!qword_2802DDDB8)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB620C(uint64_t a1)
{
  result = sub_268EB60F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EB6268()
{
  v2 = qword_2802DDDC0;
  if (!qword_2802DDDC0)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB62E8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SettingIntent#BinarySettingButtonText";
  *(v2 + 8) = 37;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SettingIntent#BinarySettingName";
  *(v2 + 32) = 31;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SettingIntent#BinarySettingPageName";
  *(v2 + 56) = 35;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SettingIntent#CannotDo";
  *(v2 + 80) = 22;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SettingIntent#DeviceDoesNotSupportBinarySetting";
  *(v2 + 104) = 47;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SettingIntent#DeviceDoesNotSupportNumericSetting";
  *(v2 + 128) = 48;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SettingIntent#DisplaySettingsDisabledForCurrentMode";
  *(v2 + 152) = 51;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SettingIntent#FlashlightOverheated";
  *(v2 + 176) = 34;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SettingIntent#FlashlightUnavailable";
  *(v2 + 200) = 35;
  *(v2 + 208) = 2;
  *(v2 + 216) = "SettingIntent#FocusNotConfigured";
  *(v2 + 224) = 32;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SettingIntent#MultiSettingButtonText";
  *(v2 + 248) = 36;
  *(v2 + 256) = 2;
  *(v2 + 264) = "SettingIntent#MultiSettingName";
  *(v2 + 272) = 30;
  *(v2 + 280) = 2;
  *(v2 + 288) = "SettingIntent#MultiSettingNavigationButtonText";
  *(v2 + 296) = 46;
  *(v2 + 304) = 2;
  *(v2 + 312) = "SettingIntent#NotPermittedToDo";
  *(v2 + 320) = 30;
  *(v2 + 328) = 2;
  *(v2 + 336) = "SettingIntent#NumericSettingButtonText";
  *(v2 + 344) = 38;
  *(v2 + 352) = 2;
  *(v2 + 360) = "SettingIntent#NumericSettingName";
  *(v2 + 368) = 32;
  *(v2 + 376) = 2;
  *(v2 + 384) = "SettingIntent#ResourceNotDownloaded_Dialog";
  *(v2 + 392) = 42;
  *(v2 + 400) = 2;
  *(v2 + 408) = "SettingIntent#SettingNavigationButtonText";
  *(v2 + 416) = 41;
  *(v2 + 424) = 2;
  *(v2 + 432) = "SettingIntent#SettingsStaticLabel";
  *(v2 + 440) = 33;
  *(v2 + 448) = 2;
  *(v2 + 456) = "SettingIntent#SiriCannotChangeMultiSetting";
  *(v2 + 464) = 42;
  *(v2 + 472) = 2;
  *(v2 + 480) = "SettingIntent#SiriCannotChangeNumericSetting";
  *(v2 + 488) = 44;
  *(v2 + 496) = 2;
  *(v2 + 504) = "SettingIntent#SiriCannotChangeSetting";
  *(v2 + 512) = 37;
  *(v2 + 520) = 2;
  *(v2 + 528) = "SettingIntent#StandBy";
  *(v2 + 536) = 21;
  *(v2 + 544) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_48:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_48;
    case 2:
      v5 = 2;
      goto LABEL_48;
    case 3:
      v5 = 3;
      goto LABEL_48;
    case 4:
      v5 = 4;
      goto LABEL_48;
    case 5:
      v5 = 5;
      goto LABEL_48;
    case 6:
      v5 = 6;
      goto LABEL_48;
    case 7:
      v5 = 7;
      goto LABEL_48;
    case 8:
      v5 = 8;
      goto LABEL_48;
    case 9:
      v5 = 9;
      goto LABEL_48;
    case 10:
      v5 = 10;
      goto LABEL_48;
    case 11:
      v5 = 11;
      goto LABEL_48;
    case 12:
      v5 = 12;
      goto LABEL_48;
    case 13:
      v5 = 13;
      goto LABEL_48;
    case 14:
      v5 = 14;
      goto LABEL_48;
    case 15:
      v5 = 15;
      goto LABEL_48;
    case 16:
      v5 = 16;
      goto LABEL_48;
    case 17:
      v5 = 17;
      goto LABEL_48;
    case 18:
      v5 = 18;
      goto LABEL_48;
    case 19:
      v5 = 19;
      goto LABEL_48;
    case 20:
      v5 = 20;
      goto LABEL_48;
    case 21:
      v5 = 21;
      goto LABEL_48;
    case 22:
      v5 = 22;
      goto LABEL_48;
  }

  return 23;
}

unint64_t sub_268EB6E20()
{
  v2 = qword_2802DDDC8;
  if (!qword_2802DDDC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB6F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EB62E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EB6FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB69DC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EB6FD8(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EB7048, 0);
}

uint64_t sub_268EB7048()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = *(v11 + 40);
    v14[5] = type metadata accessor for SettingsBinarySetting(0);
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  v7 = *(v11 + 89);
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = MEMORY[0x277D839B0];
  *(v14 + 64) = v7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v11 + 64) = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  *(v11 + 72) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_268D7BB14;

  return v9(v12, v13, v8);
}

uint64_t sub_268EB72C4(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "localizedNameWithWordSettings";
  *(v2 + 32) = 29;
  *(v2 + 40) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268EB74D0()
{
  v2 = qword_2802DDDD0;
  if (!qword_2802DDDD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB761C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EB72C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EB7654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB73F8(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EB768C(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EB76FC, 0);
}

uint64_t sub_268EB76FC()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = *(v12 + 40);
    v15[5] = type metadata accessor for SettingsBinarySetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v8 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  v15[11] = MEMORY[0x277D839B0];
  *(v15 + 64) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v12 + 64) = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  *(v12 + 72) = v5;
  v6 = sub_268EB74D0();
  *v5 = *(v12 + 16);
  v5[1] = sub_268D7BB14;

  return v10(v13, v14, v9, &unk_2879948B0, v6);
}

uint64_t sub_268EB7990(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EB79DC, 0);
}

uint64_t sub_268EB79DC()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsBinarySetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

BOOL sub_268EB7BF8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "settingName";
  *(v2 + 8) = 11;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268EB7D50()
{
  v2 = qword_2802DDDD8;
  if (!qword_2802DDDD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDD8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EB7E9C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EB7BF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EB7EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB7CD0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EB7F0C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EB7F58, 0);
}

uint64_t sub_268EB7F58()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EB7D50();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994940, v5);
}

uint64_t sub_268EB818C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EB81D8, 0);
}

uint64_t sub_268EB81D8()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsBinarySetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EB8440()
{
  v2 = qword_2802DDDE0;
  if (!qword_2802DDDE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB858C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EB85D8, 0);
}

uint64_t sub_268EB85D8()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EB8440();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_2879949D0, v5);
}

uint64_t sub_268EB880C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EB8848, 0);
}

uint64_t sub_268EB8848()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

uint64_t sub_268EB899C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "random1#dialog1";
  *(v2 + 8) = 15;
  *(v2 + 16) = 2;
  *(v2 + 24) = "random1#dialog2";
  *(v2 + 32) = 15;
  *(v2 + 40) = 2;
  *(v2 + 48) = "random1#dialog3";
  *(v2 + 56) = 15;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EB8C30()
{
  v2 = qword_2802DDDE8;
  if (!qword_2802DDDE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB8D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EB899C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EB8DB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB8B18(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EB8DE8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EB8E24, 0);
}

uint64_t sub_268EB8E24()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EB8C30();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287994A60, v3);
}

uint64_t sub_268EB8F90(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 105) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 104) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268EB9020, 0);
}

uint64_t sub_268EB9020()
{
  v21 = v0[6];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 48);
    v20[5] = type metadata accessor for SettingsBinarySetting(0);
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = *(v17 + 56);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;

  if (v15)
  {
    v14 = *(v17 + 56);
    v20[11] = sub_268F9AA44();
    v20[8] = v14;
  }

  else
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  v13 = *(v17 + 105);
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;
  if (v13 == 2)
  {
    v20[14] = 0;
    v20[15] = 0;
    v20[16] = 0;
    v20[17] = 0;
  }

  else
  {
    v6 = *(v17 + 105);
    v20[17] = MEMORY[0x277D839B0];
    *(v20 + 112) = v6 & 1;
  }

  v10 = *(v17 + 106);
  v20[18] = sub_268F9AEF4();
  v20[19] = v7;
  v20[23] = MEMORY[0x277D839B0];
  *(v20 + 160) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v17 + 80) = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  *(v17 + 88) = v8;
  *v8 = *(v17 + 16);
  v8[1] = sub_268EB945C;

  return v12(v18, v19, v11);
}

uint64_t sub_268EB945C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EB9644, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EB9644()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EB9704(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog10";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog11";
  *(v2 + 56) = 8;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog12";
  *(v2 + 80) = 8;
  *(v2 + 88) = 2;
  *(v2 + 96) = "dialog13";
  *(v2 + 104) = 8;
  *(v2 + 112) = 2;
  *(v2 + 120) = "dialog14";
  *(v2 + 128) = 8;
  *(v2 + 136) = 2;
  *(v2 + 144) = "dialog2";
  *(v2 + 152) = 7;
  *(v2 + 160) = 2;
  *(v2 + 168) = "dialog3";
  *(v2 + 176) = 7;
  *(v2 + 184) = 2;
  *(v2 + 192) = "dialog4";
  *(v2 + 200) = 7;
  *(v2 + 208) = 2;
  *(v2 + 216) = "dialog5";
  *(v2 + 224) = 7;
  *(v2 + 232) = 2;
  *(v2 + 240) = "dialog6";
  *(v2 + 248) = 7;
  *(v2 + 256) = 2;
  *(v2 + 264) = "dialog7";
  *(v2 + 272) = 7;
  *(v2 + 280) = 2;
  *(v2 + 288) = "dialog8";
  *(v2 + 296) = 7;
  *(v2 + 304) = 2;
  *(v2 + 312) = "dialog9";
  *(v2 + 320) = 7;
  *(v2 + 328) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_30:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_30;
    case 2:
      v5 = 2;
      goto LABEL_30;
    case 3:
      v5 = 3;
      goto LABEL_30;
    case 4:
      v5 = 4;
      goto LABEL_30;
    case 5:
      v5 = 5;
      goto LABEL_30;
    case 6:
      v5 = 6;
      goto LABEL_30;
    case 7:
      v5 = 7;
      goto LABEL_30;
    case 8:
      v5 = 8;
      goto LABEL_30;
    case 9:
      v5 = 9;
      goto LABEL_30;
    case 10:
      v5 = 10;
      goto LABEL_30;
    case 11:
      v5 = 11;
      goto LABEL_30;
    case 12:
      v5 = 12;
      goto LABEL_30;
    case 13:
      v5 = 13;
      goto LABEL_30;
  }

  return 14;
}

unint64_t sub_268EB9E54()
{
  v2 = qword_2802DDDF0;
  if (!qword_2802DDDF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB9FA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EB9704(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EB9FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB9B78(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EBA00C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 105) = a3 & 1;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 104) = a3 & 1;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268EBA0AC, 0);
}

uint64_t sub_268EBA0AC()
{
  v22 = v0[6];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = *(v18 + 48);
    v21[5] = type metadata accessor for SettingsBinarySetting(0);
    v21[2] = v17;
  }

  else
  {
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  v16 = *(v18 + 56);
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;

  if (v16)
  {
    v15 = *(v18 + 56);
    v21[11] = sub_268F9AA44();
    v21[8] = v15;
  }

  else
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  v12 = *(v18 + 106);
  v10 = *(v18 + 105);
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;
  v11 = MEMORY[0x277D839B0];
  v21[17] = MEMORY[0x277D839B0];
  *(v21 + 112) = v10;
  v21[18] = sub_268F9AEF4();
  v21[19] = v6;
  v21[23] = v11;
  *(v21 + 160) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v18 + 80) = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = swift_task_alloc();
  *(v18 + 88) = v7;
  v8 = sub_268EB9E54();
  *v7 = *(v18 + 16);
  v7[1] = sub_268EB945C;

  return v14(v19, v20, v13, &unk_287994AF0, v8);
}

uint64_t sub_268EBA484(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EBA4F4, 0);
}

uint64_t sub_268EBA4F4()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = *(v11 + 40);
    v14[5] = sub_268F9AA44();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  v7 = *(v11 + 89);
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = MEMORY[0x277D839B0];
  *(v14 + 64) = v7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v11 + 64) = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  *(v11 + 72) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_268D7BB14;

  return v9(v12, v13, v8);
}

uint64_t sub_268EBA770(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog4";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  *(v2 + 96) = "dialog5";
  *(v2 + 104) = 7;
  *(v2 + 112) = 2;
  *(v2 + 120) = "dialog6";
  *(v2 + 128) = 7;
  *(v2 + 136) = 2;
  *(v2 + 144) = "dialog7";
  *(v2 + 152) = 7;
  *(v2 + 160) = 2;
  *(v2 + 168) = "dialog8";
  *(v2 + 176) = 7;
  *(v2 + 184) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_18:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
      goto LABEL_18;
    case 6:
      v5 = 6;
      goto LABEL_18;
    case 7:
      v5 = 7;
      goto LABEL_18;
  }

  return 8;
}

unint64_t sub_268EBAC8C()
{
  v2 = qword_2802DDDF8;
  if (!qword_2802DDDF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBADD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBA770(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EBAE10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBAA48(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EBAE44(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EBAEB4, 0);
}

uint64_t sub_268EBAEB4()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = *(v12 + 40);
    v15[5] = sub_268F9AA44();
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v8 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  v15[11] = MEMORY[0x277D839B0];
  *(v15 + 64) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v12 + 64) = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  *(v12 + 72) = v5;
  v6 = sub_268EBAC8C();
  *v5 = *(v12 + 16);
  v5[1] = sub_268D7BB14;

  return v10(v13, v14, v9, &unk_287994B80, v6);
}

uint64_t sub_268EBB148()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBB184, 0);
}

uint64_t sub_268EBB184()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268EBB324()
{
  v2 = qword_2802DDE00;
  if (!qword_2802DDE00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBB470()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBB4AC, 0);
}

uint64_t sub_268EBB4AC()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EBB324();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287994C10, v3);
}

uint64_t sub_268EBB618()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBB654, 0);
}

uint64_t sub_268EBB654()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268EBB7F4()
{
  v2 = qword_2802DDE08;
  if (!qword_2802DDE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBB940()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBB97C, 0);
}

uint64_t sub_268EBB97C()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EBB7F4();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287994CA0, v3);
}

uint64_t sub_268EBBAE8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBBB24, 0);
}

uint64_t sub_268EBBB24()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268EBBCC4()
{
  v2 = qword_2802DDE10;
  if (!qword_2802DDE10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBBE10()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBBE4C, 0);
}

uint64_t sub_268EBBE4C()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EBBCC4();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287994D30, v3);
}

uint64_t sub_268EBBFB8(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBC004, 0);
}

uint64_t sub_268EBC004()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsBinarySetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EBC26C()
{
  v2 = qword_2802DDE18;
  if (!qword_2802DDE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBC3B8(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBC404, 0);
}

uint64_t sub_268EBC404()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EBC26C();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994DC0, v5);
}

uint64_t sub_268EBC638(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBC684, 0);
}

uint64_t sub_268EBC684()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsMultiSetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

BOOL sub_268EBC8A0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "localizedNameWithWordSettings";
  *(v2 + 8) = 29;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268EBC9F8()
{
  v2 = qword_2802DDE20;
  if (!qword_2802DDE20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE20);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBCB44@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBC8A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EBCB84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBC978();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBCBB4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBCC00, 0);
}

uint64_t sub_268EBCC00()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EBC9F8();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994E50, v5);
}

uint64_t sub_268EBCE34(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBCE80, 0);
}

uint64_t sub_268EBCE80()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsMultiSetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EBD0E8()
{
  v2 = qword_2802DDE28;
  if (!qword_2802DDE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBD234(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBD280, 0);
}

uint64_t sub_268EBD280()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EBD0E8();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994EE0, v5);
}

uint64_t sub_268EBD4B4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBD500, 0);
}

uint64_t sub_268EBD500()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsMultiSetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

BOOL sub_268EBD71C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "localizedMultipleSettingsName";
  *(v2 + 8) = 29;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268EBD874()
{
  v2 = qword_2802DDE30;
  if (!qword_2802DDE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE30);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBD9C0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBD71C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EBDA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBD7F4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBDA30(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBDA7C, 0);
}

uint64_t sub_268EBDA7C()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EBD874();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287994F70, v5);
}

uint64_t sub_268EBDCB0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBDCEC, 0);
}

uint64_t sub_268EBDCEC()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268EBDE8C()
{
  v2 = qword_2802DDE38;
  if (!qword_2802DDE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBDFD8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBE014, 0);
}

uint64_t sub_268EBE014()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EBDE8C();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287995000, v3);
}

uint64_t sub_268EBE180(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EBE1F0, 0);
}

uint64_t sub_268EBE1F0()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = *(v11 + 40);
    v14[5] = type metadata accessor for SettingsNumericSetting(0);
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  v7 = *(v11 + 89);
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = MEMORY[0x277D839B0];
  *(v14 + 64) = v7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v11 + 64) = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  *(v11 + 72) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_268D7BB14;

  return v9(v12, v13, v8);
}

uint64_t sub_268EBE46C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "titleTextNumericSettings";
  *(v2 + 32) = 24;
  *(v2 + 40) = 2;
  *(v2 + 48) = "titleTextNumericSettingsNameOnly";
  *(v2 + 56) = 32;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EBE704()
{
  v2 = qword_2802DDE40;
  if (!qword_2802DDE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBE850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBE46C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EBE888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBE5EC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EBE8BC(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EBE92C, 0);
}

uint64_t sub_268EBE92C()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = *(v12 + 40);
    v15[5] = type metadata accessor for SettingsNumericSetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v8 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  v15[11] = MEMORY[0x277D839B0];
  *(v15 + 64) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v12 + 64) = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  *(v12 + 72) = v5;
  v6 = sub_268EBE704();
  *v5 = *(v12 + 16);
  v5[1] = sub_268D7BB14;

  return v10(v13, v14, v9, &unk_287995090, v6);
}

uint64_t sub_268EBEBC0(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBEC0C, 0);
}

uint64_t sub_268EBEC0C()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsNumericSetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268EBEE74()
{
  v2 = qword_2802DDE48;
  if (!qword_2802DDE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBEFC0(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268EBF00C, 0);
}

uint64_t sub_268EBF00C()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsNumericSetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268EBEE74();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_287995120, v5);
}

uint64_t sub_268EBF240()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBF27C, 0);
}

uint64_t sub_268EBF27C()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

BOOL sub_268EBF3D0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "Status";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268EBF528()
{
  v2 = qword_2802DDE50;
  if (!qword_2802DDE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE50);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBF674@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBF3D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EBF6B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBF4A8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBF6E4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EBF720, 0);
}

uint64_t sub_268EBF720()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EBF528();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_2879951B0, v3);
}

uint64_t sub_268EBF88C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = v3;
  *(v4 + 105) = a3 & 1;
  *(v4 + 56) = a2;
  *(v4 + 48) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 104) = a3 & 1;
  *(v4 + 40) = v3;
  return MEMORY[0x2822009F8](sub_268EBF90C, 0);
}

uint64_t sub_268EBF90C()
{
  v18 = v0[6];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = *(v14 + 48);
    v17[5] = type metadata accessor for SettingsBinarySetting(0);
    v17[2] = v13;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v12 = *(v14 + 56);
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;

  if (v12)
  {
    v11 = *(v14 + 56);
    v17[11] = type metadata accessor for SettingsMultiSetting(0);
    v17[8] = v11;
  }

  else
  {
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
  }

  v8 = *(v14 + 105);
  v17[12] = sub_268F9AEF4();
  v17[13] = v5;
  v17[17] = MEMORY[0x277D839B0];
  *(v17 + 112) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v14 + 80) = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  *(v14 + 88) = v6;
  *v6 = *(v14 + 16);
  v6[1] = sub_268EBFC60;

  return v10(v15, v16, v9);
}

uint64_t sub_268EBFC60(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EBFE3C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EBFE3C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EBFEF8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "localizedSettingsName";
  *(v2 + 80) = 21;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268EC0210()
{
  v2 = qword_2802DDE58;
  if (!qword_2802DDE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC035C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EBFEF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EC0394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC00BC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EC03C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = v3;
  *(v4 + 105) = a3 & 1;
  *(v4 + 56) = a2;
  *(v4 + 48) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 104) = a3 & 1;
  *(v4 + 40) = v3;
  return MEMORY[0x2822009F8](sub_268EC0448, 0);
}

uint64_t sub_268EC0448()
{
  v19 = v0[6];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = *(v15 + 48);
    v18[5] = type metadata accessor for SettingsBinarySetting(0);
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = *(v15 + 56);
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;

  if (v13)
  {
    v12 = *(v15 + 56);
    v18[11] = type metadata accessor for SettingsMultiSetting(0);
    v18[8] = v12;
  }

  else
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  v9 = *(v15 + 105);
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;
  v18[17] = MEMORY[0x277D839B0];
  *(v18 + 112) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v15 + 80) = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = swift_task_alloc();
  *(v15 + 88) = v6;
  v7 = sub_268EC0210();
  *v6 = *(v15 + 16);
  v6[1] = sub_268EBFC60;

  return v11(v16, v17, v10, &unk_287995240, v7);
}

uint64_t sub_268EC07B4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EC07F0, 0);
}

uint64_t sub_268EC07F0()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

BOOL sub_268EC0944(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "Settings";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268EC0A9C()
{
  v2 = qword_2802DDE60;
  if (!qword_2802DDE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE60);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EC0BE8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EC0944(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EC0C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC0A1C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EC0C58()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268EC0C94, 0);
}

uint64_t sub_268EC0C94()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268EC0A9C();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_2879952D0, v3);
}

uint64_t sub_268EC0E00(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EC0E70, 0);
}

uint64_t sub_268EC0E70()
{
  v15 = *(v0 + 40);
  v13 = *(v0 + 89);
  *(v0 + 16) = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  v14[5] = MEMORY[0x277D839B0];
  *(v14 + 16) = v13;
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;

  if (v15)
  {
    v9 = v10[5];
    v14[11] = type metadata accessor for SettingsMultiSetting(0);
    v14[8] = v9;
  }

  else
  {
    v14[8] = 0;
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v10[9] = v5;
  *v5 = v10[2];
  v5[1] = sub_268EC10E4;

  return v8(v11, v12, v7);
}

uint64_t sub_268EC10E4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EC12B0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EC12B0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

unint64_t sub_268EC13B4()
{
  v2 = qword_2802DDE68;
  if (!qword_2802DDE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC1500(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EC1570, 0);
}

uint64_t sub_268EC1570()
{
  v16 = *(v0 + 40);
  v14 = *(v0 + 89);
  *(v0 + 16) = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;
  v15[5] = MEMORY[0x277D839B0];
  *(v15 + 16) = v14;
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v16)
  {
    v10 = v11[5];
    v15[11] = type metadata accessor for SettingsMultiSetting(0);
    v15[8] = v10;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v11[9] = v5;
  v6 = sub_268EC13B4();
  *v5 = v11[2];
  v5[1] = sub_268EC10E4;

  return v9(v12, v13, v8, &unk_287995360, v6);
}

uint64_t sub_268EC17FC(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EC186C, 0);
}

uint64_t sub_268EC186C()
{
  v15 = *(v0 + 40);
  v13 = *(v0 + 89);
  *(v0 + 16) = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  v14[5] = MEMORY[0x277D839B0];
  *(v14 + 16) = v13;
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;

  if (v15)
  {
    v9 = v10[5];
    v14[11] = type metadata accessor for SettingsNumericSetting(0);
    v14[8] = v9;
  }

  else
  {
    v14[8] = 0;
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v10[9] = v5;
  *v5 = v10[2];
  v5[1] = sub_268EC10E4;

  return v8(v11, v12, v7);
}

unint64_t sub_268EC1B2C()
{
  v2 = qword_2802DDE70;
  if (!qword_2802DDE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC1C78(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268EC1CE8, 0);
}

uint64_t sub_268EC1CE8()
{
  v16 = *(v0 + 40);
  v14 = *(v0 + 89);
  *(v0 + 16) = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;
  v15[5] = MEMORY[0x277D839B0];
  *(v15 + 16) = v14;
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v16)
  {
    v10 = v11[5];
    v15[11] = type metadata accessor for SettingsNumericSetting(0);
    v15[8] = v10;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v11[9] = v5;
  v6 = sub_268EC1B2C();
  *v5 = v11[2];
  v5[1] = sub_268EC10E4;

  return v9(v12, v13, v8, &unk_2879953F0, v6);
}

uint64_t sub_268EC1F74(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 91) = a3 & 1;
  *(v5 + 90) = a2 & 1;
  *(v5 + 89) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = a1 & 1;
  *(v5 + 96) = a2 & 1;
  *(v5 + 104) = a3 & 1;
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  return MEMORY[0x2822009F8](sub_268EC2024, 0);
}

uint64_t sub_268EC2024()
{
  v20 = *(v0 + 40);
  v18 = *(v0 + 91);
  v16 = *(v0 + 90);
  v15 = *(v0 + 89);
  *(v0 + 16) = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;
  v17 = MEMORY[0x277D839B0];
  v19[5] = MEMORY[0x277D839B0];
  *(v19 + 16) = v15;
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;
  v19[11] = v17;
  *(v19 + 64) = v16;
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;
  v19[17] = v17;
  *(v19 + 112) = v18;
  v19[18] = sub_268F9AEF4();
  v19[19] = v6;

  if (v20)
  {
    v11 = v12[5];
    v19[23] = type metadata accessor for SettingsBinarySetting(0);
    v19[20] = v11;
  }

  else
  {
    v19[20] = 0;
    v19[21] = 0;
    v19[22] = 0;
    v19[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  v12[9] = v7;
  *v7 = v12[2];
  v7[1] = sub_268EC234C;

  return v10(v13, v14, v9);
}