uint64_t sub_268D76C34(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D76D40, 0);
}

uint64_t sub_268D76D40()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D67DF4(v1);
  v5(v6);
  v13 = sub_268D5E71C(9);
  v10 = v2;
  v0[11] = v2;
  sub_268D771BC(v6, v7);
  v11 = sub_268D67388();
  v0[12] = v11;
  sub_268D7794C(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D76E8C;

  return v12(v13, v10, v11);
}

uint64_t sub_268D76E8C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D770E0;
  }

  else
  {

    v3 = sub_268D77020;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D77020()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D7794C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D770E0()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D7794C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D771BC(uint64_t *a1, char *a2)
{
  v25 = *a1;

  *a2 = v25;
  v26 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  v27 = v26[5];
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if ((v31)(a1 + v27, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v27], a1 + v27, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))();
    (*(v30 + 56))(&a2[v27], 0, 1, v29);
  }

  v20 = v26[6];
  v21 = *(a1 + v20);

  *&a2[v20] = v21;
  __dst = &a2[v26[7]];
  __src = a1 + v26[7];
  if (v31())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(__dst, __src, v29);
    (*(v30 + 56))(__dst, 0, 1, v29);
  }

  v18 = &a2[v26[8]];
  v19 = a1 + v26[8];
  if (v31())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v18, v19, v29);
    (*(v30 + 56))(v18, 0, 1, v29);
  }

  v16 = &a2[v26[9]];
  v17 = a1 + v26[9];
  if (v31())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v16, v17, v29);
    (*(v30 + 56))(v16, 0, 1, v29);
  }

  v14 = &a2[v26[10]];
  v15 = a1 + v26[10];
  if (v31())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v14, v15, v29);
    (*(v30 + 56))(v14, 0, 1, v29);
  }

  v12 = &a2[v26[11]];
  v13 = a1 + v26[11];
  if (v31())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v12, v13, v29);
    (*(v30 + 56))(v12, 0, 1, v29);
  }

  v10 = &a2[v26[12]];
  v11 = a1 + v26[12];
  if (v31())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v10, v11, v29);
    (*(v30 + 56))(v10, 0, 1, v29);
  }

  return a2;
}

uint64_t sub_268D7794C(uint64_t a1)
{

  v8 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  v9 = v8[5];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!(v13)(a1 + v9, 1))
  {
    (*(v12 + 8))(a1 + v9, v11);
  }

  v7 = a1 + v8[7];
  if (!v13())
  {
    (*(v12 + 8))(v7, v11);
  }

  v6 = a1 + v8[8];
  if (!v13())
  {
    (*(v12 + 8))(v6, v11);
  }

  v5 = a1 + v8[9];
  if (!v13())
  {
    (*(v12 + 8))(v5, v11);
  }

  v4 = a1 + v8[10];
  if (!v13())
  {
    (*(v12 + 8))(v4, v11);
  }

  v3 = a1 + v8[11];
  if (!v13())
  {
    (*(v12 + 8))(v3, v11);
  }

  v2 = a1 + v8[12];
  if (!v13())
  {
    (*(v12 + 8))(v2, v11);
  }

  return a1;
}

uint64_t sub_268D77CCC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268D77D08, 0);
}

uint64_t sub_268D77D08()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268D5E71C(10);
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

uint64_t sub_268D77E48(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D77F54, 0);
}

uint64_t sub_268D77F54()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D68610(v1);
  v5(v6);
  v13 = sub_268D5E71C(11);
  v10 = v2;
  v0[11] = v2;
  sub_268D783D0(v6, v7);
  v11 = sub_268D68258();
  v0[12] = v11;
  sub_268D785AC(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D780A0;

  return v12(v13, v10, v11);
}

uint64_t sub_268D780A0(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D782F4;
  }

  else
  {

    v3 = sub_268D78234;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D78234()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D785AC(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D782F4()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D785AC(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D783D0(char *a1, char *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  v9 = v8[5];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a1[v9], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v9], &a1[v9], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))();
    (*(v12 + 56))(&a2[v9], 0, 1, v11);
  }

  v4 = v8[6];
  v5 = *&a1[v4];

  result = a2;
  *&a2[v4] = v5;
  a2[v8[7]] = a1[v8[7]];
  return result;
}

uint64_t sub_268D785AC(uint64_t a1)
{

  v2 = *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0) + 20);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268D7869C(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 56) = a6;
  *(v7 + 48) = a5;
  *(v7 + 204) = a4 & 1;
  *(v7 + 203) = a3 & 1;
  *(v7 + 202) = a2 & 1;
  *(v7 + 201) = a1 & 1;
  *(v7 + 32) = v7;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 224) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 200) = a1 & 1;
  *(v7 + 208) = a2 & 1;
  *(v7 + 216) = a3 & 1;
  *(v7 + 224) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  *(v7 + 40) = v6;

  return MEMORY[0x2822009F8](sub_268D78954, 0);
}

uint64_t sub_268D78954()
{
  v22 = MEMORY[0x277D55BE8];
  v20 = *(v0 + 152);
  v21 = *(v0 + 144);
  v15 = *(v0 + 136);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);
  v6 = *(v0 + 112);
  v7 = *(v0 + 104);
  v18 = *(v0 + 96);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  v12 = *(v0 + 72);
  v19 = *(v0 + 48);
  v11 = *(v0 + 204);
  v10 = *(v0 + 203);
  v14 = *(v0 + 202);
  v13 = *(v0 + 201);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v15, 1);
  (v5)(v16, 1, 1, v4);
  (v5)(v17, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v18, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  (v5)(v9, 1, 1, v4);
  (v5)(v12, 1, 1, v4);
  sub_268D6A060(0, 0, v13 & 1, v14 & 1, v15, v16, 0, v17, v20, v6, v7, v18, v8, v9, v10, v11, v12);
  v19(v20);
  v27 = sub_268D5E71C(12);
  v24 = v1;
  *(v0 + 160) = v1;
  sub_268D79174(v20, v21);
  v25 = sub_268D69098();
  *(v0 + 168) = v25;
  sub_268D79B6C(v21);
  v26 = (v22 + *v22);
  v2 = swift_task_alloc();
  *(v23 + 176) = v2;
  *v2 = *(v23 + 32);
  v2[1] = sub_268D78D04;

  return v26(v27, v24, v25);
}

uint64_t sub_268D78D04(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268D78FF8;
  }

  else
  {

    v3 = sub_268D78E98;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D78E98()
{
  v1 = v0[19];
  v0[4] = v0;
  sub_268D79B6C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[23];

  return v2(v3);
}

uint64_t sub_268D78FF8()
{
  v3 = *(v0 + 152);
  *(v0 + 32) = v0;

  sub_268D79B6C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D79174(uint64_t *a1, uint64_t a2)
{
  v30 = *a1;

  *a2 = v30;
  v31 = a1[1];

  *(a2 + 8) = v31;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v33 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  v34 = v33[8];
  v36 = sub_268F9A9C4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if ((v38)(a1 + v34, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v34), a1 + v34, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))();
    (*(v37 + 56))(a2 + v34, 0, 1, v36);
  }

  __dst = (a2 + v33[9]);
  __src = a1 + v33[9];
  if (v38())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(__dst, __src, v36);
    (*(v37 + 56))(__dst, 0, 1, v36);
  }

  v24 = v33[10];
  v25 = *(a1 + v24);

  *(a2 + v24) = v25;
  v26 = (a2 + v33[11]);
  v27 = a1 + v33[11];
  if (v38())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v26, v27, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v26, v27, v36);
    (*(v37 + 56))(v26, 0, 1, v36);
  }

  v22 = (a2 + v33[12]);
  v23 = a1 + v33[12];
  if (v38())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v22, v23, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v22, v23, v36);
    (*(v37 + 56))(v22, 0, 1, v36);
  }

  v20 = (a2 + v33[13]);
  v21 = a1 + v33[13];
  if (v38())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v20, v21, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v20, v21, v36);
    (*(v37 + 56))(v20, 0, 1, v36);
  }

  v18 = (a2 + v33[14]);
  v19 = a1 + v33[14];
  if (v38())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v18, v19, v36);
    (*(v37 + 56))(v18, 0, 1, v36);
  }

  v16 = (a2 + v33[15]);
  v17 = a1 + v33[15];
  if (v38())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v16, v17, v36);
    (*(v37 + 56))(v16, 0, 1, v36);
  }

  v14 = (a2 + v33[16]);
  v15 = a1 + v33[16];
  if (v38())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v14, v15, v36);
    (*(v37 + 56))(v14, 0, 1, v36);
  }

  *(a2 + v33[17]) = *(a1 + v33[17]);
  *(a2 + v33[18]) = *(a1 + v33[18]);
  v12 = (a2 + v33[19]);
  v13 = a1 + v33[19];
  if (v38())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v12, v13, v36);
    (*(v37 + 56))(v12, 0, 1, v36);
  }

  return a2;
}

uint64_t sub_268D79B6C(uint64_t a1)
{

  v10 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  v11 = v10[8];
  v13 = sub_268F9A9C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(a1 + v11, 1))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }

  v9 = a1 + v10[9];
  if (!v15())
  {
    (*(v14 + 8))(v9, v13);
  }

  v8 = a1 + v10[11];
  if (!v15())
  {
    (*(v14 + 8))(v8, v13);
  }

  v7 = a1 + v10[12];
  if (!v15())
  {
    (*(v14 + 8))(v7, v13);
  }

  v6 = a1 + v10[13];
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  v5 = a1 + v10[14];
  if (!v15())
  {
    (*(v14 + 8))(v5, v13);
  }

  v4 = a1 + v10[15];
  if (!v15())
  {
    (*(v14 + 8))(v4, v13);
  }

  v3 = a1 + v10[16];
  if (!v15())
  {
    (*(v14 + 8))(v3, v13);
  }

  v2 = a1 + v10[19];
  if (!v15())
  {
    (*(v14 + 8))(v2, v13);
  }

  return a1;
}

uint64_t sub_268D79FD0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 201) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 200) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 200) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;

  return MEMORY[0x2822009F8](sub_268D7A1F8, 0);
}

uint64_t sub_268D7A1F8()
{
  v19 = MEMORY[0x277D55BE8];
  v17 = *(v0 + 152);
  v18 = *(v0 + 144);
  v11 = *(v0 + 136);
  v12 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 96);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  v10 = *(v0 + 72);
  v16 = *(v0 + 48);
  v13 = *(v0 + 201);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v11, 1);
  (v5)(v12, 1, 1, v4);
  (v5)(v14, 1, 1, v4);
  (v5)(v15, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  (v5)(v9, 1, 1, v4);
  (v5)(v10, 1, 1, v4);
  sub_268D6BA6C(0, v11, 0, v12, v13 & 1, 0, v14, v15, v17, v6, v7, v8, v9, v10);
  v16(v17);
  v24 = sub_268D5E71C(13);
  v21 = v1;
  *(v0 + 160) = v1;
  sub_268D7A9B8(v17, v18);
  v22 = sub_268D6ABC8();
  *(v0 + 168) = v22;
  sub_268D7B38C(v18);
  v23 = (v19 + *v19);
  v2 = swift_task_alloc();
  *(v20 + 176) = v2;
  *v2 = *(v20 + 32);
  v2[1] = sub_268D7A560;

  return v23(v24, v21, v22);
}

uint64_t sub_268D7A560(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268D7A848;
  }

  else
  {

    v3 = sub_268D7A6F4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D7A6F4()
{
  v1 = v0[19];
  v0[4] = v0;
  sub_268D7B38C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[23];

  return v2(v3);
}

uint64_t sub_268D7A848()
{
  v3 = *(v0 + 152);
  *(v0 + 32) = v0;

  sub_268D7B38C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D7A9B8(void *a1, char *a2)
{
  v33 = *a1;

  *a2 = v33;
  v34 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  v35 = v34[5];
  v37 = sub_268F9A9C4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if ((v39)(a1 + v35, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v35], a1 + v35, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))();
    (*(v38 + 56))(&a2[v35], 0, 1, v37);
  }

  v28 = v34[6];
  v29 = *(a1 + v28);

  *&a2[v28] = v29;
  v30 = &a2[v34[7]];
  v31 = a1 + v34[7];
  if (v39())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v30, v31, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v30, v31, v37);
    (*(v38 + 56))(v30, 0, 1, v37);
  }

  a2[v34[8]] = *(a1 + v34[8]);
  v24 = v34[9];
  v25 = *(a1 + v24);

  *&a2[v24] = v25;
  __dst = &a2[v34[10]];
  __src = a1 + v34[10];
  if (v39())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(__dst, __src, v37);
    (*(v38 + 56))(__dst, 0, 1, v37);
  }

  v22 = &a2[v34[11]];
  v23 = a1 + v34[11];
  if (v39())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v22, v23, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v22, v23, v37);
    (*(v38 + 56))(v22, 0, 1, v37);
  }

  v20 = &a2[v34[12]];
  v21 = a1 + v34[12];
  if (v39())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v20, v21, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v20, v21, v37);
    (*(v38 + 56))(v20, 0, 1, v37);
  }

  v18 = &a2[v34[13]];
  v19 = a1 + v34[13];
  if (v39())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v18, v19, v37);
    (*(v38 + 56))(v18, 0, 1, v37);
  }

  v16 = &a2[v34[14]];
  v17 = a1 + v34[14];
  if (v39())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v16, v17, v37);
    (*(v38 + 56))(v16, 0, 1, v37);
  }

  v14 = &a2[v34[15]];
  v15 = a1 + v34[15];
  if (v39())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v14, v15, v37);
    (*(v38 + 56))(v14, 0, 1, v37);
  }

  v12 = &a2[v34[16]];
  v13 = a1 + v34[16];
  if (v39())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v38 + 16))(v12, v13, v37);
    (*(v38 + 56))(v12, 0, 1, v37);
  }

  return a2;
}

uint64_t sub_268D7B38C(uint64_t a1)
{

  v10 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  v11 = v10[5];
  v13 = sub_268F9A9C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(a1 + v11, 1))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }

  v9 = a1 + v10[7];
  if (!v15())
  {
    (*(v14 + 8))(v9, v13);
  }

  v8 = a1 + v10[10];
  if (!v15())
  {
    (*(v14 + 8))(v8, v13);
  }

  v7 = a1 + v10[11];
  if (!v15())
  {
    (*(v14 + 8))(v7, v13);
  }

  v6 = a1 + v10[12];
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  v5 = a1 + v10[13];
  if (!v15())
  {
    (*(v14 + 8))(v5, v13);
  }

  v4 = a1 + v10[14];
  if (!v15())
  {
    (*(v14 + 8))(v4, v13);
  }

  v3 = a1 + v10[15];
  if (!v15())
  {
    (*(v14 + 8))(v3, v13);
  }

  v2 = a1 + v10[16];
  if (!v15())
  {
    (*(v14 + 8))(v2, v13);
  }

  return a1;
}

uint64_t sub_268D7B7F8(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268D7B854, 0);
}

uint64_t sub_268D7B854()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268D5E71C(14);
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

  v10 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  if (v10 == 2)
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  else
  {
    v5 = *(v12 + 89);
    v15[11] = MEMORY[0x277D839B0];
    *(v15 + 64) = v5 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v12 + 64) = v8;
  v9 = (MEMORY[0x277D55BE8] + *MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v12 + 72) = v6;
  *v6 = *(v12 + 16);
  v6[1] = sub_268D7BB14;

  return v9(v13, v14, v8);
}

uint64_t sub_268D7BB14(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268D7BCE0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268D7BCE0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268D7BD98(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268D7BDF4, 0);
}

uint64_t sub_268D7BDF4()
{
  v9 = MEMORY[0x277D55BE8];
  v8 = v0[7];
  v6 = v0[6];
  v0[4] = v0;
  v14 = sub_268D5E71C(20);
  v11 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = v6;
  v7[3] = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  v0[10] = v12;
  v13 = (v9 + *v9);
  v4 = swift_task_alloc();
  *(v10 + 88) = v4;
  *v4 = *(v10 + 32);
  v4[1] = sub_268D7BFB8;

  return v13(v14, v11, v12);
}

uint64_t sub_268D7BFB8(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 32) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268D7C178, 0);
  }

  else
  {

    v3 = *(*(v6 + 32) + 8);

    return v3(a1);
  }
}

uint64_t sub_268D7C178()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D7C22C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268D7C268, 0);
}

uint64_t sub_268D7C268()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268D5E71C(15);
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

uint64_t sub_268D7C3A8(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268D7C40C, 0);
}

uint64_t sub_268D7C40C()
{
  v6 = MEMORY[0x277D55BE8];
  v4 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v4(v0 + 6);
  v11 = sub_268D5E71C(16);
  v8 = v1;
  v0[10] = v1;
  v5 = v0[6];

  v9 = sub_268D6BBE4(v5);
  v0[11] = v9;

  v10 = (v6 + *v6);
  v2 = swift_task_alloc();
  *(v7 + 96) = v2;
  *v2 = *(v7 + 32);
  v2[1] = sub_268D73B74;

  return v10(v11, v8, v9);
}

uint64_t sub_268D7C54C(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 48) = a4;
  *(v6 + 203) = a3 & 1;
  *(v6 + 202) = a2 & 1;
  *(v6 + 201) = a1 & 1;
  *(v6 + 32) = v6;
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 200) = a1 & 1;
  *(v6 + 208) = a2 & 1;
  *(v6 + 216) = a3 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 40) = v5;

  return MEMORY[0x2822009F8](sub_268D7C7D4, 0);
}

uint64_t sub_268D7C7D4()
{
  v21 = MEMORY[0x277D55BE8];
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  v6 = *(v0 + 96);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v0 + 72);
  v18 = *(v0 + 48);
  v11 = *(v0 + 203);
  v10 = *(v0 + 202);
  v12 = *(v0 + 201);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v13, 1);
  (v5)(v14, 1, 1, v4);
  (v5)(v15, 1, 1, v4);
  (v5)(v16, 1, 1, v4);
  (v5)(v17, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  (v5)(v9, 1, 1, v4);
  sub_268D6D5F0(0, 0, v12 & 1, v13, v14, 0, v15, v16, v19, v17, v6, v7, v8, v9, v10, v11);
  v18(v19);
  v26 = sub_268D5E71C(17);
  v23 = v1;
  *(v0 + 160) = v1;
  sub_268D7CFCC(v19, v20);
  v24 = sub_268D6C674();
  *(v0 + 168) = v24;
  sub_268D7D9C0(v20);
  v25 = (v21 + *v21);
  v2 = swift_task_alloc();
  *(v22 + 176) = v2;
  *v2 = *(v22 + 32);
  v2[1] = sub_268D7CB64;

  return v25(v26, v23, v24);
}

uint64_t sub_268D7CB64(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268D7CE54;
  }

  else
  {

    v3 = sub_268D7CCF8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D7CCF8()
{
  v1 = v0[19];
  v0[4] = v0;
  sub_268D7D9C0(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[23];

  return v2(v3);
}

uint64_t sub_268D7CE54()
{
  v3 = *(v0 + 152);
  *(v0 + 32) = v0;

  sub_268D7D9C0(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D7CFCC(uint64_t *a1, uint64_t a2)
{
  v30 = *a1;

  *a2 = v30;
  v31 = a1[1];

  *(a2 + 8) = v31;
  *(a2 + 16) = *(a1 + 16);
  v33 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  v34 = v33[7];
  v36 = sub_268F9A9C4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if ((v38)(a1 + v34, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v34), a1 + v34, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))();
    (*(v37 + 56))(a2 + v34, 0, 1, v36);
  }

  __dst = (a2 + v33[8]);
  __src = a1 + v33[8];
  if (v38())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(__dst, __src, v36);
    (*(v37 + 56))(__dst, 0, 1, v36);
  }

  v24 = v33[9];
  v25 = *(a1 + v24);

  *(a2 + v24) = v25;
  v26 = (a2 + v33[10]);
  v27 = a1 + v33[10];
  if (v38())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v26, v27, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v26, v27, v36);
    (*(v37 + 56))(v26, 0, 1, v36);
  }

  v22 = (a2 + v33[11]);
  v23 = a1 + v33[11];
  if (v38())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v22, v23, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v22, v23, v36);
    (*(v37 + 56))(v22, 0, 1, v36);
  }

  v20 = (a2 + v33[12]);
  v21 = a1 + v33[12];
  if (v38())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v20, v21, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v20, v21, v36);
    (*(v37 + 56))(v20, 0, 1, v36);
  }

  v18 = (a2 + v33[13]);
  v19 = a1 + v33[13];
  if (v38())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v18, v19, v36);
    (*(v37 + 56))(v18, 0, 1, v36);
  }

  v16 = (a2 + v33[14]);
  v17 = a1 + v33[14];
  if (v38())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v16, v17, v36);
    (*(v37 + 56))(v16, 0, 1, v36);
  }

  v14 = (a2 + v33[15]);
  v15 = a1 + v33[15];
  if (v38())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v14, v15, v36);
    (*(v37 + 56))(v14, 0, 1, v36);
  }

  v12 = (a2 + v33[16]);
  v13 = a1 + v33[16];
  if (v38())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v12, v13, v36);
    (*(v37 + 56))(v12, 0, 1, v36);
  }

  result = a2;
  *(a2 + v33[17]) = *(a1 + v33[17]);
  *(a2 + v33[18]) = *(a1 + v33[18]);
  return result;
}

uint64_t sub_268D7D9C0(uint64_t a1)
{

  v10 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  v11 = v10[7];
  v13 = sub_268F9A9C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(a1 + v11, 1))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }

  v9 = a1 + v10[8];
  if (!v15())
  {
    (*(v14 + 8))(v9, v13);
  }

  v8 = a1 + v10[10];
  if (!v15())
  {
    (*(v14 + 8))(v8, v13);
  }

  v7 = a1 + v10[11];
  if (!v15())
  {
    (*(v14 + 8))(v7, v13);
  }

  v6 = a1 + v10[12];
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  v5 = a1 + v10[13];
  if (!v15())
  {
    (*(v14 + 8))(v5, v13);
  }

  v4 = a1 + v10[14];
  if (!v15())
  {
    (*(v14 + 8))(v4, v13);
  }

  v3 = a1 + v10[15];
  if (!v15())
  {
    (*(v14 + 8))(v3, v13);
  }

  v2 = a1 + v10[16];
  if (!v15())
  {
    (*(v14 + 8))(v2, v13);
  }

  return a1;
}

uint64_t sub_268D7DE24(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D7DF30, 0);
}

uint64_t sub_268D7DF30()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D6ECC0(v1);
  v5(v6);
  v13 = sub_268D5E71C(18);
  v10 = v2;
  v0[11] = v2;
  sub_268D7E3AC(v6, v7);
  v11 = sub_268D6DFBC();
  v0[12] = v11;
  sub_268D7EC58(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D7E07C;

  return v12(v13, v10, v11);
}

uint64_t sub_268D7E07C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D7E2D0;
  }

  else
  {

    v3 = sub_268D7E210;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D7E210()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D7EC58(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D7E2D0()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D7EC58(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D7E3AC(uint64_t *a1, char *a2)
{
  v27 = *a1;

  *a2 = v27;
  v29 = a1[1];

  *(a2 + 1) = v29;
  v30 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  v31 = v30[6];
  v33 = sub_268F9A9C4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if ((v35)(a1 + v31, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v31], a1 + v31, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))();
    (*(v34 + 56))(&a2[v31], 0, 1, v33);
  }

  v23 = v30[7];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  __dst = &a2[v30[8]];
  __src = a1 + v30[8];
  if (v35())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(__dst, __src, v33);
    (*(v34 + 56))(__dst, 0, 1, v33);
  }

  v21 = &a2[v30[9]];
  v22 = a1 + v30[9];
  if (v35())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v21, v22, v33);
    (*(v34 + 56))(v21, 0, 1, v33);
  }

  v19 = &a2[v30[10]];
  v20 = a1 + v30[10];
  if (v35())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v19, v20, v33);
    (*(v34 + 56))(v19, 0, 1, v33);
  }

  v17 = &a2[v30[11]];
  v18 = a1 + v30[11];
  if (v35())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v17, v18, v33);
    (*(v34 + 56))(v17, 0, 1, v33);
  }

  v15 = &a2[v30[12]];
  v16 = a1 + v30[12];
  if (v35())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v15, v16, v33);
    (*(v34 + 56))(v15, 0, 1, v33);
  }

  v13 = &a2[v30[13]];
  v14 = a1 + v30[13];
  if (v35())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v13, v14, v33);
    (*(v34 + 56))(v13, 0, 1, v33);
  }

  v11 = &a2[v30[14]];
  v12 = a1 + v30[14];
  if (v35())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(v11, v12, v33);
    (*(v34 + 56))(v11, 0, 1, v33);
  }

  return a2;
}

uint64_t sub_268D7EC58(uint64_t a1)
{

  v9 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  v10 = v9[6];
  v12 = sub_268F9A9C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!(v14)(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  v8 = a1 + v9[8];
  if (!v14())
  {
    (*(v13 + 8))(v8, v12);
  }

  v7 = a1 + v9[9];
  if (!v14())
  {
    (*(v13 + 8))(v7, v12);
  }

  v6 = a1 + v9[10];
  if (!v14())
  {
    (*(v13 + 8))(v6, v12);
  }

  v5 = a1 + v9[11];
  if (!v14())
  {
    (*(v13 + 8))(v5, v12);
  }

  v4 = a1 + v9[12];
  if (!v14())
  {
    (*(v13 + 8))(v4, v12);
  }

  v3 = a1 + v9[13];
  if (!v14())
  {
    (*(v13 + 8))(v3, v12);
  }

  v2 = a1 + v9[14];
  if (!v14())
  {
    (*(v13 + 8))(v2, v12);
  }

  return a1;
}

uint64_t sub_268D7F050(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 105) = a3 & 1;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 32) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 104) = a3 & 1;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268D7F0F0, 0);
}

uint64_t sub_268D7F0F0()
{
  v14 = MEMORY[0x277D55BE8];
  v13 = *(v0 + 106);
  v10 = *(v0 + 105);
  v9 = *(v0 + 56);
  v8 = *(v0 + 48);
  *(v0 + 32) = v0;
  v19 = sub_268D5E71C(19);
  v16 = v1;
  *(v0 + 72) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  v12[5] = MEMORY[0x277D837D0];
  v12[2] = v8;
  v12[3] = v9;
  v12[6] = sub_268F9AEF4();
  v12[7] = v4;
  v11 = MEMORY[0x277D839B0];
  v12[11] = MEMORY[0x277D839B0];
  *(v12 + 64) = v10;
  v12[12] = sub_268F9AEF4();
  v12[13] = v5;
  v12[17] = v11;
  *(v12 + 112) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v0 + 80) = v17;
  v18 = (v14 + *v14);
  v6 = swift_task_alloc();
  *(v15 + 88) = v6;
  *v6 = *(v15 + 32);
  v6[1] = sub_268D7F354;

  return v18(v19, v16, v17);
}

uint64_t sub_268D7F354(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 32) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268D7F52C, 0);
  }

  else
  {

    v3 = *(*(v6 + 32) + 8);

    return v3(a1);
  }
}

uint64_t sub_268D7F52C()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D7F644(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268D7F828(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D7F90C;

  return sub_268D6EF1C(a1 & 1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_268D7F90C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_268D7FAA0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D707F4(a1, a2);
}

uint64_t sub_268D7FB60()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268D719F8();
}

uint64_t sub_268D7FC10(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D71DD8(a1, a2);
}

uint64_t sub_268D7FCD0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268D7262C();
}

uint64_t sub_268D7FD80(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D727A8(a1, a2);
}

uint64_t sub_268D7FE40(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D739D0(a1, a2);
}

uint64_t sub_268D7FF00(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268D73E60(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268D7FFD8(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268D752FC(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6);
}

uint64_t sub_268D800C8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D76C34(a1, a2);
}

uint64_t sub_268D80188()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268D77CCC();
}

uint64_t sub_268D80238(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D77E48(a1, a2);
}

uint64_t sub_268D802F8(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268D7869C(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6);
}

uint64_t sub_268D803E8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268D7F90C;

  return sub_268D79FD0(a1 & 1, a2, a3);
}

uint64_t sub_268D804B4(uint64_t a1, char a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D7B7F8(a1, a2);
}

uint64_t sub_268D80574(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D7BD98(a1, a2);
}

uint64_t sub_268D80634()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268D7C22C();
}

uint64_t sub_268D806E4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D7C3A8(a1, a2);
}

uint64_t sub_268D807A4(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D7F90C;

  return sub_268D7C54C(a1 & 1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_268D80888(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268D7DE24(a1, a2);
}

uint64_t sub_268D80948(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268D7F050(a1, a2, a3 & 1, a4 & 1);
}

uint64_t sub_268D80A20(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 20) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 235;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 21;
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

_BYTE *sub_268D80B88(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEB)
  {
    v5 = ((a3 + 20) >> 8) + 1;
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

  if (a2 > 0xEB)
  {
    v4 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
      *result = a2 + 20;
    }
  }

  return result;
}

unint64_t sub_268D80DE8(uint64_t a1)
{
  v6 = sub_268D80FAC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D810E4(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D81180(319);
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

unint64_t sub_268D80FAC(uint64_t a1)
{
  v5 = qword_2802DC658;
  if (!qword_2802DC658)
  {
    sub_268F9A994();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC658);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D81048(uint64_t a1)
{
  v5 = qword_2802DC660;
  if (!qword_2802DC660)
  {
    sub_268F9AA44();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC660);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D810E4(uint64_t a1)
{
  v5 = qword_2802DC668;
  if (!qword_2802DC668)
  {
    sub_268F9A9C4();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC668);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D81180(uint64_t a1)
{
  v5 = qword_2802DC670;
  if (!qword_2802DC670)
  {
    type metadata accessor for SettingsBinarySetting(255);
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC670);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D8126C(uint64_t a1)
{
  v5 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_268D81180(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_268D81414(uint64_t a1)
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

unint64_t sub_268D8154C(uint64_t a1)
{
  v5 = qword_2802DC698;
  if (!qword_2802DC698)
  {
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC698);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D81630(uint64_t a1)
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

uint64_t sub_268D817C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_268D81914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_268D81B3C(uint64_t a1)
{
  v5 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_268D81180(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_268D81CF8(uint64_t a1)
{
  v6 = sub_268D80FAC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D810E4(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D81EC8(319);
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

unint64_t sub_268D81EC8(uint64_t a1)
{
  v5 = qword_2802DC6D0;
  if (!qword_2802DC6D0)
  {
    type metadata accessor for SettingsMultiSetting(255);
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DC6D0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268D81FB4(uint64_t a1)
{
  v5 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_268D81180(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_268D82150(uint64_t a1)
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

unint64_t sub_268D822D8(uint64_t a1)
{
  v6 = sub_268D80FAC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D810E4(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D81EC8(319);
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

unint64_t sub_268D824F8(uint64_t a1)
{
  v6 = sub_268D80FAC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D81048(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D81180(319);
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

unint64_t sub_268D82754(uint64_t a1)
{
  v6 = sub_268D80FAC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D810E4(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D81EC8(319);
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

uint64_t sub_268D828E0(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = v7;
  v16 = (*(a7 + 8) + **(a7 + 8));
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = *(v7 + 16);
  v8[1] = sub_268D82A48;

  return v16(a1 & 1, a2 & 1, a3 & 1, a4, a5, a6, a7);
}

uint64_t sub_268D82A48(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_268D82B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 16) + **(a4 + 16));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D82CBC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t sub_268D82DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 32) + **(a4 + 32));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D82F34(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t sub_268D83068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 48) + **(a4 + 48));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D831AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 56) + **(a4 + 56));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D832F0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 64) + **(a6 + 64));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268D8344C(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v8;
  v18 = (*(a8 + 72) + **(a8 + 72));
  v9 = swift_task_alloc();
  *(v8 + 24) = v9;
  *v9 = *(v8 + 16);
  v9[1] = sub_268D82A48;

  return v18(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t sub_268D835C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 80) + **(a4 + 80));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D83704(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 88) + **(a2 + 88));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t sub_268D83838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 96) + **(a4 + 96));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D8397C(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v8;
  v18 = (*(a8 + 104) + **(a8 + 104));
  v9 = swift_task_alloc();
  *(v8 + 24) = v9;
  *v9 = *(v8 + 16);
  v9[1] = sub_268D82A48;

  return v18(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t sub_268D83AF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v12 = (*(a5 + 112) + **(a5 + 112));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268D83C40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 120) + **(a4 + 120));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D83D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 128) + **(a4 + 128));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D83EC8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 136) + **(a2 + 136));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t sub_268D83FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 144) + **(a4 + 144));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D84140(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = v7;
  v16 = (*(a7 + 152) + **(a7 + 152));
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = *(v7 + 16);
  v8[1] = sub_268D82A48;

  return v16(a1 & 1, a2 & 1, a3 & 1, a4, a5, a6, a7);
}

uint64_t sub_268D842A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 160) + **(a4 + 160));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268D843EC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  *(v6 + 16) = v6;
  v15 = (*(a6 + 168) + **(a6 + 168));
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_268D82A48;

  return v15(a1, a2, a3 & 1, a4 & 1, a5, a6);
}

uint64_t type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(uint64_t a1)
{
  v2 = qword_280FE28B8;
  if (!qword_280FE28B8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D845BC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268D84660()
{
  v2 = qword_2802DC738;
  if (!qword_2802DC738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC738);
    return WitnessTable;
  }

  return v2;
}

char *sub_268D846DC(void *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = a1[1];
  v26 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  v27 = v26[6];
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if ((v31)(a1 + v27, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v27], a1 + v27, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))();
    (*(v30 + 56))(&a2[v27], 0, 1, v29);
  }

  *&a2[v26[7]] = *(a1 + v26[7]);
  __dst = &a2[v26[8]];
  __src = a1 + v26[8];
  if (v31())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(__dst, __src, v29);
    (*(v30 + 56))(__dst, 0, 1, v29);
  }

  v21 = &a2[v26[9]];
  v22 = a1 + v26[9];
  if (v31())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v21, v22, v29);
    (*(v30 + 56))(v21, 0, 1, v29);
  }

  v19 = &a2[v26[10]];
  v20 = a1 + v26[10];
  if (v31())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v19, v20, v29);
    (*(v30 + 56))(v19, 0, 1, v29);
  }

  v17 = &a2[v26[11]];
  v18 = a1 + v26[11];
  if (v31())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v17, v18, v29);
    (*(v30 + 56))(v17, 0, 1, v29);
  }

  v15 = &a2[v26[12]];
  v16 = a1 + v26[12];
  if (v31())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v15, v16, v29);
    (*(v30 + 56))(v15, 0, 1, v29);
  }

  v13 = &a2[v26[13]];
  v14 = a1 + v26[13];
  if (v31())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v13, v14, v29);
    (*(v30 + 56))(v13, 0, 1, v29);
  }

  v11 = &a2[v26[14]];
  v12 = a1 + v26[14];
  if (v31())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v11, v12, v29);
    (*(v30 + 56))(v11, 0, 1, v29);
  }

  return a2;
}

void *sub_268D84F40(const void *a1, void *a2)
{
  v6 = sub_268F9A9C4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_268D85068(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  v6 = v5[5];
  v8 = sub_268F9A9C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a1[v6], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v6], &a1[v6], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(&a2[v6], 0, 1, v8);
  }

  result = a2;
  *&a2[v5[6]] = *&a1[v5[6]];
  a2[v5[7]] = a1[v5[7]];
  return result;
}

char *sub_268D85218(void *a1, char *a2)
{
  *a2 = *a1;
  v23 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  v24 = v23[5];
  v26 = sub_268F9A9C4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if ((v28)(a1 + v24, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v24], a1 + v24, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))();
    (*(v27 + 56))(&a2[v24], 0, 1, v26);
  }

  *&a2[v23[6]] = *(a1 + v23[6]);
  __dst = &a2[v23[7]];
  __src = a1 + v23[7];
  if (v28())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(__dst, __src, v26);
    (*(v27 + 56))(__dst, 0, 1, v26);
  }

  v18 = &a2[v23[8]];
  v19 = a1 + v23[8];
  if (v28())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(v18, v19, v26);
    (*(v27 + 56))(v18, 0, 1, v26);
  }

  v16 = &a2[v23[9]];
  v17 = a1 + v23[9];
  if (v28())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(v16, v17, v26);
    (*(v27 + 56))(v16, 0, 1, v26);
  }

  v14 = &a2[v23[10]];
  v15 = a1 + v23[10];
  if (v28())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(v14, v15, v26);
    (*(v27 + 56))(v14, 0, 1, v26);
  }

  v12 = &a2[v23[11]];
  v13 = a1 + v23[11];
  if (v28())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(v12, v13, v26);
    (*(v27 + 56))(v12, 0, 1, v26);
  }

  v10 = &a2[v23[12]];
  v11 = a1 + v23[12];
  if (v28())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(v10, v11, v26);
    (*(v27 + 56))(v10, 0, 1, v26);
  }

  return a2;
}

char *sub_268D8597C(void *a1, char *a2)
{
  *a2 = *a1;
  v26 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  v27 = v26[5];
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if ((v31)(a1 + v27, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v27], a1 + v27, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))();
    (*(v30 + 56))(&a2[v27], 0, 1, v29);
  }

  *&a2[v26[6]] = *(a1 + v26[6]);
  __dst = &a2[v26[7]];
  __src = a1 + v26[7];
  if (v31())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(__dst, __src, v29);
    (*(v30 + 56))(__dst, 0, 1, v29);
  }

  v21 = &a2[v26[8]];
  v22 = a1 + v26[8];
  if (v31())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v21, v22, v29);
    (*(v30 + 56))(v21, 0, 1, v29);
  }

  v19 = &a2[v26[9]];
  v20 = a1 + v26[9];
  if (v31())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v19, v20, v29);
    (*(v30 + 56))(v19, 0, 1, v29);
  }

  v17 = &a2[v26[10]];
  v18 = a1 + v26[10];
  if (v31())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v17, v18, v29);
    (*(v30 + 56))(v17, 0, 1, v29);
  }

  v15 = &a2[v26[11]];
  v16 = a1 + v26[11];
  if (v31())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v15, v16, v29);
    (*(v30 + 56))(v15, 0, 1, v29);
  }

  v13 = &a2[v26[12]];
  v14 = a1 + v26[12];
  if (v31())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v13, v14, v29);
    (*(v30 + 56))(v13, 0, 1, v29);
  }

  v11 = &a2[v26[13]];
  v12 = a1 + v26[13];
  if (v31())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v11, v12, v29);
    (*(v30 + 56))(v11, 0, 1, v29);
  }

  result = a2;
  a2[v26[14]] = *(a1 + v26[14]);
  return result;
}

char *sub_268D861FC(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  v6 = v5[5];
  v8 = sub_268F9A9C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a1[v6], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v6], &a1[v6], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(&a2[v6], 0, 1, v8);
  }

  result = a2;
  *&a2[v5[6]] = *&a1[v5[6]];
  a2[v5[7]] = a1[v5[7]];
  return result;
}

char *sub_268D863AC(void *a1, char *a2)
{
  *a2 = *a1;
  v26 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  v27 = v26[5];
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if ((v31)(a1 + v27, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v27], a1 + v27, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))();
    (*(v30 + 56))(&a2[v27], 0, 1, v29);
  }

  *&a2[v26[6]] = *(a1 + v26[6]);
  __dst = &a2[v26[7]];
  __src = a1 + v26[7];
  if (v31())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(__dst, __src, v29);
    (*(v30 + 56))(__dst, 0, 1, v29);
  }

  v21 = &a2[v26[8]];
  v22 = a1 + v26[8];
  if (v31())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v21, v22, v29);
    (*(v30 + 56))(v21, 0, 1, v29);
  }

  v19 = &a2[v26[9]];
  v20 = a1 + v26[9];
  if (v31())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v19, v20, v29);
    (*(v30 + 56))(v19, 0, 1, v29);
  }

  v17 = &a2[v26[10]];
  v18 = a1 + v26[10];
  if (v31())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v17, v18, v29);
    (*(v30 + 56))(v17, 0, 1, v29);
  }

  v15 = &a2[v26[11]];
  v16 = a1 + v26[11];
  if (v31())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v15, v16, v29);
    (*(v30 + 56))(v15, 0, 1, v29);
  }

  v13 = &a2[v26[12]];
  v14 = a1 + v26[12];
  if (v31())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v13, v14, v29);
    (*(v30 + 56))(v13, 0, 1, v29);
  }

  v11 = &a2[v26[13]];
  v12 = a1 + v26[13];
  if (v31())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(v11, v12, v29);
    (*(v30 + 56))(v11, 0, 1, v29);
  }

  return a2;
}

uint64_t sub_268D86CBC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = v6;
  sub_268CDE730(a1, v18);
  sub_268CDF978(v18, v6 + 2);
  sub_268CDE730(a2, v17);
  sub_268CDF978(v17, v6 + 7);

  v6[12] = a3;

  v6[13] = a4;
  sub_268CDE730(a5, v16);
  sub_268CDF978(v16, v6 + 14);
  sub_268CDE730(a6, v15);
  sub_268CDF978(v15, v6 + 19);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_268D86DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v51 = a1;
  v76 = a2;
  v4 = v3;
  v5 = v51;
  v75 = v4;
  v82 = "ConfirmSettingsIntentStrategy actionForInput.";
  v80 = &dword_268CBE000;
  v52 = "ConfirmSettingsIntentStrategy actionForInput is ignore.";
  v53 = "ConfirmSettingsIntentStrategy actionForInput is handle.";
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v94 = 0;
  v93 = 0;
  v78 = 0;
  v54 = sub_268F996C4();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v7, v8);
  v58 = &v34[-v57];
  v59 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v34[-v57], v11, v12);
  v60 = &v34[-v59];
  v61 = (*(*(type metadata accessor for SettingsNLIntent(v13) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v14, v15, v16);
  v62 = &v34[-v61];
  v63 = sub_268F9A704();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v17, v18, v19);
  v67 = &v34[-v66];
  v68 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, &v34[-v66], v22, v23);
  v69 = &v34[-v68];
  v94 = &v34[-v68];
  v70 = sub_268F99C64();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v24, v25, v26);
  v74 = &v34[-v73];
  v93 = &v34[-v73];
  v88 = sub_268F99C34();
  v85 = *(v88 - 8);
  v86 = v88 - 8;
  v77 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88, v76, v27, v28);
  v87 = &v34[-v77];
  v92 = v5;
  v91 = v29;
  v90 = v30;
  v84 = *sub_268DC7E48();
  MEMORY[0x277D82BE0](v84);
  v81 = sub_268F9B284();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v83 = sub_268F9B734();
  sub_268F9AC04(v82, 45, 2, v80, v84, v81);

  MEMORY[0x277D82BD8](v84);
  sub_268F99BE4();
  v89 = (*(v85 + 88))(v87, v88);
  if (v89 == *MEMORY[0x277D5C128])
  {
    v32 = v62;
    (*(v85 + 96))(v87, v88);
    (*(v64 + 32))(v69, v87, v63);
    v94 = v69;
    v40 = *sub_268DC7E48();
    MEMORY[0x277D82BE0](v40);
    v38 = sub_268F9B284();
    v39 = sub_268F9B734();
    sub_268F9AC04(v53, 55, 2, v80, v40, v38);

    v33 = MEMORY[0x277D82BD8](v40);
    (*(v64 + 16))(v67, v69, v63, v33);
    sub_268E42410(v67, v32);
    sub_268E42470(v60);
    sub_268D87800(v62);
    (*(v55 + 104))(v58, *MEMORY[0x277D5B960], v54);
    sub_268D8785C();
    v43 = sub_268F9B754();
    v42 = *(v55 + 8);
    v41 = v55 + 8;
    v42(v58, v54);
    v42(v60, v54);
    if (v43)
    {
      sub_268F998A4();
    }

    else
    {
      sub_268F99894();
    }

    return (*(v64 + 8))(v69, v63);
  }

  else if (v89 == *MEMORY[0x277D5C160])
  {
    (*(v85 + 96))(v87, v88);
    (*(v71 + 32))(v74, v87, v70);
    v93 = v74;
    if (sub_268D878DC(v74))
    {
      v49 = *sub_268DC7E48();
      MEMORY[0x277D82BE0](v49);
      v47 = sub_268F9B284();
      v48 = sub_268F9B734();
      sub_268F9AC04(v53, 55, 2, v80, v49, v47);

      MEMORY[0x277D82BD8](v49);
      sub_268F99894();
    }

    else
    {
      v46 = *sub_268DC7E48();
      MEMORY[0x277D82BE0](v46);
      v44 = sub_268F9B284();
      v45 = sub_268F9B734();
      sub_268F9AC04(v52, 55, 2, v80, v46, v44);

      MEMORY[0x277D82BD8](v46);
      sub_268F998A4();
    }

    return (*(v71 + 8))(v74, v70);
  }

  else
  {
    v37 = *sub_268DC7E48();
    MEMORY[0x277D82BE0](v37);
    v35 = sub_268F9B284();
    v36 = sub_268F9B734();
    sub_268F9AC04(v52, 55, 2, v80, v37, v35);

    MEMORY[0x277D82BD8](v37);
    sub_268F998A4();
    return (*(v85 + 8))(v87, v88);
  }
}

uint64_t sub_268D87800(uint64_t a1)
{
  v1 = sub_268F9A704();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_268D8785C()
{
  v2 = qword_2802DC740;
  if (!qword_2802DC740)
  {
    sub_268F996C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D878DC(uint64_t a1)
{
  v44 = a1;
  v2 = v1;
  v3 = v44;
  v56 = v2;
  v80 = 0;
  v79 = 0;
  v66 = 0;
  v59 = sub_268F99CB4();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v45 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v4, v5, v6);
  v46 = &v30[-v45];
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v45], v8, v9, v10);
  v48 = &v30[-v47];
  v49 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v47], v12, v13, v14);
  v60 = &v30[-v49];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v53 = *(*(v15 - 8) + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v51 = &v30[-v50];
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v50], v19, v20, v21);
  v54 = &v30[-v52];
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v52], v22, v23, v24);
  v67 = &v30[-v55];
  v80 = v3;
  v79 = v56;
  sub_268F99C54();
  v65 = sub_268F99CA4();
  v61 = *(v57 + 8);
  v62 = v57 + 8;
  v61(v60, v59);
  v78 = v65;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  v64 = sub_268D88014();
  sub_268F9B234();

  v68 = sub_268F99DE4();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = *(v69 + 48);
  v72 = v69 + 48;
  if (v71(v67, 1) == 1)
  {
    sub_268D8809C(v67, v25);
    v43 = 2;
  }

  else
  {
    v42 = sub_268F99D64();
    (*(v69 + 8))(v67, v68);
    v43 = v42 & 1;
  }

  v77 = v43;
  if (v43 == 2)
  {
    v41 = 0;
  }

  else
  {
    v41 = v77;
  }

  if (v41)
  {
    v40 = 1;
  }

  else
  {
    sub_268F99C54();
    v39 = sub_268F99CA4();
    v61(v48, v59);
    v76 = v39;
    sub_268F9B234();

    v26 = (v71)(v54, 1, v68);
    if (v26 == 1)
    {
      sub_268D8809C(v54, v27);
      v38 = 2;
    }

    else
    {
      v37 = sub_268F99D74();
      (*(v69 + 8))(v54, v68);
      v38 = v37 & 1;
    }

    v75 = v38;
    if (v38 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v75;
    }

    v40 = v36;
  }

  if (v40)
  {
    v35 = 1;
  }

  else
  {
    sub_268F99C54();
    v34 = sub_268F99CA4();
    v61(v46, v59);
    v74 = v34;
    sub_268F9B234();

    if ((v71)(v51, 1, v68) == 1)
    {
      sub_268D8809C(v51, v28);
      v33 = 2;
    }

    else
    {
      v32 = sub_268F99D84();
      (*(v69 + 8))(v51, v68);
      v33 = v32 & 1;
    }

    v73 = v33;
    if (v33 == 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = v73;
    }

    v35 = v31;
  }

  return v35 & 1;
}

unint64_t sub_268D88014()
{
  v2 = qword_2802DC758;
  if (!qword_2802DC758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC750, &qword_268F9F200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC758);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D8809C(uint64_t a1, __n128 a2)
{
  v4 = sub_268F99DE4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

uint64_t sub_268D88144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC760, &unk_268F9F210);
  v4[10] = swift_task_alloc();
  v5 = sub_268F996C4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_268F99C34();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](sub_268D8833C, 0);
}

uint64_t sub_268D8833C(uint64_t a1)
{
  v32 = v1[17];
  v31 = v1[16];
  v33 = v1[15];
  v34 = v1[14];
  v37 = v1[13];
  v35 = v1[12];
  v36 = v1[11];
  v1[2] = v1;
  v2 = sub_268DC7E48();
  v30 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v29 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v28 = v3;
  sub_268F99BE4();
  v26 = sub_268F9AE64();
  v27 = v4;
  v28[3] = MEMORY[0x277D837D0];
  v28[4] = sub_268CDD224();
  *v28 = v26;
  v28[1] = v27;
  sub_268CD0F7C();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Parsing confirmation response from parse: %@.", 75, 2, &dword_268CBE000, v30, v29);

  MEMORY[0x277D82BD8](v30);
  sub_268F99BE4();
  sub_268D88980(v32, v34);
  (*(v31 + 8))(v32, v33);
  (*(v35 + 104))(v37, *MEMORY[0x277D5B978], v36);
  sub_268D8785C();
  v39 = sub_268F9B754();
  v38 = *(v35 + 8);
  v38(v37, v36);
  if (v39)
  {
    v23 = v25[14];
    v24 = v25[11];
    v22 = v25[10];
    v5 = sub_268DC7E48();
    v18 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v17 = sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04("ConfirmSettingsIntentStrategy Confirmation response is CONFIRMED.", 65, 2, &dword_268CBE000, v18, v17);

    MEMORY[0x277D82BD8](v18);
    v19 = *MEMORY[0x277D5BED8];
    v21 = sub_268F99A94();
    v20 = *(v21 - 8);
    (*(v20 + 104))(v22, v19);
    (*(v20 + 56))(v22, 0, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    sub_268F99B44();
    sub_268CD7620();
    sub_268F99A84();
    v38(v23, v24);
  }

  else
  {
    v15 = v25[14];
    v16 = v25[11];
    v14 = v25[10];
    v6 = sub_268DC7E48();
    v10 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v9 = sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04("ConfirmSettingsIntentStrategy Confirmation response is REJECTED.", 64, 2, &dword_268CBE000, v10, v9);

    MEMORY[0x277D82BD8](v10);
    v11 = *MEMORY[0x277D5BED0];
    v13 = sub_268F99A94();
    v12 = *(v13 - 8);
    (*(v12 + 104))(v14, v11);
    (*(v12 + 56))(v14, 0, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    sub_268F99B44();
    sub_268CD7620();
    sub_268F99A84();
    v38(v15, v16);
  }

  v7 = *(v25[2] + 8);

  return v7();
}

uint64_t sub_268D88980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v125 = a1;
  v93 = "ConfirmSettingsIntentStrategy received unsupported parse object: %@.";
  v94 = sub_268D89874;
  v95 = sub_268D89940;
  v96 = sub_268D89984;
  v97 = "ConfirmSettingsIntentStrategy userDialogAct is UserCancelled";
  v98 = "ConfirmSettingsIntentStrategy userDialogAct is UserRejected";
  v99 = "ConfirmSettingsIntentStrategy userDialogAct is UserAccepted";
  v141 = 0;
  v140 = 0;
  v143 = 0;
  v100 = 0;
  v142 = 0;
  v117 = 0;
  v101 = sub_268F99CB4();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v105 = &v52[-v104];
  v106 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v52[-v104], v8, v9);
  v107 = &v52[-v106];
  v108 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, &v52[-v106], v12, v13);
  v109 = &v52[-v108];
  v110 = sub_268F99C64();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v14, v15, v16);
  v114 = &v52[-v113];
  v143 = &v52[-v113];
  v115 = (*(*(type metadata accessor for SettingsNLIntent(v17) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v18, v19, v20);
  v116 = &v52[-v115];
  v118 = sub_268F9A704();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v21, v22, v23);
  v122 = &v52[-v121];
  v123 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, &v52[-v121], v26, v27);
  v124 = &v52[-v123];
  v142 = &v52[-v123];
  v134 = sub_268F99C34();
  v132 = *(v134 - 8);
  v133 = v134 - 8;
  v127 = *(v132 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134, v125, v134, v28);
  v128 = &v52[-v126];
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = MEMORY[0x28223BE20](&v52[-v126], v29, v30, v31);
  v135 = &v52[-v129];
  v141 = v33;
  v140 = v2;
  v130 = *(v132 + 16);
  v131 = v132 + 16;
  v130(v32);
  v136 = (*(v132 + 88))(v135, v134);
  if (v136 == *MEMORY[0x277D5C128])
  {
    v34 = v116;
    (*(v132 + 96))(v135, v134);
    (*(v119 + 32))(v124, v135, v118);
    v142 = v124;
    (*(v119 + 16))(v122);
    sub_268E42410(v122, v34);
    sub_268E42470(v92);
    sub_268D87800(v116);
    return (*(v119 + 8))(v124, v118);
  }

  if (v136 == *MEMORY[0x277D5C160])
  {
    v36 = v100;
    v37 = v114;
    (*(v132 + 96))(v135, v134);
    (*(v111 + 32))(v37, v135, v110);
    v143 = v37;
    sub_268F99C54();
    v87 = sub_268F99CA4();
    v85 = *(v102 + 8);
    v86 = v102 + 8;
    v85(v109, v101);
    v139 = v87;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
    v89 = sub_268D898B8();
    result = sub_268F9AFB4();
    v90 = v36;
    v91 = result;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v84 = v91;
      sub_268CD7930(&v139);
      if (v84)
      {
        v79 = sub_268F9B284();
        v81 = *sub_268DC7E48();
        MEMORY[0x277D82BE0](v81);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v82 = 0;
        v80 = sub_268F9B734();
        sub_268F9AC14(v79, &dword_268CBE000, v81, v99, 59, 2);

        MEMORY[0x277D82BD8](v81);
        v83 = *MEMORY[0x277D5B978];
        v38 = sub_268F996C4();
        (*(*(v38 - 8) + 104))(v92, v83);
        return (*(v111 + 8))(v114, v110);
      }

      v39 = v90;
      sub_268F99C54();
      v76 = sub_268F99CA4();
      v85(v107, v101);
      v138 = v76;
      result = sub_268F9AFB4();
      v77 = v39;
      v78 = result;
      if (!v39)
      {
        v75 = v78;
        sub_268CD7930(&v138);
        if (v75)
        {
          v70 = sub_268F9B284();
          v72 = *sub_268DC7E48();
          MEMORY[0x277D82BE0](v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v73 = 0;
          v71 = sub_268F9B734();
          sub_268F9AC14(v70, &dword_268CBE000, v72, v98, 59, 2);

          MEMORY[0x277D82BD8](v72);
          v74 = *MEMORY[0x277D5B968];
          v40 = sub_268F996C4();
          (*(*(v40 - 8) + 104))(v92, v74);
          return (*(v111 + 8))(v114, v110);
        }

        v41 = v77;
        sub_268F99C54();
        v68 = sub_268F99CA4();
        v85(v105, v101);
        v137 = v68;
        result = sub_268F9AFB4();
        v69 = result;
        if (!v41)
        {
          v67 = v69;
          sub_268CD7930(&v137);
          if (v67)
          {
            v62 = sub_268F9B284();
            v64 = *sub_268DC7E48();
            MEMORY[0x277D82BE0](v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v65 = 0;
            v63 = sub_268F9B734();
            sub_268F9AC14(v62, &dword_268CBE000, v64, v97, 60, 2);

            MEMORY[0x277D82BD8](v64);
            v66 = *MEMORY[0x277D5B970];
            v42 = sub_268F996C4();
            (*(*(v42 - 8) + 104))(v92, v66);
            return (*(v111 + 8))(v114, v110);
          }

          (*(v111 + 8))(v114, v110);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v59 = sub_268F9B294();
  v61 = *sub_268DC7E48();
  MEMORY[0x277D82BE0](v61);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v58 = sub_268F9B734();
  v56 = v43;
  (v130)(v128, v125, v134);
  v54 = sub_268F9AE64();
  v55 = v44;
  v56[3] = MEMORY[0x277D837D0];
  v45 = sub_268CDD224();
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v56[4] = v45;
  *v48 = v46;
  v48[1] = v47;
  sub_268CD0F7C();
  v60 = v49;
  sub_268F9AC14(v59, &dword_268CBE000, v61, v93, 68, 2);

  v50 = MEMORY[0x277D82BD8](v61);
  (*(v132 + 8))(v135, v134, v50);
LABEL_15:
  v53 = *MEMORY[0x277D5B960];
  v51 = sub_268F996C4();
  return (*(*(v51 - 8) + 104))(v92, v53);
}

unint64_t sub_268D898B8()
{
  v2 = qword_280FE2870;
  if (!qword_280FE2870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC750, &qword_268F9F200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2870);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D899C8(uint64_t a1, uint64_t a2)
{
  v3[100] = v2;
  v3[99] = a2;
  v3[98] = a1;
  v3[92] = v3;
  v3[93] = 0;
  v3[94] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  sub_268F99834();
  v3[101] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[102] = v4;
  v3[103] = *(v4 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[93] = a2;
  v3[94] = v2;

  return MEMORY[0x2822009F8](sub_268D89B38, 0);
}

uint64_t sub_268D89B38(uint64_t a1)
{
  v15 = v1[100];
  v1[92] = v1;
  v2 = sub_268DC7E48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation dialog.", 60, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268CDE730(v15 + 112, (v1 + 77));
  v17 = v1[80];
  v16 = v1[81];
  __swift_project_boxed_opaque_existential_1(v1 + 77, v17);
  v18 = (*(v16 + 56))(v17);
  __swift_destroy_boxed_opaque_existential_0(v1 + 77);
  if (v18)
  {
    v12[106] = *(v12[100] + 104);

    v12[107] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v11 = sub_268F99B34();
    v12[108] = v11;
    v9 = sub_268F99B44();
    v12[109] = v9;
    v10 = sub_268F99B24();
    v12[110] = v10;
    v3 = swift_task_alloc();
    v12[111] = v3;
    *v3 = v12[92];
    v3[1] = sub_268D89EA4;

    return sub_268D10884(v11, v9, v10);
  }

  else
  {
    v12[126] = *(v12[100] + 104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v8 = sub_268F99B34();
    v12[127] = v8;
    v6 = sub_268F99B44();
    v12[128] = v6;
    v7 = sub_268F99B24();
    v12[129] = v7;
    v5 = swift_task_alloc();
    v12[130] = v5;
    *v5 = v12[92];
    v5[1] = sub_268D8AC1C;

    return sub_268CF3FB0(v8, v6, v7);
  }
}

uint64_t sub_268D89EA4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[92] = *v2;
  v7[112] = a1;
  v7[113] = v1;

  if (v1)
  {
    v3 = sub_268D8B1EC;
  }

  else
  {
    v5 = *(v6 + 856);

    v3 = sub_268D8A05C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D8A05C()
{
  v1 = v0[112];
  v6 = v0[100];
  v2 = v0[99];
  v0[92] = v0;
  v0[96] = v1;
  sub_268F99814();

  v5 = swift_task_alloc();
  *(v5 + 16) = v6;
  *(v5 + 24) = v2;
  sub_268F99B94();

  v0[114] = *(v6 + 104);

  v8 = sub_268F99B34();
  v0[115] = v8;
  v9 = sub_268F99B44();
  v0[116] = v9;
  v10 = sub_268F99B24();
  v0[117] = v10;
  v3 = swift_task_alloc();
  *(v7 + 944) = v3;
  *v3 = *(v7 + 736);
  v3[1] = sub_268D8A210;

  return sub_268D08E70(v7 + 168, v8, v9, v10);
}

uint64_t sub_268D8A210()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 736) = *v1;
  *(v6 + 952) = v0;

  if (v0)
  {
    v2 = sub_268D8B2F8;
  }

  else
  {
    v4 = *(v5 + 912);

    v2 = sub_268D8A3C8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268D8A3C8()
{
  v0[92] = v0;
  memcpy(v0 + 49, v0 + 21, 0x70uLL);
  memcpy(v0 + 35, v0 + 49, 0x70uLL);
  if (v0[36])
  {
    v18 = v21[112];
    v21[97] = v21 + 35;
    sub_268F999C4();
    v21[120] = sub_268F999B4();
    sub_268D28EFC((v21 + 35), (v21 + 63));
    memcpy(v21 + 2, v21 + 35, 0x70uLL);
    sub_268D34FC0((v21 + 2));
    v21[90] = &type metadata for SnippetModels;
    v21[91] = sub_268D34E18();
    v1 = swift_allocObject();
    v21[87] = v1;
    memcpy((v1 + 16), v21 + 2, 0x91uLL);
    sub_268D29170();
    sub_268F9B734();
    v17 = v2;
    MEMORY[0x277D82BE0](v18);
    *v17 = v18;
    sub_268CD0F7C();
    v19 = v3;
    v21[121] = v3;
    v20 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v4 = swift_task_alloc();
    v21[122] = v4;
    *v4 = v21[92];
    v4[1] = sub_268D8A730;
    v5 = v21[105];
    v6 = v21[98];

    return v20(v6, v21 + 87, v19, v5);
  }

  else
  {
    v14 = v21[112];
    sub_268F999C4();
    v21[123] = sub_268F999B4();
    sub_268D29170();
    sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](v14);
    *v13 = v14;
    sub_268CD0F7C();
    v15 = v9;
    v21[124] = v9;
    v16 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
    v10 = swift_task_alloc();
    v21[125] = v10;
    *v10 = v21[92];
    v10[1] = sub_268D8A9C4;
    v11 = v21[105];
    v12 = v21[98];

    return v16(v12, v15, v11);
  }
}

uint64_t sub_268D8A730()
{
  v2 = (*v0 + 696);
  *(*v0 + 736) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v2);

  return MEMORY[0x2822009F8](sub_268D8A898, 0);
}

uint64_t sub_268D8A898()
{
  v6 = v0[112];
  v5 = v0[105];
  v3 = v0[103];
  v4 = v0[102];
  v0[92] = v0;
  sub_268D29010(v0 + 35);
  (*(v3 + 8))(v5, v4);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[92] + 8);

  return v1();
}

uint64_t sub_268D8A9C4()
{
  *(*v0 + 736) = *v0;

  return MEMORY[0x2822009F8](sub_268D8AB1C, 0);
}

uint64_t sub_268D8AB1C()
{
  v6 = v0[112];
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[102];
  v0[92] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v6);

  v4 = *(v0[92] + 8);

  return v4();
}

uint64_t sub_268D8AC1C(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[92] = *v2;
  v7[131] = a1;
  v7[132] = v1;

  if (v1)
  {
    v3 = sub_268D8B458;
  }

  else
  {
    v5 = *(v6 + 1008);

    v3 = sub_268D8ADD4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D8ADD4()
{
  v1 = v0[131];
  v9 = v0[100];
  v7 = v0[99];
  v0[92] = v0;
  v0[95] = v1;
  sub_268F99814();

  v8 = swift_task_alloc();
  *(v8 + 16) = v9;
  *(v8 + 24) = v7;
  sub_268F99B94();

  sub_268CDE730(v9 + 152, (v0 + 82));
  v11 = v0[85];
  v12 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v11);
  v2 = swift_task_alloc();
  v10[133] = v2;
  *v2 = v10[92];
  v2[1] = sub_268D8AF60;
  v3 = v10[131];
  v4 = v10[104];
  v5 = v10[98];

  return MEMORY[0x2821BB480](v5, v3, v4, v11, v12);
}

uint64_t sub_268D8AF60()
{
  v4 = *v1;
  *(v4 + 736) = *v1;
  *(v4 + 1072) = v0;

  if (v0)
  {
    v2 = sub_268D8B564;
  }

  else
  {
    v2 = sub_268D8B0CC;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268D8B0CC()
{
  v6 = v0[131];
  v4 = v0[104];
  v3 = v0[103];
  v5 = v0[102];
  v0[92] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[92] + 8);

  return v1();
}

uint64_t sub_268D8B1EC()
{
  v1 = v0[110];
  v4 = v0[109];
  v0[92] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[92] + 8);

  return v2();
}

uint64_t sub_268D8B2F8()
{
  v1 = v0[117];
  v4 = v0[116];
  v8 = v0[112];
  v6 = v0[105];
  v5 = v0[103];
  v7 = v0[102];
  v0[92] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);

  v2 = *(v0[92] + 8);

  return v2();
}

uint64_t sub_268D8B458()
{
  v1 = v0[129];
  v4 = v0[128];
  v0[92] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[92] + 8);

  return v2();
}

uint64_t sub_268D8B564()
{
  v6 = v0[131];
  v4 = v0[104];
  v3 = v0[103];
  v5 = v0[102];
  v0[92] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[92] + 8);

  return v1();
}

uint64_t sub_268D8B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v11 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v11, v4, v5);
  v18 = &v10 - v12;
  v23 = v6;
  v22 = v7;
  v21 = a3;
  v17 = *(v7 + 96);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268EAE738(v16, v15, v18);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v8 = *(*(sub_268F999A4() - 8) + 56);
  v20 = 1;
  v8(v18, 0);
  sub_268F99BA4();
  return sub_268F99BB4();
}

uint64_t sub_268D8B82C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268D8B880, 0);
}

uint64_t sub_268D8B880(uint64_t a1)
{
  *(v1 + 16) = v1;
  v2 = sub_268DC7E48();
  v8 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v7 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation Cancelled dialog.", 70, 2, &dword_268CBE000, v8, v7);

  MEMORY[0x277D82BD8](v8);
  v3 = swift_task_alloc();
  v9[8] = v3;
  *v3 = v9[2];
  v3[1] = sub_268D8B9D8;
  v4 = v9[6];
  v5 = v9[5];

  return sub_268D8BB88(v5, v4);
}

uint64_t sub_268D8B9D8()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  v5 = v4 + 16;

  if (v0)
  {
    v2 = *(*v5 + 8);
  }

  else
  {
    v2 = *(*v5 + 8);
  }

  return v2();
}

uint64_t sub_268D8BB88(uint64_t a1, uint64_t a2)
{
  v3[100] = v2;
  v3[99] = a2;
  v3[98] = a1;
  v3[92] = v3;
  v3[93] = 0;
  v3[94] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  sub_268F99834();
  v3[101] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[102] = v4;
  v3[103] = *(v4 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[93] = a2;
  v3[94] = v2;

  return MEMORY[0x2822009F8](sub_268D8BCF8, 0);
}

uint64_t sub_268D8BCF8(uint64_t a1)
{
  v15 = v1[100];
  v1[92] = v1;
  v2 = sub_268DC7E48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation REJECTED dialog.", 69, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268CDE730(v15 + 112, (v1 + 77));
  v17 = v1[80];
  v16 = v1[81];
  __swift_project_boxed_opaque_existential_1(v1 + 77, v17);
  v18 = (*(v16 + 56))(v17);
  __swift_destroy_boxed_opaque_existential_0(v1 + 77);
  if (v18)
  {
    v12[106] = *(v12[100] + 104);

    v12[107] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v11 = sub_268F99B34();
    v12[108] = v11;
    v9 = sub_268F99B44();
    v12[109] = v9;
    v10 = sub_268F99B24();
    v12[110] = v10;
    v3 = swift_task_alloc();
    v12[111] = v3;
    *v3 = v12[92];
    v3[1] = sub_268D8C064;

    return sub_268D151C8(v11, v9, v10);
  }

  else
  {
    v12[126] = *(v12[100] + 104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v8 = sub_268F99B34();
    v12[127] = v8;
    v6 = sub_268F99B44();
    v12[128] = v6;
    v7 = sub_268F99B24();
    v12[129] = v7;
    v5 = swift_task_alloc();
    v12[130] = v5;
    *v5 = v12[92];
    v5[1] = sub_268D8C3D0;

    return sub_268CFA090(v8, v6, v7);
  }
}

uint64_t sub_268D8C064(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[92] = *v2;
  v7[112] = a1;
  v7[113] = v1;

  if (v1)
  {
    v3 = sub_268D8B1EC;
  }

  else
  {
    v5 = *(v6 + 856);

    v3 = sub_268D8C21C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D8C21C(uint64_t a1)
{
  v2 = v1[112];
  v7 = v1[100];
  v3 = v1[99];
  v1[92] = v1;
  v1[96] = v2;
  sub_268F99804();

  v6 = swift_task_alloc();
  *(v6 + 16) = v7;
  *(v6 + 24) = v3;
  sub_268F99B94();

  v1[114] = *(v7 + 104);

  v9 = sub_268F99B34();
  v1[115] = v9;
  v10 = sub_268F99B44();
  v1[116] = v10;
  v11 = sub_268F99B24();
  v1[117] = v11;
  v4 = swift_task_alloc();
  *(v8 + 944) = v4;
  *v4 = *(v8 + 736);
  v4[1] = sub_268D8A210;

  return sub_268D08E70(v8 + 168, v9, v10, v11);
}

uint64_t sub_268D8C3D0(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[92] = *v2;
  v7[131] = a1;
  v7[132] = v1;

  if (v1)
  {
    v3 = sub_268D8B458;
  }

  else
  {
    v5 = *(v6 + 1008);

    v3 = sub_268D8C588;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D8C588(uint64_t a1)
{
  v2 = v1[131];
  v10 = v1[100];
  v8 = v1[99];
  v1[92] = v1;
  v1[95] = v2;
  sub_268F99804();

  v9 = swift_task_alloc();
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v10 + 152, (v1 + 82));
  v12 = v1[85];
  v13 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v12);
  v3 = swift_task_alloc();
  v11[133] = v3;
  *v3 = v11[92];
  v3[1] = sub_268D8AF60;
  v4 = v11[131];
  v5 = v11[104];
  v6 = v11[98];

  return MEMORY[0x2821BB480](v6, v4, v5, v12, v13);
}

uint64_t sub_268D8C714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v10 = a2;
  v12 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v10, v4, v5);
  v18 = &v10 - v11;
  v21 = v6;
  v20 = v7;
  v19 = a3;
  v17 = *(v7 + 96);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268EAE738(v16, v15, v18);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v8 = sub_268F999A4();
  (*(*(v8 - 8) + 56))(v18, 0, 1);
  return sub_268F99BA4();
}

uint64_t sub_268D8C8A8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v2;
}

uint64_t sub_268D8C96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D34238;

  return sub_268D88144(a1, a2, a3);
}

uint64_t sub_268D8CA34(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268D899C8(a1, a2);
}

uint64_t sub_268D8CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, v6, a4);
}

uint64_t sub_268D8CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, v6, a4);
}

uint64_t sub_268D8CCC4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268D8BB88(a1, a2);
}

uint64_t sub_268D8CD84(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268D8B82C(a1, a2);
}

uint64_t sub_268D8CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, v7, a5);
}

uint64_t sub_268D8CF20()
{
  type metadata accessor for GetFlashlightHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81B0 = result;
  return result;
}

uint64_t *sub_268D8CF88()
{
  if (qword_280FE4D30 != -1)
  {
    swift_once();
  }

  return &qword_280FE81B0;
}

uint64_t sub_268D8CFE8()
{
  v1 = *sub_268D8CF88();

  return v1;
}

uint64_t sub_268D8D018(void *a1, void (*a2)(id, __n128), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v40 = 0;
  v48 = 0;
  v47 = 0;
  v39 = 0;
  v51 = a1;
  v49 = a2;
  v50 = a3;
  v42 = sub_268F9B284();
  v44 = *sub_268DC7AE8();
  v4 = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v43 = sub_268F9B734();
  sub_268F9AC14(v42, &dword_268CBE000, v44, "GetFlashlightHandler handling intent", 36, 2);

  v45 = *(v3 + 16);

  v46 = sub_268D3DE34();

  v47 = v46;
  usleep(0x30D40u);
  if (sub_268D3DF9C())
  {
    v5 = v39;
    v6 = sub_268DB9D74();
    v28 = *v6;
    v29 = v6[1];
    v30 = *(v6 + 16);
    v31 = *sub_268DC7AE8();
    v27 = v31;
    v7 = v31;
    v32 = *(v35 + 24);

    v8 = v38;

    v33 = &v21;
    MEMORY[0x28223BE20](v28, v29, v30, v31);
    v20[2] = v9;
    v20[3] = v38;
    v20[4] = v37;
    v20[5] = v10;
    sub_268DB944C(v11, v12, v13, v14, v15, sub_268D8D700, v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v34 = v5;

    return v34;
  }

  else
  {
    HIDWORD(v21) = sub_268F9B284();
    v23 = *sub_268DC7AE8();
    v16 = v23;
    v22 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v21), &dword_268CBE000, v23, "The device does not have a flashlight.", 38, 2);

    v17 = sub_268E948B8(3);
    v24 = v18;
    v25 = sub_268E41B70(v17, v18);

    (v37)(v25);

    return v39;
  }
}

double sub_268D8D388(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v20 = sub_268D3E0C4();

  if (v20)
  {
    v17 = sub_268D3DFD8() ^ 1;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v16 = (v17 & 1) != 0 && sub_268D3E1B0() > 0.0;

  if (v16)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  sub_268CDD0DC();
  v21 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v4 = sub_268E41954([a2 settingMetadata], 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v21 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v21);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v21);

  *&result = MEMORY[0x277D82BD8](v21).n128_u64[0];
  return result;
}

uint64_t sub_268D8D758()
{
  type metadata accessor for SetConversationAwarenessHandler();
  v0 = sub_268CDC590();
  result = sub_268D8D7C0(v0, 0);
  qword_2802F07B8 = result;
  return result;
}

uint64_t *sub_268D8D818()
{
  if (qword_2802DAFA8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07B8;
}

uint64_t sub_268D8D878()
{
  v1 = *sub_268D8D818();

  return v1;
}

uint64_t sub_268D8D8A8(uint64_t a1, char a2)
{
  v3 = sub_268DB9DD4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268D8D938(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 57) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 56) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = a1 & 1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_268D8D9A0, 0);
}

uint64_t sub_268D8D9A0()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D8DA64;
  v3 = *(v5 + 57) & 1;

  return sub_268D51B00(v3);
}

uint64_t sub_268D8DA64(__int16 a1)
{
  v6 = *v1;
  *(v6 + 16) = *v1;
  v4 = a1;
  v5 = HIBYTE(a1);

  LOBYTE(v7) = v4;
  HIBYTE(v7) = v5;
  v2 = *(*(v6 + 16) + 8);

  return v2(v7);
}

uint64_t sub_268D8DBF0(char a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7DB8;

  return sub_268D8D938(a1 & 1);
}

uint64_t sub_268D8DCAC()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268CD7DB8;

  return sub_268CDD400();
}

uint64_t sub_268D8DD5C()
{
  type metadata accessor for SetAXReduceTransparencyHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F07C0 = result;
  return result;
}

uint64_t *sub_268D8DDC4()
{
  if (qword_2802DAFB0 != -1)
  {
    swift_once();
  }

  return &qword_2802F07C0;
}

uint64_t sub_268D8DE24()
{
  v1 = *sub_268D8DDC4();

  return v1;
}

uint64_t sub_268D8DE54(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXReduceTransparencyHandler handling intent", 46, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3E754();

  v4 = sub_268DB9E34();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268D8E078, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268D8E078, v8);
}

uint64_t sub_268D8E008(char a1)
{

  sub_268D3E784(a1 & 1);
}

uint64_t sub_268D8E0C4()
{
  sub_268D2DF48();
  sub_268DC7C08();

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8088 = result;
  return result;
}

uint64_t *sub_268D8E144()
{
  if (qword_280FE3718 != -1)
  {
    swift_once();
  }

  return &qword_280FE8088;
}

uint64_t sub_268D8E1A4()
{
  v0 = sub_268D8E144();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D8E1DC()
{
  result = sub_268F9AEF4();
  qword_280FE8078 = result;
  qword_280FE8080 = v1;
  return result;
}

uint64_t *sub_268D8E220()
{
  if (qword_280FE3710 != -1)
  {
    swift_once();
  }

  return &qword_280FE8078;
}

uint64_t sub_268D8E280()
{
  v1 = *sub_268D8E220();

  return v1;
}

uint64_t sub_268D8E2BC()
{
  result = sub_268F9AEF4();
  qword_2802F07C8 = result;
  qword_2802F07D0 = v1;
  return result;
}

uint64_t *sub_268D8E300()
{
  if (qword_2802DAFB8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07C8;
}

uint64_t sub_268D8E360()
{
  v1 = *sub_268D8E300();

  return v1;
}

uint64_t sub_268D8E39C()
{
  result = sub_268F9AEF4();
  qword_2802F07D8 = result;
  qword_2802F07E0 = v1;
  return result;
}

uint64_t *sub_268D8E3E0()
{
  if (qword_2802DAFC0 != -1)
  {
    swift_once();
  }

  return &qword_2802F07D8;
}

uint64_t sub_268D8E440()
{
  v1 = *sub_268D8E3E0();

  return v1;
}

uint64_t sub_268D8E47C()
{
  type metadata accessor for SupportedFlowDomainProvider();
  v3 = *sub_268D2B334();

  sub_268D58CB4(v5);
  v2 = sub_268CDC590();
  sub_268D8E52C(v4);
  v0 = sub_268CDD6D4();
  result = sub_268D8E580(v3, v5, v2, v4, v0 & 1);
  qword_280FE3700 = result;
  return result;
}

uint64_t sub_268D8E52C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *sub_268E518F0();

  result = type metadata accessor for SiriReferenceResolutionConverter();
  a1[3] = result;
  a1[4] = &off_287992C68;
  *a1 = v3;
  return result;
}

uint64_t *sub_268D8E5F0()
{
  if (qword_280FE36F8 != -1)
  {
    swift_once();
  }

  return &qword_280FE3700;
}

uint64_t static SupportedFlowDomainProvider.shared.getter()
{
  v1 = *sub_268D8E5F0();

  return v1;
}

uint64_t sub_268D8E688()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268D8E6F0()
{
  v2 = *(v0 + 64);

  return v2;
}

const char *sub_268D8E7B0(char a1)
{
  if (a1)
  {
    return "DisableAllActions";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

uint64_t sub_268D8E8FC(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5 & 1;
  v15 = v5;

  *(v5 + 16) = a1;
  sub_268CDE730(a2, v14);
  sub_268CDF978(v14, (v5 + 24));

  *(v5 + 64) = a3;
  sub_268D35D60(a4, v13);
  memcpy((v5 + 72), v13, 0x28uLL);
  *(v5 + 112) = a5;
  sub_268D28414(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);

  return v12;
}

unint64_t sub_268D8E9F8()
{
  v2 = qword_2802DC770;
  if (!qword_2802DC770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC770);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D8EA74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v180 = a2;
  v231 = a1;
  v241 = "SupportedFlowDomainProvider: attempting to determine domain for %@.";
  v182 = "SupportedFlowDomainProvider failed to parse uso";
  v183 = "SupportedFlowDomainProvider: NLX disabled on macOS.";
  v184 = "SupportedFlowDomainProvider: Siri X flag is not enabled.";
  v276 = 0;
  v274 = 0;
  v273 = 0;
  v281 = 0;
  v185 = 0;
  v269 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v275 = 0;
  v249 = 0;
  v245 = 0;
  v186 = sub_268F99CB4();
  v187 = *(v186 - 8);
  v188 = v186 - 8;
  v189 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v190 = &v113[-v189];
  v191 = sub_268F99C64();
  v192 = *(v191 - 8);
  v193 = v191 - 8;
  v194 = (*(v192 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v245, v6, v7, v8);
  v195 = &v113[-v194];
  v281 = &v113[-v194];
  v196 = sub_268F99C24();
  v197 = *(v196 - 8);
  v198 = v196 - 8;
  v199 = (*(v197 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v245, v9, v10, v11);
  v200 = &v113[-v199];
  v280 = &v113[-v199];
  v201 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v202 = &v113[-v201];
  v279 = &v113[-v201];
  v203 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v19, v20, v21);
  v204 = &v113[-v203];
  v278 = &v113[-v203];
  v205 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24, v25, v26);
  v206 = &v113[-v205];
  v277 = &v113[-v205];
  v28 = type metadata accessor for SettingsNLIntent(v27);
  v207 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v29, v30, v31);
  v208 = &v113[-v207];
  v276 = &v113[-v207];
  v209 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC778, &unk_268F9F500) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v245, v32, v33, v34);
  v210 = &v113[-v209];
  v211 = sub_268F9A704();
  v212 = *(v211 - 8);
  v213 = v211 - 8;
  v214 = (*(v212 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v245, v35, v36, v37);
  v215 = &v113[-v214];
  v216 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, &v113[-v214], v40, v41);
  v217 = &v113[-v216];
  v275 = &v113[-v216];
  v234 = sub_268F99C34();
  v229 = *(v234 - 8);
  v230 = v234 - 8;
  v218 = (*(v229 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231, v42, v43, v44);
  v219 = &v113[-v218];
  v220 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, &v113[-v218], v47, v48);
  v221 = &v113[-v220];
  v222 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, &v113[-v220], v51, v52);
  v223 = &v113[-v222];
  v224 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, &v113[-v222], v55, v56);
  v225 = &v113[-v224];
  v226 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v59, v60, v61);
  v227 = &v113[-v226];
  v228 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63, &v113[-v226], v64, v65);
  v235 = &v113[-v228];
  v274 = v66;
  v273 = v2;
  v242 = sub_268F9B284();
  v244 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v244);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v240 = sub_268F9B734();
  v238 = v67;
  v232 = *(v229 + 16);
  v233 = v229 + 16;
  v232(v235, v231, v234);
  v236 = sub_268F9AE64();
  v237 = v68;
  v238[3] = MEMORY[0x277D837D0];
  v69 = sub_268CDD224();
  v70 = v236;
  v71 = v237;
  v72 = v238;
  v238[4] = v69;
  *v72 = v70;
  v72[1] = v71;
  sub_268CD0F7C();
  v243 = v73;
  sub_268F9AC14(v242, &dword_268CBE000, v244, v241, 67, 2);

  MEMORY[0x277D82BD8](v244);
  sub_268D90470();
  v246 = sub_268CF0C44();
  v247 = [v246 isClarityBoardEnabled];
  v74 = MEMORY[0x277D82BD8](v246);
  result = v247;
  if (v247)
  {
    *v180 = 5;
    return result;
  }

  (v232)(v227, v231, v234, v74);
  v179 = (*(v229 + 88))(v227, v234);
  if (v179 == *MEMORY[0x277D5C128])
  {
    v78 = v217;
    v232(v223, v227, v234);
    (*(v229 + 96))(v223, v234);
    (*(v212 + 32))(v78, v223, v211);
    v275 = v78;
    sub_268F9A6F4();
    v165 = sub_268F9A114();
    v166 = *(v165 - 8);
    v167 = v165 - 8;
    if ((*(v166 + 48))(v210, 1) == 1)
    {
      sub_268D91070(v210);
      v163 = 0;
      v164 = 0;
    }

    else
    {
      v161 = sub_268F9A104();
      v162 = v79;
      (*(v166 + 8))(v210, v165);
      v163 = v161;
      v164 = v162;
    }

    v159 = v164;
    v158 = v163;

    v157 = sub_268F9AEF4();
    v160 = v80;

    v267[0] = v158;
    v267[1] = v159;
    *&v268 = v157;
    *(&v268 + 1) = v160;
    if (v159)
    {
      sub_268D28874(v267, &v252);
      if (*(&v268 + 1))
      {
        v154 = &v251;
        v251 = v252;
        v153 = &v250;
        v250 = v268;
        v155 = MEMORY[0x26D62DB50](v252, *(&v252 + 1), v268, *(&v268 + 1));
        sub_268CD9D30(v153);
        sub_268CD9D30(v154);
        sub_268CD9D30(v267);
        v156 = v155;
        goto LABEL_26;
      }

      sub_268CD9D30(&v252);
    }

    else if (!*(&v268 + 1))
    {
      sub_268CD9D30(v267);
      v156 = 1;
LABEL_26:
      v152 = v156;

      if ((v152 & 1) == 0)
      {
        v85 = v211;
        v86 = v217;
        v87 = v212;
        *v180 = 3;
        (*(v87 + 8))(v86, v85);
        return (*(v229 + 8))(v227, v234);
      }

      v81 = v208;
      (*(v212 + 16))(v215, v217, v211);
      sub_268E42410(v215, v81);
      sub_268E4262C();
      v266[0] = v266[1];
      v151 = &v265;
      v265 = 3;
      v150 = &v264;
      sub_268D288B4(v266, &v263);
      sub_268D288B4(v151, v150);
      if (v263 == 13)
      {
        if (v264 == 13)
        {
          v149 = 1;
LABEL_36:
          if (v149)
          {
            v82 = v208;
            *v180 = 1;
            sub_268D87800(v82);
            (*(v212 + 8))(v217, v211);
            return (*(v229 + 8))(v227, v234);
          }

          sub_268E4262C();
          v262[0] = v262[1];
          v146 = &v261;
          v261 = 9;
          v145 = &v260;
          sub_268D288B4(v262, &v259);
          sub_268D288B4(v146, v145);
          if (v259 == 13)
          {
            if (v260 == 13)
            {
              v144 = 1;
LABEL_47:
              if (v144)
              {
                v140 = *(v181 + 16);

                v141 = sub_268D2B440();

                if (v141)
                {
                  v139 = 2;
                }

                else
                {
                  v139 = 1;
                }

                v83 = v208;
                *v180 = v139;
                sub_268D87800(v83);
                (*(v212 + 8))(v217, v211);
                return (*(v229 + 8))(v227, v234);
              }

              else
              {
                v84 = v208;
                *v180 = 2;
                sub_268D87800(v84);
                (*(v212 + 8))(v217, v211);
                return (*(v229 + 8))(v227, v234);
              }
            }
          }

          else
          {
            sub_268D288B4(&v259, &v258);
            if (v260 != 13)
            {
              v143 = &v257;
              v257 = v258;
              v142 = &v256;
              v256 = v260;
              sub_268D91118();
              v144 = sub_268F9AE04();
              goto LABEL_47;
            }
          }

          v144 = 0;
          goto LABEL_47;
        }
      }

      else
      {
        sub_268D288B4(&v263, &v255);
        if (v264 != 13)
        {
          v148 = &v254;
          v254 = v255;
          v147 = &v253;
          v253 = v264;
          sub_268D91118();
          v149 = sub_268F9AE04();
          goto LABEL_36;
        }
      }

      v149 = 0;
      goto LABEL_36;
    }

    sub_268D28550(v267);
    v156 = 0;
    goto LABEL_26;
  }

  if (v179 == *MEMORY[0x277D5C150])
  {
    v88 = v206;
    v232(v221, v227, v234);
    (*(v229 + 96))(v221, v234);
    v136 = *(v197 + 16);
    v137 = v197 + 16;
    v136(v88, v221, v196);
    v138 = type metadata accessor for ToggleBinarySetting();
    v89 = sub_268D90E70();
    if (sub_268F39FF8(v138, v138, v89))
    {
      v90 = v197;
      v277 = v206;
      *v180 = 2;
      v135 = *(v90 + 8);
      v134 = v90 + 8;
      v135();
      (v135)(v221, v196);
      return (*(v229 + 8))(v227, v234);
    }

    v91 = v204;
    v131 = *(v197 + 8);
    v132 = v197 + 8;
    (v131)(v206, v196);
    v136(v91, v221, v196);
    v133 = type metadata accessor for UndoBinarySetting();
    v92 = sub_268D90EF0();
    if (sub_268F39FF8(v133, v133, v92))
    {
      v93 = v131;
      v278 = v204;
      *v180 = 2;
      v93();
      (v131)(v221, v196);
      return (*(v229 + 8))(v227, v234);
    }

    v94 = v202;
    (v131)(v204, v196);
    v136(v94, v221, v196);
    v130 = type metadata accessor for UndoNumericSetting();
    v95 = sub_268D90F70();
    if (sub_268F39FF8(v130, v130, v95))
    {
      v96 = v131;
      v279 = v202;
      *v180 = 2;
      v96();
      (v131)(v221, v196);
      return (*(v229 + 8))(v227, v234);
    }

    v97 = v200;
    (v131)(v202, v196);
    (*(v197 + 32))(v97, v221, v196);
    v129 = type metadata accessor for LaunchEnvPicker();
    v98 = sub_268D90FF0();
    if (sub_268F39FF8(v129, v129, v98))
    {
      v99 = v131;
      v280 = v200;
      *v180 = 2;
      v99();
      return (*(v229 + 8))(v227, v234);
    }

    (v131)(v200, v196);
    goto LABEL_71;
  }

  if (v179 == *MEMORY[0x277D5C148])
  {
    v232(v225, v227, v234);
    (*(v229 + 96))(v225, v234);
    v175 = *v225;
    v249 = v175;
    v177 = sub_268F9ABB4();
    v248[2] = v177;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A0, &unk_268F9F510);
    sub_268D91190();
    sub_268F9B234();
    v178 = v248[1];

    if (v178)
    {
      v174 = v178;
      v172 = v178;
      sub_268F9AB84();
      v173 = swift_dynamicCastClass();
      if (v173)
      {
        v171 = v173;
      }

      else
      {
        MEMORY[0x277D82BD8](v172);
        v171 = 0;
      }

      v170 = v171;
    }

    else
    {
      v170 = 0;
    }

    v248[0] = v170;
    v169 = v170 != 0;
    v168 = v169;
    sub_268D35038(v248);
    v76 = v175;
    if (v168)
    {
      *v180 = 6;
    }

    else
    {
      *v180 = 0;
    }

    v77 = MEMORY[0x277D82BD8](v76);
    return (*(v229 + 8))(v227, v234, v77);
  }

  else
  {
    if (v179 != *MEMORY[0x277D5C160])
    {
LABEL_71:
      v109 = v234;
      v110 = v227;
      v111 = v229;
      *v180 = 0;
      return (*(v111 + 8))(v110, v109);
    }

    v232(v219, v227, v234);
    (*(v229 + 96))(v219, v234);
    (*(v192 + 32))(v195, v219, v191);
    v281 = v195;
    v127 = v270;
    sub_268CDE730(v181 + 24, v270);
    v126 = v271;
    v125 = v272;
    __swift_project_boxed_opaque_existential_1(v127, v271);
    v128 = (*(v125 + 8))(v126);
    __swift_destroy_boxed_opaque_existential_0(v127);
    if (v128)
    {
      if (sub_268D3DBE8())
      {
        v119 = sub_268F9B294();
        v121 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v121);
        v120 = sub_268F9B734();
        sub_268F9AC14(v119, &dword_268CBE000, v121, v183, 51, 2);

        v104 = MEMORY[0x277D82BD8](v121);
        v105 = v192;
        v106 = v195;
        v107 = v191;
        *v180 = 0;
        (*(v105 + 8))(v106, v107, v104);
        return (*(v229 + 8))(v227, v234);
      }

      else
      {
        v108 = v185;
        sub_268F99C54();
        sub_268D904D4(v190, v180);
        v118 = v108;
        if (v108)
        {
          v117 = v118;
          (*(v187 + 8))(v190, v186);
          v112 = v117;
          v269 = v117;
          v114 = sub_268F9B294();
          v116 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v116);
          v115 = sub_268F9B734();
          sub_268F9AC14(v114, &dword_268CBE000, v116, v182, 47, 2);

          MEMORY[0x277D82BD8](v116);

          (*(v192 + 8))(v195, v191);
          result = (*(v229 + 8))(v227, v234);
          *v180 = 0;
        }

        else
        {
          (*(v187 + 8))(v190, v186);
          (*(v192 + 8))(v195, v191);
          return (*(v229 + 8))(v227, v234);
        }
      }
    }

    else
    {
      v122 = sub_268F9B294();
      v124 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v124);
      v123 = sub_268F9B734();
      sub_268F9AC14(v122, &dword_268CBE000, v124, v184, 56, 2);

      v100 = MEMORY[0x277D82BD8](v124);
      v101 = v192;
      v102 = v195;
      v103 = v191;
      *v180 = 4;
      (*(v101 + 8))(v102, v103, v100);
      return (*(v229 + 8))(v227, v234);
    }
  }

  return result;
}

unint64_t sub_268D90470()
{
  v2 = qword_280FE2770;
  if (!qword_280FE2770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2770);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D904D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = a1;
  v3 = v2;
  v4 = v76;
  v88 = v3;
  v95 = 0;
  v98 = sub_268D91218;
  v77 = "SupportedFlowDomainProvider no first userStatedTask found";
  v78 = "SupportedFlowDomainProvider userDialogAct.userStarted.task serialization error";
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v100 = 0;
  v85 = 0;
  v79 = sub_268F99E04();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v5, v6, v7);
  v83 = &v40 - v82;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v84 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v94 = &v40 - v84;
  v86 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A8, &unk_268F9F520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85, v12, v13, v14);
  v87 = &v40 - v86;
  v89 = sub_268F99C94();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89, v15, v16, v17);
  v93 = &v40 - v92;
  v104 = &v40 - v92;
  v103 = v4;
  v102 = v18;
  v101 = sub_268F99CA4();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  sub_268D898B8();
  v19 = v97;
  sub_268F9AF94();
  v99 = v19;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_268CD7930(&v101);
    v72 = sub_268F99DE4();
    v73 = *(v72 - 8);
    v74 = v72 - 8;
    if ((*(v73 + 48))(v94, 1) == 1)
    {
      sub_268D8809C(v94, v20);
      (*(v90 + 56))(v87, 1, 1, v89);
    }

    else
    {
      sub_268F99D94();
      (*(v73 + 8))(v94, v72);
      sub_268F99DF4();
      (*(v80 + 8))(v83, v79);
      (*(v90 + 56))(v87, 0, 1, v89);
    }

    if ((*(v90 + 48))(v87, 1, v89) == 1)
    {
      sub_268D9125C(v87);
      v42 = sub_268F9B294();
      v44 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v45 = 0;
      v43 = sub_268F9B734();
      v47 = 57;
      sub_268F9AC14(v42, &dword_268CBE000, v44, v77);

      MEMORY[0x277D82BD8](v44);
      v48 = sub_268F9A7E4();
      sub_268D91304();
      v46 = 1;
      v50 = swift_allocError();
      v49 = v34;
      v35 = sub_268F9AEF4();
      v36 = v48;
      v37 = v35;
      v38 = v49;
      *v49 = v37;
      v38[1] = v39;
      (*(*(v36 - 8) + 104))();
      swift_willThrow();
      result = v50;
      v60 = v50;
      return result;
    }

    (*(v90 + 32))(v93, v87, v89);
    v21 = v99;
    v22 = sub_268F99E44();
    v69 = v21;
    v70 = v22;
    v71 = v21;
    if (!v21)
    {
      v67 = v70;
      v68 = 0;
      goto LABEL_7;
    }
  }

  v41 = 0;

  v67 = 0;
  v68 = v41;
LABEL_7:
  v65 = v68;
  v66 = v67;
  if (v67)
  {
    v64 = v66;
    v26 = v65;
    v61 = v66;
    v100 = v66;
    sub_268D91384(v66, v23, v24, v25);
    v62 = v26;
    v63 = v26;
    if (v26)
    {
      v40 = v63;
    }

    return (*(v90 + 8))(v93, v89);
  }

  else
  {
    v51 = sub_268F9B294();
    v53 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v54 = 0;
    v52 = sub_268F9B734();
    v56 = 78;
    sub_268F9AC14(v51, &dword_268CBE000, v53, v78);

    MEMORY[0x277D82BD8](v53);
    v57 = sub_268F9A7E4();
    sub_268D91304();
    v55 = 1;
    v59 = swift_allocError();
    v58 = v28;
    v29 = sub_268F9AEF4();
    v30 = v57;
    v31 = v29;
    v32 = v58;
    *v58 = v31;
    v32[1] = v33;
    (*(*(v30 - 8) + 104))();
    swift_willThrow();
    (*(v90 + 8))(v93, v89);
    result = v59;
    v60 = v59;
  }

  return result;
}

unint64_t sub_268D90E70()
{
  v2 = qword_2802DC780;
  if (!qword_2802DC780)
  {
    type metadata accessor for ToggleBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90EF0()
{
  v2 = qword_2802DC788;
  if (!qword_2802DC788)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90F70()
{
  v2 = qword_2802DC790;
  if (!qword_2802DC790)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90FF0()
{
  v2 = qword_2802DC798;
  if (!qword_2802DC798)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D91070(uint64_t a1)
{
  v3 = sub_268F9A114();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D91118()
{
  v2 = qword_280FE3F40;
  if (!qword_280FE3F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D91190()
{
  v2 = qword_280FE2848;
  if (!qword_280FE2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7A0, &unk_268F9F510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D9125C(uint64_t a1)
{
  v3 = sub_268F99C94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D91304()
{
  v2 = qword_2802DC7B0;
  if (!qword_2802DC7B0)
  {
    sub_268F9A7E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7B0);
    return WitnessTable;
  }

  return v2;
}

void sub_268D91384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v1387 = v1633;
  v1388 = v6;
  v1495 = v7;
  v1389 = v4;
  v1391 = "SupportedFlowDomainProvider got an open:no_Entity task. Returning .invalidParse";
  v1392 = "SupportedFlowDomainProvider got a close:no_Entity task. Returning .invalidParse";
  v1393 = "UsoTask is no verb.";
  v1394 = sub_268D9C164;
  v1395 = sub_268D9C164;
  v1396 = "Task Entity level uso identifier domain: %@";
  v1397 = "UsoTask is checkExistence";
  v1398 = sub_268D9C164;
  v1399 = "UsoTask is toggle";
  v1400 = sub_268D9C164;
  v1401 = "UsoTask is enable";
  v1402 = sub_268D9C164;
  v1403 = sub_268DA6048;
  v1404 = sub_268CD7608;
  v1405 = sub_268CD7600;
  v1406 = sub_268CD7600;
  v1407 = sub_268CD7614;
  v1408 = "UsoTask is disable";
  v1409 = sub_268D9C164;
  v1410 = "UsoTask is set";
  v1411 = sub_268D9C164;
  v1412 = "UsoTask is summarise";
  v1413 = sub_268D9C164;
  v1414 = "Rejecting UsoTask because it contains Home Automation artifacts: %@";
  v1415 = "UsoTask is open";
  v1416 = "UsoTask is request";
  v1417 = sub_268D9C164;
  v1418 = "UsoTask is increaseBy";
  v1419 = sub_268D9C164;
  v1420 = "UsoEntity is not UsoEntity_common_MediaItem. Setting name to entity id.";
  v1421 = "UsoEntity is UsoEntity_common_MediaItem. Setting name to volume.";
  v1422 = "choosing .settings for increaseByTask";
  v1423 = "choosing .deviceExpertSetting for increaseByTask";
  v1424 = "choosing .playbackControls for increaseByTask";
  v1425 = "UsoTask is decreaseBy";
  v1426 = sub_268D9C164;
  v1427 = "choosing .settings for decraseByTask";
  v1428 = "choosing .deviceExpertSetting for decraseByTask";
  v1429 = "choosing .playbackControls for decraseByTask";
  v1430 = "UsoTask is increaseByMeasurement";
  v1431 = sub_268D9C164;
  v1432 = "UsoTask is decreaseByMeasurement";
  v1433 = sub_268D9C164;
  v1434 = "UsoTask is setNumber";
  v1435 = sub_268D9C164;
  v1436 = "SupportedFlowDomainProvider userStartUSOGraph has no tasks";
  v1802 = 0;
  v1801 = 0;
  v1800 = 0;
  v1799 = 0;
  v1798 = 0;
  v1797 = 0;
  v1796 = 0;
  v1795 = 0;
  v1794 = 0;
  v1793 = 0;
  v1792 = 0;
  v1791 = 0;
  v1790 = 0;
  v1789 = 0;
  v1788 = 0;
  v1787 = 0;
  v1786 = 0;
  v1785 = 0;
  v1782 = 0;
  v1764 = 0;
  v1759 = 0;
  v1731 = 0;
  v1728 = 0;
  v1725 = 0;
  v1722 = 0;
  v1717 = 0;
  v1694 = 0;
  v1684 = 0;
  v1679 = 0;
  v1646 = 0;
  v1643 = 0;
  v1640 = 0;
  v1635 = 0;
  v1628 = 0;
  v1625 = 0;
  v1622 = 0;
  v1619 = 0;
  v1610 = 0;
  v1607 = 0;
  v1604 = 0;
  v1599 = 0;
  v1592 = 0;
  v1590 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v1437 = *(*(v8 - 8) + 64);
  v1438 = (v1437 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v1439 = &v413[-v1438];
  v1440 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1438], v13, v14, v15);
  v1441 = &v413[-v1440];
  v1442 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1440], v17, v18, v19);
  v1443 = &v413[-v1442];
  v1802 = &v413[-v1442];
  v1444 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v1445 = &v413[-v1444];
  v1446 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1444], v26, v27, v28);
  v1447 = &v413[-v1446];
  v1448 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1446], v30, v31, v32);
  v1449 = &v413[-v1448];
  v1801 = &v413[-v1448];
  v1450 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v35, v36, v37);
  v1451 = &v413[-v1450];
  v1452 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1450], v39, v40, v41);
  v1453 = &v413[-v1452];
  v1454 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1452], v43, v44, v45);
  v1455 = &v413[-v1454];
  v1800 = &v413[-v1454];
  v1470 = 0;
  v1456 = sub_268F9A434();
  v1457 = *(v1456 - 8);
  v1458 = v1456 - 8;
  v1459 = (*(v1457 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1456, v46, v47, v48);
  v1460 = &v413[-v1459];
  v1461 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v413[-v1459], v50, v51, v52);
  v1462 = &v413[-v1461];
  v1463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7B8, &qword_268F9F538);
  v1464 = (*(*(v1463 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1463, v53, v54, v55);
  v1465 = &v413[-v1464];
  v1466 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57, v58, v59, v60);
  v1467 = &v413[-v1466];
  v1468 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v63, v64, v65);
  v1469 = &v413[-v1468];
  v1471 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C0, &unk_268F9F540) - 8) + 64);
  v1472 = (v1471 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1470, v66, v67, v68);
  v1473 = &v413[-v1472];
  v1474 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70, &v413[-v1472], v71, v72);
  v1475 = &v413[-v1474];
  v1476 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, &v413[-v1474], v75, v76);
  v1477 = &v413[-v1476];
  v1478 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, &v413[-v1476], v79, v80);
  v1479 = &v413[-v1478];
  v1480 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82, &v413[-v1478], v83, v84);
  v1481 = &v413[-v1480];
  v1482 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, &v413[-v1480], v87, v88);
  v1483 = &v413[-v1482];
  v1484 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90, &v413[-v1482], v91, v92);
  v1485 = &v413[-v1484];
  v1486 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94, &v413[-v1484], v95, v96);
  v1487 = &v413[-v1486];
  v1488 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98, &v413[-v1486], v99, v100);
  v1489 = &v413[-v1488];
  v1490 = sub_268F99F64();
  v1491 = *(v1490 - 8);
  v1492 = v1490 - 8;
  v1493 = (*(v1491 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1490, v101, v102, v103);
  v1494 = &v413[-v1493];
  v1496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v1497 = *(*(v1496 - 8) + 64);
  v1498 = (v1497 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1495, v104, v105, v106);
  v1499 = &v413[-v1498];
  v1500 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108, &v413[-v1498], v109, v110);
  v1501 = &v413[-v1500];
  v1502 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112, &v413[-v1500], v113, v114);
  v1503 = &v413[-v1502];
  v1504 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v116, &v413[-v1502], v117, v118);
  v1505 = &v413[-v1504];
  v1799 = &v413[-v1504];
  v1506 = (v119 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120, v121, v122, v123);
  v1507 = &v413[-v1506];
  v1508 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, &v413[-v1506], v126, v127);
  v1509 = &v413[-v1508];
  v1510 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v129, &v413[-v1508], v130, v131);
  v1511 = &v413[-v1510];
  v1798 = &v413[-v1510];
  v1512 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v134, v135, v136);
  v1513 = &v413[-v1512];
  v1514 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v138, &v413[-v1512], v139, v140);
  v1515 = &v413[-v1514];
  v1516 = (v141 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142, &v413[-v1514], v143, v144);
  v1517 = &v413[-v1516];
  v1797 = &v413[-v1516];
  v1518 = (v145 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v146, v147, v148, v149);
  v1519 = &v413[-v1518];
  v1520 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151, &v413[-v1518], v152, v153);
  v1521 = &v413[-v1520];
  v1522 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155, &v413[-v1520], v156, v157);
  v1523 = &v413[-v1522];
  v1524 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v159, &v413[-v1522], v160, v161);
  v1525 = &v413[-v1524];
  v1526 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v163, &v413[-v1524], v164, v165);
  v1527 = &v413[-v1526];
  v1796 = &v413[-v1526];
  v1528 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v167, v168, v169, v170);
  v1529 = &v413[-v1528];
  v1530 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v172, &v413[-v1528], v173, v174);
  v1531 = &v413[-v1530];
  v1532 = (v175 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v176, &v413[-v1530], v177, v178);
  v1533 = &v413[-v1532];
  v1534 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v180, &v413[-v1532], v181, v182);
  v1535 = &v413[-v1534];
  v1536 = (v183 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v184, &v413[-v1534], v185, v186);
  v1537 = &v413[-v1536];
  v1795 = &v413[-v1536];
  v1538 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v188, v189, v190, v191);
  v1539 = &v413[-v1538];
  v1540 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v193, &v413[-v1538], v194, v195);
  v1541 = &v413[-v1540];
  v1542 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v197, &v413[-v1540], v198, v199);
  v1543 = &v413[-v1542];
  v1794 = &v413[-v1542];
  v1544 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v201, v202, v203, v204);
  v1545 = &v413[-v1544];
  v1546 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v206, &v413[-v1544], v207, v208);
  v1547 = &v413[-v1546];
  v1548 = (v209 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v210, &v413[-v1546], v211, v212);
  v1549 = &v413[-v1548];
  v1550 = (v213 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v214, &v413[-v1548], v215, v216);
  v1551 = &v413[-v1550];
  v1793 = &v413[-v1550];
  v1552 = (v217 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v218, v219, v220, v221);
  v1553 = &v413[-v1552];
  v1554 = (v222 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v223, &v413[-v1552], v224, v225);
  v1555 = &v413[-v1554];
  v1556 = (v226 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227, &v413[-v1554], v228, v229);
  v1557 = &v413[-v1556];
  v1792 = &v413[-v1556];
  v1558 = (v230 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231, v232, v233, v234);
  v1559 = &v413[-v1558];
  v1560 = (v235 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v236, &v413[-v1558], v237, v238);
  v1561 = &v413[-v1560];
  v1562 = (v239 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v240, &v413[-v1560], v241, v242);
  v1563 = &v413[-v1562];
  v1791 = &v413[-v1562];
  v1564 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v244, v245, v246, v247);
  v1565 = &v413[-v1564];
  v1566 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249, &v413[-v1564], v250, v251);
  v1567 = &v413[-v1566];
  v1568 = (v252 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v253, &v413[-v1566], v254, v255);
  v1569 = &v413[-v1568];
  v1570 = (v256 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v257, &v413[-v1568], v258, v259);
  v1571 = &v413[-v1570];
  v1790 = &v413[-v1570];
  v1572 = (v260 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v261, v262, v263, v264);
  v1573 = &v413[-v1572];
  v1574 = (v265 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v266, &v413[-v1572], v267, v268);
  v1575 = &v413[-v1574];
  v1576 = (v269 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v270, &v413[-v1574], v271, v272);
  v1577 = &v413[-v1576];
  v1789 = &v413[-v1576];
  v1578 = (v273 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v274, v275, v276, v277);
  v1579 = &v413[-v1578];
  v1580 = (v278 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v279, &v413[-v1578], v280, v281);
  v1581 = &v413[-v1580];
  v1582 = (v282 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v283, &v413[-v1580], v284, v285);
  v1583 = &v413[-v1582];
  v1584 = (v286 + 15) & 0xFFFFFFFFFFFFFFF0;
  v290 = MEMORY[0x28223BE20](v287, &v413[-v1582], v288, v289);
  v1585 = &v413[-v1584];
  v1788 = &v413[-v1584];
  v1787 = v291;
  v1786 = v4;
  v1586 = MEMORY[0x26D62CD00](v290);
  v1785 = v1586;
  v1784 = v1586;
  v1587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7D0, &qword_268F9F550);
  sub_268D9BF0C();
  sub_268F9B234();
  v1588 = v1783;
  if (!v1783)
  {
    v414 = sub_268F9B294();
    v416 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v416);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v417 = 0;
    v415 = sub_268F9B734();
    v419 = 58;
    sub_268F9AC14(v414, &dword_268CBE000, v416, v1436);

    MEMORY[0x277D82BD8](v416);
    v420 = sub_268F9A7E4();
    sub_268D91304();
    v418 = 1;
    v422 = swift_allocError();
    v421 = v407;
    v408 = sub_268F9AEF4();
    v409 = v420;
    v410 = v408;
    v411 = v421;
    *v421 = v410;
    v411[1] = v412;
    (*(*(v409 - 8) + 104))();
    swift_willThrow();

    return;
  }

  v1386 = v1588;
  v1385 = v1588;
  v1782 = v1588;

  sub_268F9A204();

  if (v1781[3])
  {
    sub_268F9A2A4();
    if (swift_dynamicCast())
    {
      v1384 = v1589;
    }

    else
    {
      v1384 = 0;
    }

    v1383 = v1384;
  }

  else
  {
    sub_268D28414(v1781);
    v1383 = 0;
  }

  v1382 = v1383;
  if (v1383)
  {
    v1381 = v1382;
    v1379 = v1382;
    v1590 = v1382;
    v1376 = sub_268F9B294();
    v1378 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v1378);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v1377 = sub_268F9B734();
    sub_268F9AC14(v1376, &dword_268CBE000, v1378, v1391, 79, 2);

    MEMORY[0x277D82BD8](v1378);
    *v1388 = 0;

    v1380 = v1390;
    return;
  }

  sub_268F9A204();

  if (v1780[3])
  {
    sub_268F9A2F4();
    if (swift_dynamicCast())
    {
      v1375 = v1591;
    }

    else
    {
      v1375 = 0;
    }

    v1374 = v1375;
  }

  else
  {
    sub_268D28414(v1780);
    v1374 = 0;
  }

  v1373 = v1374;
  if (v1374)
  {
    v1372 = v1373;
    v1371 = v1373;
    v1592 = v1373;
    v1368 = sub_268F9B294();
    v1370 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v1370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v1369 = sub_268F9B734();
    sub_268F9AC14(v1368, &dword_268CBE000, v1370, v1392, 79, 2);

    MEMORY[0x277D82BD8](v1370);
    *v1388 = 0;

    v1380 = v1390;
    return;
  }

  sub_268F9A204();

  if (v1779[3])
  {
    sub_268F9A3A4();
    if (swift_dynamicCast())
    {
      v1367 = v1593;
    }

    else
    {
      v1367 = 0;
    }

    v1366 = v1367;
  }

  else
  {
    sub_268D28414(v1779);
    v1366 = 0;
  }

  v1365 = v1366;
  if (!v1366)
  {

    sub_268F9A204();

    if (v1778[3])
    {
      sub_268F9A624();
      if (swift_dynamicCast())
      {
        v1296 = v1605;
      }

      else
      {
        v1296 = 0;
      }

      v1295 = v1296;
    }

    else
    {
      sub_268D28414(v1778);
      v1295 = 0;
    }

    v1294 = v1295;
    if (v1295)
    {
      v1293 = v1294;
      v1289 = v1294;
      v1607 = v1294;
      v1286 = sub_268F9B284();
      v1288 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1287 = sub_268F9B734();
      sub_268F9AC14(v1286, &dword_268CBE000, v1288, v1397, 25, 2);

      MEMORY[0x277D82BD8](v1288);

      v1291 = sub_268F9A314();

      sub_268F9A324();
      v1290 = v1606[4];

      v1292 = sub_268DA2274(v1291, v1290);

      if ((v1292 & 1) == 0)
      {

        v1284 = sub_268F9A314();

        sub_268F9A324();
        v1283 = v1606[3];

        has_malloc_size = _swift_stdlib_has_malloc_size();
        v1285 = sub_268D9F984(v1284, v1283, has_malloc_size & 1);

        if (v1285)
        {
          goto LABEL_538;
        }

        sub_268F9A324();
        v1282 = v1606[2];

        if (v1282 && (v1281 = v1282, v1279 = v1282, v308 = sub_268D8E220(), v1277 = *v308, v1278 = v308[1], , v1280 = sub_268F9A0A4(), , , v1280))
        {
          v1276 = v1280;
          v1606[0] = v1280;
          v1274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v1275 = v5;
          if (v5)
          {
            goto LABEL_658;
          }

          sub_268CD7930(v1606);
          v1273 = v1275;
        }

        else
        {
          (*(v1491 + 56))(v1577, 1, 1, v1490);
          v1273 = v1390;
        }

        v1270 = v1273;
        sub_268D9BF94(v1577, v1575);
        v1271 = *(v1491 + 48);
        v1272 = v1491 + 48;
        if (v1271(v1575, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1575);
          v1268 = 0;
          v1269 = 0;
        }

        else
        {
          v1266 = sub_268F99F44();
          v1267 = v309;
          (*(v1491 + 8))(v1575, v1490);
          v1268 = v1266;
          v1269 = v1267;
        }

        v1264 = v1269;
        v1265 = v1268;
        sub_268D9BF94(v1577, v1573);
        if (v1271(v1573, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1573);
          v1262 = 0;
          v1263 = 0;
        }

        else
        {
          v1260 = sub_268F99F54();
          v1261 = v310;
          (*(v1491 + 8))(v1573, v1490);
          v1262 = v1260;
          v1263 = v1261;
        }

        v1257 = v1263;
        v1258 = v1262;

        sub_268F9A324();
        v1259 = v1606[1];

        if (v1259)
        {
          v1256 = v1259;
          v1253 = v1259;
          v1254 = sub_268F99F04();

          v1255 = v1254;
        }

        else
        {
          v1255 = 0;
        }

        v1252 = v1255;
        sub_268D9DAD8(v1265, v1264, v1258, v1257, v1255, v1388);

        sub_268D9C0BC(v1577);

        v1380 = v1270;
        return;
      }

LABEL_536:
      *v1388 = 0;

      v1380 = v1390;
      return;
    }

    sub_268F9A204();

    if (v1777[3])
    {
      sub_268F9A3B4();
      if (swift_dynamicCast())
      {
        v1251 = v1608;
      }

      else
      {
        v1251 = 0;
      }

      v1250 = v1251;
    }

    else
    {
      sub_268D28414(v1777);
      v1250 = 0;
    }

    v1249 = v1250;
    if (v1250)
    {
      v1248 = v1249;
      v1244 = v1249;
      v1610 = v1249;
      v1241 = sub_268F9B284();
      v1243 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1243);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1242 = sub_268F9B734();
      sub_268F9AC14(v1241, &dword_268CBE000, v1243, v1399, 17, 2);

      MEMORY[0x277D82BD8](v1243);

      v1246 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1245 = v1609[4];

      v1247 = sub_268DA2274(v1246, v1245);

      if ((v1247 & 1) == 0)
      {

        v1239 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1238 = v1609[3];

        v311 = _swift_stdlib_has_malloc_size();
        v1240 = sub_268D9F984(v1239, v1238, v311 & 1);

        if (v1240)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v1237 = v1609[2];

        if (v1237 && (v1236 = v1237, v1234 = v1237, v312 = sub_268D8E220(), v1232 = *v312, v1233 = v312[1], , v1235 = sub_268F9A0A4(), , , v1235))
        {
          v1231 = v1235;
          v1609[0] = v1235;
          v1229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v1230 = v5;
          if (v5)
          {
            goto LABEL_659;
          }

          sub_268CD7930(v1609);
          v1228 = v1230;
        }

        else
        {
          (*(v1491 + 56))(v1571, 1, 1, v1490);
          v1228 = v1390;
        }

        v1225 = v1228;
        sub_268D9BF94(v1571, v1569);
        v1226 = *(v1491 + 48);
        v1227 = v1491 + 48;
        if (v1226(v1569, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1569);
          v1223 = 0;
          v1224 = 0;
        }

        else
        {
          v1221 = sub_268F99F44();
          v1222 = v313;
          (*(v1491 + 8))(v1569, v1490);
          v1223 = v1221;
          v1224 = v1222;
        }

        v1219 = v1224;
        v1220 = v1223;
        sub_268D9BF94(v1571, v1567);
        if (v1226(v1567, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1567);
          v1217 = 0;
          v1218 = 0;
        }

        else
        {
          v1215 = sub_268F99F54();
          v1216 = v314;
          (*(v1491 + 8))(v1567, v1490);
          v1217 = v1215;
          v1218 = v1216;
        }

        v1212 = v1218;
        v1213 = v1217;

        sub_268F9A5C4();
        v1214 = v1609[1];

        if (v1214)
        {
          v1211 = v1214;
          v1208 = v1214;
          v1209 = sub_268F99F04();

          v1210 = v1209;
        }

        else
        {
          v1210 = 0;
        }

        v1207 = v1210;
        sub_268D9DAD8(v1220, v1219, v1213, v1212, v1210, v1388);

        sub_268D9C0BC(v1571);

        v1380 = v1225;
        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1776[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v1206 = v1611;
      }

      else
      {
        v1206 = 0;
      }

      v1205 = v1206;
    }

    else
    {
      sub_268D28414(v1776);
      v1205 = 0;
    }

    v1204 = v1205;
    if (v1205)
    {
      v1203 = v1204;
      v1199 = v1204;
      v1622 = v1204;
      v1196 = sub_268F9B284();
      v1198 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1198);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1197 = sub_268F9B734();
      sub_268F9AC14(v1196, &dword_268CBE000, v1198, v1401, 17, 2);

      MEMORY[0x277D82BD8](v1198);

      v1201 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1200 = v1621;

      v1202 = sub_268DA2274(v1201, v1200);

      if ((v1202 & 1) == 0)
      {

        v1194 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1193 = v1620;

        v315 = _swift_stdlib_has_malloc_size();
        v1195 = sub_268D9F984(v1194, v1193, v315 & 1);

        if (v1195)
        {
          goto LABEL_538;
        }

        v1190 = swift_allocBox();
        v1191 = v316;
        v1619 = v316;

        sub_268F9A5C4();
        v1192 = v1618[3];

        if (v1192 && (v1189 = v1192, v1187 = v1192, v317 = sub_268D8E220(), v1185 = *v317, v1186 = v317[1], , v1188 = sub_268F9A0A4(), , , v1188))
        {
          v1184 = v1188;
          v1612 = v1188;
          v1182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v1183 = v5;
          if (v5)
          {
            goto LABEL_660;
          }

          sub_268CD7930(&v1612);
          v1181 = v1183;
        }

        else
        {
          (*(v1491 + 56))(v1191, 1, 1, v1490);
          v1181 = v1390;
        }

        v1168 = v1181;
        v1180 = sub_268F9B284();
        v1179 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v1179);

        v1169 = 17;
        v1171 = 7;
        v1173 = swift_allocObject();
        *(v1173 + 16) = 32;
        v1174 = swift_allocObject();
        *(v1174 + 16) = 8;
        v1170 = 32;
        v318 = swift_allocObject();
        v319 = v1190;
        v1172 = v318;
        *(v318 + 16) = v1403;
        *(v318 + 24) = v319;
        v320 = swift_allocObject();
        v321 = v1172;
        v1176 = v320;
        *(v320 + 16) = v1404;
        *(v320 + 24) = v321;
        v1178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v1175 = sub_268F9B734();
        v1177 = v322;

        v323 = v1173;
        v324 = v1177;
        *v1177 = v1405;
        v324[1] = v323;

        v325 = v1174;
        v326 = v1177;
        v1177[2] = v1406;
        v326[3] = v325;

        v327 = v1176;
        v328 = v1177;
        v1177[4] = v1407;
        v328[5] = v327;
        sub_268CD0F7C();

        if (os_log_type_enabled(v1179, v1180))
        {
          v1161 = sub_268F9B3A4();
          v1160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v1162 = sub_268CD5448(0, v1160, v1160);
          v1163 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v1164 = v1617;
          v1617[0] = v1161;
          v1165 = &v1616;
          v1616 = v1162;
          v1166 = &v1615;
          v1615 = v1163;
          sub_268CD549C(2, v1617);
          sub_268CD549C(1, v1164);
          v329 = v1168;
          v1613 = v1405;
          v1614 = v1173;
          sub_268CD54B0(&v1613, v1164, v1165, v1166);
          v1167 = v329;
          if (v329)
          {

            __break(1u);
          }

          else
          {
            v1613 = v1406;
            v1614 = v1174;
            sub_268CD54B0(&v1613, v1617, &v1616, &v1615);
            v1158 = 0;
            v1613 = v1407;
            v1614 = v1176;
            sub_268CD54B0(&v1613, v1617, &v1616, &v1615);
            v1157 = 0;
            _os_log_impl(&dword_268CBE000, v1179, v1180, "Uso identifier: %s.", v1161, 0xCu);
            sub_268CD54FC(v1162, 0, v1160);
            sub_268CD54FC(v1163, 1, MEMORY[0x277D84F70] + 8);
            sub_268F9B384();

            v1159 = v1157;
          }
        }

        else
        {

          v1159 = v1168;
        }

        v1153 = v1159;
        MEMORY[0x277D82BD8](v1179);
        v1154 = v1618;
        swift_beginAccess();
        sub_268D9BF94(v1191, v1565);
        swift_endAccess();
        v1155 = *(v1491 + 48);
        v1156 = v1491 + 48;
        v1152 = v1155(v1565, 1, v1490) == 1;
        v1151 = v1152;
        sub_268D9C0BC(v1565);

        if (v1151)
        {
          v1150 = sub_268D9C5C0(v1199);
        }

        else
        {
          v1150 = 0;
        }

        v1149 = v1150;

        if (v1149)
        {
          *v1388 = 2;

          v1380 = v1153;
        }

        else
        {
          swift_beginAccess();
          if (v1155(v1191, 1, v1490) == 0)
          {
            (*(v1491 + 16))(v1494, v1191, v1490);
            swift_endAccess();
            v1144 = sub_268F99F44();
            v1145 = v330;
            (*(v1491 + 8))(v1494, v1490);
            v1146 = v1144;
            v1147 = v1145;
          }

          else
          {
            swift_endAccess();
            v1146 = 0;
            v1147 = 0;
          }

          v1141 = v1147;
          v1142 = v1146;
          swift_beginAccess();
          if (v1155(v1191, 1, v1490) == 0)
          {
            (*(v1491 + 16))(v1494, v1191, v1490);
            swift_endAccess();
            v1137 = sub_268F99F54();
            v1138 = v331;
            (*(v1491 + 8))(v1494, v1490);
            v1139 = v1137;
            v1140 = v1138;
          }

          else
          {
            swift_endAccess();
            v1139 = 0;
            v1140 = 0;
          }

          v1134 = v1140;
          v1135 = v1139;

          sub_268F9A5C4();
          v1136 = v1617[1];

          if (v1136)
          {
            v1133 = v1136;
            v1130 = v1136;
            v1131 = sub_268F99F04();

            v1132 = v1131;
          }

          else
          {
            v1132 = 0;
          }

          v1129 = v1132;
          sub_268D9DAD8(v1142, v1141, v1135, v1134, v1132, v1388);

          v1380 = v1153;
        }

        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1775[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v1128 = v1623;
      }

      else
      {
        v1128 = 0;
      }

      v1127 = v1128;
    }

    else
    {
      sub_268D28414(v1775);
      v1127 = 0;
    }

    v1126 = v1127;
    if (v1127)
    {
      v1125 = v1126;
      v1121 = v1126;
      v1625 = v1126;
      v1118 = sub_268F9B284();
      v1120 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1119 = sub_268F9B734();
      sub_268F9AC14(v1118, &dword_268CBE000, v1120, v1408, 18, 2);

      MEMORY[0x277D82BD8](v1120);

      v1123 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1122 = v1624[4];

      v1124 = sub_268DA2274(v1123, v1122);

      if ((v1124 & 1) == 0)
      {

        v1116 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1115 = v1624[3];

        v332 = _swift_stdlib_has_malloc_size();
        v1117 = sub_268D9F984(v1116, v1115, v332 & 1);

        if (v1117)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v1114 = v1624[2];

        if (v1114 && (v1113 = v1114, v1111 = v1114, v333 = sub_268D8E220(), v1109 = *v333, v1110 = v333[1], , v1112 = sub_268F9A0A4(), , , v1112))
        {
          v1108 = v1112;
          v1624[0] = v1112;
          v1106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v1107 = v5;
          if (v5)
          {
            goto LABEL_661;
          }

          sub_268CD7930(v1624);
          v1105 = v1107;
        }

        else
        {
          (*(v1491 + 56))(v1563, 1, 1, v1490);
          v1105 = v1390;
        }

        v1102 = v1105;
        sub_268D9BF94(v1563, v1561);
        v1103 = *(v1491 + 48);
        v1104 = v1491 + 48;
        if (v1103(v1561, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1561);
          v1100 = 0;
          v1101 = 0;
        }

        else
        {
          v1098 = sub_268F99F44();
          v1099 = v334;
          (*(v1491 + 8))(v1561, v1490);
          v1100 = v1098;
          v1101 = v1099;
        }

        v1096 = v1101;
        v1097 = v1100;
        sub_268D9BF94(v1563, v1559);
        if (v1103(v1559, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1559);
          v1094 = 0;
          v1095 = 0;
        }

        else
        {
          v1092 = sub_268F99F54();
          v1093 = v335;
          (*(v1491 + 8))(v1559, v1490);
          v1094 = v1092;
          v1095 = v1093;
        }

        v1089 = v1095;
        v1090 = v1094;

        sub_268F9A5C4();
        v1091 = v1624[1];

        if (v1091)
        {
          v1088 = v1091;
          v1085 = v1091;
          v1086 = sub_268F99F04();

          v1087 = v1086;
        }

        else
        {
          v1087 = 0;
        }

        v1084 = v1087;
        sub_268D9DAD8(v1097, v1096, v1090, v1089, v1087, v1388);

        sub_268D9C0BC(v1563);

        v1380 = v1102;
        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1774[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v1083 = v1626;
      }

      else
      {
        v1083 = 0;
      }

      v1082 = v1083;
    }

    else
    {
      sub_268D28414(v1774);
      v1082 = 0;
    }

    v1081 = v1082;
    if (v1082)
    {
      v1080 = v1081;
      v1076 = v1081;
      v1628 = v1081;
      v1073 = sub_268F9B284();
      v1075 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1075);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1074 = sub_268F9B734();
      sub_268F9AC14(v1073, &dword_268CBE000, v1075, v1410, 14, 2);

      MEMORY[0x277D82BD8](v1075);

      v1078 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1077 = v1627[4];

      v1079 = sub_268DA2274(v1078, v1077);

      if ((v1079 & 1) == 0)
      {

        v1071 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1070 = v1627[3];

        v336 = _swift_stdlib_has_malloc_size();
        v1072 = sub_268D9F984(v1071, v1070, v336 & 1);

        if (v1072)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v1069 = v1627[2];

        if (v1069 && (v1068 = v1069, v1066 = v1069, v337 = sub_268D8E220(), v1064 = *v337, v1065 = v337[1], , v1067 = sub_268F9A0A4(), , , v1067))
        {
          v1063 = v1067;
          v1627[0] = v1067;
          v1061 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v1062 = v5;
          if (v5)
          {
            goto LABEL_662;
          }

          sub_268CD7930(v1627);
          v1060 = v1062;
        }

        else
        {
          (*(v1491 + 56))(v1557, 1, 1, v1490);
          v1060 = v1390;
        }

        v1057 = v1060;
        sub_268D9BF94(v1557, v1555);
        v1058 = *(v1491 + 48);
        v1059 = v1491 + 48;
        if (v1058(v1555, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1555);
          v1055 = 0;
          v1056 = 0;
        }

        else
        {
          v1053 = sub_268F99F44();
          v1054 = v338;
          (*(v1491 + 8))(v1555, v1490);
          v1055 = v1053;
          v1056 = v1054;
        }

        v1051 = v1056;
        v1052 = v1055;
        sub_268D9BF94(v1557, v1553);
        if (v1058(v1553, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1553);
          v1049 = 0;
          v1050 = 0;
        }

        else
        {
          v1047 = sub_268F99F54();
          v1048 = v339;
          (*(v1491 + 8))(v1553, v1490);
          v1049 = v1047;
          v1050 = v1048;
        }

        v1044 = v1050;
        v1045 = v1049;

        sub_268F9A5C4();
        v1046 = v1627[1];

        if (v1046)
        {
          v1043 = v1046;
          v1040 = v1046;
          v1041 = sub_268F99F04();

          v1042 = v1041;
        }

        else
        {
          v1042 = 0;
        }

        v1039 = v1042;
        sub_268D9DAD8(v1052, v1051, v1045, v1044, v1042, v1388);

        sub_268D9C0BC(v1557);

        v1380 = v1057;
        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1773[3])
    {
      sub_268F9A524();
      if (swift_dynamicCast())
      {
        v1038 = v1629;
      }

      else
      {
        v1038 = 0;
      }

      v1037 = v1038;
    }

    else
    {
      sub_268D28414(v1773);
      v1037 = 0;
    }

    v1036 = v1037;
    if (v1037)
    {
      v1035 = v1036;
      v1033 = v1036;
      v1640 = v1036;
      v1030 = sub_268F9B284();
      v1032 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1032);
      v1029 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1031 = sub_268F9B734();
      sub_268F9AC14(v1030, &dword_268CBE000, v1032, v1412, 20, 2);

      MEMORY[0x277D82BD8](v1032);

      sub_268F9A324();
      v1034 = v1639;

      if (v1034 && (v1028 = v1034, v1026 = v1034, v340 = sub_268D8E220(), v1024 = *v340, v1025 = v340[1], , v1027 = sub_268F9A0A4(), , , v1027))
      {
        v1023 = v1027;
        v1630 = v1027;
        v1021 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        sub_268F9AF94();
        v1022 = v5;
        if (v5)
        {
          goto LABEL_663;
        }

        sub_268CD7930(&v1630);
        v1020 = v1022;
      }

      else
      {
        (*(v1491 + 56))(v1551, 1, 1, v1490);
        v1020 = v1390;
      }

      v1017 = v1020;
      sub_268D9BF94(v1551, v1549);
      v1018 = *(v1491 + 48);
      v1019 = v1491 + 48;
      if (v1018(v1549, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1549);
        v1015 = 0;
        v1016 = 0;
      }

      else
      {
        v1013 = sub_268F99F44();
        v1014 = v341;
        (*(v1491 + 8))(v1549, v1490);
        v1015 = v1013;
        v1016 = v1014;
      }

      v1011 = v1016;
      v1010 = v1015;

      v1638 = 9;
      v1009 = NumericSettingIdentifier.rawValue.getter();
      v1012 = v342;

      v1636[0] = v1010;
      v1636[1] = v1011;
      *&v1637 = v1009;
      *(&v1637 + 1) = v1012;
      if (v1011)
      {
        sub_268D28874(v1636, v1633);
        if (*(&v1637 + 1))
        {
          v343 = *v1387;
          v1006 = &v1632;
          v1632 = v343;
          v1005 = &v1631;
          v1631 = v1637;
          v1007 = MEMORY[0x26D62DB50](v343, *(&v343 + 1), v1637, *(&v1637 + 1));
          sub_268CD9D30(v1005);
          sub_268CD9D30(v1006);
          sub_268CD9D30(v1636);
          v1008 = v1007;
LABEL_243:
          v1004 = v1008;

          v1635 = v1004 & 1;

          if (v1004)
          {
            v1003 = 0;
          }

          else
          {

            v1001 = sub_268F9A314();

            sub_268F9A324();
            v1000 = v1633[2];

            v1002 = sub_268DA2274(v1001, v1000);

            v1003 = v1002;
          }

          v999 = v1003;

          if (v999)
          {
            v996 = sub_268F9B284();
            v998 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v998);
            v995 = sub_268F9B734();
            v994 = v344;

            v990 = sub_268F9A314();

            v991 = v1634;
            v1634[0] = v990;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E8, &unk_268F9F560);
            v992 = sub_268F9AE64();
            v993 = v345;
            v994[3] = MEMORY[0x277D837D0];
            v346 = sub_268CDD224();
            v347 = v992;
            v348 = v993;
            v349 = v994;
            v994[4] = v346;
            *v349 = v347;
            v349[1] = v348;
            sub_268CD0F7C();
            v997 = v350;
            sub_268F9AC14(v996, &dword_268CBE000, v998, v1414, 67, 2);

            MEMORY[0x277D82BD8](v998);
            v351 = v1551;
            *v1388 = 0;
            sub_268D9C0BC(v351);

            v1380 = v1017;
          }

          else
          {

            v988 = sub_268F9A314();

            sub_268F9A324();
            v987 = v1634[2];

            v989 = sub_268D9F984(v988, v987, 0);

            if (v989)
            {
              v352 = v1551;
              *v1388 = 7;
              sub_268D9C0BC(v352);

              v1380 = v1017;
            }

            else
            {
              sub_268D9BF94(v1551, v1547);
              if (v1018(v1547, 1, v1490) == 1)
              {
                sub_268D9C0BC(v1547);
                v985 = 0;
                v986 = 0;
              }

              else
              {
                v983 = sub_268F99F44();
                v984 = v353;
                (*(v1491 + 8))(v1547, v1490);
                v985 = v983;
                v986 = v984;
              }

              v981 = v986;
              v982 = v985;
              sub_268D9BF94(v1551, v1545);
              if (v1018(v1545, 1, v1490) == 1)
              {
                sub_268D9C0BC(v1545);
                v979 = 0;
                v980 = 0;
              }

              else
              {
                v977 = sub_268F99F54();
                v978 = v354;
                (*(v1491 + 8))(v1545, v1490);
                v979 = v977;
                v980 = v978;
              }

              v974 = v980;
              v975 = v979;

              sub_268F9A324();
              v976 = v1634[1];

              if (v976)
              {
                v973 = v976;
                v970 = v976;
                v971 = sub_268F99F04();

                v972 = v971;
              }

              else
              {
                v972 = 0;
              }

              v969 = v972;
              sub_268D9DAD8(v982, v981, v975, v974, v972, v1388);

              sub_268D9C0BC(v1551);

              v1380 = v1017;
            }
          }

          return;
        }

        sub_268CD9D30(v1633);
      }

      else if (!*(&v1637 + 1))
      {
        sub_268CD9D30(v1636);
        v1008 = 1;
        goto LABEL_243;
      }

      sub_268D28550(v1636);
      v1008 = 0;
      goto LABEL_243;
    }

    sub_268F9A204();

    if (v1772[3])
    {
      sub_268F9A354();
      if (swift_dynamicCast())
      {
        v968 = v1641;
      }

      else
      {
        v968 = 0;
      }

      v967 = v968;
    }

    else
    {
      sub_268D28414(v1772);
      v967 = 0;
    }

    v966 = v967;
    if (v967)
    {
      v965 = v966;
      v961 = v966;
      v1643 = v966;
      v958 = sub_268F9B284();
      v960 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v960);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v959 = sub_268F9B734();
      sub_268F9AC14(v958, &dword_268CBE000, v960, v1415, 15, 2);

      MEMORY[0x277D82BD8](v960);

      v963 = sub_268F9A314();

      sub_268F9A324();
      v962 = v1642;

      v355 = _swift_stdlib_has_malloc_size();
      v964 = sub_268D9F984(v963, v962, v355 & 1);

      if (v964)
      {
        *v1388 = 7;
      }

      else
      {
        *v1388 = 2;
      }

LABEL_273:

      v1380 = v1390;
      return;
    }

    sub_268F9A204();

    if (v1771[3])
    {
      sub_268F9A454();
      if (swift_dynamicCast())
      {
        v957 = v1644;
      }

      else
      {
        v957 = 0;
      }

      v956 = v957;
    }

    else
    {
      sub_268D28414(v1771);
      v956 = 0;
    }

    v955 = v956;
    if (v956)
    {
      v954 = v955;
      v950 = v955;
      v1646 = v955;
      v947 = sub_268F9B284();
      v949 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v949);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v948 = sub_268F9B734();
      sub_268F9AC14(v947, &dword_268CBE000, v949, v1416, 18, 2);

      MEMORY[0x277D82BD8](v949);

      v952 = sub_268F9A534();

      sub_268F9A544();
      v951 = v1645[3];

      v356 = _swift_stdlib_has_malloc_size();
      v953 = sub_268D9F984(v952, v951, v356 & 1);

      if (v953)
      {
        goto LABEL_538;
      }

      sub_268F9A544();
      v946 = v1645[2];

      if (v946 && (v945 = v946, v943 = v946, v357 = sub_268D8E220(), v941 = *v357, v942 = v357[1], , v944 = sub_268F9A0A4(), , , v944))
      {
        v940 = v944;
        v1645[0] = v944;
        v938 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        sub_268F9AF94();
        v939 = v5;
        if (v5)
        {
          goto LABEL_664;
        }

        sub_268CD7930(v1645);
        v937 = v939;
      }

      else
      {
        (*(v1491 + 56))(v1543, 1, 1, v1490);
        v937 = v1390;
      }

      v934 = v937;
      sub_268D9BF94(v1543, v1541);
      v935 = *(v1491 + 48);
      v936 = v1491 + 48;
      if (v935(v1541, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1541);
        v932 = 0;
        v933 = 0;
      }

      else
      {
        v930 = sub_268F99F44();
        v931 = v358;
        (*(v1491 + 8))(v1541, v1490);
        v932 = v930;
        v933 = v931;
      }

      v928 = v933;
      v929 = v932;
      sub_268D9BF94(v1543, v1539);
      if (v935(v1539, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1539);
        v926 = 0;
        v927 = 0;
      }

      else
      {
        v924 = sub_268F99F54();
        v925 = v359;
        (*(v1491 + 8))(v1539, v1490);
        v926 = v924;
        v927 = v925;
      }

      v921 = v927;
      v922 = v926;

      sub_268F9A544();
      v923 = v1645[1];

      if (v923)
      {
        v920 = v923;
        v917 = v923;
        v918 = sub_268F99F04();

        v919 = v918;
      }

      else
      {
        v919 = 0;
      }

      v916 = v919;
      sub_268D9DAD8(v929, v928, v922, v921, v919, v1388);

      sub_268D9C0BC(v1543);

      v1380 = v934;
      return;
    }

    sub_268F9A204();

    if (v1770[3])
    {
      sub_268F9A594();
      if (swift_dynamicCast())
      {
        v915 = v1647;
      }

      else
      {
        v915 = 0;
      }

      v914 = v915;
    }

    else
    {
      sub_268D28414(v1770);
      v914 = 0;
    }

    v913 = v914;
    if (v914)
    {
      v912 = v913;
      v910 = v913;
      v1684 = v913;
      v907 = sub_268F9B284();
      v909 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v909);
      v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v908 = sub_268F9B734();
      sub_268F9AC14(v907, &dword_268CBE000, v909, v1418, 21, 2);

      MEMORY[0x277D82BD8](v909);

      sub_268F9A664();
      v911 = v1683;

      if (v911 && (v905 = v911, v903 = v911, v360 = sub_268D8E220(), v901 = *v360, v902 = v360[1], , v904 = sub_268F9A0A4(), , , v904))
      {
        v900 = v904;
        v1648 = v904;
        v898 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        sub_268F9AF94();
        v899 = v5;
        if (v5)
        {
          goto LABEL_665;
        }

        sub_268CD7930(&v1648);
        v897 = v899;
      }

      else
      {
        (*(v1491 + 56))(v1537, 1, 1, v1490);
        v897 = v1390;
      }

      v894 = v897;
      sub_268D9BF94(v1537, v1535);
      v895 = *(v1491 + 48);
      v896 = v1491 + 48;
      if (v895(v1535, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1535);
        v892 = 0;
        v893 = 0;
      }

      else
      {
        v890 = sub_268F99F44();
        v891 = v361;
        (*(v1491 + 8))(v1535, v1490);
        v892 = v890;
        v893 = v891;
      }

      v888 = v893;
      v887 = v892;

      v1682 = 9;
      v886 = NumericSettingIdentifier.rawValue.getter();
      v889 = v362;

      v1680[0] = v887;
      v1680[1] = v888;
      v1680[2] = v886;
      v1681 = v889;
      if (v888)
      {
        sub_268D28874(v1680, &v1651);
        if (v1681)
        {
          v883 = &v1650;
          v1650 = v1651;
          v363 = v1387[30];
          v882 = &v1649;
          v1649 = v363;
          v884 = MEMORY[0x26D62DB50](v1651, *(&v1651 + 1), v363, *(&v363 + 1));
          sub_268CD9D30(v882);
          sub_268CD9D30(v883);
          sub_268CD9D30(v1680);
          v885 = v884;
          goto LABEL_325;
        }

        sub_268CD9D30(&v1651);
      }

      else if (!v1681)
      {
        sub_268CD9D30(v1680);
        v885 = 1;
LABEL_325:
        v881 = v885;

        v1679 = v881 & 1;

        if (v881)
        {
          v880 = 0;
        }

        else
        {

          v878 = sub_268F9A644();

          sub_268F9A664();
          v877 = v1652;

          v879 = sub_268DA2274(v878, v877);

          v880 = v879;
        }

        v876 = v880;

        if (v876 & 1) != 0 || ((, , (v881) ? (v875 = 0) : (, sub_268F9A664(), v873 = v1653, , v874 = sub_268DA1D80(v873), , v875 = v874), v872 = v875, , , (v872))
        {
          v364 = v1537;
          *v1388 = 0;
          sub_268D9C0BC(v364);

          v1380 = v894;
          return;
        }

        sub_268D9BF94(v1537, v1533);
        if (v895(v1533, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1533);
          v1677 = 0;
          v1678 = 0;
        }

        else
        {
          v870 = sub_268F99F44();
          v871 = v365;
          (*(v1491 + 8))(v1533, v1490);
          v1677 = v870;
          v1678 = v871;
        }

        v868 = v1677;
        v869 = v1678;

        v1676[0] = v868;
        v1676[1] = v869;
        v867 = v869 == 0;
        v866 = v867;
        sub_268CD9D30(v1676);
        if (!v866)
        {
          goto LABEL_377;
        }

        sub_268F9A664();
        v865 = v1666;

        if (v865 && (v864 = v865, v862 = v865, v863 = sub_268F9A094(), , v863))
        {
          v861 = v863;
          v860 = v863;
          sub_268F9A424();
        }

        else
        {
          (*(v1457 + 56))(v1489, 1, 1, v1456);
        }

        (*(v1457 + 104))(v1487, *MEMORY[0x277D5EE50], v1456);
        v366 = *(v1457 + 56);
        v857 = 1;
        v366(v1487, 0);
        v856 = &v1469[*(v1463 + 48)];
        sub_268D9FB5C(v1489, v1469);
        sub_268D9FB5C(v1487, v856);
        v858 = *(v1457 + 48);
        v859 = v1457 + 48;
        if (v858(v1469, v857, v1456) == 1)
        {
          if (v858(v856, 1, v1456) == 1)
          {
            sub_268D9FDB0(v1469);
            v855 = 1;
            goto LABEL_351;
          }
        }

        else
        {
          sub_268D9FB5C(v1469, v1485);
          if (v858(v856, 1, v1456) != 1)
          {
            v851 = *(v1457 + 32);
            v850 = v1457 + 32;
            v851(v1462, v1485, v1456);
            v851(v1460, v856, v1456);
            sub_268D9FF80();
            v854 = sub_268F9AE04();
            v853 = *(v1457 + 8);
            v852 = v1457 + 8;
            v853(v1460, v1456);
            v853(v1462, v1456);
            sub_268D9FDB0(v1469);
            v855 = v854;
            goto LABEL_351;
          }

          (*(v1457 + 8))(v1485, v1456);
        }

        sub_268D9FC84(v1469);
        v855 = 0;
LABEL_351:
        v849 = v855;
        sub_268D9FDB0(v1487);
        sub_268D9FDB0(v1489);
        if (v849)
        {
          sub_268D35D60((v1389 + 72), v1663);
          if (v1664)
          {
            v845 = v1664;
            v846 = v1665;
            v847 = __swift_project_boxed_opaque_existential_1(v1663, v1664);

            sub_268F9A664();
            v848 = v1654;

            if (v848)
            {
              v844 = v848;
              v841 = v848;
              v842 = sub_268F99F04();

              v843 = v842;
            }

            else
            {
              v843 = 0;
            }

            v840 = v843;
            (*(v846 + 16))();

            __swift_destroy_boxed_opaque_existential_0(v1663);
          }

          else
          {
            sub_268D28414(v1663);
            v370 = sub_268F9ACE4();
            (*(*(v370 - 8) + 56))(v1455, 1);
          }

          sub_268D9FE58(v1455, v1453);
          v835 = sub_268F9ACE4();
          v836 = *(v835 - 8);
          v837 = v835 - 8;
          v838 = *(v836 + 48);
          v839 = v836 + 48;
          if (v838(v1453, 1) == 1)
          {
            sub_268D59D2C(v1453);
            v834 = 0;
          }

          else
          {
            v833 = sub_268F9ACD4();
            (*(v836 + 8))(v1453, v835);
            v834 = v833;
          }

          v832 = v834;
          sub_268F9A2E4();
          sub_268F9A2D4();

          v1661 = v1662;
          v831 = v1662 != 0;
          v830 = v831;
          sub_268D287E8(&v1661);
          if (v830)
          {
            v827 = sub_268F9B284();
            v829 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v829);
            v828 = sub_268F9B734();
            sub_268F9AC14(v827, &dword_268CBE000, v829, v1421, 64, 2);

            MEMORY[0x277D82BD8](v829);
            v1655 = 9;
            v1677 = NumericSettingIdentifier.rawValue.getter();
            v1678 = v367;
          }

          else
          {
            v824 = sub_268F9B284();
            v826 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v826);
            v825 = sub_268F9B734();
            sub_268F9AC14(v824, &dword_268CBE000, v826, v1420, 71, 2);

            MEMORY[0x277D82BD8](v826);
            sub_268D9FE58(v1455, v1451);
            if ((v838)(v1451, 1, v835) == 1)
            {
              sub_268D59D2C(v1451);
              v822 = 0;
              v823 = 0;
            }

            else
            {
              v820 = sub_268F9ACC4();
              v821 = v368;
              (*(v836 + 8))(v1451, v835);
              v822 = v820;
              v823 = v821;
            }

            v1657 = v822;
            v1658 = v823;
            if (v823)
            {
              v1659 = v1657;
              v1660 = v1658;
            }

            else
            {
              v1656 = 9;
              v1659 = NumericSettingIdentifier.rawValue.getter();
              v1660 = v369;
              if (v1658)
              {
                sub_268CD9D30(&v1657);
              }
            }

            v1677 = v1659;
            v1678 = v1660;
          }

          sub_268D59D2C(v1455);
        }

LABEL_377:
        v1675 = 1;
        v818 = v1677;
        v819 = v1678;

        sub_268D9BF94(v1537, v1531);
        if (v895(v1531, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1531);
          v816 = 0;
          v817 = 0;
        }

        else
        {
          v814 = sub_268F99F54();
          v815 = v371;
          (*(v1491 + 8))(v1531, v1490);
          v816 = v814;
          v817 = v815;
        }

        v811 = v817;
        v812 = v816;

        sub_268F9A664();
        v813 = v1673;

        if (v813)
        {
          v810 = v813;
          v807 = v813;
          v808 = sub_268F99F04();

          v809 = v808;
        }

        else
        {
          v809 = 0;
        }

        v806 = v809;
        sub_268D9DAD8(v818, v819, v812, v811, v809, &v1674);

        v1672 = v1674;
        if (static SupportedFlowDomain.== infix(_:_:)(&v1675, &v1672))
        {
          v803 = sub_268F9B284();
          v805 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v805);
          v804 = sub_268F9B734();
          sub_268F9AC14(v803, &dword_268CBE000, v805, v1424, 45, 2);

          MEMORY[0x277D82BD8](v805);
          *v1388 = 1;
          sub_268CD9D30(&v1677);
          sub_268D9C0BC(v1537);

          v1380 = v894;
        }

        else
        {
          v1671 = 2;
          v801 = v1677;
          v802 = v1678;

          sub_268D9BF94(v1537, v1529);
          if (v895(v1529, 1, v1490) == 1)
          {
            sub_268D9C0BC(v1529);
            v799 = 0;
            v800 = 0;
          }

          else
          {
            v797 = sub_268F99F54();
            v798 = v372;
            (*(v1491 + 8))(v1529, v1490);
            v799 = v797;
            v800 = v798;
          }

          v794 = v800;
          v795 = v799;

          sub_268F9A664();
          v796 = v1669;

          if (v796)
          {
            v793 = v796;
            v790 = v796;
            v791 = sub_268F99F04();

            v792 = v791;
          }

          else
          {
            v792 = 0;
          }

          v789 = v792;
          sub_268D9EBC0(v801, v802, v795, v794, v792, &v1670);

          v1668 = v1670;
          if (static SupportedFlowDomain.== infix(_:_:)(&v1671, &v1668))
          {
            v785 = sub_268F9B284();
            v787 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v787);
            v786 = sub_268F9B734();
            v788 = 2;
            sub_268F9AC14(v785, &dword_268CBE000, v787, v1422, 37, 2);

            MEMORY[0x277D82BD8](v787);
            *v1388 = v788;
            sub_268CD9D30(&v1677);
            sub_268D9C0BC(v1537);

            v1380 = v894;
          }

          else
          {

            v783 = sub_268F9A644();

            sub_268F9A664();
            v782 = v1667;

            v373 = _swift_stdlib_has_malloc_size();
            v784 = sub_268D9F984(v783, v782, v373 & 1);

            if (v784)
            {
              v779 = sub_268F9B284();
              v781 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v781);
              v780 = sub_268F9B734();
              sub_268F9AC14(v779, &dword_268CBE000, v781, v1423, 48, 2);

              MEMORY[0x277D82BD8](v781);
              *v1388 = 7;
            }

            else
            {
              v775 = sub_268F9B284();
              v777 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v777);
              v776 = sub_268F9B734();
              v778 = 2;
              sub_268F9AC14(v775, &dword_268CBE000, v777, v1422, 37, 2);

              MEMORY[0x277D82BD8](v777);
              *v1388 = v778;
            }

            sub_268CD9D30(&v1677);
            sub_268D9C0BC(v1537);

            v1380 = v894;
          }
        }

        return;
      }

      sub_268D28550(v1680);
      v885 = 0;
      goto LABEL_325;
    }

    sub_268F9A204();

    if (v1769[3])
    {
      sub_268F9A584();
      if (swift_dynamicCast())
      {
        v774 = v1685;
      }

      else
      {
        v774 = 0;
      }

      v773 = v774;
    }

    else
    {
      sub_268D28414(v1769);
      v773 = 0;
    }

    v772 = v773;
    if (v773)
    {
      v771 = v772;
      v769 = v772;
      v1722 = v772;
      v766 = sub_268F9B284();
      v768 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v768);
      v765 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v767 = sub_268F9B734();
      sub_268F9AC14(v766, &dword_268CBE000, v768, v1425, 21, 2);

      MEMORY[0x277D82BD8](v768);

      sub_268F9A664();
      v770 = v1721;

      if (v770 && (v764 = v770, v762 = v770, v374 = sub_268D8E220(), v760 = *v374, v761 = v374[1], , v763 = sub_268F9A0A4(), , , v763))
      {
        v759 = v763;
        v1686 = v763;
        v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        sub_268F9AF94();
        v758 = v5;
        if (v5)
        {
          goto LABEL_666;
        }

        sub_268CD7930(&v1686);
        v756 = v758;
      }

      else
      {
        (*(v1491 + 56))(v1527, 1, 1, v1490);
        v756 = v1390;
      }

      v753 = v756;
      sub_268D9BF94(v1527, v1525);
      v754 = *(v1491 + 48);
      v755 = v1491 + 48;
      if (v754(v1525, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1525);
        v751 = 0;
        v752 = 0;
      }

      else
      {
        v749 = sub_268F99F44();
        v750 = v375;
        (*(v1491 + 8))(v1525, v1490);
        v751 = v749;
        v752 = v750;
      }

      v747 = v752;
      v746 = v751;

      v1720 = 9;
      v745 = NumericSettingIdentifier.rawValue.getter();
      v748 = v376;

      v1718[0] = v746;
      v1718[1] = v747;
      *&v1719 = v745;
      *(&v1719 + 1) = v748;
      if (v747)
      {
        sub_268D28874(v1718, &v1689);
        if (*(&v1719 + 1))
        {
          v742 = &v1688;
          v1688 = v1689;
          v741 = &v1687;
          v1687 = v1719;
          v743 = MEMORY[0x26D62DB50](v1689, *(&v1689 + 1), v1719, *(&v1719 + 1));
          sub_268CD9D30(v741);
          sub_268CD9D30(v742);
          sub_268CD9D30(v1718);
          v744 = v743;
          goto LABEL_423;
        }

        sub_268CD9D30(&v1689);
      }

      else if (!*(&v1719 + 1))
      {
        sub_268CD9D30(v1718);
        v744 = 1;
LABEL_423:
        v740 = v744;

        v1717 = v740 & 1;

        if (v740)
        {
          v739 = 0;
        }

        else
        {

          v737 = sub_268F9A644();

          sub_268F9A664();
          v736 = v1690;

          v738 = sub_268DA2274(v737, v736);

          v739 = v738;
        }

        v735 = v739;

        if (v735 & 1) != 0 || ((, , (v740) ? (v734 = 0) : (, sub_268F9A664(), v732 = v1691, , v733 = sub_268DA1D80(v732), , v734 = v733), v731 = v734, , , (v731))
        {
          v377 = v1527;
          *v1388 = 0;
          sub_268D9C0BC(v377);

          v1380 = v753;
          return;
        }

        sub_268D9BF94(v1527, v1523);
        if (v754(v1523, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1523);
          v1715 = 0;
          v1716 = 0;
        }

        else
        {
          v729 = sub_268F99F44();
          v730 = v378;
          (*(v1491 + 8))(v1523, v1490);
          v1715 = v729;
          v1716 = v730;
        }

        v727 = v1715;
        v728 = v1716;

        v1714[0] = v727;
        v1714[1] = v728;
        v726 = v728 == 0;
        v725 = v726;
        sub_268CD9D30(v1714);
        if (!v725)
        {
          goto LABEL_475;
        }

        sub_268F9A664();
        v724 = v1704;

        if (v724 && (v723 = v724, v721 = v724, v722 = sub_268F9A094(), , v722))
        {
          v720 = v722;
          v719 = v722;
          sub_268F9A424();
        }

        else
        {
          (*(v1457 + 56))(v1483, 1, 1, v1456);
        }

        (*(v1457 + 104))(v1481, *MEMORY[0x277D5EE50], v1456);
        v379 = *(v1457 + 56);
        v716 = 1;
        v379(v1481, 0);
        v715 = &v1467[*(v1463 + 48)];
        sub_268D9FB5C(v1483, v1467);
        sub_268D9FB5C(v1481, v715);
        v717 = *(v1457 + 48);
        v718 = v1457 + 48;
        if (v717(v1467, v716, v1456) == 1)
        {
          if (v717(v715, 1, v1456) == 1)
          {
            sub_268D9FDB0(v1467);
            v714 = 1;
            goto LABEL_449;
          }
        }

        else
        {
          sub_268D9FB5C(v1467, v1479);
          if (v717(v715, 1, v1456) != 1)
          {
            v710 = *(v1457 + 32);
            v709 = v1457 + 32;
            v710(v1462, v1479, v1456);
            v710(v1460, v715, v1456);
            sub_268D9FF80();
            v713 = sub_268F9AE04();
            v712 = *(v1457 + 8);
            v711 = v1457 + 8;
            v712(v1460, v1456);
            v712(v1462, v1456);
            sub_268D9FDB0(v1467);
            v714 = v713;
            goto LABEL_449;
          }

          (*(v1457 + 8))(v1479, v1456);
        }

        sub_268D9FC84(v1467);
        v714 = 0;
LABEL_449:
        v708 = v714;
        sub_268D9FDB0(v1481);
        sub_268D9FDB0(v1483);
        if (v708)
        {
          sub_268D35D60((v1389 + 72), v1701);
          if (v1702)
          {
            v704 = v1702;
            v705 = v1703;
            v706 = __swift_project_boxed_opaque_existential_1(v1701, v1702);

            sub_268F9A664();
            v707 = v1692;

            if (v707)
            {
              v703 = v707;
              v700 = v707;
              v701 = sub_268F99F04();

              v702 = v701;
            }

            else
            {
              v702 = 0;
            }

            v699 = v702;
            (*(v705 + 16))();

            __swift_destroy_boxed_opaque_existential_0(v1701);
          }

          else
          {
            sub_268D28414(v1701);
            v383 = sub_268F9ACE4();
            (*(*(v383 - 8) + 56))(v1449, 1);
          }

          sub_268D9FE58(v1449, v1447);
          v694 = sub_268F9ACE4();
          v695 = *(v694 - 8);
          v696 = v694 - 8;
          v697 = *(v695 + 48);
          v698 = v695 + 48;
          if (v697(v1447, 1) == 1)
          {
            sub_268D59D2C(v1447);
            v693 = 0;
          }

          else
          {
            v692 = sub_268F9ACD4();
            (*(v695 + 8))(v1447, v694);
            v693 = v692;
          }

          v690 = v693;
          sub_268F9A2E4();
          sub_268F9A2D4();

          v691 = v1700;
          if (v1700)
          {
            v689 = v691;
            v688 = v691;
            v1694 = v691;
            v685 = sub_268F9B284();
            v687 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v687);
            v686 = sub_268F9B734();
            sub_268F9AC14(v685, &dword_268CBE000, v687, v1421, 64, 2);

            MEMORY[0x277D82BD8](v687);
            v1693 = 9;
            v1715 = NumericSettingIdentifier.rawValue.getter();
            v1716 = v380;
          }

          else
          {
            v682 = sub_268F9B284();
            v684 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v684);
            v683 = sub_268F9B734();
            sub_268F9AC14(v682, &dword_268CBE000, v684, v1420, 71, 2);

            MEMORY[0x277D82BD8](v684);
            sub_268D9FE58(v1449, v1445);
            if ((v697)(v1445, 1, v694) == 1)
            {
              sub_268D59D2C(v1445);
              v680 = 0;
              v681 = 0;
            }

            else
            {
              v678 = sub_268F9ACC4();
              v679 = v381;
              (*(v695 + 8))(v1445, v694);
              v680 = v678;
              v681 = v679;
            }

            v1696 = v680;
            v1697 = v681;
            if (v681)
            {
              v1698 = v1696;
              v1699 = v1697;
            }

            else
            {
              v1695 = 9;
              v1698 = NumericSettingIdentifier.rawValue.getter();
              v1699 = v382;
              if (v1697)
              {
                sub_268CD9D30(&v1696);
              }
            }

            v1715 = v1698;
            v1716 = v1699;
          }

          sub_268D59D2C(v1449);
        }

LABEL_475:
        v1713 = 1;
        v676 = v1715;
        v677 = v1716;

        sub_268D9BF94(v1527, v1521);
        if (v754(v1521, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1521);
          v674 = 0;
          v675 = 0;
        }

        else
        {
          v672 = sub_268F99F54();
          v673 = v384;
          (*(v1491 + 8))(v1521, v1490);
          v674 = v672;
          v675 = v673;
        }

        v669 = v675;
        v670 = v674;

        sub_268F9A664();
        v671 = v1711;

        if (v671)
        {
          v668 = v671;
          v665 = v671;
          v666 = sub_268F99F04();

          v667 = v666;
        }

        else
        {
          v667 = 0;
        }

        v664 = v667;
        sub_268D9DAD8(v676, v677, v670, v669, v667, &v1712);

        v1710 = v1712;
        if (static SupportedFlowDomain.== infix(_:_:)(&v1713, &v1710))
        {
          v661 = sub_268F9B284();
          v663 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v663);
          v662 = sub_268F9B734();
          sub_268F9AC14(v661, &dword_268CBE000, v663, v1429, 44, 2);

          MEMORY[0x277D82BD8](v663);
          *v1388 = 1;
          sub_268CD9D30(&v1715);
          sub_268D9C0BC(v1527);

          v1380 = v753;
        }

        else
        {
          v1709 = 2;
          v659 = v1715;
          v660 = v1716;

          sub_268D9BF94(v1527, v1519);
          if (v754(v1519, 1, v1490) == 1)
          {
            sub_268D9C0BC(v1519);
            v657 = 0;
            v658 = 0;
          }

          else
          {
            v655 = sub_268F99F54();
            v656 = v385;
            (*(v1491 + 8))(v1519, v1490);
            v657 = v655;
            v658 = v656;
          }

          v652 = v658;
          v653 = v657;

          sub_268F9A664();
          v654 = v1707;

          if (v654)
          {
            v651 = v654;
            v648 = v654;
            v649 = sub_268F99F04();

            v650 = v649;
          }

          else
          {
            v650 = 0;
          }

          v647 = v650;
          sub_268D9EBC0(v659, v660, v653, v652, v650, &v1708);

          v1706 = v1708;
          if (static SupportedFlowDomain.== infix(_:_:)(&v1709, &v1706))
          {
            v643 = sub_268F9B284();
            v645 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v645);
            v644 = sub_268F9B734();
            v646 = 2;
            sub_268F9AC14(v643, &dword_268CBE000, v645, v1422, 37, 2);

            MEMORY[0x277D82BD8](v645);
            *v1388 = v646;
            sub_268CD9D30(&v1715);
            sub_268D9C0BC(v1527);

            v1380 = v753;
          }

          else
          {

            v641 = sub_268F9A644();

            sub_268F9A664();
            v640 = v1705;

            v386 = _swift_stdlib_has_malloc_size();
            v642 = sub_268D9F984(v641, v640, v386 & 1);

            if (v642)
            {
              v637 = sub_268F9B284();
              v639 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v639);
              v638 = sub_268F9B734();
              sub_268F9AC14(v637, &dword_268CBE000, v639, v1428, 47, 2);

              MEMORY[0x277D82BD8](v639);
              *v1388 = 7;
            }

            else
            {
              v633 = sub_268F9B284();
              v635 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v635);
              v634 = sub_268F9B734();
              v636 = 2;
              sub_268F9AC14(v633, &dword_268CBE000, v635, v1427, 36, 2);

              MEMORY[0x277D82BD8](v635);
              *v1388 = v636;
            }

            sub_268CD9D30(&v1715);
            sub_268D9C0BC(v1527);

            v1380 = v753;
          }
        }

        return;
      }

      sub_268D28550(v1718);
      v744 = 0;
      goto LABEL_423;
    }

    sub_268F9A204();

    if (v1768[3])
    {
      sub_268F9A684();
      if (swift_dynamicCast())
      {
        v632 = v1723;
      }

      else
      {
        v632 = 0;
      }

      v631 = v632;
    }

    else
    {
      sub_268D28414(v1768);
      v631 = 0;
    }

    v630 = v631;
    if (v631)
    {
      v629 = v630;
      v625 = v630;
      v1725 = v630;
      v622 = sub_268F9B284();
      v624 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v623 = sub_268F9B734();
      sub_268F9AC14(v622, &dword_268CBE000, v624, v1430, 32, 2);

      MEMORY[0x277D82BD8](v624);

      v627 = sub_268F9A694();

      sub_268F9A6A4();
      v626 = v1724[4];

      v628 = sub_268DA2274(v627, v626);

      if ((v628 & 1) == 0)
      {

        v620 = sub_268F9A694();

        sub_268F9A6A4();
        v619 = v1724[3];

        v387 = _swift_stdlib_has_malloc_size();
        v621 = sub_268D9F984(v620, v619, v387 & 1);

        if (v621)
        {
          goto LABEL_538;
        }

        sub_268F9A6A4();
        v618 = v1724[2];

        if (v618 && (v617 = v618, v615 = v618, v388 = sub_268D8E220(), v613 = *v388, v614 = v388[1], , v616 = sub_268F9A0A4(), , , v616))
        {
          v612 = v616;
          v1724[0] = v616;
          v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v611 = v5;
          if (v5)
          {
            goto LABEL_667;
          }

          sub_268CD7930(v1724);
          v609 = v611;
        }

        else
        {
          (*(v1491 + 56))(v1517, 1, 1, v1490);
          v609 = v1390;
        }

        v606 = v609;
        sub_268D9BF94(v1517, v1515);
        v607 = *(v1491 + 48);
        v608 = v1491 + 48;
        if (v607(v1515, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1515);
          v604 = 0;
          v605 = 0;
        }

        else
        {
          v602 = sub_268F99F44();
          v603 = v389;
          (*(v1491 + 8))(v1515, v1490);
          v604 = v602;
          v605 = v603;
        }

        v600 = v605;
        v601 = v604;
        sub_268D9BF94(v1517, v1513);
        if (v607(v1513, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1513);
          v598 = 0;
          v599 = 0;
        }

        else
        {
          v596 = sub_268F99F54();
          v597 = v390;
          (*(v1491 + 8))(v1513, v1490);
          v598 = v596;
          v599 = v597;
        }

        v593 = v599;
        v594 = v598;

        sub_268F9A6A4();
        v595 = v1724[1];

        if (v595)
        {
          v592 = v595;
          v589 = v595;
          v590 = sub_268F99F04();

          v591 = v590;
        }

        else
        {
          v591 = 0;
        }

        v588 = v591;
        sub_268D9DAD8(v601, v600, v594, v593, v591, v1388);

        sub_268D9C0BC(v1517);

        v1380 = v606;
        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1767[3])
    {
      sub_268F9A674();
      if (swift_dynamicCast())
      {
        v587 = v1726;
      }

      else
      {
        v587 = 0;
      }

      v586 = v587;
    }

    else
    {
      sub_268D28414(v1767);
      v586 = 0;
    }

    v585 = v586;
    if (v586)
    {
      v584 = v585;
      v580 = v585;
      v1728 = v585;
      v577 = sub_268F9B284();
      v579 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v579);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v578 = sub_268F9B734();
      sub_268F9AC14(v577, &dword_268CBE000, v579, v1432, 32, 2);

      MEMORY[0x277D82BD8](v579);

      v582 = sub_268F9A694();

      sub_268F9A6A4();
      v581 = v1727[4];

      v583 = sub_268DA2274(v582, v581);

      if ((v583 & 1) == 0)
      {

        v575 = sub_268F9A694();

        sub_268F9A6A4();
        v574 = v1727[3];

        v391 = _swift_stdlib_has_malloc_size();
        v576 = sub_268D9F984(v575, v574, v391 & 1);

        if (v576)
        {
LABEL_538:
          *v1388 = 7;

          v1380 = v1390;
          return;
        }

        sub_268F9A6A4();
        v573 = v1727[2];

        if (v573 && (v572 = v573, v570 = v573, v392 = sub_268D8E220(), v568 = *v392, v569 = v392[1], , v571 = sub_268F9A0A4(), , , v571))
        {
          v567 = v571;
          v1727[0] = v571;
          v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          sub_268F9AF94();
          v566 = v5;
          if (v5)
          {
            goto LABEL_668;
          }

          sub_268CD7930(v1727);
          v564 = v566;
        }

        else
        {
          (*(v1491 + 56))(v1511, 1, 1, v1490);
          v564 = v1390;
        }

        v561 = v564;
        sub_268D9BF94(v1511, v1509);
        v562 = *(v1491 + 48);
        v563 = v1491 + 48;
        if (v562(v1509, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1509);
          v559 = 0;
          v560 = 0;
        }

        else
        {
          v557 = sub_268F99F44();
          v558 = v393;
          (*(v1491 + 8))(v1509, v1490);
          v559 = v557;
          v560 = v558;
        }

        v555 = v560;
        v556 = v559;
        sub_268D9BF94(v1511, v1507);
        if (v562(v1507, 1, v1490) == 1)
        {
          sub_268D9C0BC(v1507);
          v553 = 0;
          v554 = 0;
        }

        else
        {
          v551 = sub_268F99F54();
          v552 = v394;
          (*(v1491 + 8))(v1507, v1490);
          v553 = v551;
          v554 = v552;
        }

        v548 = v554;
        v549 = v553;

        sub_268F9A6A4();
        v550 = v1727[1];

        if (v550)
        {
          v547 = v550;
          v544 = v550;
          v545 = sub_268F99F04();

          v546 = v545;
        }

        else
        {
          v546 = 0;
        }

        v543 = v546;
        sub_268D9DAD8(v556, v555, v549, v548, v546, v1388);

        sub_268D9C0BC(v1511);

        v1380 = v561;
        return;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1766[3])
    {
      sub_268F9A634();
      if (swift_dynamicCast())
      {
        v542 = v1729;
      }

      else
      {
        v542 = 0;
      }

      v541 = v542;
    }

    else
    {
      sub_268D28414(v1766);
      v541 = 0;
    }

    v540 = v541;
    if (v541)
    {
      v539 = v540;
      v535 = v540;
      v1731 = v540;
      v532 = sub_268F9B284();
      v534 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v534);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v533 = sub_268F9B734();
      sub_268F9AC14(v532, &dword_268CBE000, v534, v1432, 32, 2);

      MEMORY[0x277D82BD8](v534);

      v537 = sub_268F9A694();

      sub_268F9A6A4();
      v536 = v1730;

      v538 = sub_268DA2274(v537, v536);

      if (v538)
      {
        *v1388 = 0;
      }

      else
      {
        *v1388 = 7;
      }

      goto LABEL_273;
    }

    sub_268F9A204();

    if (v1765[3])
    {
      sub_268F9A514();
      if (swift_dynamicCast())
      {
        v531 = v1732;
      }

      else
      {
        v531 = 0;
      }

      v530 = v531;
    }

    else
    {
      sub_268D28414(v1765);
      v530 = 0;
    }

    v529 = v530;
    if (!v530)
    {
      *v1388 = 2;

      v1380 = v1390;
      return;
    }

    v528 = v529;
    v526 = v529;
    v1764 = v529;
    v523 = sub_268F9B284();
    v525 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v525);
    v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v524 = sub_268F9B734();
    sub_268F9AC14(v523, &dword_268CBE000, v525, v1434, 20, 2);

    MEMORY[0x277D82BD8](v525);

    sub_268F9A664();
    v527 = v1763;

    if (v527 && (v521 = v527, v519 = v527, v395 = sub_268D8E220(), v517 = *v395, v518 = v395[1], , v520 = sub_268F9A0A4(), , , v520))
    {
      v516 = v520;
      v1733 = v520;
      v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      sub_268F9AF94();
      v515 = v5;
      if (v5)
      {
        goto LABEL_669;
      }

      sub_268CD7930(&v1733);
      v513 = v515;
    }

    else
    {
      (*(v1491 + 56))(v1505, 1, 1, v1490);
      v513 = v1390;
    }

    v510 = v513;
    sub_268D9BF94(v1505, v1503);
    v511 = *(v1491 + 48);
    v512 = v1491 + 48;
    if (v511(v1503, 1, v1490) == 1)
    {
      sub_268D9C0BC(v1503);
      v508 = 0;
      v509 = 0;
    }

    else
    {
      v506 = sub_268F99F44();
      v507 = v396;
      (*(v1491 + 8))(v1503, v1490);
      v508 = v506;
      v509 = v507;
    }

    v504 = v509;
    v503 = v508;

    v1762 = 9;
    v502 = NumericSettingIdentifier.rawValue.getter();
    v505 = v397;

    v1760[0] = v503;
    v1760[1] = v504;
    *&v1761 = v502;
    *(&v1761 + 1) = v505;
    if (v504)
    {
      sub_268D28874(v1760, &v1736);
      if (*(&v1761 + 1))
      {
        v499 = &v1735;
        v1735 = v1736;
        v498 = &v1734;
        v1734 = v1761;
        v500 = MEMORY[0x26D62DB50](v1736, *(&v1736 + 1), v1761, *(&v1761 + 1));
        sub_268CD9D30(v498);
        sub_268CD9D30(v499);
        sub_268CD9D30(v1760);
        v501 = v500;
        goto LABEL_591;
      }

      sub_268CD9D30(&v1736);
    }

    else if (!*(&v1761 + 1))
    {
      sub_268CD9D30(v1760);
      v501 = 1;
LABEL_591:
      v497 = v501;

      v1759 = v497 & 1;

      if (v497)
      {
        v496 = 0;
      }

      else
      {

        v494 = sub_268F9A644();

        sub_268F9A664();
        v493 = v1737;

        v495 = sub_268DA2274(v494, v493);

        v496 = v495;
      }

      v492 = v496;

      if (v492)
      {
        v398 = v1505;
        *v1388 = 0;
        sub_268D9C0BC(v398);

        v1380 = v510;
        return;
      }

      sub_268D9BF94(v1505, v1501);
      if (v511(v1501, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1501);
        v1757 = 0;
        v1758 = 0;
      }

      else
      {
        v490 = sub_268F99F44();
        v491 = v399;
        (*(v1491 + 8))(v1501, v1490);
        v1757 = v490;
        v1758 = v491;
      }

      v488 = v1757;
      v489 = v1758;

      v1756[0] = v488;
      v1756[1] = v489;
      v487 = v489 == 0;
      v486 = v487;
      sub_268CD9D30(v1756);
      if (!v486)
      {
        goto LABEL_639;
      }

      sub_268F9A664();
      v485 = v1750;

      if (v485 && (v484 = v485, v482 = v485, v483 = sub_268F9A094(), , v483))
      {
        v481 = v483;
        v480 = v483;
        sub_268F9A424();
      }

      else
      {
        (*(v1457 + 56))(v1477, 1, 1, v1456);
      }

      (*(v1457 + 104))(v1475, *MEMORY[0x277D5EE50], v1456);
      v400 = *(v1457 + 56);
      v477 = 1;
      v400(v1475, 0);
      v476 = &v1465[*(v1463 + 48)];
      sub_268D9FB5C(v1477, v1465);
      sub_268D9FB5C(v1475, v476);
      v478 = *(v1457 + 48);
      v479 = v1457 + 48;
      if (v478(v1465, v477, v1456) == 1)
      {
        if (v478(v476, 1, v1456) == 1)
        {
          sub_268D9FDB0(v1465);
          v475 = 1;
          goto LABEL_613;
        }
      }

      else
      {
        sub_268D9FB5C(v1465, v1473);
        if (v478(v476, 1, v1456) != 1)
        {
          v471 = *(v1457 + 32);
          v470 = v1457 + 32;
          v471(v1462, v1473, v1456);
          v471(v1460, v476, v1456);
          sub_268D9FF80();
          v474 = sub_268F9AE04();
          v473 = *(v1457 + 8);
          v472 = v1457 + 8;
          v473(v1460, v1456);
          v473(v1462, v1456);
          sub_268D9FDB0(v1465);
          v475 = v474;
          goto LABEL_613;
        }

        (*(v1457 + 8))(v1473, v1456);
      }

      sub_268D9FC84(v1465);
      v475 = 0;
LABEL_613:
      v469 = v475;
      sub_268D9FDB0(v1475);
      sub_268D9FDB0(v1477);
      if (v469)
      {
        sub_268D35D60((v1389 + 72), v1747);
        if (v1748)
        {
          v465 = v1748;
          v466 = v1749;
          v467 = __swift_project_boxed_opaque_existential_1(v1747, v1748);

          sub_268F9A664();
          v468 = v1738;

          if (v468)
          {
            v464 = v468;
            v461 = v468;
            v462 = sub_268F99F04();

            v463 = v462;
          }

          else
          {
            v463 = 0;
          }

          v460 = v463;
          (*(v466 + 16))();

          __swift_destroy_boxed_opaque_existential_0(v1747);
        }

        else
        {
          sub_268D28414(v1747);
          v404 = sub_268F9ACE4();
          (*(*(v404 - 8) + 56))(v1443, 1);
        }

        sub_268D9FE58(v1443, v1441);
        v455 = sub_268F9ACE4();
        v456 = *(v455 - 8);
        v457 = v455 - 8;
        v458 = *(v456 + 48);
        v459 = v456 + 48;
        if (v458(v1441, 1) == 1)
        {
          sub_268D59D2C(v1441);
          v454 = 0;
        }

        else
        {
          v453 = sub_268F9ACD4();
          (*(v456 + 8))(v1441, v455);
          v454 = v453;
        }

        v452 = v454;
        sub_268F9A2E4();
        sub_268F9A2D4();

        v1745 = v1746;
        v451 = v1746 != 0;
        v450 = v451;
        sub_268D287E8(&v1745);
        if (v450)
        {
          v447 = sub_268F9B284();
          v449 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v449);
          v448 = sub_268F9B734();
          sub_268F9AC14(v447, &dword_268CBE000, v449, v1421, 64, 2);

          MEMORY[0x277D82BD8](v449);
          v1739 = 9;
          v1757 = NumericSettingIdentifier.rawValue.getter();
          v1758 = v401;
        }

        else
        {
          v444 = sub_268F9B284();
          v446 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v446);
          v445 = sub_268F9B734();
          sub_268F9AC14(v444, &dword_268CBE000, v446, v1420, 71, 2);

          MEMORY[0x277D82BD8](v446);
          sub_268D9FE58(v1443, v1439);
          if ((v458)(v1439, 1, v455) == 1)
          {
            sub_268D59D2C(v1439);
            v442 = 0;
            v443 = 0;
          }

          else
          {
            v440 = sub_268F9ACC4();
            v441 = v402;
            (*(v456 + 8))(v1439, v455);
            v442 = v440;
            v443 = v441;
          }

          v1741 = v442;
          v1742 = v443;
          if (v443)
          {
            v1743 = v1741;
            v1744 = v1742;
          }

          else
          {
            v1740 = 9;
            v1743 = NumericSettingIdentifier.rawValue.getter();
            v1744 = v403;
            if (v1742)
            {
              sub_268CD9D30(&v1741);
            }
          }

          v1757 = v1743;
          v1758 = v1744;
        }

        sub_268D59D2C(v1443);
      }

LABEL_639:
      v1755 = 1;
      v438 = v1757;
      v439 = v1758;

      sub_268D9BF94(v1505, v1499);
      if (v511(v1499, 1, v1490) == 1)
      {
        sub_268D9C0BC(v1499);
        v436 = 0;
        v437 = 0;
      }

      else
      {
        v434 = sub_268F99F54();
        v435 = v405;
        (*(v1491 + 8))(v1499, v1490);
        v436 = v434;
        v437 = v435;
      }

      v431 = v437;
      v432 = v436;

      sub_268F9A664();
      v433 = v1753;

      if (v433)
      {
        v430 = v433;
        v427 = v433;
        v428 = sub_268F99F04();

        v429 = v428;
      }

      else
      {
        v429 = 0;
      }

      v426 = v429;
      sub_268D9DAD8(v438, v439, v432, v431, v429, &v1754);

      v1752 = v1754;
      if (static SupportedFlowDomain.== infix(_:_:)(&v1755, &v1752))
      {
        *v1388 = 1;
        sub_268CD9D30(&v1757);
        sub_268D9C0BC(v1505);

        v1380 = v510;
      }

      else
      {

        v424 = sub_268F9A644();

        sub_268F9A664();
        v423 = v1751;

        v406 = _swift_stdlib_has_malloc_size();
        v425 = sub_268D9F984(v424, v423, v406 & 1);

        if (v425)
        {
          *v1388 = 7;
        }

        else
        {
          *v1388 = 2;
        }

        sub_268CD9D30(&v1757);
        sub_268D9C0BC(v1505);

        v1380 = v510;
      }

      return;
    }

    sub_268D28550(v1760);
    v501 = 0;
    goto LABEL_591;
  }

  v1364 = v1365;
  v1360 = v1365;
  v1604 = v1365;
  v1357 = sub_268F9B284();
  v1359 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v1359);
  v1356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v1358 = sub_268F9B734();
  sub_268F9AC14(v1357, &dword_268CBE000, v1359, v1393, 19, 2);

  MEMORY[0x277D82BD8](v1359);

  v1362 = sub_268F99E74();

  sub_268F99E84();
  v1361 = v1603;

  v1363 = sub_268D9F984(v1362, v1361, 0);

  if (v1363)
  {
    goto LABEL_538;
  }

  sub_268F99E84();
  v1355 = v1602;

  if (!v1355 || (v1354 = v1355, v1352 = v1355, v292 = sub_268D8E220(), v1350 = *v292, v1351 = v292[1], , v1353 = sub_268F9A0A4(), , , !v1353))
  {
    (*(v1491 + 56))(v1583, 1, 1, v1490);
    v1346 = v1390;
    goto LABEL_34;
  }

  v1349 = v1353;
  v1594 = v1353;
  v1347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  sub_268F9AF94();
  v1348 = v5;
  if (v5)
  {
    __break(1u);
LABEL_658:
    __break(1u);
LABEL_659:
    __break(1u);
LABEL_660:
    __break(1u);
LABEL_661:
    __break(1u);
LABEL_662:
    __break(1u);
LABEL_663:
    __break(1u);
LABEL_664:
    __break(1u);
LABEL_665:
    __break(1u);
LABEL_666:
    __break(1u);
LABEL_667:
    __break(1u);
LABEL_668:
    __break(1u);
LABEL_669:
    __break(1u);
    return;
  }

  sub_268CD7930(&v1594);
  v1346 = v1348;
LABEL_34:
  v1343 = v1346;

  v1344 = *(v1491 + 48);
  v1345 = v1491 + 48;
  if (v1344(v1583, 1, v1490) == 1)
  {

    sub_268F99E84();
    v1341 = v1601;

    if (v1341 && (v1340 = v1341, v1338 = v1341, v293 = sub_268D8E220(), v1336 = *v293, v1337 = v293[1], , v1339 = sub_268F9A0A4(), , , v1339))
    {
      v1335 = v1339;
      v1595[0] = v1339;
      v1333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v294 = v1343;
      sub_268F9AF94();
      v1334 = v294;
      if (v294)
      {
        __break(1u);
      }

      else
      {
        sub_268CD7930(v1595);
        v1332 = v1334;
      }
    }

    else
    {
      (*(v1491 + 56))(v1585, 1, 1, v1490);
      v1332 = v1343;
    }

    v1331 = v1332;
    if (v1344(v1583, 1, v1490) != 1)
    {
      sub_268D9C0BC(v1583);
    }

    v1342 = v1331;
  }

  else
  {
    (*(v1491 + 32))(v1585, v1583, v1490);
    (*(v1491 + 56))(v1585, 0, 1, v1490);
    v1342 = v1343;
  }

  v1330 = v1342;

  sub_268D9BF94(v1585, v1581);
  if (v1344(v1581, 1, v1490) == 1)
  {
    sub_268D9C0BC(v1581);
    v1328 = 0;
    v1329 = 0;
  }

  else
  {
    v1326 = sub_268F99F44();
    v1327 = v295;
    (*(v1491 + 8))(v1581, v1490);
    v1328 = v1326;
    v1329 = v1327;
  }

  v1324 = v1329;
  v1325 = v1328;
  sub_268D9BF94(v1585, v1579);
  if (v1344(v1579, 1, v1490) == 1)
  {
    sub_268D9C0BC(v1579);
    v1322 = 0;
    v1323 = 0;
  }

  else
  {
    v1320 = sub_268F99F54();
    v1321 = v296;
    (*(v1491 + 8))(v1579, v1490);
    v1322 = v1320;
    v1323 = v1321;
  }

  v1311 = v1323;
  sub_268D9DAD8(v1325, v1324, v1322, v1323, 0, &v1600);

  v1319 = v1600;
  v1599 = v1600;
  v1316 = sub_268F9B284();
  v1318 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v1318);
  v1315 = sub_268F9B734();
  v1314 = v297;
  v1598[1] = v1319;
  v1312 = sub_268F9AE64();
  v1313 = v298;
  v1314[3] = MEMORY[0x277D837D0];
  v299 = sub_268CDD224();
  v300 = v1312;
  v301 = v1313;
  v302 = v1314;
  v1314[4] = v299;
  *v302 = v300;
  v302[1] = v301;
  sub_268CD0F7C();
  v1317 = v303;
  sub_268F9AC14(v1316, &dword_268CBE000, v1318, v1396, 43, 2);

  MEMORY[0x277D82BD8](v1318);
  v1598[0] = v1319;
  v1597 = 0;
  if (static SupportedFlowDomain.== infix(_:_:)(v1598, &v1597))
  {

    sub_268F99E84();
    v1310 = v1595[1];

    if (v1310 && (v1309 = v1310, v1306 = v1310, v1307 = sub_268F9A1D4(), v1308 = v304, , v1308))
    {
      v1304 = v1307;
      v1305 = v1308;
      v1299 = v1308;
      v1300 = sub_268F9AE94();
      v1301 = v305;

      v1302 = v1300;
      v1303 = v1301;
    }

    else
    {
      v1302 = 0;
      v1303 = 0;
    }

    v1297 = v1303;
    sub_268D9DAD8(v1302, v1303, 0, 0, 0, &v1596);

    v1298 = v1596;
  }

  else
  {
    v1298 = v1319;
  }

  v306 = v1585;
  *v1388 = v1298;
  sub_268D9C0BC(v306);

  v1380 = v1330;
}