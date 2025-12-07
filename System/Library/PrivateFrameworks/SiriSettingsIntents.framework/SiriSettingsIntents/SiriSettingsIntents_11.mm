uint64_t sub_268E3824C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E38288, 0);
}

uint64_t sub_268E38288()
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

uint64_t sub_268E383DC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 137) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 136) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 72) = swift_task_alloc();
  type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 136) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;

  return MEMORY[0x2822009F8](sub_268E38560, 0);
}

uint64_t sub_268E38560()
{
  v10 = MEMORY[0x277D55BE8];
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v5 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v6, 1);
  sub_268E330DC(v5 & 1, 0, v6, 2, v8);
  v7(v8);
  v15 = sub_268F9AEF4();
  v12 = v2;
  *(v0 + 96) = v2;
  sub_268E38A8C(v8, v9);
  v13 = sub_268E32D74();
  *(v0 + 104) = v13;
  sub_268E38C44(v9);
  v14 = (v10 + *v10);
  v3 = swift_task_alloc();
  *(v11 + 112) = v3;
  *v3 = *(v11 + 32);
  v3[1] = sub_268E38734;

  return v14(v15, v12, v13);
}

uint64_t sub_268E38734(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268E3899C;
  }

  else
  {

    v3 = sub_268E388C8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E388C8()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268E38C44(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268E3899C()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268E38C44(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E38A8C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v5 = *(a1 + 8);

  *(a2 + 8) = v5;
  v6 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  v7 = *(v6 + 24);
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
  *(a2 + *(v6 + 28)) = *(a1 + *(v6 + 28));
  return result;
}

uint64_t sub_268E38C44(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0) + 24);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E38D1C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 137) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 136) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 72) = swift_task_alloc();
  type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 136) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;

  return MEMORY[0x2822009F8](sub_268E38EA0, 0);
}

uint64_t sub_268E38EA0()
{
  v11 = MEMORY[0x277D55BE8];
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v6 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v7, 1);
  v2 = sub_268E33868();
  sub_268E33870(v6 & 1, 0, v7, 0, v2, 2, v9);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  *(v0 + 96) = v3;
  sub_268E393D8(v9, v10);
  v14 = sub_268E333DC();
  *(v0 + 104) = v14;
  sub_268E395DC(v10);
  v15 = (v11 + *v11);
  v4 = swift_task_alloc();
  *(v12 + 112) = v4;
  *v4 = *(v12 + 32);
  v4[1] = sub_268E39080;

  return v15(v16, v13, v14);
}

uint64_t sub_268E39080(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268E392E8;
  }

  else
  {

    v3 = sub_268E39214;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E39214()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268E395DC(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268E392E8()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268E395DC(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E393D8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v7 = *(a1 + 8);

  *(a2 + 8) = v7;
  v8 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  v9 = v8[6];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1 + v9, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v9), (a1 + v9), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))();
    (*(v12 + 56))(a2 + v9, 0, 1, v11);
  }

  v4 = v8[7];
  v5 = *(a1 + v4);

  result = a2;
  *(a2 + v4) = v5;
  *(a2 + v8[8]) = *(a1 + v8[8]);
  *(a2 + v8[9]) = *(a1 + v8[9]);
  return result;
}

uint64_t sub_268E395DC(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0) + 24);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E396CC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E39708, 0);
}

uint64_t sub_268E39708()
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

uint64_t sub_268E3985C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E39898, 0);
}

uint64_t sub_268E39898()
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

uint64_t sub_268E399EC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E39A28, 0);
}

uint64_t sub_268E39A28()
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

uint64_t sub_268E39B7C(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E39C88, 0);
}

uint64_t sub_268E39C88()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E353A4(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268E3A118(v6, v7);
  v11 = sub_268E35094();
  v0[12] = v11;
  sub_268E3A344(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E39DE8;

  return v12(v13, v10, v11);
}

uint64_t sub_268E39DE8(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E3A03C;
  }

  else
  {

    v3 = sub_268E39F7C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E39F7C()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268E3A344(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E3A03C()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268E3A344(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268E3A118(char *a1, char *a2)
{
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if ((v12)(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a2, a1, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  v3 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  v6 = &a2[*(v3 + 20)];
  v7 = &a1[*(v3 + 20)];
  if (v12())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v6, v7, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(v6, v7, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268E3A344(uint64_t a1)
{
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(type metadata accessor for SettingIntentResourceNotDownloadedParameters(0) + 20);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_268E3A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268E3A6A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268D7F90C;

  return sub_268E354B8(a1 & 1, a2, a3);
}

uint64_t sub_268E3A770(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268E35E0C(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268E3A848(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E367A0(a1, a2);
}

uint64_t sub_268E3A908(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E37018(a1, a2);
}

uint64_t sub_268E3A9C8()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268E37864();
}

uint64_t sub_268E3AA78(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E379F4(a1, a2);
}

uint64_t sub_268E3AB38()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268E3824C();
}

uint64_t sub_268E3ABE8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268D7F90C;

  return sub_268E383DC(a1 & 1, a2, a3);
}

uint64_t sub_268E3ACB4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268D7F90C;

  return sub_268E38D1C(a1 & 1, a2, a3);
}

uint64_t sub_268E3AD80()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268E396CC();
}

uint64_t sub_268E3AE30()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268E3985C();
}

uint64_t sub_268E3AEE0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E39B7C(a1, a2);
}

uint64_t sub_268E3AFA0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268D7F90C;

  return sub_268E399EC();
}

uint64_t getEnumTagSinglePayload for NumericSettingIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF3)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 12) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 243;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 13;
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

_BYTE *storeEnumTagSinglePayload for NumericSettingIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF3)
  {
    v5 = ((a3 + 12) >> 8) + 1;
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

  if (a2 > 0xF3)
  {
    v4 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
      *result = a2 + 12;
    }
  }

  return result;
}

unint64_t sub_268E3B418(uint64_t a1)
{
  v5 = sub_268D81180(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_268D8154C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_268E3B5D8(uint64_t a1)
{
  v5 = sub_268D81EC8(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_268D8154C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_268E3B73C(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268E3B890(319);
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

unint64_t sub_268E3B890(uint64_t a1)
{
  v5 = qword_2802DD188;
  if (!qword_2802DD188)
  {
    type metadata accessor for SettingsNumericSetting(255);
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DD188);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268E3B97C(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81180(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D8154C(319);
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

unint64_t sub_268E3BB1C(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81180(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D810E4(319);
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

unint64_t sub_268E3BCA4(uint64_t a1)
{
  v6 = sub_268D81048(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268E3B890(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268D8154C(319);
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

unint64_t sub_268E3BE38(uint64_t a1)
{
  v3 = sub_268D810E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_268E3BEDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v12 = (*(a5 + 8) + **(a5 + 8));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268E3C02C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 16) + **(a6 + 16));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268E3C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 24) + **(a4 + 24));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268E3C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_268E3C410(uint64_t a1, uint64_t a2)
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

uint64_t sub_268E3C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_268E3C688(uint64_t a1, uint64_t a2)
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

uint64_t sub_268E3C7BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v12 = (*(a5 + 64) + **(a5 + 64));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268E3C90C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v12 = (*(a5 + 72) + **(a5 + 72));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = *(v5 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268E3CA5C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 80) + **(a2 + 80));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t sub_268E3CB90(uint64_t a1, uint64_t a2)
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

uint64_t sub_268E3CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_268E3CE08(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 104) + **(a2 + 104));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D82A48;

  return v7(a1, a2);
}

uint64_t type metadata accessor for SettingIntentCATPatternsExecutor(uint64_t a1)
{
  v2 = qword_280FE2D98;
  if (!qword_280FE2D98)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E3CFB0(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268E3D054()
{
  v2 = qword_2802DD1D0;
  if (!qword_2802DD1D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1D0);
    return WitnessTable;
  }

  return v2;
}

char *sub_268E3D0D0(char *a1, char *a2)
{
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if ((v12)(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(a2, a1, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  v3 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  v6 = &a2[*(v3 + 20)];
  v7 = &a1[*(v3 + 20)];
  if (v12())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v6, v7, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(v6, v7, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268E3D2FC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  v6 = *(DoesNotSupportNumericSettingParameters + 28);
  v8 = sub_268F9A9C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1 + v6, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v6), (a1 + v6), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(a2 + v6, 0, 1, v8);
  }

  result = a2;
  *(a2 + *(DoesNotSupportNumericSettingParameters + 32)) = *(a1 + *(DoesNotSupportNumericSettingParameters + 32));
  return result;
}

char *sub_268E3D4AC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  v6 = *(v5 + 24);
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
  a2[*(v5 + 28)] = a1[*(v5 + 28)];
  return result;
}

uint64_t sub_268E3D654(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  v6 = DoesNotSupportBinarySettingParameters[7];
  v8 = sub_268F9A9C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1 + v6, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v6), (a1 + v6), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(a2 + v6, 0, 1, v8);
  }

  result = a2;
  *(a2 + DoesNotSupportBinarySettingParameters[8]) = *(a1 + DoesNotSupportBinarySettingParameters[8]);
  *(a2 + DoesNotSupportBinarySettingParameters[9]) = *(a1 + DoesNotSupportBinarySettingParameters[9]);
  return result;
}

id sub_268E3D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return 0;
  }

  else
  {
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    if (a2)
    {
      v10 = sub_268F9AE14();

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (a4)
    {
      v8 = sub_268F9AE14();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = [v12 initWithDeviceName:v11 deviceModel:? deviceCategory:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BE0](v7);

    MEMORY[0x277D82BD8](v7);
    return v7;
  }
}

id sub_268E3DA44(uint64_t a1, void *a2)
{
  v42 = a1;
  v37 = a2;
  v36 = "Couldn't form INNumericSettingValue, INSettingAction, or INBoundedSettingValue using SettingsNLIntent: %@";
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v38 = 0;
  v39 = type metadata accessor for SettingsNLIntent(0);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v37, v2, v3);
  v41 = &v17 - v40;
  v53 = v4;
  v52 = v5;
  v43 = sub_268D588E0();
  v44 = sub_268E3DE20(v42);
  v45 = v6;
  v50 = v44;
  v51 = v6;
  v46 = sub_268E3E06C(v42);
  v49 = v46;
  if (sub_268E3E438(v46, v44, v45))
  {
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_268E4262C();
    v35 = v48;
    if (v48 == 13)
    {
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = v35;
      v47 = v35;
      v31 = NumericSettingIdentifier.rawValue.getter();
      v32 = v7;
    }

    v26 = v32;
    v28 = sub_268F284EC(v31, v32, v37, 0, 0);

    has_malloc_size = _swift_stdlib_has_malloc_size();
    v27 = sub_268F28680(v42, has_malloc_size & 1);
    v29 = [v34 initWithSettingMetadata:v28 numericValue:v46 boundedValue:v45 action:v44 temporalEventTrigger:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BE0](v29);
    v54 = v29;
    MEMORY[0x277D82BD8](v46);
    sub_268D28414(v37);
    sub_268D87800(v42);
    MEMORY[0x277D82BD8](v54);
    return v29;
  }

  else
  {
    v23 = sub_268F9B284();
    v25 = *sub_268DC81EC();
    MEMORY[0x277D82BE0](v25);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v22 = sub_268F9B734();
    v20 = v9;
    sub_268DA7C90(v42, v41);
    sub_268DA967C();
    v18 = sub_268F9AE74();
    v19 = v10;
    v20[3] = MEMORY[0x277D837D0];
    v11 = sub_268CDD224();
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v20[4] = v11;
    *v14 = v12;
    v14[1] = v13;
    sub_268CD0F7C();
    v24 = v15;
    sub_268F9AC14(v23, &dword_268CBE000, v25, v36, 105, 2);

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v46);
    sub_268D28414(v37);
    sub_268D87800(v42);
    return 0;
  }
}

uint64_t sub_268E3DE20(uint64_t a1)
{
  if (sub_268E430FC() == 5 && sub_268E42860() != 6)
  {
    sub_268E3E5D0();
    sub_268F9AE04();
  }

  nullsub_1();
  return result;
}

id sub_268E3E06C(uint64_t a1)
{
  v24 = a1;
  v2 = v1;
  v3 = v24;
  v27 = v2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v34 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD1E0, &qword_268FA37C8);
  v25 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v31 = &v14 - v25;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD1E8, &qword_268FA37D0);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v26 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v8, v9, v10);
  v28 = &v14 - v26;
  v39 = &v14 - v26;
  v38 = v3;
  v37 = v27;
  sub_268E43094();
  if ((*(v29 + 48))(v31, 1, v32) == 1)
  {
    sub_268E3E648(v31);
    return 0;
  }

  (*(v29 + 32))(v28, v31, v32);
  sub_268F9A6C4();
  v23 = v35;
  if (v36)
  {
    (*(v29 + 8))(v28, v32);
    return 0;
  }

  v22 = v23;
  v21 = v23;
  v34 = v23;
  sub_268F9A6B4();
  if (v33)
  {
    v15 = 0;
    v14 = sub_268DD26C8();
    sub_268D34FD4();
    v12 = sub_268E3E3B0();
    v16 = sub_268E3E3F0(v12, v15);
    (*(v29 + 8))(v28, v32);
    return v16;
  }

  else
  {
    v17 = 0;
    v18 = sub_268DD26C8();
    sub_268D34FD4();
    v11 = sub_268E3E3B0();
    v19 = sub_268E3E3F0(v11, 1);
    (*(v29 + 8))(v28, v32);
    return v19;
  }
}

uint64_t sub_268E3E438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    type metadata accessor for INSettingAction(0);
    sub_268DD25C8();
    if (sub_268F9B754())
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_268F9B754();
    }

    v5 = v6;
  }

  if (v5)
  {
    type metadata accessor for INBoundedSettingValue(0);
    sub_268CD94D4();
    v4 = sub_268F9B754();
  }

  else
  {
    v4 = 0;
  }

  return (v4 ^ 1) & 1;
}

unint64_t sub_268E3E5D0()
{
  v2 = qword_2802DD1D8;
  if (!qword_2802DD1D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E3E648(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD1E8, &qword_268FA37D0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268E3E710(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_268E3E81C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

id sub_268E3EA04(uint64_t a1)
{
  v4 = [v1 initWithValue_unit_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_268E3EA58(uint64_t a1, float a2, float a3)
{
  v65 = a1;
  v56 = a2;
  v57 = a3;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v73 = 0.0;
  v72 = 0;
  v71 = 0.0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C0, &qword_268FA32A0);
  v54 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v55 = &v19[-v54];
  v58 = sub_268F9A144();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v7, v8, v9);
  v62 = &v19[-v61];
  v63 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v11, &v19[-v61], v12, v13);
  v64 = &v19[-v63];
  v81 = &v19[-v63];
  v80 = v15;
  v79 = LODWORD(v14);
  v78 = v16;

  if (!v65)
  {
    v46 = 0;
    v47 = 1;
    goto LABEL_42;
  }

  v53 = v65;
  v51 = v65;
  v76 = v65;

  sub_268F9A154();
  sub_268F9A2D4();

  v52 = v75;
  if (!v75)
  {
    goto LABEL_19;
  }

  v50 = v52;
  v49 = v52;
  v67 = v52;
  sub_268F9A134();
  if ((*(v59 + 48))(v55, 1, v58) == 1)
  {
    sub_268E30CA0(v55);

LABEL_19:
    v74 = sub_268E3FB38(v51, 0.0, 100.0, v56, v57);
    v40 = *&v74;
    v41 = BYTE4(v74);
    if ((v74 & 0x100000000) != 0)
    {

      v46 = LODWORD(v40);
      v47 = v41;
    }

    else
    {
      v39 = v40;
      v37 = v40;
      v73 = v40;
      v38 = sub_268E3F3C4(v51);
      v72 = v38 & 1;
      if (v38)
      {
        v25 = v38;
      }

      else
      {

        sub_268F9A574();
        sub_268F9A2D4();

        v36 = v70;
        if (v70)
        {
          v35 = v36;
          v32 = v36;
          v69 = v36;
          v17 = sub_268F9A554();
          v33 = v17;
          if (v17)
          {
            v31 = v33;
            v28 = v33;
            v68 = v33;

            v27 = sub_268F99F04();

            v29 = sub_268E3F3C4(v27);

            v72 = v29 & 1;

            v30 = v29;
          }

          else
          {
            v30 = v38;
          }

          v26 = v30;

          v34 = v26;
        }

        else
        {
          v34 = v38;
        }

        v25 = v34;
      }

      if (v25)
      {
        v24 = v37 * 100.0;
      }

      else
      {
        v24 = v37;
      }

      v23 = v24;
      v71 = v24;
      if (v24 >= 0.0)
      {
        if (v23 <= 100.0)
        {
          v21 = v23;
        }

        else
        {
          v71 = 100.0;
          v21 = 100.0;
        }

        v22 = v21;
      }

      else
      {
        v71 = 0.0;
        v22 = 0.0;
      }

      v20 = LODWORD(v22);

      v46 = v20;
      v47 = 0;
    }

    goto LABEL_42;
  }

  (*(v59 + 32))(v64, v55, v58);
  (*(v59 + 16))(v62, v64, v58);
  v48 = (*(v59 + 88))(v62, v58);
  if (v48 == *MEMORY[0x277D5E7E0])
  {
    goto LABEL_16;
  }

  if (v48 == *MEMORY[0x277D5E7D8])
  {
    (*(v59 + 8))(v64, v58);

    v46 = 1094713344;
    v47 = 0;
    goto LABEL_42;
  }

  if (v48 == *MEMORY[0x277D5E7F8] || v48 == *MEMORY[0x277D5E800] || v48 == *MEMORY[0x277D5E7F0] || v48 == *MEMORY[0x277D5E7C0] || v48 == *MEMORY[0x277D5E7A0] || v48 == *MEMORY[0x277D5E7E8] || v48 == *MEMORY[0x277D5E790])
  {
LABEL_16:
    (*(v59 + 8))(v64, v58);

    v46 = 1120403456;
    v47 = 0;
  }

  else
  {
    v66 = sub_268E3FB38(v51, 0.0, 100.0, v56, v57);
    v45 = v66;
    v44 = BYTE4(v66);
    v43 = *(v59 + 8);
    v42 = v59 + 8;
    v43(v62, v58);
    v43(v64, v58);

    v46 = v45;
    v47 = v44;
  }

LABEL_42:
  LODWORD(v77) = v46;
  BYTE4(v77) = v47 & 1;
  return v77;
}

uint64_t sub_268E3F3C4(uint64_t a1)
{
  v31 = a1;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C8, &qword_268FA32A8);
  v21 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v22 = &v14[-v21];
  v30 = 0;
  v23 = sub_268F9A174();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v5, v6, v7);
  v27 = &v14[-v26];
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v14[-v26], v10, v11);
  v29 = &v14[-v28];
  v36 = &v14[-v28];
  v35 = v12;

  sub_268F9A194();
  sub_268F9A2D4();

  v32 = v34;
  if (!v34)
  {
    goto LABEL_10;
  }

  v20 = v32;
  v19 = v32;
  v33 = v32;
  sub_268F9A164();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_268E30D60(v22);
LABEL_9:

LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  (*(v24 + 32))(v29, v22, v23);
  (*(v24 + 104))(v27, *MEMORY[0x277D5E880], v23);
  sub_268E40D08();
  v18 = sub_268F9B754();
  v16 = *(v24 + 8);
  v17 = v24 + 8;
  v16(v27, v23);
  if ((v18 & 1) == 0)
  {
    v16(v29, v23);
    goto LABEL_9;
  }

  v16(v29, v23);

  v15 = 1;
  return v15 & 1;
}

float sub_268E3F6F4(uint64_t a1, float a2)
{
  v24 = a2;
  v21 = a1;
  v48 = 0;
  v47 = 0;
  v34 = 0.0;
  v29 = sub_268F9B6F4();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v19 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v2, v3, v4);
  v30 = &v17[-v19];
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, &v17[-v19], v7, v8);
  v26 = &v17[-v20];
  v48 = LODWORD(v9);
  v47 = v10;
  v44 = MEMORY[0x26D62DF90](10.0);
  v45 = v11;
  v46 = v12;
  v41 = v44;
  v42 = v11;
  v43 = v12;
  v38 = sub_268F99154();
  v39 = v13;
  v40 = v14;
  v35 = v38;
  v36 = v13;
  v37 = v14;
  v22 = sub_268F9B354();
  sub_268F9B134();
  v23 = v15;
  MEMORY[0x277D82BD8](v22);
  v34 = v23;
  v25 = v24 * v23;
  v31 = MEMORY[0x277D84678];
  (*(v27 + 104))(v26, *MEMORY[0x277D84678], v29);
  v33 = v25;
  (*(v27 + 16))(v30, v26, v29);
  v32 = (*(v27 + 88))(v30, v29);
  if (v32 == *v31)
  {
    v33 = roundf(v25);
    goto LABEL_15;
  }

  if (v32 == *MEMORY[0x277D84670])
  {
    v33 = rintf(v25);
    goto LABEL_15;
  }

  if (v32 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v33 = ceilf(v25);
    goto LABEL_15;
  }

  if (v32 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v33 = floorf(v25);
    goto LABEL_15;
  }

  if (v32 == *MEMORY[0x277D84660])
  {
    v33 = truncf(v25);
    goto LABEL_15;
  }

  if (v32 == *MEMORY[0x277D84668])
  {
    if ((sub_268F9B154() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_268F9B144();
  (*(v27 + 8))(v30, v29);
LABEL_15:
  v18 = v33;
  (*(v27 + 8))(v26, v29);
  return v18 / v23;
}

uint64_t sub_268E3FB38(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v153 = a1;
  v141 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v180 = 0.0;
  v178 = 0.0;
  v177 = 0;
  v174 = 0;
  v170 = 0;
  v169 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v159 = 0;
  v158 = 0;
  v156 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C8, &qword_268FA32A8);
  v130 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v131 = &v48 - v130;
  v152 = 0;
  v132 = sub_268F9A174();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132, v9, v10, v11);
  v136 = &v48 - v135;
  v137 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v48 - v135, v13, v14, v15);
  v138 = &v48 - v137;
  v197 = &v48 - v137;
  v139 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C0, &qword_268FA32A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152, v16, v17, v18);
  v140 = &v48 - v139;
  v145 = sub_268F9A144();
  v146 = *(v145 - 8);
  v147 = v145 - 8;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v153, v19, v20, v21);
  v149 = &v48 - v148;
  v150 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v23, &v48 - v148, v24, v25);
  v151 = &v48 - v150;
  v196 = &v48 - v150;
  v195 = v27;
  v194 = LODWORD(v26);
  v193 = v28;
  v192 = v29;
  v191 = v30;

  sub_268F9A154();
  sub_268F9A2D4();

  v154 = v190;
  if (v190)
  {
    v129 = v154;
    v128 = v154;
    v156 = v154;
    sub_268F9A134();
    if ((*(v146 + 48))(v140, 1, v145) != 1)
    {
      (*(v146 + 32))(v151, v140, v145);
      (*(v146 + 16))(v149, v151, v145);
      v127 = (*(v146 + 88))(v149, v145);
      if (v127 == *MEMORY[0x277D5E7E0])
      {
        strcpy(v155, "(knN");
        *&v125 = 1000000000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7D8])
      {
        v155[0] = 1094713344;
        LOBYTE(v155[1]) = 0;
        *&v125 = 12.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7F8])
      {
        v155[0] = 1148846080;
        LOBYTE(v155[1]) = 0;
        *&v125 = 1000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E800])
      {
        v155[0] = 1399379109;
        LOBYTE(v155[1]) = 0;
        *&v125 = 1.0e12;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E798])
      {
        v124 = (0.5 * v142) + (0.5 * v141);
        v31 = sub_268DAB2DC();
        v155[0] = sub_268E3F6F4(v31, v124);
        LOBYTE(v155[1]) = 0;
        v125 = v155[0];
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7F0])
      {
        v155[0] = 1232348160;
        LOBYTE(v155[1]) = 0;
        *&v125 = 1000000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7C0])
      {
        v155[0] = 1203982336;
        LOBYTE(v155[1]) = 0;
        *&v125 = 100000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7D0])
      {
        v123 = (v143 * v142) + ((1.0 - v143) * v141);
        v32 = sub_268DAB2DC();
        v155[0] = sub_268E3F6F4(v32, v123);
        LOBYTE(v155[1]) = 0;
        v125 = v155[0];
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7B0])
      {
        *v155 = v142;
        LOBYTE(v155[1]) = 0;
        *&v125 = v142;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7A0])
      {
        v155[0] = 1176256512;
        LOBYTE(v155[1]) = 0;
        *&v125 = 10000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7C8])
      {
        v122 = (v144 * v142) + ((1.0 - v144) * v141);
        v33 = sub_268DAB2DC();
        v155[0] = sub_268E3F6F4(v33, v122);
        LOBYTE(v155[1]) = 0;
        v125 = v155[0];
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7E8])
      {
        v155[0] = 1120403456;
        LOBYTE(v155[1]) = 0;
        *&v125 = 100.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E790])
      {
        v155[0] = 1259902592;
        LOBYTE(v155[1]) = 0;
        *&v125 = 10000000.0;
        v126 = 0;
      }

      else if (v127 == *MEMORY[0x277D5E7B8])
      {
        *v155 = v141;
        LOBYTE(v155[1]) = 0;
        *&v125 = v141;
        v126 = 0;
      }

      else
      {
        v121 = 0;
        v155[0] = 0;
        LOBYTE(v155[1]) = 1;
        (*(v146 + 8))(v149, v145);
        v125 = v121;
        v126 = 1;
      }

      v118 = v126;
      v117 = *&v125;
      (*(v146 + 8))(v151, v145);

      v119 = v117;
      v120 = v118;
      goto LABEL_84;
    }

    sub_268E30CA0(v140);
  }

  sub_268F9A1B4();
  sub_268F9A2D4();

  v116 = v189;
  if (v189)
  {
    v115 = v116;
    v113 = v116;
    v159 = v116;
    v114 = sub_268F9A1A4();
    if ((v34 & 1) == 0)
    {
      v112 = v114;
      v158 = v114;
      v110 = &v157;
      v157 = v114;
      sub_268E40D88();
      sub_268F9B174();
      v111 = v35;

      v119 = v111;
      v120 = 0;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  sub_268F9A194();
  sub_268F9A2D4();

  v109 = v188;
  if (v188)
  {
    v108 = v109;
    v107 = v109;
    v164 = v109;
    sub_268F9A164();
    if ((*(v133 + 48))(v131, 1, v132) == 1)
    {
      sub_268E30D60(v131);
    }

    else
    {
      (*(v133 + 32))(v138, v131, v132);
      (*(v133 + 104))(v136, *MEMORY[0x277D5E880], v132);
      sub_268E40D08();
      v106 = sub_268F9B754();
      v104 = *(v133 + 8);
      v105 = v133 + 8;
      v104(v136, v132);
      if (v106)
      {
        v104(v138, v132);

        v119 = 0.01;
        v120 = 0;
        goto LABEL_84;
      }

      v104(v138, v132);
    }

    v102 = sub_268F9A184();
    v103 = v36;
    if (v36)
    {
      v100 = v102;
      v101 = v103;
      v97 = v103;
      v95 = v102;
      v162 = v102;
      v163 = v103;

      v96 = v161;
      v161[0] = v95;
      v161[1] = v97;
      sub_268D58980();
      v160 = sub_268F9B164();
      v99 = *&v160;
      v98 = BYTE4(v160);

      v119 = v99;
      v120 = v98;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  sub_268F9A414();
  sub_268F9A2D4();

  v94 = v187;
  if (!v187)
  {

    sub_268F9A574();
    sub_268F9A2D4();

    v69 = v186;
    if (!v186)
    {
      goto LABEL_83;
    }

    v68 = v69;
    v66 = v69;
    v184 = v69;
    v43 = sub_268F9A564();
    v67 = v43;
    if (v43)
    {
      v65 = v67;
      v63 = v67;
      v183 = v67;
      v44 = sub_268F9A554();
      v64 = v44;
      if (v44)
      {
        v62 = v64;
        v57 = v64;
        v182 = v64;

        v59 = sub_268F99F04();

        v58 = sub_268E2BC80();
        v45 = sub_268E2BC90();
        v181 = sub_268E3FB38(v59, v141, v142, v58, v45);
        v60 = *&v181;
        v61 = BYTE4(v181);

        if ((v61 & 1) == 0)
        {
          v56 = v60;
          v51 = v60;
          v180 = v60;

          v53 = sub_268F99F04();

          v52 = sub_268E2BC80();
          v46 = sub_268E2BC90();
          v179 = sub_268E3FB38(v53, v141, v142, v52, v46);
          v54 = *&v179;
          v55 = BYTE4(v179);

          if ((v55 & 1) == 0)
          {
            v50 = v54;
            v178 = v54;
            v49 = v54 * v51;

            v119 = v49;
            v120 = 0;
            goto LABEL_84;
          }
        }
      }

      else
      {
      }
    }

LABEL_82:

LABEL_83:
    v119 = 0.0;
    v120 = 1;
    goto LABEL_84;
  }

  v93 = v94;
  v91 = v94;
  v177 = v94;
  v175 = 0.0;
  v176 = 1;
  v92 = sub_268F9A404();
  if (v37)
  {
    v88 = 0.0;
    v89 = 1;
  }

  else
  {
    v90 = v92;
    v87 = v90;
    v170 = v90;
    if (!v90)
    {

      v119 = 0.0;
      v120 = 1;
      goto LABEL_84;
    }

    v167 = sub_268F9A3F4();
    v168 = v38 & 1;
    if (v38)
    {
      v169 = 1;
      v86 = 1;
    }

    else
    {
      v169 = v167;
      v86 = v167;
    }

    v82 = &v166;
    v166 = v86;
    v84 = sub_268E40D88();
    v83 = MEMORY[0x277D84A28];
    sub_268F9B174();
    v85 = v39;
    v165 = v87;
    sub_268F9B174();
    v175 = v85 / v40;
    v176 = 0;
    v88 = v85 / v40;
    v89 = 0;
  }

  v79 = v89;
  v80 = v88;
  v81 = sub_268F9A3E4();
  if (v41)
  {
    v76 = v80;
    v77 = v79;
  }

  else
  {
    v78 = v81;
    v75 = v78;
    v174 = v78;
    v172 = v80;
    v173 = v79 & 1;
    if (v79)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v172;
    }

    v73 = v74;
    v72 = &v171;
    v171 = v75;
    sub_268E40D88();
    sub_268F9B174();
    v175 = v73 + v42;
    v176 = 0;
    v76 = v73 + v42;
    v77 = 0;
  }

  v71 = v77;
  v70 = v76;

  v119 = v70;
  v120 = v71;
LABEL_84:
  *&v185 = v119;
  BYTE4(v185) = v120 & 1;
  return v185;
}

unint64_t sub_268E40D08()
{
  v2 = qword_2802DD1F0;
  if (!qword_2802DD1F0)
  {
    sub_268F9A174();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E40D88()
{
  v2 = qword_2802DD1F8;
  if (!qword_2802DD1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E40E14()
{
  if (qword_280FE46E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8160;
}

uint64_t sub_268E40E74()
{
  type metadata accessor for GetLowPowerModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8160 = result;
  return result;
}

uint64_t sub_268E40EDC()
{
  v1 = *sub_268E40E14();

  return v1;
}

uint64_t sub_268E40F0C(void *a1, void (*a2)(id), uint64_t a3)
{
  v51 = a3;
  v52 = a2;
  v57 = a1;
  v58 = 0;
  v90 = 0;
  v53 = 0;
  v93 = a1;
  v91 = a2;
  v92 = a3;
  v54 = sub_268F9B284();
  v56 = *sub_268DC7AE8();
  v3 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v55 = sub_268F9B734();
  sub_268F9AC14(v54, &dword_268CBE000, v56, "GetLowPowerModeHandler handling intent", 38, 2);

  v89 = v57;
  v59 = sub_268D2E630();
  v60 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v61 = v4;
  v62 = &v87;
  v85 = v60;
  v86 = v4 & 1;
  v87 = 1;
  v88 = 0;
  if ((v4 & 1) == 0)
  {
    v65 = v60;
    v66 = v61 & 1;
    if ((v62[1] & 1) == 0)
    {
      v64 = v65;
      v63 = *v62;
      v48 = type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v49 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v62[1] & 1) == 0)
  {
LABEL_9:
    v49 = 0;
    goto LABEL_7;
  }

  v49 = 1;
LABEL_7:
  v47 = v49;
  v5 = v57;
  if (v49)
  {
    v46 = 1;
    goto LABEL_21;
  }

  v84 = v57;
  v6 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v43 = v6;
  v44 = v7;
  v45 = &v82;
  v80 = v6;
  v81 = v7 & 1;
  v82 = 2;
  v83 = 0;
  if (v7)
  {
    if (v45[1])
    {
      v42 = 1;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v69 = v43;
  v70 = v44 & 1;
  if (v45[1])
  {
LABEL_19:
    v42 = 0;
    goto LABEL_18;
  }

  v68 = v69;
  v67 = *v45;
  v41 = type metadata accessor for INDeviceCategory(0);
  sub_268CD7818();
  v42 = sub_268F9AE04();
LABEL_18:
  v46 = v42;
LABEL_21:
  v40 = v46;

  v8 = v57;
  if (v46)
  {
    v39 = 1;
    goto LABEL_32;
  }

  v79 = v57;
  v36 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v37 = v9;
  v38 = &v77;
  v75 = v36;
  v76 = v9 & 1;
  v77 = 3;
  v78 = 0;
  if (v9)
  {
    if (v38[1])
    {
      v35 = 1;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v73 = v36;
  v74 = v37 & 1;
  if (v38[1])
  {
LABEL_30:
    v35 = 0;
    goto LABEL_29;
  }

  v72 = v73;
  v71 = *v38;
  v34 = type metadata accessor for INDeviceCategory(0);
  sub_268CD7818();
  v35 = sub_268F9AE04();
LABEL_29:
  v39 = v35;
LABEL_32:
  v33 = v39;

  if (v39)
  {
    v10 = v53;
    v11 = sub_268DBB664();
    v26 = *v11;
    v27 = v11[1];
    v28 = *(v11 + 16);
    v29 = *sub_268DC7AE8();
    v25 = v29;
    v12 = v29;
    v30 = *(v50 + 24);

    v13 = v57;

    v31 = &v23;
    MEMORY[0x28223BE20](v26, v27, v28, v29);
    v22[2] = v14;
    v22[3] = v57;
    v22[4] = v52;
    v22[5] = v15;
    sub_268DB944C(v16, v17, v18, v19, v20, sub_268E418FC, v22, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v32 = v10;

    return v32;
  }

  else
  {
    sub_268E417C8(v52);
    return v53;
  }
}

double sub_268E414D4(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v18 = sub_268D398B4();

  if (v18)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  sub_268CDD0DC();
  v19 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v4 = sub_268E41954([a2 settingMetadata], 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v19 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v19);
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

  a3(v19);

  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

uint64_t sub_268E417C8(void (*a1)(id))
{
  v5 = sub_268F9B284();
  v1 = sub_268DC7AE8();
  v6 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "Low power mode is not supported on this device.", 47, 2);

  MEMORY[0x277D82BD8](v6);

  v2 = sub_268E948B8(3);
  v8 = sub_268E41B70(v2, v3);

  a1(v8);
  MEMORY[0x277D82BD8](v8);
}

id sub_268E41A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v14 = v6;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);

  *v14 = sub_268E41954(a1, a2, a3, a4, a5, a6);
  sub_268CD0F7C();
  v15 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v15);
  return v16;
}

id sub_268E41B70(uint64_t a1, uint64_t a2)
{
  sub_268CDD0DC();
  v4 = sub_268CD42AC(7, 0);

  v3 = sub_268F9AE14();

  [v4 setErrorDetail_];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

id sub_268E41C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a6)
  {
    v11 = sub_268F9AE14();

    v7 = [v16 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 binaryValue:a4 labeledValue:v11];
  }

  else
  {
    v7 = [v16 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 binaryValue:a4 labeledValue:0];
  }

  v10 = v7;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

uint64_t *sub_268E41D2C()
{
  if (qword_280FE6598 != -1)
  {
    swift_once();
  }

  return &qword_280FE8388;
}

uint64_t sub_268E41D8C()
{
  type metadata accessor for GetSiriHandler();
  result = sub_268E41DF0(1);
  qword_280FE8388 = result;
  return result;
}

uint64_t sub_268E41E40()
{
  v1 = *sub_268E41D2C();

  return v1;
}

uint64_t sub_268E41E70(char a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

double sub_268E41EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetSiriHandler handling intent", 30, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBBBB4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 16);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E4237C, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E420A8(void *a1, void (*a2)(void *), uint64_t a3)
{
  sub_268CDD0DC();
  v17 = sub_268CD42AC(7, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v3 = sub_268E41954([a1 settingMetadata], 0, 0, 0, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  sub_268E948B8(17);
  v10 = sub_268F9AE14();

  [v17 setErrorDetail_];
  MEMORY[0x277D82BD8](v10);
  v14 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v15 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v5;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v11 = sub_268F9AE74();
  v12 = v6;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC14(v14, &dword_268CBE000, v15, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v15);

  a2(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t sub_268E42470@<X0>(uint64_t a1@<X8>)
{
  v11 = sub_268E4764C();
  if (v11 == 3)
  {
    v6 = *MEMORY[0x277D5B960];
    v5 = sub_268F996C4();
    return (*(*(v5 - 8) + 104))(a1, v6);
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v8 = *MEMORY[0x277D5B968];
      v3 = sub_268F996C4();
      return (*(*(v3 - 8) + 104))(a1, v8);
    }

    else
    {
      v9 = *MEMORY[0x277D5B978];
      v1 = sub_268F996C4();
      return (*(*(v1 - 8) + 104))(a1, v9);
    }
  }

  else
  {
    v7 = *MEMORY[0x277D5B970];
    v4 = sub_268F996C4();
    return (*(*(v4 - 8) + 104))(a1, v7);
  }
}

uint64_t sub_268E4262C()
{
  sub_268E4464C();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E42694@<X0>(_BYTE *a1@<X8>)
{
  sub_268E439E8();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  if (v3 == 65)
  {
    sub_268E431E8();

    sub_268F9A0F4();
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_268E4277C()
{
  sub_268E43B0C();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  if (v1 == 6)
  {
    sub_268E4330C();

    sub_268F9A0F4();
  }

  else
  {
    return v1;
  }

  return v2;
}

uint64_t sub_268E42860()
{
  sub_268E44894();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t sub_268E428C8()
{
  v12 = v0;
  v11 = sub_268E4277C();
  if (v11 == 6 && sub_268E42860() == 6)
  {
    sub_268E42694(v7);
    v5 = v7[0] == 65;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    sub_268E4262C();
    v7[1] = v8;
    v4 = v8 == 13;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    sub_268E4420C();

    type metadata accessor for SettingsNLIntent(0);
    sub_268E47728();
    sub_268F9A0F4();

    v9 = v10;
    v3 = v10 != 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_268E42B00()
{
  sub_268E44330();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t sub_268E43094()
{
  sub_268E449C8();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E430FC()
{
  sub_268E44AEC();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t sub_268E43164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  sub_268D8E300();

  sub_268E477A8();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD200 = result;
  return result;
}

uint64_t *sub_268E431E8()
{
  if (qword_2802DB5B0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD200;
}

uint64_t sub_268E43248()
{
  v1 = *sub_268E431E8();

  return v1;
}

uint64_t sub_268E43278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD208 = result;
  return result;
}

uint64_t *sub_268E4330C()
{
  if (qword_2802DB5B8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD208;
}

uint64_t sub_268E4336C()
{
  v1 = *sub_268E4330C();

  return v1;
}

uint64_t sub_268E4339C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD210 = result;
  return result;
}

uint64_t *sub_268E43430()
{
  if (qword_2802DB5C0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD210;
}

uint64_t sub_268E43490()
{
  v1 = *sub_268E43430();

  return v1;
}

uint64_t sub_268E434C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD218 = result;
  return result;
}

uint64_t *sub_268E43554()
{
  if (qword_2802DB5C8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD218;
}

uint64_t sub_268E435B4()
{
  v1 = *sub_268E43554();

  return v1;
}

uint64_t sub_268E435E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD300, &qword_268FA3968);
  sub_268F9AEF4();
  sub_268F99FE4();
  sub_268E47918();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD220 = result;
  return result;
}

uint64_t *sub_268E4367C()
{
  if (qword_2802DB5D0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD220;
}

uint64_t sub_268E436DC()
{
  v1 = *sub_268E4367C();

  return v1;
}

uint64_t sub_268E4370C()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v5 = v0;
  v2 = *sub_268E431E8();

  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  v5[4] = sub_268E47998();
  *v5 = v2;
  v3 = *sub_268E4330C();

  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v5[9] = sub_268E47A20();
  v5[5] = v3;
  v4 = *sub_268E43430();

  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  v5[14] = sub_268E47AA8();
  v5[10] = v4;
  v6 = *sub_268E4367C();

  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD300, &qword_268FA3968);
  v5[19] = sub_268E47B30();
  v5[15] = v6;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD228 = result;
  return result;
}

uint64_t *sub_268E438C8()
{
  if (qword_2802DB5D8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD228;
}

uint64_t sub_268E43928()
{
  v1 = *sub_268E438C8();

  return v1;
}

uint64_t sub_268E43958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  sub_268F9AEF4();
  sub_268E477A8();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD230 = result;
  return result;
}

uint64_t *sub_268E439E8()
{
  if (qword_2802DB5E0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD230;
}

uint64_t sub_268E43A48()
{
  v1 = *sub_268E439E8();

  return v1;
}

uint64_t sub_268E43A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD238 = result;
  return result;
}

uint64_t *sub_268E43B0C()
{
  if (qword_2802DB5E8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD238;
}

uint64_t sub_268E43B6C()
{
  v1 = *sub_268E43B0C();

  return v1;
}

uint64_t sub_268E43B9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD240 = result;
  return result;
}

uint64_t *sub_268E43C30()
{
  if (qword_2802DB5F0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD240;
}

uint64_t sub_268E43C90()
{
  v1 = *sub_268E43C30();

  return v1;
}

uint64_t sub_268E43CC0()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v4 = v0;
  v2 = *sub_268E439E8();

  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  v4[4] = sub_268E47998();
  *v4 = v2;
  v3 = *sub_268E43B0C();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v4[9] = sub_268E47A20();
  v4[5] = v3;
  v5 = *sub_268E43C30();

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  v4[14] = sub_268E47AA8();
  v4[10] = v5;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD248 = result;
  return result;
}

uint64_t *sub_268E43E3C()
{
  if (qword_2802DB5F8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD248;
}

uint64_t sub_268E43E9C()
{
  v1 = *sub_268E43E3C();

  return v1;
}

uint64_t sub_268E43ECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD338, &qword_268FA3978);
  sub_268F9AEF4();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD250 = result;
  return result;
}

uint64_t *sub_268E43F5C()
{
  if (qword_2802DB600 != -1)
  {
    swift_once();
  }

  return &qword_2802DD250;
}

uint64_t sub_268E43FBC()
{
  v1 = *sub_268E43F5C();

  return v1;
}

uint64_t sub_268E43FEC()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v2 = v0;
  v3 = *sub_268E43F5C();

  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD338, &qword_268FA3978);
  v2[4] = sub_268E47BB8();
  *v2 = v3;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD258 = result;
  return result;
}

uint64_t *sub_268E440E8()
{
  if (qword_2802DB608 != -1)
  {
    swift_once();
  }

  return &qword_2802DD258;
}

uint64_t sub_268E44148()
{
  v1 = *sub_268E440E8();

  return v1;
}

uint64_t sub_268E44178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD348, &qword_268FA3980);
  sub_268F9AEF4();
  sub_268E47C40();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD260 = result;
  return result;
}

uint64_t *sub_268E4420C()
{
  if (qword_2802DB610 != -1)
  {
    swift_once();
  }

  return &qword_2802DD260;
}

uint64_t sub_268E4426C()
{
  v1 = *sub_268E4420C();

  return v1;
}

uint64_t sub_268E4429C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD268 = result;
  return result;
}

uint64_t *sub_268E44330()
{
  if (qword_2802DB618 != -1)
  {
    swift_once();
  }

  return &qword_2802DD268;
}

uint64_t sub_268E44390()
{
  v1 = *sub_268E44330();

  return v1;
}

uint64_t sub_268E443C0()
{
  v0 = sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v5 = v1;
  v3 = *sub_268E440E8();

  v5[3] = v0;
  v5[4] = MEMORY[0x277D5E210];
  *v5 = v3;
  v4 = *sub_268E4420C();

  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD348, &qword_268FA3980);
  v5[9] = sub_268E47CBC();
  v5[5] = v4;
  v6 = *sub_268E44330();

  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v5[14] = sub_268E47A20();
  v5[10] = v6;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD270 = result;
  return result;
}

uint64_t *sub_268E4452C()
{
  if (qword_2802DB620 != -1)
  {
    swift_once();
  }

  return &qword_2802DD270;
}

uint64_t sub_268E4458C()
{
  v1 = *sub_268E4452C();

  return v1;
}

uint64_t sub_268E445BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD360, &qword_268FA3988);
  sub_268F9AEF4();
  sub_268E47D44();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD278 = result;
  return result;
}

uint64_t *sub_268E4464C()
{
  if (qword_2802DB628 != -1)
  {
    swift_once();
  }

  return &qword_2802DD278;
}

uint64_t sub_268E446AC()
{
  v1 = *sub_268E4464C();

  return v1;
}

uint64_t sub_268E446DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD370, &qword_268FA3990);
  sub_268F9AEF4();
  sub_268E47DBC();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD280 = result;
  return result;
}

uint64_t *sub_268E44770()
{
  if (qword_2802DB630 != -1)
  {
    swift_once();
  }

  return &qword_2802DD280;
}

uint64_t sub_268E447D0()
{
  v1 = *sub_268E44770();

  return v1;
}

uint64_t sub_268E44800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD288 = result;
  return result;
}

uint64_t *sub_268E44894()
{
  if (qword_2802DB638 != -1)
  {
    swift_once();
  }

  return &qword_2802DD288;
}

uint64_t sub_268E448F4()
{
  v1 = *sub_268E44894();

  return v1;
}

uint64_t sub_268E44924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD380, &unk_268FA3998);
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD1E8, &qword_268FA37D0);
  sub_268E47E38();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD290 = result;
  return result;
}

uint64_t *sub_268E449C8()
{
  if (qword_2802DB640 != -1)
  {
    swift_once();
  }

  return &qword_2802DD290;
}

uint64_t sub_268E44A28()
{
  v1 = *sub_268E449C8();

  return v1;
}

uint64_t sub_268E44A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD390, &qword_268FA39A8);
  sub_268F9AEF4();
  sub_268E47EC0();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD298 = result;
  return result;
}

uint64_t *sub_268E44AEC()
{
  if (qword_2802DB648 != -1)
  {
    swift_once();
  }

  return &qword_2802DD298;
}

uint64_t sub_268E44B4C()
{
  v1 = *sub_268E44AEC();

  return v1;
}

uint64_t sub_268E44B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3A0, &qword_268FA39B0);
  sub_268F9AEF4();
  sub_268E47F3C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD2A0 = result;
  return result;
}

uint64_t *sub_268E44C10()
{
  if (qword_2802DB650 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2A0;
}

uint64_t sub_268E44C70()
{
  v1 = *sub_268E44C10();

  return v1;
}

uint64_t sub_268E44CA0()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v7 = v0;
  v2 = *sub_268E4464C();

  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD360, &qword_268FA3988);
  v7[4] = sub_268E47FB8();
  *v7 = v2;
  v3 = *sub_268E44770();

  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD370, &qword_268FA3990);
  v7[9] = sub_268E48040();
  v7[5] = v3;
  v4 = *sub_268E44894();

  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v7[14] = sub_268E47A20();
  v7[10] = v4;
  v5 = *sub_268E449C8();

  v7[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD380, &unk_268FA3998);
  v7[19] = sub_268E480C8();
  v7[15] = v5;
  v6 = *sub_268E44AEC();

  v7[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD390, &qword_268FA39A8);
  v7[24] = sub_268E48150();
  v7[20] = v6;
  v8 = *sub_268E44C10();

  v7[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3A0, &qword_268FA39B0);
  v7[29] = sub_268E481D8();
  v7[25] = v8;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD2A8 = result;
  return result;
}

uint64_t *sub_268E44EDC()
{
  if (qword_2802DB658 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2A8;
}

uint64_t sub_268E44F3C()
{
  v1 = *sub_268E44EDC();

  return v1;
}

uint64_t sub_268E44F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3D8, qword_268FA39B8);
  sub_268F9AEF4();
  sub_268E48260();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD2B0 = result;
  return result;
}

uint64_t *sub_268E45000()
{
  if (qword_2802DB660 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2B0;
}

uint64_t sub_268E45060()
{
  v1 = *sub_268E45000();

  return v1;
}

uint64_t sub_268E45090()
{
  v0 = sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v7 = v1;
  v3 = *sub_268E43E3C();

  v7[3] = v0;
  v6 = MEMORY[0x277D5E210];
  v7[4] = MEMORY[0x277D5E210];
  *v7 = v3;
  v4 = *sub_268E44EDC();

  v7[8] = v0;
  v7[9] = v6;
  v7[5] = v4;
  v5 = *sub_268E438C8();

  v7[13] = v0;
  v7[14] = v6;
  v7[10] = v5;
  v8 = *sub_268E4452C();

  v7[18] = v0;
  v7[19] = v6;
  v7[15] = v8;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD2B8 = result;
  return result;
}

uint64_t *sub_268E45200()
{
  if (qword_2802DB668 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2B8;
}

uint64_t sub_268E45260()
{
  v1 = *sub_268E45200();

  return v1;
}

uint64_t sub_268E45290()
{
  sub_268F99EC4();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v3 = v0;
  v2 = *sub_268E45200();

  v3[3] = sub_268F99E64();
  v3[4] = MEMORY[0x277D5E210];
  *v3 = v2;
  v4 = *sub_268E45000();

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3D8, qword_268FA39B8);
  v3[9] = sub_268E482DC();
  v3[5] = v4;
  sub_268CD0F7C();
  result = sub_268F99EB4();
  qword_2802DD2C0 = result;
  return result;
}

uint64_t *sub_268E453BC()
{
  if (qword_2802DB670 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2C0;
}

uint64_t sub_268E4541C()
{
  v1 = *sub_268E453BC();

  return v1;
}

uint64_t sub_268E454AC(uint64_t a1)
{
  v11 = a1;
  v10 = sub_268F9A704();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10, v11, v10, v1);
  v6 = &v4 - v5;
  (*(v8 + 16))(v2);
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_268E455C0()
{
  v1 = *sub_268E453BC();

  return v1;
}

uint64_t sub_268E455F8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "password";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "passwords";
  *(v2 + 32) = 9;
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

void sub_268E4572C()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  sub_268CD0F7C();
}

uint64_t sub_268E45924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E455F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E4595C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4577C(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E459C0(uint64_t a1, uint64_t a2)
{
  sub_268E483E0();
  sub_268E4845C();
  sub_268E48364();
  return sub_268F9A4A4();
}

uint64_t sub_268E45A18(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "goto";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  *(v2 + 24) = "read";
  *(v2 + 32) = 4;
  *(v2 + 40) = 2;
  *(v2 + 48) = "set";
  *(v2 + 56) = 3;
  *(v2 + 64) = 2;
  *(v2 + 72) = "toggle";
  *(v2 + 80) = 6;
  *(v2 + 88) = 2;
  *(v2 + 96) = "join";
  *(v2 + 104) = 4;
  *(v2 + 112) = 2;
  *(v2 + 120) = "connect";
  *(v2 + 128) = 7;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

void sub_268E45C70()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  sub_268CD0F7C();
}

uint64_t sub_268E45CE0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "on";
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  *(v2 + 24) = "off";
  *(v2 + 32) = 3;
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

void sub_268E45E18()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  sub_268CD0F7C();
}

uint64_t sub_268E45EF4(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "personalHotspot";
  *(v2 + 8) = 15;
  *(v2 + 16) = 2;
  *(v2 + 24) = "discoverability";
  *(v2 + 32) = 15;
  *(v2 + 40) = 2;
  *(v2 + 48) = "password";
  *(v2 + 56) = 8;
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

void sub_268E46074()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  sub_268CD0F7C();
}

BOOL sub_268E460CC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "always";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

BOOL sub_268E46218(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "percent";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

uint64_t sub_268E46364(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 5;
}

void sub_268E46450()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  sub_268CD0F7C();
}

uint64_t sub_268E464B8(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
  }

  return 4;
}

uint64_t sub_268E46678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E45A18(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E466B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E42F14(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E46710(uint64_t a1, uint64_t a2)
{
  sub_268E48554();
  sub_268E485D0();
  sub_268E484D8();
  return sub_268F9A4A4();
}

uint64_t sub_268E46884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E45CE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E468BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E45E68(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E46920(uint64_t a1, uint64_t a2)
{
  sub_268E486C8();
  sub_268E48744();
  sub_268E4864C();
  return sub_268F9A4A4();
}

uint64_t sub_268E46A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E45EF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E46ACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E42E48(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E46B2C(uint64_t a1, uint64_t a2)
{
  sub_268E4883C();
  sub_268E488B8();
  sub_268E487C0();
  return sub_268F9A4A4();
}

BOOL sub_268E46CA0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E460CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E46CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E461E4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E46D3C(uint64_t a1, uint64_t a2)
{
  sub_268E489B0();
  sub_268E48A2C();
  sub_268E48934();
  return sub_268F9A4A4();
}

BOOL sub_268E46EB0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E46218(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E46EF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E46330();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E46F4C(uint64_t a1, uint64_t a2)
{
  sub_268E48B24();
  sub_268E48BA0();
  sub_268E48AA8();
  return sub_268F9A4A4();
}

uint64_t sub_268E470C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E46364(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268E470F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E464B8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_268E4714C(uint64_t a1, uint64_t a2)
{
  sub_268E48C98();
  sub_268E48D14();
  return sub_268F9A4B4();
}

uint64_t sub_268E47198(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "cancel";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  *(v2 + 24) = "no";
  *(v2 + 32) = 2;
  *(v2 + 40) = 2;
  *(v2 + 48) = "yes";
  *(v2 + 56) = 3;
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

void sub_268E4731C()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  sub_268CD0F7C();
}

uint64_t sub_268E4755C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E47198(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E47594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E47374(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E475F4(uint64_t a1, uint64_t a2)
{
  sub_268E48E0C();
  sub_268E48E88();
  sub_268E48D90();
  return sub_268F9A4A4();
}

uint64_t sub_268E4764C()
{
  sub_268E45000();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t type metadata accessor for SettingsNLIntent(uint64_t a1)
{
  v2 = qword_280FE5C48;
  if (!qword_280FE5C48)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_268E47728()
{
  v2 = qword_2802DD2C8;
  if (!qword_2802DD2C8)
  {
    type metadata accessor for SettingsNLIntent(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E477A8()
{
  v2 = qword_2802DD2D8;
  if (!qword_2802DD2D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47820()
{
  v2 = qword_2802DD2E8;
  if (!qword_2802DD2E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4789C()
{
  v2 = qword_2802DD2F8;
  if (!qword_2802DD2F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47918()
{
  v2 = qword_2802DD308;
  if (!qword_2802DD308)
  {
    sub_268F99FE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47998()
{
  v2 = qword_2802DD318;
  if (!qword_2802DD318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2D0, &qword_268FA3950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47A20()
{
  v2 = qword_2802DD320;
  if (!qword_2802DD320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2E0, &qword_268FA3958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47AA8()
{
  v2 = qword_2802DD328;
  if (!qword_2802DD328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2F0, &qword_268FA3960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47B30()
{
  v2 = qword_2802DD330;
  if (!qword_2802DD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD300, &qword_268FA3968);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47BB8()
{
  v2 = qword_2802DD340;
  if (!qword_2802DD340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD338, &qword_268FA3978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47C40()
{
  v2 = qword_2802DD350;
  if (!qword_2802DD350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47CBC()
{
  v2 = qword_2802DD358;
  if (!qword_2802DD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD348, &qword_268FA3980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47D44()
{
  v2 = qword_2802DD368;
  if (!qword_2802DD368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47DBC()
{
  v2 = qword_2802DD378;
  if (!qword_2802DD378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47E38()
{
  v2 = qword_2802DD388;
  if (!qword_2802DD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD1E8, &qword_268FA37D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47EC0()
{
  v2 = qword_2802DD398;
  if (!qword_2802DD398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47F3C()
{
  v2 = qword_2802DD3A8;
  if (!qword_2802DD3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47FB8()
{
  v2 = qword_2802DD3B0;
  if (!qword_2802DD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD360, &qword_268FA3988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48040()
{
  v2 = qword_2802DD3B8;
  if (!qword_2802DD3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD370, &qword_268FA3990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E480C8()
{
  v2 = qword_2802DD3C0;
  if (!qword_2802DD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD380, &unk_268FA3998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48150()
{
  v2 = qword_2802DD3C8;
  if (!qword_2802DD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD390, &qword_268FA39A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E481D8()
{
  v2 = qword_2802DD3D0;
  if (!qword_2802DD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD3A0, &qword_268FA39B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48260()
{
  v2 = qword_2802DD3E0;
  if (!qword_2802DD3E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E482DC()
{
  v2 = qword_2802DD3E8;
  if (!qword_2802DD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD3D8, qword_268FA39B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48364()
{
  v2 = qword_2802DD3F0;
  if (!qword_2802DD3F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E483E0()
{
  v2 = qword_2802DD3F8;
  if (!qword_2802DD3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4845C()
{
  v2 = qword_2802DD400;
  if (!qword_2802DD400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E484D8()
{
  v2 = qword_2802DD408;
  if (!qword_2802DD408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48554()
{
  v2 = qword_2802DD410;
  if (!qword_2802DD410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E485D0()
{
  v2 = qword_2802DD418;
  if (!qword_2802DD418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4864C()
{
  v2 = qword_2802DD420;
  if (!qword_2802DD420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E486C8()
{
  v2 = qword_2802DD428;
  if (!qword_2802DD428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48744()
{
  v2 = qword_2802DD430;
  if (!qword_2802DD430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E487C0()
{
  v2 = qword_2802DD438;
  if (!qword_2802DD438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4883C()
{
  v2 = qword_2802DD440;
  if (!qword_2802DD440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E488B8()
{
  v2 = qword_2802DD448;
  if (!qword_2802DD448)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48934()
{
  v2 = qword_2802DD450;
  if (!qword_2802DD450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E489B0()
{
  v2 = qword_2802DD458;
  if (!qword_2802DD458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48A2C()
{
  v2 = qword_2802DD460;
  if (!qword_2802DD460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48AA8()
{
  v2 = qword_2802DD468;
  if (!qword_2802DD468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48B24()
{
  v2 = qword_2802DD470;
  if (!qword_2802DD470)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48BA0()
{
  v2 = qword_2802DD478;
  if (!qword_2802DD478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48C1C()
{
  v2 = qword_2802DD480;
  if (!qword_2802DD480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48C98()
{
  v2 = qword_2802DD488;
  if (!qword_2802DD488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48D14()
{
  v2 = qword_2802DD490;
  if (!qword_2802DD490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48D90()
{
  v2 = qword_2802DD498;
  if (!qword_2802DD498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48E0C()
{
  v2 = qword_2802DD4A0;
  if (!qword_2802DD4A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48E88()
{
  v2 = qword_2802DD4A8;
  if (!qword_2802DD4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E48F04()
{
  sub_268E43C30();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  if (v2 == 2)
  {
    sub_268E43430();

    sub_268F9A0F4();

    if (v1 == 2)
    {
      sub_268E43554();

      sub_268F9A0F4();
    }

    else
    {
      return v1 & 1;
    }
  }

  else
  {
    return v2 & 1;
  }

  return v3;
}

uint64_t sub_268E49064()
{
  sub_268E4367C();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E490CC()
{
  sub_268E44770();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1 & 1;
}

uint64_t sub_268E49138()
{
  sub_268E44C10();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t sub_268E491A0()
{
  sub_268E4420C();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

uint64_t sub_268E49208()
{
  sub_268E43F5C();

  type metadata accessor for SettingsNLIntent(0);
  sub_268E47728();
  sub_268F9A0F4();

  return v1;
}

unint64_t sub_268E492DC()
{
  v2 = qword_2802DD4B0;
  if (!qword_2802DD4B0)
  {
    type metadata accessor for SettingsNLIntent(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E493BC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "phone";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "iphone";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  *(v2 + 48) = "airpods";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "apple_watch";
  *(v2 + 80) = 11;
  *(v2 + 88) = 2;
  *(v2 + 96) = "airpods_max";
  *(v2 + 104) = 11;
  *(v2 + 112) = 2;
  *(v2 + 120) = "airpods_pro";
  *(v2 + 128) = 11;
  *(v2 + 136) = 2;
  *(v2 + 144) = "airpods_case";
  *(v2 + 152) = 12;
  *(v2 + 160) = 2;
  *(v2 + 168) = "homepod";
  *(v2 + 176) = 7;
  *(v2 + 184) = 2;
  *(v2 + 192) = "keyboard";
  *(v2 + 200) = 8;
  *(v2 + 208) = 2;
  *(v2 + 216) = "mouse";
  *(v2 + 224) = 5;
  *(v2 + 232) = 2;
  *(v2 + 240) = "trackpad";
  *(v2 + 248) = 8;
  *(v2 + 256) = 2;
  *(v2 + 264) = "pencil";
  *(v2 + 272) = 6;
  *(v2 + 280) = 2;
  *(v2 + 288) = "speaker";
  *(v2 + 296) = 7;
  *(v2 + 304) = 2;
  *(v2 + 312) = "headphones";
  *(v2 + 320) = 10;
  *(v2 + 328) = 2;
  *(v2 + 336) = "batteryCase";
  *(v2 + 344) = 11;
  *(v2 + 352) = 2;
  *(v2 + 360) = "apple_tv_siri_remote";
  *(v2 + 368) = 20;
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

void sub_268E498C4()
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
  v0[13] = 13;
  v0[14] = 14;
  v0[15] = 15;
  sub_268CD0F7C();
}

unint64_t sub_268E499D0()
{
  v2 = qword_280FE4AC8;
  if (!qword_280FE4AC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4AC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E49B1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E493BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E49B54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E42B68(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E49BB4(uint64_t a1, uint64_t a2)
{
  sub_268E49C0C();
  sub_268E49C88();
  sub_268E499D0();
  return sub_268F9A4A4();
}

unint64_t sub_268E49C0C()
{
  v2 = qword_2802DD4B8;
  if (!qword_2802DD4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E49C88()
{
  v2 = qword_2802DD4C0;
  if (!qword_2802DD4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E49D54(uint64_t a1)
{
  v3 = sub_268F9A704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_268E49E8C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF0)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 15) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 240;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 16;
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

_BYTE *sub_268E49FF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF0)
  {
    v5 = ((a3 + 15) >> 8) + 1;
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

  if (a2 > 0xF0)
  {
    v4 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
      *result = a2 + 15;
    }
  }

  return result;
}

unint64_t sub_268E4A21C()
{
  v2 = qword_280FE4AD0;
  if (!qword_280FE4AD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A2B0()
{
  v2 = qword_2802DD4C8;
  if (!qword_2802DD4C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A344()
{
  v2 = qword_2802DD4D0;
  if (!qword_2802DD4D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A3D8()
{
  v2 = qword_2802DD4D8;
  if (!qword_2802DD4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A46C()
{
  v2 = qword_2802DD4E0;
  if (!qword_2802DD4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A500()
{
  v2 = qword_2802DD4E8;
  if (!qword_2802DD4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A594()
{
  v2 = qword_2802DD4F0;
  if (!qword_2802DD4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A628()
{
  v2 = qword_2802DD4F8;
  if (!qword_2802DD4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A6BC()
{
  v2 = qword_2802DD500;
  if (!qword_2802DD500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A768()
{
  v2 = qword_2802DD508;
  if (!qword_2802DD508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A7FC()
{
  v2 = qword_2802DD510;
  if (!qword_2802DD510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD518, &qword_268FA3EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A8E4()
{
  v2 = qword_2802DD520;
  if (!qword_2802DD520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD528, &qword_268FA3F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A99C()
{
  v2 = qword_2802DD530;
  if (!qword_2802DD530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD538, &qword_268FA4030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AA54()
{
  v2 = qword_2802DD540;
  if (!qword_2802DD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD548, &qword_268FA40D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AAF4()
{
  v2 = qword_2802DD550;
  if (!qword_2802DD550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AB88()
{
  v2 = qword_2802DD558;
  if (!qword_2802DD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD560, &qword_268FA4170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AC40()
{
  v2 = qword_2802DD568;
  if (!qword_2802DD568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD570, &qword_268FA4210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4ACE0()
{
  v2 = qword_2802DD578;
  if (!qword_2802DD578)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AD74()
{
  v2 = qword_2802DD580;
  if (!qword_2802DD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD588, &qword_268FA42B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AE2C()
{
  v2 = qword_2802DD590;
  if (!qword_2802DD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD598, &qword_268FA4350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AEE4()
{
  v2 = qword_2802DD5A0;
  if (!qword_2802DD5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD5A8, &qword_268FA43F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AF9C()
{
  v2 = qword_2802DD5B0;
  if (!qword_2802DD5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B030()
{
  v2 = qword_2802DD5B8;
  if (!qword_2802DD5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B0C4()
{
  v2 = qword_2802DD5C0;
  if (!qword_2802DD5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B158()
{
  v2 = qword_2802DD5C8;
  if (!qword_2802DD5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B1EC()
{
  v2 = qword_2802DD5D0;
  if (!qword_2802DD5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B280()
{
  v2 = qword_2802DD5D8;
  if (!qword_2802DD5D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B314()
{
  v2 = qword_2802DD5E0;
  if (!qword_2802DD5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4B390(uint64_t a1)
{
  v38 = a1;
  v2 = v1;
  v3 = v38;
  v45 = v2;
  v56 = "LaunchEnvPickerFlow on";
  v54 = &dword_268CBE000;
  v39 = "Parse is of unexpected type: %@.";
  v64 = 0;
  v63 = 0;
  v65 = 0;
  v52 = 0;
  v40 = sub_268F99C24();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v44 = &v28 - v43;
  v65 = &v28 - v43;
  v62 = sub_268F99C34();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v49 = *(v59 + 64);
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v7, v8, v9);
  v47 = &v28 - v46;
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v46, v10, v11, v12);
  v50 = &v28 - v48;
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v48, v13, v14, v15);
  v61 = &v28 - v51;
  v64 = v3;
  v63 = v16;
  v58 = *sub_268DC9C10();
  MEMORY[0x277D82BE0](v58);
  v55 = sub_268F9B284();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v57 = sub_268F9B734();
  sub_268F9AC04(v56, 22, 2, v54, v58, v55);

  MEMORY[0x277D82BD8](v58);
  sub_268F99BE4();
  if ((*(v59 + 88))(v61, v62) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v17 = v44;
  (*(v59 + 16))(v50, v61, v62);
  (*(v59 + 96))(v50, v62);
  (*(v41 + 32))(v17, v50, v40);
  v37 = type metadata accessor for LaunchEnvPicker();
  v18 = sub_268D90FF0();
  if ((sub_268F39FF8(v37, v37, v18) & 1) == 0)
  {
    (*(v41 + 8))(v44, v40);
LABEL_5:
    v33 = sub_268F9B284();
    v35 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v35);
    v32 = sub_268F9B734();
    v31 = v19;
    sub_268F99BE4();
    v29 = sub_268F9AE64();
    v30 = v20;
    v31[3] = MEMORY[0x277D837D0];
    v21 = sub_268CDD224();
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v31[4] = v21;
    *v24 = v22;
    v24[1] = v23;
    sub_268CD0F7C();
    v34 = v25;
    sub_268F9AC14(v33, &dword_268CBE000, v35, v39, 32, 2);

    v26 = MEMORY[0x277D82BD8](v35);
    (*(v59 + 8))(v61, v62, v26);
    v36 = 0;
    return v36 & 1;
  }

  v65 = v44;
  (*(v41 + 8))();
  (*(v59 + 8))(v61, v62);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_268E4B8F4(uint64_t a1)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268E4B92C, 0);
}

uint64_t sub_268E4B92C()
{
  *(v0 + 16) = v0;
  sub_268F998F4();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268E4B9BC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v18 = a2;
  v21 = &unk_268FA46A0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v3, v4);
  v20 = &v16 - v17;
  v24 = v5;
  v25 = v6;
  v23 = v2;
  v19 = 0;
  v7 = sub_268F9B0E4();
  (*(*(v7 - 8) + 56))(v20, 1);

  v8 = swift_allocObject();
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v8;
  v14 = v22;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = v14;
  v13[6] = v9;
  sub_268E4C098(v10, v10, v11, v12, v13, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_268E4BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v8 = sub_268F99904();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v14 = swift_task_alloc();
  v6[10] = v14;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  v9 = swift_task_alloc();
  *(v13 + 88) = v9;
  *v9 = *(v13 + 32);
  v9[1] = sub_268E4BCA4;

  return sub_268E4B8F4(v14);
}

uint64_t sub_268E4BCA4()
{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {
    v2 = sub_268E4BF08;
  }

  else
  {
    v2 = sub_268E4BE0C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E4BE0C()
{
  v6 = v0[10];
  v4 = v0[9];
  v5 = v0[8];
  v3 = v0[6];
  v0[4] = v0;

  v3(v6);

  (*(v4 + 8))(v6, v5);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_268E4BF08()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E4BFA8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268E4BB34(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_268E4C098(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v43 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v44 = a6;
  v45 = "Fatal error";
  v46 = "Unexpectedly found nil while unwrapping an Optional value";
  v47 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v48 = 0;
  v61 = a6;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v6, v7, v8);
  v53 = &v12 - v49;

  v59 = v51;
  v60 = v52;
  sub_268CD95D4(v50, v53);
  v54 = sub_268F9B0E4();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  if ((*(v55 + 48))(v53, 1) == 1)
  {
    sub_268CD96FC(v53);
    v41 = 0;
  }

  else
  {
    v40 = sub_268F9B0D4();
    (*(v55 + 8))(v53, v54);
    v41 = v40;
  }

  v37 = v41 | 0x1C00;
  v39 = *(v52 + 16);
  v38 = *(v52 + 24);
  swift_unknownObjectRetain();

  if (v39)
  {
    v35 = v39;
    v36 = v38;
    v29 = v38;
    v30 = v39;
    swift_getObjectType();
    v31 = sub_268F9B0B4();
    v32 = v9;
    swift_unknownObjectRelease();
    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v27 = v34;
  v28 = v33;

  if (v43)
  {
    v25 = v42;
    v26 = v43;
    v10 = v48;
    v22 = v43;
    v23 = sub_268F9AEA4();

    sub_268E4C6A4(v23 + 32, &v57);
    if (v10)
    {
      __break(1u);
    }

    v21 = v57;

    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  v20 = v24;
  if (v24)
  {
    v15 = v20;
    v14 = v20;
    sub_268CD96FC(v50);

    v16 = v14;
  }

  else
  {

    sub_268CD96FC(v50);
    v17 = v59;
    v18 = v60;

    v19 = 0;
    if (v28 != 0 || v27 != 0)
    {
      v58[0] = 0;
      v58[1] = 0;
      v58[2] = v28;
      v58[3] = v27;
      v19 = v58;
    }

    v16 = swift_task_create();
  }

  v13 = v16;

  return v13;
}

uint64_t sub_268E4C6A4@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_268F9B584();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_268E4C868()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268E4C894()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268E4C8E0()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_268E4C90C(void *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_268F9B734();
  *v3 = 29;
  v3[1] = 12;
  v3[2] = 45;
  v3[3] = 7;
  sub_268CD0F7C();
  v2[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5E8, &qword_268FA4750);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5F0, &qword_268FA4758);
  sub_268E12E98();
  v2[3] = sub_268F9ADA4();
  sub_268F9B734();
  *v5 = 0;
  v5[1] = 16;
  v5[2] = 51;
  v5[3] = 22;
  v5[4] = 12;
  sub_268CD0F7C();
  v2[4] = v6;
  sub_268CDE730(a1, v11);
  sub_268CDF978(v11, v2 + 5);

  v2[10] = a2;

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_268E4CA7C(uint64_t a1)
{
  v42 = a1;
  v38 = "Open setting intent requires device unlock.";
  v39 = &dword_268CBE000;
  v40 = "The BinarySettingIdentifier cannot be created from the siriKitIntent";
  v41 = "Unlock is not required - device is currently unlocked";
  v65 = 0;
  v64 = 0;
  v60 = 0;
  v58 = 0;
  v55 = 0;
  v48 = sub_268F99A74();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v43 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v2, v3, v4);
  v49 = &v9 - v43;
  v65 = v5;
  v64 = v1;
  v50 = v61;
  sub_268CDE730(v1 + 40, v61);
  v44 = v62;
  v45 = v63;
  __swift_project_boxed_opaque_existential_1(v50, v62);
  sub_268F99A64();
  v51 = sub_268F997B4();
  (*(v46 + 8))(v49, v48);
  __swift_destroy_boxed_opaque_existential_0(v50);
  if (v51)
  {
    v36 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v36);
    v34 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v35 = sub_268F9B734();
    sub_268F9AC04(v41, 53, 2, v39, v36, v34);

    MEMORY[0x277D82BD8](v36);
    v37 = 0;
    return v37 & 1;
  }

  MEMORY[0x277D82BE0](v42);
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    MEMORY[0x277D82BD8](v33);
    v32 = 1;
  }

  else
  {
    MEMORY[0x277D82BD8](v42);
    v32 = 0;
  }

  if (v32)
  {
    v11 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v11);
    HIDWORD(v9) = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v10 = sub_268F9B734();
    sub_268F9AC04(v38, 43, 2, v39, v11, HIDWORD(v9));

    MEMORY[0x277D82BD8](v11);
    v37 = 1;
    return v37 & 1;
  }

  v31._countAndFlagsBits = sub_268E4D198(v42);
  v31._object = v6;
  if (!v6)
  {
LABEL_25:
    v14 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v14);
    v12 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v13 = sub_268F9B734();
    sub_268F9AC04(v40, 68, 2, v39, v14, v12);

    MEMORY[0x277D82BD8](v14);
    v37 = 0;
    return v37 & 1;
  }

  v30 = v31;
  v28 = v31;
  v60 = v31;

  BinarySettingIdentifier.init(rawValue:)(v28);
  v29 = v59;
  if (v59 == 65)
  {

    goto LABEL_25;
  }

  v27 = v29;
  v25 = v29;
  v58 = v29;
  v26 = sub_268E4D4D0(v42);
  if (v7)
  {
    v57 = v25;
    v17 = sub_268E4D5E4(&v57);

    MEMORY[0x277D82BE0](v42);
    if (v17)
    {
      v16 = 1;
    }

    else
    {
      v56 = v25;
      v16 = sub_268E4D7EC(v42, &v56);
    }

    v15 = v16;

    MEMORY[0x277D82BD8](v42);

    v37 = v15;
  }

  else
  {
    v24 = v26;
    v22 = v26;
    v55 = v26;
    v54 = v25;
    v23 = sub_268E4D5E4(&v54);

    MEMORY[0x277D82BE0](v42);
    if (v23)
    {
      v21 = 1;
    }

    else
    {
      v53 = v25;
      v21 = sub_268E4D7EC(v42, &v53);
    }

    v20 = v21;

    MEMORY[0x277D82BD8](v42);

    if (v20)
    {
      v19 = 1;
    }

    else
    {
      v52 = v25;
      v19 = sub_268E4D6A0(&v52, v22);
    }

    v18 = v19;

    v37 = v18;
  }

  return v37 & 1;
}

uint64_t sub_268E4D198(uint64_t a1)
{
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    MEMORY[0x277D82BE0](v17);
    v1 = sub_268CD7620();
    v15 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
    MEMORY[0x277D82BD8](v17);
    return v15;
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      MEMORY[0x277D82BE0](v14);
      v2 = sub_268D588E0();
      v13 = SettingIntent.settingIdentifier.getter(v2, &protocol witness table for INSetNumericSettingIntent);
      MEMORY[0x277D82BD8](v14);
      return v13;
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        MEMORY[0x277D82BE0](v12);
        v3 = sub_268E4DA90();
        v11 = SettingIntent.settingIdentifier.getter(v3, &protocol witness table for INSetTemporalSettingIntent);
        MEMORY[0x277D82BD8](v12);
        return v11;
      }

      else
      {
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          MEMORY[0x277D82BE0](v10);
          v4 = sub_268DC0720();
          v9 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INSetLabeledSettingIntent);
          MEMORY[0x277D82BD8](v10);
          return v9;
        }

        else
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (v8)
          {
            MEMORY[0x277D82BE0](v8);
            v5 = sub_268D2E630();
            v7 = SettingIntent.settingIdentifier.getter(v5, &protocol witness table for INGetSettingIntent);
            MEMORY[0x277D82BD8](v8);
            return v7;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

id sub_268E4D4D0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 binaryValue];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

uint64_t sub_268E4D5E4(char *a1)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = v1;
  v3 = *(v1 + 16);

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
  sub_268D28B4C();
  sub_268D288C8();
  v4 = sub_268F9AFC4();
  sub_268CD7930(&v5);
  return v4 & 1;
}

uint64_t sub_268E4D6A0(char *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5F0, &qword_268FA4758);
  sub_268E12E98();
  sub_268F9ADC4();

  if (v5)
  {
    sub_268E4DAF4();
    sub_268D292B8();
    v3 = sub_268F9AFC4();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_268E4D7EC(uint64_t a1, char *a2)
{
  v16 = 0;
  v15[1] = 0;
  v17 = a1;
  v16 = *a2;
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    MEMORY[0x277D82BD8](v14);
    v11 = 1;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v11 = 0;
  }

  MEMORY[0x277D82BE0](a1);
  if (v11)
  {
    v10 = 1;
  }

  else
  {
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      MEMORY[0x277D82BD8](v9);
      v8 = 1;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v8 = 0;
    }

    v10 = v8;
  }

  MEMORY[0x277D82BD8](a1);

  if (v10)
  {
    v5 = *(v12 + 32);

    v15[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v6 = sub_268F9AFC4();
    sub_268CD7930(v15);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    v3 = sub_268D3CC50();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_268E4DA90()
{
  v2 = qword_2802DD5F8;
  if (!qword_2802DD5F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD5F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E4DAF4()
{
  v2 = qword_2802DD600;
  if (!qword_2802DD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD5F0, &qword_268FA4758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD600);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4DB7C()
{
  sub_268CD7930(v0 + 2);
  sub_268CD7930(v0 + 3);
  sub_268CD7930(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return v2;
}

uint64_t *sub_268E4DC3C()
{
  if (qword_280FE38D8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80B8;
}

uint64_t sub_268E4DC9C()
{
  type metadata accessor for GetDisplayBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80B8 = result;
  return result;
}

uint64_t sub_268E4DD04()
{
  v1 = *sub_268E4DC3C();

  return v1;
}

void sub_268E4DD34(void *a1, void (*a2)(id, __n128), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v45 = a1;
  v46 = 0;
  v58 = 0;
  v40 = 0;
  v61 = a1;
  v59 = a2;
  v60 = a3;
  v42 = sub_268F9B284();
  v44 = *sub_268DC7AE8();
  v3 = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v43 = sub_268F9B734();
  sub_268F9AC14(v42, &dword_268CBE000, v44, "GetDisplayBrightnessHandler handling intent", 43, 2);

  v57 = v45;
  v4 = sub_268D2E630();
  v47 = SettingIntent.deviceCategory.getter(v4, &protocol witness table for INGetSettingIntent);
  v48 = v5;
  v49 = &v55;
  v53 = v47;
  v54 = v5 & 1;
  v55 = 6;
  v56 = 0;
  if ((v5 & 1) == 0)
  {
    v51 = v47;
    v52 = v48 & 1;
    if ((v49[1] & 1) == 0)
    {
      v50 = *v49;
      v35 = type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v36 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v49[1] & 1) == 0)
  {
LABEL_9:
    v36 = 0;
    goto LABEL_7;
  }

  v36 = 1;
LABEL_7:
  if (v36)
  {
    HIDWORD(v21) = sub_268F9B284();
    v23 = *sub_268DC7AE8();
    v17 = v23;
    v22 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v21), &dword_268CBE000, v23, "Display brightness is not supported on HomePod", 46, 2);

    v18 = sub_268E948B8(3);
    v24 = v19;
    v25 = sub_268E41B70(v18, v19);

    (v39)(v25);

    v26 = v40;
  }

  else
  {
    v6 = v40;
    v7 = sub_268DBB944();
    v32 = *v7;
    v28 = v7[1];
    v29 = *(v7 + 16);
    v30 = *sub_268DC7AE8();
    v27 = v30;
    v8 = v30;
    v31 = *(v37 + 24);

    v9 = v45;
    v33 = &v21;
    MEMORY[0x28223BE20](v32, v28, v29, v30);
    v20[2] = v10;
    v20[3] = v39;
    v20[4] = v38;
    v20[5] = v11;
    sub_268DB944C(v12, v13, v14, v15, v16, sub_268E4E958, v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v34 = v6;
  }
}

void sub_268E4E1A4(uint64_t a1, void (*a2)(void *, __n128), uint64_t a3, void *a4)
{
  v62 = a1;
  v61 = a2;
  v59 = a3;
  v60 = a4;
  v57 = "Sending back response %@";
  v58 = "Adjusting display brightness is not supported in ambinet mode";
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v73 = 0;
  v63 = sub_268F9B6F4();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v61, v59, v60);
  v67 = &v25 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v69 = &v25 - v68;
  v78 = v9;
  v76 = v10;
  v77 = v11;
  v75 = v12;
  v70 = *(v9 + 16);

  v71 = sub_268D36220();

  if (v71)
  {
    v52 = sub_268F9B284();
    v54 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v53 = sub_268F9B734();
    sub_268F9AC14(v52, &dword_268CBE000, v54, v58, 61, 2);

    MEMORY[0x277D82BD8](v54);

    v13 = sub_268E948B8(22);
    v55 = v14;
    v56 = sub_268E41B70(v13, v14);

    (v61)(v56);
    MEMORY[0x277D82BD8](v56);

    return;
  }

  v43 = [v60 settingMetadata];
  v44 = 0;
  v45 = sub_268DD26C8();
  v46 = sub_268D34FD4();
  v47 = *(v62 + 16);

  sub_268D39FDC();
  v48 = v15;

  v49 = sub_268E557EC(v48);
  v50 = MEMORY[0x277D84678];
  (*(v64 + 104))(v69, *MEMORY[0x277D84678], v63);
  v74 = v49;
  (*(v64 + 16))(v67, v69, v63);
  v51 = (*(v64 + 88))(v67, v63);
  if (v51 == *v50)
  {
    v74 = round(v49);
    goto LABEL_17;
  }

  if (v51 == *MEMORY[0x277D84670])
  {
    v74 = rint(v49);
    goto LABEL_17;
  }

  if (v51 == *MEMORY[0x277D84680])
  {
    goto LABEL_15;
  }

  if (v51 == *MEMORY[0x277D84688])
  {
LABEL_16:
    v74 = floor(v49);
    goto LABEL_17;
  }

  if (v51 == *MEMORY[0x277D84660])
  {
    v74 = trunc(v49);
    goto LABEL_17;
  }

  if (v51 != *MEMORY[0x277D84668])
  {
    sub_268F9B114();
    (*(v64 + 8))(v67, v63);
LABEL_17:
    v26 = v74;
    (*(v64 + 8))(v69, v63);
    v16 = sub_268E5580C(v26);
    v29 = 1;
    v28 = sub_268E3E3F0(v16, 1);
    v27 = sub_268D4AA1C();
    v17 = sub_268D4AA1C();
    v30 = 0;
    v41 = sub_268E41A08(v43, v28, v27, v17, 0, 0);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v43);
    v73 = v41;
    v38 = sub_268F9B284();
    v40 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v40);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v37 = sub_268F9B734();
    v35 = v18;
    MEMORY[0x277D82BE0](v41);
    v32 = &v72;
    v72 = v41;
    v31 = sub_268CDD0DC();
    sub_268CDD1A4();
    v33 = sub_268F9AE74();
    v34 = v19;
    v35[3] = MEMORY[0x277D837D0];
    v20 = sub_268CDD224();
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v35[4] = v20;
    *v23 = v21;
    v23[1] = v22;
    sub_268CD0F7C();
    v39 = v24;
    sub_268F9AC14(v38, &dword_268CBE000, v40, v57, 24, 2);

    MEMORY[0x277D82BD8](v40);

    (v61)(v41);

    MEMORY[0x277D82BD8](v41);
    return;
  }

  v42 = *&v49 >> 63;
  if (v49 >= 0.0)
  {
LABEL_15:
    v74 = ceil(v49);
    goto LABEL_17;
  }

  if (v42 == 1)
  {
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_268E4E9B0()
{
  type metadata accessor for SetAppearanceHandler();
  v2 = sub_268CDC590();
  v0 = sub_268E4EA30();
  result = sub_268DCA218(v2, 1, v0);
  qword_2802F14B0 = result;
  return result;
}

uint64_t sub_268E4EA30()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t *sub_268E4EA60()
{
  if (qword_2802DB680 != -1)
  {
    swift_once();
  }

  return &qword_2802F14B0;
}

uint64_t sub_268E4EAC0()
{
  v1 = *sub_268E4EA60();

  return v1;
}

uint64_t sub_268E4EAF0(void *a1, void (*a2)(void), uint64_t a3)
{
  v31 = 0;
  v35 = a1;
  v33 = a2;
  v34 = a3;
  v32 = v3;

  sub_268DAB218(a1);
  v30[0] = v30[1];
  v29 = sub_268F47F9C(v30);

  if (v29 == 2)
  {
    v11 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v12 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "Binary identifier is missing in the intent. Expected either appearanceDark or appearanceLight.", 94, 2);

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v31 = v29 & 0x101;
    v17 = sub_268F9B284();
    v4 = sub_268DC7AE8();
    v18 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268CD7620();
    sub_268D28940();
    v14 = sub_268F9AE74();
    v15 = v6;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14(v17, &dword_268CBE000, v18, "SetAppearanceHandler handling intent %@", 39, 2);

    MEMORY[0x277D82BD8](v18);

    v23 = sub_268F47E98(v29 & 0x101);

    v7 = sub_268DBCD34();
    v19 = *v7;
    v20 = v7[1];
    v21 = *(v7 + 16);
    v22 = *(v27 + 24);

    v8 = swift_allocObject();
    *(v8 + 16) = v27;
    *(v8 + 24) = v29 & 1;
    *(v8 + 25) = HIBYTE(v29) & 1;
    v24 = v8;
    sub_268DAAB84(v23, a1, v19, v20, v21, v22 & 1, a2, a3, sub_268E4F1F4, v8, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E4F1F4, v24);
  }
}

uint64_t sub_268E4EFA4(char a1, __int16 a2)
{
  v9 = a2;
  v10 = HIBYTE(a2);

  v11 = sub_268D43E38();

  if (v11)
  {
    v6 = sub_268F9B284();
    v2 = sub_268DC7AE8();
    v7 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAppearanceHandler user interface style is automatic", 54, 2);

    MEMORY[0x277D82BD8](v7);

    if (a1)
    {
      v5 = v10;
    }

    else
    {
      v5 = !sub_268D2CBA4(v10 & 1, 1);
    }

    sub_268D43F68(v5);
  }

  else
  {

    if (a1)
    {
      v4 = v9;
    }

    else
    {
      v4 = !sub_268D2CBA4(v9 & 1, 1);
    }

    sub_268D43EAC(v4);
  }
}

uint64_t sub_268E4F354(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "com.apple.siri.DirectInvocation.Settings.UndoBinarySetting";
  *(v2 + 8) = 58;
  *(v2 + 16) = 2;
  *(v2 + 24) = "com.apple.siri.DirectInvocation.Settings.UndoNumericSetting";
  *(v2 + 32) = 59;
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

uint64_t sub_268E4F488(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "oldValue";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "settingName";
  *(v2 + 32) = 11;
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

unint64_t sub_268E4F608()
{
  v2 = qword_2802DD608;
  if (!qword_2802DD608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD608);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4F754@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E4F354(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E4F78C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4F23C(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_268E4F810()
{
  v2 = qword_2802DD610;
  if (!qword_2802DD610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4F95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E4F488(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E4F994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4F2C8(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_268E4FA34()
{
  v2 = qword_2802DD618;
  if (!qword_2802DD618)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4FAC8()
{
  v2 = qword_2802DD620;
  if (!qword_2802DD620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD620);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E4FB44(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "setFlashlightHandler";
  *(v2 + 8) = 20;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

BOOL sub_268E4FC50(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "flashlightUnavailable";
  *(v2 + 8) = 21;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268E4FDA8()
{
  v2 = qword_2802DD628;
  if (!qword_2802DD628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD628);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E4FEF4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E4FB44(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E4FF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4FC1C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_268E4FFB0()
{
  v2 = qword_2802DD630;
  if (!qword_2802DD630)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD630);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E500FC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E4FC50(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E5013C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4FD28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E5016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268DABAF0(a3);
  if (a3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
    v9 = sub_268E50A20;
    v10 = v4;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v9)
  {
    v13 = v9;
    v14 = v10;
  }

  else
  {
    v13 = sub_268E50498;
    v14 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v13;
  *(v8 + 24) = v14;
  sub_268F9A814();
  sub_268F9AEF4();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];
  sub_268F9AE24();
  MEMORY[0x277D82BD8](v6);
  sub_268F9A804();
  MEMORY[0x277D82BD8](v7);
  sub_268E4FC1C();
  sub_268E4FD28();
  sub_268F9A7F4();
}

double sub_268E50498(char *a1)
{
  v22 = 0;
  v8 = *a1;
  v22 = *a1 & 1;
  v16 = sub_268F9B284();
  v1 = sub_268DCA0F0();
  v15 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = 32;
  v12 = swift_allocObject();
  *(v12 + 16) = 8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_268E50B90;
  *(v10 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_268CD7608;
  *(v13 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v14 = v2;

  *v14 = sub_268CD7600;
  v14[1] = v11;

  v14[2] = sub_268CD7600;
  v14[3] = v12;

  v14[4] = sub_268CD7614;
  v14[5] = v13;
  sub_268CD0F7C();

  if (os_log_type_enabled(v15, v16))
  {
    buf = sub_268F9B3A4();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v6 = sub_268CD5448(0, v4, v4);
    v7 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v21 = buf;
    v20 = v6;
    v19 = v7;
    sub_268CD549C(2, &v21);
    sub_268CD549C(1, &v21);
    v17 = sub_268CD7600;
    v18 = v11;
    sub_268CD54B0(&v17, &v21, &v20, &v19);
    v17 = sub_268CD7600;
    v18 = v12;
    sub_268CD54B0(&v17, &v21, &v20, &v19);
    v17 = sub_268CD7614;
    v18 = v13;
    sub_268CD54B0(&v17, &v21, &v20, &v19);
    _os_log_impl(&dword_268CBE000, v15, v16, "ABC result: %s", buf, 0xCu);
    sub_268CD54FC(v6, 0, v4);
    sub_268CD54FC(v7, 1, MEMORY[0x277D84F70] + 8);
    sub_268F9B384();
  }

  else
  {
  }

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

void *sub_268E50918(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

unint64_t sub_268E50A80()
{
  v2 = qword_2802DD638;
  if (!qword_2802DD638)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E50B14()
{
  v2 = qword_2802DD640;
  if (!qword_2802DD640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD640);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E50B9C()
{
  if (qword_2802DB688 != -1)
  {
    swift_once();
  }

  return &qword_2802F14B8;
}

uint64_t sub_268E50BFC()
{
  type metadata accessor for SidekickUtils();
  result = sub_268CDA260();
  qword_2802F14B8 = result;
  return result;
}

uint64_t sub_268E50C58()
{
  v1 = *sub_268E50B9C();

  return v1;
}

uint64_t sub_268E50C88(void *a1)
{
  v24 = 0;
  v25 = a1;
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v17 = [a1 targetDevice], *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0], v17))
  {
    v2 = [v17 deviceModel];
    v16 = v2;
    if (v2)
    {
      v12 = sub_268F9AE24();
      v13 = v3;
      MEMORY[0x277D82BD8](v16);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    MEMORY[0x277D82BD8](v17);
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v8 = sub_268F9AEF4();
  v9 = v4;

  v22[0] = v10;
  v22[1] = v11;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  if (!v11)
  {
    if (!*(&v23 + 1))
    {
      sub_268CD9D30(v22);
      v7 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_268D28874(v22, &v21);
  if (!*(&v23 + 1))
  {
    sub_268CD9D30(&v21);
LABEL_18:
    sub_268D28550(v22);
    v7 = 0;
    goto LABEL_17;
  }

  v20 = v21;
  v19 = v23;
  v6 = MEMORY[0x26D62DB50](v21, *(&v21 + 1), v23, *(&v23 + 1));
  sub_268CD9D30(&v19);
  sub_268CD9D30(&v20);
  sub_268CD9D30(v22);
  v7 = v6;
LABEL_17:

  return v7 & 1;
}

uint64_t sub_268E50F4C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "appearance";
  *(v2 + 8) = 10;
  *(v2 + 16) = 2;
  *(v2 + 24) = "wifi";
  *(v2 + 32) = 4;
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

uint64_t sub_268E51140(char a1)
{
  if (a1)
  {
    sub_268D35434();

    v2 = sub_268D39294();

    return v2;
  }

  else
  {
    sub_268D35434();

    v3 = sub_268D36508();

    return v3;
  }
}

void sub_268E5124C()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  sub_268CD0F7C();
}

unint64_t sub_268E512E8()
{
  v2 = qword_2802DD648;
  if (!qword_2802DD648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD648);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E51434@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E50F4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E5146C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E510B4(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E51530(uint64_t a1, uint64_t a2)
{
  sub_268E51588();
  sub_268E51604();
  sub_268E512E8();
  return sub_268F9A4A4();
}

unint64_t sub_268E51588()
{
  v2 = qword_2802DD650;
  if (!qword_2802DD650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51604()
{
  v2 = qword_2802DD658;
  if (!qword_2802DD658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E516AC()
{
  v2 = qword_2802DD660;
  if (!qword_2802DD660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51740()
{
  v2 = qword_2802DD668;
  if (!qword_2802DD668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E517D4()
{
  v2 = qword_2802DD670;
  if (!qword_2802DD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD678, &qword_268FA4CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51874()
{
  v2 = qword_2802DD680;
  if (!qword_2802DD680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD680);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E518F0()
{
  if (qword_280FE6330 != -1)
  {
    swift_once();
  }

  return &qword_280FE8348;
}

uint64_t sub_268E51950@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_268E519A4(void *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_268CDF978(v4, (v1 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E51A14()
{
  type metadata accessor for SiriReferenceResolutionConverter();
  sub_268E51A88(v1);
  result = sub_268D2B2E8(v1);
  qword_280FE8348 = result;
  return result;
}

uint64_t sub_268E51A88@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268F9ABD4();
  result = sub_268F9ABC4();
  a1[3] = v2;
  a1[4] = MEMORY[0x277D5FDD8];
  *a1 = result;
  return result;
}

uint64_t sub_268E51AE0()
{
  v1 = *sub_268E518F0();

  return v1;
}

uint64_t sub_268E51B10(uint64_t a1)
{
  v10 = a1;
  v19 = 0;
  v18 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v2, v3, v4);
  v12 = &v8 - v11;
  v19 = v5;
  v18 = v1;
  sub_268E51CD8(v5, &v8 - v11);
  v13 = sub_268F9ACE4();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  if ((*(v14 + 48))(v12, 1) == 1)
  {
    sub_268D59D2C(v12);
    v9 = 0uLL;
  }

  else
  {
    *&v8 = sub_268F9ACC4();
    *(&v8 + 1) = v6;
    (*(v14 + 8))(v12, v13);
    v9 = v8;
  }

  v16 = v9;
  if (*(&v9 + 1))
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268E51CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v133 = a1;
  v98 = "Siri Reference Resolution resolve call was unsuccessful";
  v99 = "Siri Reference Resolution resolve call was successful but returned ambiguous or empty matches";
  v100 = sub_268E53084;
  v101 = sub_268CD7608;
  v102 = sub_268CD7600;
  v103 = sub_268CD7600;
  v104 = sub_268CD7614;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v151 = 0;
  v152 = 0;
  v105 = 0;
  v115 = 0;
  v106 = sub_268F9AC74();
  v108 = *(v106 - 8);
  v107 = v106 - 8;
  v109 = v108;
  v110 = *(v108 + 64);
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v112 = &v47[-v111];
  v113 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v47[-v111], v8, v9);
  v114 = &v47[-v113];
  v152 = &v47[-v113];
  v116 = sub_268F9ACF4();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115, v10, v11, v12);
  v120 = &v47[-v119];
  v121 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, &v47[-v119], v15, v16);
  v122 = &v47[-v121];
  v151 = &v47[-v121];
  v123 = sub_268F9AC94();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123, v17, v18, v19);
  v127 = &v47[-v126];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v20, v21, v22);
  v130 = &v47[-v129];
  v131 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v25, v26, v27);
  v132 = &v47[-v131];
  v150 = &v47[-v131];
  v149 = v28;
  v148 = v2;

  if (!v133)
  {
    v46 = sub_268F9ACE4();
    return (*(*(v46 - 8) + 56))(v96, 1);
  }

  v95 = v133;
  v92 = v133;
  v147 = v133;
  v88 = v97 + 16;
  v89 = &v143;
  swift_beginAccess();
  v93 = v144;
  sub_268CDE730(v88, v144);
  swift_endAccess();
  v90 = v145;
  v91 = v146;
  __swift_project_boxed_opaque_existential_1(v93, v145);
  v94 = sub_268F9ABE4();
  __swift_destroy_boxed_opaque_existential_0(v93);
  if ((v94 & 1) == 0)
  {
LABEL_14:
    v45 = sub_268F9ACE4();
    (*(*(v45 - 8) + 56))(v96, 1);
  }

  v83 = v97 + 16;
  v84 = &v139;
  swift_beginAccess();
  v87 = v140;
  sub_268CDE730(v83, v140);
  swift_endAccess();
  v85 = v141;
  v86 = v142;
  __swift_project_boxed_opaque_existential_1(v87, v141);

  v29 = v124;
  *v127 = v92;
  (*(v29 + 104))();
  sub_268F9ABF4();
  (*(v124 + 8))(v127, v123);
  __swift_destroy_boxed_opaque_existential_0(v87);
  sub_268E52E58(v132, v130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v130;
    v48 = sub_268F9B284();
    v50 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v49 = sub_268F9B734();
    sub_268F9AC14(v48, &dword_268CBE000, v50, v98, 55, 2);

    MEMORY[0x277D82BD8](v50);

    goto LABEL_13;
  }

  (*(v117 + 32))(v122, v130, v116);
  v151 = v122;
  (*(v117 + 16))(v120);
  if ((*(v117 + 88))(v120, v116) != *MEMORY[0x277D5FEC0])
  {
    v52 = sub_268F9B284();
    v54 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v53 = sub_268F9B734();
    sub_268F9AC14(v52, &dword_268CBE000, v54, v99, 93, 2);

    v44 = MEMORY[0x277D82BD8](v54);
    v56 = *(v117 + 8);
    v55 = v117 + 8;
    v56(v120, v116, v44);
    (v56)(v122, v116);
LABEL_13:
    sub_268E52F2C(v132);
    goto LABEL_14;
  }

  (*(v117 + 96))(v120, v116);
  v66 = v109;
  v69 = *(v108 + 32);
  v68 = v108 + 32;
  v69(v114, v120, v106);
  v152 = v114;
  v82 = sub_268F9B284();
  v81 = *sub_268DC842C();
  MEMORY[0x277D82BE0](v81);
  (*(v108 + 16))(v112, v114, v106);
  v67 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v72 = 7;
  v73 = swift_allocObject();
  v69((v73 + v67), v112, v106);
  v70 = 17;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v71 = 32;
  v30 = swift_allocObject();
  v31 = v73;
  v74 = v30;
  *(v30 + 16) = v100;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v74;
  v78 = v32;
  *(v32 + 16) = v101;
  *(v32 + 24) = v33;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v77 = sub_268F9B734();
  v79 = v34;

  v35 = v75;
  v36 = v79;
  *v79 = v102;
  v36[1] = v35;

  v37 = v76;
  v38 = v79;
  v79[2] = v103;
  v38[3] = v37;

  v39 = v78;
  v40 = v79;
  v79[4] = v104;
  v40[5] = v39;
  sub_268CD0F7C();

  if (os_log_type_enabled(v81, v82))
  {
    v41 = v105;
    v59 = sub_268F9B3A4();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v60 = sub_268CD5448(0, v58, v58);
    v61 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v62 = &v138;
    v138 = v59;
    v63 = &v137;
    v137 = v60;
    v64 = &v136;
    v136 = v61;
    sub_268CD549C(2, &v138);
    sub_268CD549C(1, v62);
    v134 = v102;
    v135 = v75;
    sub_268CD54B0(&v134, v62, v63, v64);
    v65 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v134 = v103;
      v135 = v76;
      sub_268CD54B0(&v134, &v138, &v137, &v136);
      v57 = 0;
      v134 = v104;
      v135 = v78;
      sub_268CD54B0(&v134, &v138, &v137, &v136);
      _os_log_impl(&dword_268CBE000, v81, v82, "Siri Reference Resolution resolve call was successful with resolved entity match: %s", v59, 0xCu);
      sub_268CD54FC(v60, 0, v58);
      sub_268CD54FC(v61, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v81);
  sub_268F9AC64();
  v42 = sub_268F9ACE4();
  (*(*(v42 - 8) + 56))(v96, 0, 1);
  (*(v108 + 8))(v114, v106);
  (*(v117 + 8))(v122, v116);
  sub_268E52F2C(v132);
}

void *sub_268E52E58(id *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v3 = *a1;
    *a2 = v5;
  }

  else
  {
    v2 = sub_268F9ACF4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

id *sub_268E52F2C(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_268F9ACF4();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_268E52FC8(uint64_t a1)
{
  v5 = a1;
  v8 = sub_268F9AC74();
  v7 = *(v8 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8, v5, v8, v1);
  v9 = &v4 - v6;
  (*(v7 + 16))(v2);
  sub_268E53498();
  return sub_268F9AE74();
}

uint64_t sub_268E53084()
{
  v1 = *(sub_268F9AC74() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268E52FC8(v2);
}

uint64_t sub_268E530E8@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = "Creation of was common_setting entity was unsuccessful";
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v20 = 0;
  v19 = sub_268F9A434();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v15 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v18 = &v7 - v15;
  v27 = v1;
  sub_268F9A614();
  v21 = sub_268F9A604();
  v26 = v21;
  (*(v16 + 104))(v18, *MEMORY[0x277D5EE50], v19);
  sub_268F9A5F4();
  (*(v16 + 8))(v18, v19);
  sub_268F9A494();
  v22 = sub_268F9A484();
  v25 = v22;

  sub_268F9A2B4();

  v23 = MEMORY[0x26D62CE60](v22);
  if (v23)
  {
    v12 = v23;
    v11 = v23;
    v24 = v23;

    sub_268E51CD8(v11, v13);
  }

  else
  {
    HIDWORD(v7) = sub_268F9B284();
    v9 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v10 = 0;
    v8 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v7), &dword_268CBE000, v9, v14, 54, 2);

    MEMORY[0x277D82BD8](v9);
    v6 = sub_268F9ACE4();
    (*(*(v6 - 8) + 56))(v13, 1);
  }
}

unint64_t sub_268E53498()
{
  v2 = qword_2802DD690;
  if (!qword_2802DD690)
  {
    sub_268F9AC74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E53518()
{
  if (qword_280FE6018 != -1)
  {
    swift_once();
  }

  return v1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 4;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

const char *sub_268E535DC(char a1)
{
  if (a1 && a1 == 9)
  {
    return "ResponseFramework";
  }

  else
  {
    return "SiriSettings";
  }
}

const char *sub_268E5374C(char a1)
{
  switch(a1)
  {
    case 0:
      return "settings_on_sirix";
    case 1:
      return "settings_RF";
    case 2:
      return "settings_undo";
    case 3:
      return "settings_Hybrid_on_macOS";
    case 4:
      return "settings_get_set_hotspot";
    case 5:
      return "settings_standby_punchout";
    case 6:
      return "settings_tell_me_generated";
    case 7:
      return "settings_tell_me_generated_suggestions";
    case 8:
      return "settings_tell_me_generated_contextual";
    case 9:
      return "SMART";
  }

  return "settings_immersion";
}

BOOL sub_268E53A44(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      case 9:
        v4 = 9;
        break;
      default:
        v4 = 10;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      case 9:
        v3 = 9;
        break;
      default:
        v3 = 10;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268E54038()
{
  v2 = qword_280FE5C80;
  if (!qword_280FE5C80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E540B4()
{
  v2 = qword_2802DD698;
  if (!qword_2802DD698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD698);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSiriXEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 0;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isRFEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 1;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isUndoEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 2;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isHybridOnMacEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 3;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isStandByPunchoutEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 5;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSMARTEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 9;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSettingsTellMeGeneratedEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 6;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isTellMeGeneratedSuggestionsEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 7;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isTellMeGeneratedContextualEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 8;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isImmersionEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 10;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t sub_268E54650(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 10) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 245;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 11;
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

_BYTE *sub_268E547B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF5)
  {
    v5 = ((a3 + 10) >> 8) + 1;
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

  if (a2 > 0xF5)
  {
    v4 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
      *result = a2 + 10;
    }
  }

  return result;
}

unint64_t sub_268E54B80()
{
  v2 = qword_2802DD6A0;
  if (!qword_2802DD6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E54BFC()
{
  type metadata accessor for SetSiriHandler();
  result = sub_268E41DF0(1);
  qword_2802F14C0 = result;
  return result;
}

uint64_t *sub_268E54C60()
{
  if (qword_2802DB690 != -1)
  {
    swift_once();
  }

  return &qword_2802F14C0;
}

uint64_t sub_268E54CC0()
{
  v1 = *sub_268E54C60();

  return v1;
}

uint64_t sub_268E54CF0(uint64_t a1, void (*a2)(id))
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "SetSiriHandler handling intent", 30, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(17);
  v9 = sub_268DAB158(0, v7, v3);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268E54E68()
{
  type metadata accessor for SetAXColorFiltersColorTintHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14C8 = result;
  return result;
}

uint64_t *sub_268E54ED0()
{
  if (qword_2802DB698 != -1)
  {
    swift_once();
  }

  return &qword_2802F14C8;
}

uint64_t sub_268E54F30()
{
  v1 = *sub_268E54ED0();

  return v1;
}

uint64_t sub_268E54F60(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXColorFiltersColorTintHandler handling intent", 49, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3ED64();

  v4 = sub_268DBD5C4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E55184, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E55184, v8);
}

uint64_t sub_268E55114(char a1)
{

  sub_268D3ED94(a1 & 1);
}

uint64_t sub_268E551D0()
{
  type metadata accessor for SetDictationHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14D0 = result;
  return result;
}

uint64_t *sub_268E55238()
{
  if (qword_2802DB6A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14D0;
}

uint64_t sub_268E55298()
{
  v1 = *sub_268E55238();

  return v1;
}

uint64_t sub_268E552C8(uint64_t a1, void (*a2)(id))
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "Non macOS! SetDictationHandler handling intent; Siri set setting", 64, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(17);
  v9 = sub_268DAB158(0, v7, v3);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268E55440()
{
  type metadata accessor for SetBackgroundSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14D8 = result;
  return result;
}

uint64_t *sub_268E554A8()
{
  if (qword_2802DB6A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F14D8;
}

uint64_t sub_268E55508()
{
  v1 = *sub_268E554A8();

  return v1;
}

uint64_t sub_268E55538(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetBackgroundSoundsHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3DC04();

  v4 = sub_268DBF054();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9 & 1, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E5575C, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E5575C, v8);
}

uint64_t sub_268E556EC(char a1)
{

  sub_268D3DC44(a1 & 1);
}

id sub_268E5580C(double a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  MEMORY[0x277D82BE0](v2);
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id sub_268E5589C()
{
  sub_268D34FD4();
  [v1 doubleValue];
  return sub_268E3E3B0();
}

uint64_t sub_268E55918()
{
  type metadata accessor for SetAXVoiceControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14E0 = result;
  return result;
}

uint64_t *sub_268E55980()
{
  if (qword_2802DB6B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14E0;
}

uint64_t sub_268E559E0()
{
  v1 = *sub_268E55980();

  return v1;
}

uint64_t sub_268E55A10(void *a1, void (*a2)(void), uint64_t a3)
{
  v42 = 0;
  v39 = 0;
  v45 = a1;
  v43 = a2;
  v44 = a3;
  v32 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v33 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v32, &dword_268CBE000, v33, "SetAXVoiceControlHandler handling intent", 40, 2);

  v35 = [a1 settingMetadata];
  if (v35 && (v28 = [v35 targetDevice], *&v4 = MEMORY[0x277D82BD8](v35).n128_u64[0], v28))
  {
    v5 = [v28 deviceName];
    v27 = v5;
    if (v5)
    {
      v23 = sub_268F9AE24();
      v24 = v6;
      MEMORY[0x277D82BD8](v27);
      v25 = v23;
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    MEMORY[0x277D82BD8](v28);
    v21 = v25;
    v22 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v7;

  v40[0] = v21;
  v40[1] = v22;
  *&v41 = v19;
  *(&v41 + 1) = v20;
  if (!v22)
  {
    if (!*(&v41 + 1))
    {
      sub_268CD9D30(v40);
      v18 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_268D28874(v40, &v38);
  if (!*(&v41 + 1))
  {
    sub_268CD9D30(&v38);
LABEL_18:
    sub_268D28550(v40);
    v18 = 0;
    goto LABEL_17;
  }

  v37 = v38;
  v36 = v41;
  v17 = MEMORY[0x26D62DB50](v38, *(&v38 + 1), v41, *(&v41 + 1));
  sub_268CD9D30(&v36);
  sub_268CD9D30(&v37);
  sub_268CD9D30(v40);
  v18 = v17;
LABEL_17:

  v39 = v18 & 1;

  v15 = sub_268D3EFDC(v18 & 1);

  v8 = sub_268DBDBE4();
  v11 = *v8;
  v12 = v8[1];
  v13 = *(v8 + 16);
  v14 = *(v31 + 24);

  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 24) = v18 & 1;
  v16 = v9;
  sub_268DAAB84(v15, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E55F4C, v9, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E55F4C, v16);
}

uint64_t sub_268E55EBC(char a1, uint64_t a2, char a3)
{

  sub_268D3F048(a1 & 1, a3 & 1);
}

uint64_t sub_268E55FA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v30 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6A8, &qword_268FA5170);
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v21 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v2, v3, v4);
  v36 = &v20 - v21;
  v55 = &v20 - v21;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B0, &qword_268FA5178);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v22 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v5, v6, v7);
  v26 = &v20 - v22;
  v23 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v20 - v22, v10, v11);
  v41 = &v20 - v23;
  v54 = &v20 - v23;
  v53 = v12;
  v44 = &v52;
  sub_268F99C44();
  v43 = &v51;
  sub_268F99764();
  v25 = v50;
  sub_268CDE730(v44, v50);
  v24 = v49;
  sub_268CDE730(v43, v49);
  sub_268E56408(v25, v24, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B8, &qword_268FA5180);
  (*(v39 + 16))(v26, v41, v42);
  v38 = sub_268F995F4();
  v48 = v38;
  v29 = 0;
  v27 = type metadata accessor for OpenSettingFlowStrategy();
  v13 = sub_268CDA260();
  v28 = &v47;
  v47 = v13;

  sub_268E56A78();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v33 = sub_268F9AB34();
  v46 = v33;
  v32 = sub_268F998B4();
  v45 = v32;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6C8, &qword_268FA5188);
  v31[3] = v14;
  v15 = sub_268E56AF8();
  v16 = v31;
  v17 = v15;
  v18 = v32;
  v31[4] = v17;
  *v16 = v18;

  (*(v34 + 8))(v36, v37);

  (*(v39 + 8))(v41, v42);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_268E56408@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v78 = a3;
  v82 = a1;
  v81 = a2;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v92 = 0;
  v71 = 0;
  v31 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v57 = &v30 - v31;
  v41 = sub_268F99274();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v32 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v6, v7, v8);
  v40 = &v30 - v32;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B0, &qword_268FA5178);
  v66 = *(v84 - 8);
  v67 = v84 - 8;
  v34 = *(v66 + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71, v81, v9, v10);
  v68 = &v30 - v33;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12, &v30 - v33, v13);
  v83 = &v30 - v35;
  v100 = &v30 - v35;
  v99 = v14;
  v98 = v15;
  v72 = sub_268DA96FC();
  v73 = sub_268DB7E34();
  sub_268F995E4();
  (*(v66 + 32))(v83, v68, v84);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6D8, qword_268FA5190);
  v46 = 1;
  v59 = sub_268F9AEF4();
  v52 = v16;
  v37 = v82[3];
  v36 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v37);
  sub_268F99784();
  v42 = sub_268F99254();
  v43 = v17;
  (*(v38 + 8))(v40, v41);
  v51 = v97;
  v97[0] = v42;
  v97[1] = v43;
  v44 = 1;
  v18 = sub_268F9AEF4();
  v50 = v96;
  v96[0] = v18;
  v96[1] = v19;
  v20 = sub_268F9AEF4();
  v49 = v95;
  v95[0] = v20;
  v95[1] = v21;
  v45 = sub_268D58980();
  v47 = MEMORY[0x277D837D0];
  sub_268D58944();
  v53 = sub_268F9B3E4();
  v54 = v22;
  sub_268CD9D30(v49);
  sub_268CD9D30(v50);
  sub_268CD9D30(v51);
  v55 = v94;
  sub_268CDE730(v81, v94);
  v56 = v93;
  sub_268CDE730(v82, v93);
  sub_268D58A5C(v72, v73);
  v58 = sub_268E56B80(v72, v73, v23, v24);
  v25 = sub_268E56BD0();
  v77 = sub_268E6C368(v59, v52, v53, v54, v55, v56, v57, v58, v25);
  v92 = v77;
  v80 = *(v66 + 16);
  v79 = v66 + 16;
  v80(v68, v83, v84);
  v64 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  v60 = v91;
  sub_268CDE730(v82, v91);
  v61 = v90;
  sub_268CDE730(v81, v90);

  v62 = v89;
  sub_268D58CB4(v89);
  v63 = v88;
  sub_268D58CF4(v88);
  v26 = sub_268EC75B0(v60, v61, v77, v62, v63);
  v65 = &v87;
  v87 = v26;
  sub_268E56C08();
  v69 = sub_268D58F00();
  v70 = v27;

  v86 = *(v66 + 8);
  v85 = v66 + 8;
  v86(v68, v84);
  sub_268F995B4();
  sub_268F9AB54();
  v74 = sub_268F9AB34();
  v75 = sub_268F99594();
  v76 = v28;

  sub_268F995C4();

  v80(v78, v83, v84);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);
  return (v86)(v83, v84);
}

unint64_t sub_268E56A78()
{
  v2 = qword_2802DD6C0;
  if (!qword_2802DD6C0)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E56AF8()
{
  v2 = qword_2802DD6D0;
  if (!qword_2802DD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD6C8, &qword_268FA5188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E56BD0()
{
  v1 = *sub_268F6FA4C();

  return v1;
}

unint64_t sub_268E56C08()
{
  v2 = qword_2802DD6E0;
  if (!qword_2802DD6E0)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E56C9C()
{
  if (qword_280FE57A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8240;
}

uint64_t sub_268E56CFC()
{
  type metadata accessor for SnippetProvider();
  result = sub_268E56D58();
  qword_280FE8240 = result;
  return result;
}

uint64_t sub_268E56D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6E8, &qword_268FA51C0);
  sub_268F9B734();
  v16 = v1;
  *v1 = 0;
  v26 = *MEMORY[0x277D48910];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48910]);
  *(v16 + 1) = sub_268F9AE24();
  *(v16 + 2) = v2;
  v16[24] = 4;
  v25 = *MEMORY[0x277D48918];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48918]);
  *(v16 + 4) = sub_268F9AE24();
  *(v16 + 5) = v3;
  v16[48] = 12;
  v24 = *MEMORY[0x277D48920];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48920]);
  *(v16 + 7) = sub_268F9AE24();
  *(v16 + 8) = v4;
  v16[72] = 16;
  v23 = *MEMORY[0x277D48928];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48928]);
  *(v16 + 10) = sub_268F9AE24();
  *(v16 + 11) = v5;
  v16[96] = 28;
  v22 = *MEMORY[0x277D48938];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48938]);
  *(v16 + 13) = sub_268F9AE24();
  *(v16 + 14) = v6;
  v16[120] = 29;
  v21 = *MEMORY[0x277D48940];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48940]);
  *(v16 + 16) = sub_268F9AE24();
  *(v16 + 17) = v7;
  v16[144] = 38;
  v20 = *MEMORY[0x277D48958];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48958]);
  *(v16 + 19) = sub_268F9AE24();
  *(v16 + 20) = v8;
  v16[168] = 49;
  v19 = *MEMORY[0x277D48968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48968]);
  *(v16 + 22) = sub_268F9AE24();
  *(v16 + 23) = v9;
  v16[192] = 48;
  v18 = *MEMORY[0x277D48960];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48960]);
  *(v16 + 25) = sub_268F9AE24();
  *(v16 + 26) = v10;
  v16[216] = 51;
  v17 = *MEMORY[0x277D48970];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48970]);
  *(v16 + 28) = sub_268F9AE24();
  *(v16 + 29) = v11;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  sub_268E12E98();
  *(v0 + 16) = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6F0, &qword_268FA51C8);
  sub_268F9B734();
  v27 = v12;
  *v12 = 2;
  v28 = *MEMORY[0x277D48930];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48930]);
  *(v27 + 1) = sub_268F9AE24();
  *(v27 + 2) = v13;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v28);
  sub_268E571E0();
  v14 = sub_268F9ADA4();
  result = v29;
  *(v29 + 24) = v14;
  return result;
}

unint64_t sub_268E571E0()
{
  v2 = qword_280FE3F48;
  if (!qword_280FE3F48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F48);
    return WitnessTable;
  }

  return v2;
}

id sub_268E57258(char *a1, uint64_t a2)
{

  sub_268E12E98();
  sub_268F9ADC4();

  if (!v10)
  {
    return 0;
  }

  sub_268E57478();
  v8 = sub_268CF0C44();
  MEMORY[0x277D82BE0](a2);
  [v8 setValue_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BE0](v8);
  sub_268F9B734();
  v4 = v2;

  v4[3] = MEMORY[0x277D837D0];
  *v4 = v9;
  v4[1] = v10;
  sub_268CD0F7C();
  v5 = sub_268F9B004();

  [v8 setSettingKeys_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v8);

  return v8;
}

unint64_t sub_268E57478()
{
  v2 = qword_2802DD6F8;
  if (!qword_2802DD6F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD6F8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268E574DC(char *a1, uint64_t a2)
{

  sub_268E571E0();
  sub_268F9ADC4();

  if (!v10)
  {
    return 0;
  }

  sub_268E576F4();
  v8 = sub_268CF0C44();
  v4 = sub_268E5589C();
  [v8 setValue_];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BE0](v8);
  sub_268F9B734();
  v5 = v2;

  v5[3] = MEMORY[0x277D837D0];
  *v5 = v9;
  v5[1] = v10;
  sub_268CD0F7C();
  v6 = sub_268F9B004();

  [v8 setSettingKeys_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);

  return v8;
}

unint64_t sub_268E576F4()
{
  v2 = qword_2802DD700;
  if (!qword_2802DD700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD700);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_268E57758(char *a1)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  if (v10 == 65)
  {
    return 0;
  }

  else
  {
    v8 = v10;

    v5 = v10;
    sub_268E12E98();
    sub_268F9ADC4();
    v3 = v7;

    v4[0] = v6;
    v4[1] = v7;
    sub_268CD9D30(v4);
    return v3 != 0;
  }
}

BOOL sub_268E5787C(char *a1)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  if (v10 == 13)
  {
    return 0;
  }

  else
  {
    v8 = v10;

    v5 = v10;
    sub_268E571E0();
    sub_268F9ADC4();
    v3 = v7;

    v4[0] = v6;
    v4[1] = v7;
    sub_268CD9D30(v4);
    return v3 != 0;
  }
}

uint64_t sub_268E579A0()
{
  sub_268CD7930((v0 + 16));
  sub_268CD7930((v0 + 24));
  return v2;
}

uint64_t *sub_268E57A20()
{
  if (qword_280FE3B40 != -1)
  {
    swift_once();
  }

  return &qword_280FE80E0;
}

uint64_t sub_268E57A80()
{
  type metadata accessor for GetBackgroundSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80E0 = result;
  return result;
}

uint64_t sub_268E57AE8()
{
  v1 = *sub_268E57A20();

  return v1;
}

double sub_268E57B18(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetBackgroundSoundsHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBC924();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E58034, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E57D30(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D3DC04();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
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

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t sub_268E5808C()
{
  type metadata accessor for FlowProvider();
  sub_268D58CB4(v1);
  result = sub_268D2B2E8(v1);
  qword_280FE5BE0 = result;
  return result;
}

uint64_t *sub_268E58100()
{
  if (qword_280FE5BD8 != -1)
  {
    swift_once();
  }

  return &qword_280FE5BE0;
}

uint64_t static FlowProvider.shared.getter()
{
  v1 = *sub_268E58100();

  return v1;
}

double sub_268E581C8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v157 = a2;
  v164 = a1;
  v206 = 0;
  v205 = 0;
  v203 = 0;
  v201 = 0;
  v194 = 0;
  v192 = 0;
  v190 = 0;
  v188 = 0;
  v184 = 0;
  v176 = 0;
  v161 = 0;
  v159 = (*(*(sub_268F99214() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v160 = v40 - v159;
  v162 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v161, v6, v7, v8);
  v163 = v40 - v162;
  v165 = sub_268F99274();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v164, v9, v10, v11);
  v169 = v40 - v168;
  v206 = v12;
  v205 = v2;
  if (sub_268E5918C(v12))
  {
    v155 = type metadata accessor for ToggleBinarySettingDIFlow();
    v154 = &v170;
    sub_268E5915C();
    v156 = sub_268F214DC(v154);
    v157[3] = v155;
    v13 = sub_268E5AA20();
    v15 = v157;
    v16 = v13;
    v17 = v156;
    v157[4] = v16;
    *v15 = v17;
    return result;
  }

  v153 = sub_268E594F4(v164);

  if (v153)
  {
    v150 = v171;
    sub_268CDE730(v158 + 16, v171);
    v149 = v172;
    v148 = v173;
    __swift_project_boxed_opaque_existential_1(v150, v172);
    v151 = (*(v148 + 24))(v149);
    __swift_destroy_boxed_opaque_existential_0(v150);
    v152 = v151;
  }

  else
  {
    v152 = 0;
  }

  v147 = v152;

  if (v147)
  {
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD720, &qword_268FA5278);
    v139 = sub_268F9AEF4();
    v133 = v18;
    sub_268F99264();
    v134 = sub_268F99254();
    v135 = v19;
    (*(v166 + 8))(v169, v165);
    v136 = &v178;
    sub_268F99764();
    v137 = &v177;
    sub_268F99C44();
    v141 = 0;
    v125 = sub_268D55AB4();
    v124 = sub_268E5A8BC();
    v138 = sub_268D589F8();
    sub_268D58A5C(v125, v124);
    v126 = sub_268D58A84();
    v127 = sub_268D58B9C();
    v128 = sub_268D58ABC();
    v129 = sub_268D58AF4();
    sub_268D5A488(v125, v124);
    v130 = sub_268D58B64();
    v131 = sub_268D58C0C();
    v132 = sub_268D5A4B0();
    v20 = sub_268D5A4E8();
    v140 = &v39;
    v146 = sub_268CDEAF0(v139, v133, v134, v135, v136, v137, v138, v163, v126, v127, v128, v129, v160, v130, v131, v132, v20);
    v176 = v146;
    v144 = type metadata accessor for UndoBinarySettingFlow(v141);

    v142 = &v175;
    sub_268F99C44();
    v143 = &v174;
    sub_268F99B64();
    v145 = sub_268E801A8(v146, v142, v143);
    v157[3] = v144;
    v21 = sub_268E5A9A0();
    v22 = v145;
    v23 = v157;
    v157[4] = v21;
    *v23 = v22;

    return result;
  }

  v122 = sub_268E5985C(v164);

  if (v122)
  {
    v119 = v179;
    sub_268CDE730(v158 + 16, v179);
    v118 = v180;
    v117 = v181;
    __swift_project_boxed_opaque_existential_1(v119, v180);
    v120 = (*(v117 + 24))(v118);
    __swift_destroy_boxed_opaque_existential_0(v119);
    v121 = v120;
  }

  else
  {
    v121 = 0;
  }

  v116 = v121;

  if (v116)
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD708, &qword_268FA5270);
    v109 = sub_268F9AEF4();
    v103 = v25;
    sub_268F99264();
    v104 = sub_268F99254();
    v105 = v26;
    (*(v166 + 8))(v169, v165);
    v106 = &v186;
    sub_268F99764();
    v107 = &v185;
    sub_268F99C44();
    v110 = 0;
    v97 = sub_268D55AB4();
    v96 = sub_268E5A8BC();
    v108 = sub_268D589F8();
    sub_268D58A5C(v97, v96);
    v98 = sub_268D58A84();
    v99 = sub_268D58ABC();
    v100 = sub_268D58AF4();
    v101 = sub_268D58B2C();
    v102 = sub_268D58B64();
    v27 = sub_268D58B9C();
    v115 = sub_268EC9E48(v109, v103, v104, v105, v106, v107, v108, v163, v98, v99, v100, v101, v102, v27);
    v184 = v115;
    v113 = type metadata accessor for UndoNumericSettingFlow();

    v111 = &v183;
    sub_268F99C44();
    v112 = &v182;
    sub_268F99B64();
    v114 = sub_268E61EB4(v115, v111, v112);
    v157[3] = v113;
    v28 = sub_268E5A920();
    v29 = v114;
    v30 = v157;
    v157[4] = v28;
    *v30 = v29;

    return result;
  }

  v93 = &v204;
  sub_268E59174(v24);
  v94 = sub_268E59BC4(v164, v93);
  __swift_destroy_boxed_opaque_existential_0(v93);
  v203 = v94;
  if (!v94)
  {
    goto LABEL_63;
  }

  v92 = v94;
  v91 = v94;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277D82BE0](v94);
      if (v94)
      {
        v81 = v94;
        v79 = v94;
        objc_opt_self();
        v80 = swift_dynamicCastObjCClass();
        if (v80)
        {
          v78 = v80;
        }

        else
        {
          MEMORY[0x277D82BD8](v79);
          v78 = 0;
        }

        v77 = v78;
      }

      else
      {
        v77 = 0;
      }

      v76 = v77;
      if (v77)
      {
        v75 = v76;
        v74 = v76;
        v190 = v76;
        v73 = v189;
        sub_268D57874(v76, v189);
        sub_268CDF978(v73, __dst);
        MEMORY[0x277D82BD8](v74);
        goto LABEL_64;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x277D82BE0](v94);
        if (v94)
        {
          v72 = v94;
          v70 = v94;
          objc_opt_self();
          v71 = swift_dynamicCastObjCClass();
          if (v71)
          {
            v69 = v71;
          }

          else
          {
            MEMORY[0x277D82BD8](v70);
            v69 = 0;
          }

          v68 = v69;
        }

        else
        {
          v68 = 0;
        }

        v67 = v68;
        if (v68)
        {
          v66 = v67;
          v65 = v67;
          v192 = v67;
          v64 = v191;
          sub_268F45EDC(v67, v191);
          sub_268CDF978(v64, __dst);
          MEMORY[0x277D82BD8](v65);
          goto LABEL_64;
        }
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x277D82BE0](v94);
          if (v94)
          {
            v63 = v94;
            v61 = v94;
            objc_opt_self();
            v62 = swift_dynamicCastObjCClass();
            if (v62)
            {
              v60 = v62;
            }

            else
            {
              MEMORY[0x277D82BD8](v61);
              v60 = 0;
            }

            v59 = v60;
          }

          else
          {
            v59 = 0;
          }

          v58 = v59;
          if (v59)
          {
            v57 = v58;
            v56 = v58;
            v194 = v58;
            v55 = v193;
            sub_268E55FA4(v58, v193);
            sub_268CDF978(v55, __dst);
            MEMORY[0x277D82BD8](v56);
            goto LABEL_64;
          }
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x277D82BE0](v94);
            if (v94)
            {
              v54 = v94;
              v52 = v94;
              objc_opt_self();
              v53 = swift_dynamicCastObjCClass();
              if (v53)
              {
                v51 = v53;
              }

              else
              {
                MEMORY[0x277D82BD8](v52);
                v51 = 0;
              }

              v50 = v51;
            }

            else
            {
              v50 = 0;
            }

            v49 = v50;
            if (v50)
            {
              v48 = v49;
              v47 = v49;
              v201 = v49;
              v45 = &v199;
              sub_268F99C44();
              v44 = &v198;
              sub_268F99764();
              v46 = v200;
              sub_268DBF874(v45, v44, v47, v200);
              __swift_destroy_boxed_opaque_existential_0(v44);
              __swift_destroy_boxed_opaque_existential_0(v45);
              sub_268CDF978(v46, __dst);
              MEMORY[0x277D82BD8](v47);
              goto LABEL_64;
            }
          }
        }
      }
    }

LABEL_63:
    v31 = v94;
    v32 = v157;
    *v157 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 0;
    *&result = MEMORY[0x277D82BD8](v31).n128_u64[0];
    return result;
  }

  MEMORY[0x277D82BE0](v94);
  if (v94)
  {
    v90 = v94;
    v88 = v94;
    objc_opt_self();
    v89 = swift_dynamicCastObjCClass();
    if (v89)
    {
      v87 = v89;
    }

    else
    {
      MEMORY[0x277D82BD8](v88);
      v87 = 0;
    }

    v86 = v87;
  }

  else
  {
    v86 = 0;
  }

  v85 = v86;
  if (!v86)
  {
    goto LABEL_63;
  }

  v84 = v85;
  v83 = v85;
  v188 = v85;
  v82 = v187;
  sub_268D5A520(v85, v187);
  sub_268CDF978(v82, __dst);
  MEMORY[0x277D82BD8](v83);
LABEL_64:
  v43 = __dst;
  v41 = v195;
  sub_268CDE730(__dst, v195);
  v40[1] = v196;
  v40[0] = v197;
  __swift_project_boxed_opaque_existential_1(v41, v196);
  v33 = sub_268F99604();
  v42 = sub_268DADCB4(v33);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v157[3] = &unk_28798E160;
  v34 = sub_268E5A844();
  v35 = v42;
  v36 = v157;
  v37 = v34;
  v38 = v43;
  v157[4] = v37;
  *v36 = v35;
  __swift_destroy_boxed_opaque_existential_0(v38);
  *&result = MEMORY[0x277D82BD8](v94).n128_u64[0];
  return result;
}