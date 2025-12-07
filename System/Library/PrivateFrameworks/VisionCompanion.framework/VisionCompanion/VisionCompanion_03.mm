uint64_t sub_2330D3434()
{
  sub_2330D21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE320, &qword_2330F6330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2330F62F0;
  sub_2330939BC(v34);
  v1 = v35;
  v2 = v36;
  v3 = __swift_project_boxed_opaque_existential_1(v34, v35);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v2 + 8);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 32));
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0Tm, v3, v1);
  sub_2330924B0(v31);
  v5 = v32;
  v6 = v33;
  v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(v6 + 8);
  v8 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  sub_2330921FC(v28);
  v9 = v29;
  v10 = v30;
  v11 = __swift_project_boxed_opaque_existential_1(v28, v29);
  *(v0 + 136) = v9;
  *(v0 + 144) = *(v10 + 8);
  v12 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  *(v0 + 176) = &type metadata for ExampleServer;
  *(v0 + 184) = &off_28486B8C8;
  *(v0 + 152) = sub_233093744();
  sub_233092764(v25);
  v13 = v26;
  v14 = v27;
  v15 = __swift_project_boxed_opaque_existential_1(v25, v26);
  *(v0 + 216) = v13;
  *(v0 + 224) = *(v14 + 8);
  v16 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 192));
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  *(v0 + 256) = &type metadata for LaunchEventServer;
  *(v0 + 264) = &off_284869B08;
  *(v0 + 232) = sub_2330934C8();
  *(v0 + 240) = v17;
  *(v0 + 296) = type metadata accessor for PushNotificationServer();
  *(v0 + 304) = &off_28486C888;
  *(v0 + 272) = sub_233092CCC();
  sub_233093210(v23);
  v22 = v24;
  v18 = v24;
  v19 = __swift_project_boxed_opaque_existential_1(v23, v24);
  *(v0 + 336) = v22;
  v20 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 312));
  (*(*(v18 - 8) + 16))(v20, v19, v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v0;
}

uint64_t sub_2330D371C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2330D3764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2330D37C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2330D3834()
{
  result = qword_2814EAC20;
  if (!qword_2814EAC20)
  {
    sub_233099620(255, &qword_2814EAC18, 0x277CF0810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAC20);
  }

  return result;
}

uint64_t sub_2330D389C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2330D3910()
{
  sub_233092A18((v0 + 16));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2330D3A04;
  v4 = *(v0 + 64);

  return MEMORY[0x2821DF758](101, &unk_2330F6410, v4, v1, v2);
}

uint64_t sub_2330D3A04()
{

  return MEMORY[0x2822009F8](sub_2330D3B1C, 0, 0);
}

uint64_t sub_2330D3B1C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6420;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = &unk_2330F6430;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2330D3C74;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF740](102, &unk_2330F6440, v5, v2, v7, v3, v8);
}

uint64_t sub_2330D3C74()
{

  return MEMORY[0x2822009F8](sub_2330D3D8C, 0, 0);
}

uint64_t sub_2330D3D8C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = &unk_2330F6450;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2330D3EB8;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF740](103, &unk_2330F6458, v4, v2, v6, v3, v7);
}

uint64_t sub_2330D3EB8()
{

  return MEMORY[0x2822009F8](sub_2330D3FD0, 0, 0);
}

uint64_t sub_2330D3FD0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[14] = v4;
  *(v4 + 16) = &unk_2330F6468;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2330D40FC;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF750](104, &unk_2330F6478, v4, v2, v6, v3, v7);
}

uint64_t sub_2330D40FC()
{

  return MEMORY[0x2822009F8](sub_2330D4214, 0, 0);
}

uint64_t sub_2330D4214()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6488;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = &unk_2330F6498;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_2330D4378;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF738](105, &unk_2330F64A8, v5, v2, v7, v8, v3);
}

uint64_t sub_2330D4378()
{

  return MEMORY[0x2822009F8](sub_2330D4490, 0, 0);
}

uint64_t sub_2330D4490()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[18] = v4;
  *(v4 + 16) = &unk_2330F64B8;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_2330D45C8;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF738](106, &unk_2330F64C0, v4, v2, v6, v7, v3);
}

uint64_t sub_2330D45C8()
{

  return MEMORY[0x2822009F8](sub_2330D46E0, 0, 0);
}

uint64_t sub_2330D46E0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[20] = v4;
  *(v4 + 16) = &unk_2330F64D0;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_2330D480C;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF748](107, &unk_2330F64E0, v4, v2, v6, v3, v7);
}

uint64_t sub_2330D480C()
{

  return MEMORY[0x2822009F8](sub_2330D4924, 0, 0);
}

uint64_t sub_2330D4924()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F64F0;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[22] = v5;
  *(v5 + 16) = &unk_2330F6500;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_2330D4A88;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF730](108, &unk_2330F6510, v5, v2, v7, v8, v3);
}

uint64_t sub_2330D4A88()
{

  return MEMORY[0x2822009F8](sub_2330D4BA0, 0, 0);
}

uint64_t sub_2330D4BA0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[24] = v4;
  *(v4 + 16) = &unk_2330F6520;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_2330D4CD8;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF730](109, &unk_2330F6528, v4, v2, v6, v7, v3);
}

uint64_t sub_2330D4CD8()
{

  return MEMORY[0x2822009F8](sub_23308D118, 0, 0);
}

uint64_t sub_2330D4E0C()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0x6F566F5464696F76, 0xEC00000029286469);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330D4F04()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0x61566F5464696F76, 0xED0000292865756CLL);
  v2 = *(v0 + 8);

  return v2(7);
}

uint64_t sub_2330D4FE8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330D6FE8;

  return v4();
}

uint64_t sub_2330D50D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2330D6FE0;

  return v5();
}

uint64_t sub_2330D51D8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000010, 0x80000002330F8910);
  v2 = *(v0 + 8);

  return v2(21, 0);
}

uint64_t sub_2330D52C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330D6C0C(a1);
}

uint64_t sub_2330D5354(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233088E00;

  return v6(v3);
}

uint64_t sub_2330D5468()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000014, 0x80000002330F88F0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3);
}

uint64_t sub_2330D554C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2330D5640;

  return v6(a1);
}

uint64_t sub_2330D5640(uint64_t a1)
{
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v4 = a1;
    v5 = 0;
  }

  return v6(v4, v5);
}

uint64_t sub_2330D5744(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2330D583C;

  return v7(v4);
}

uint64_t sub_2330D583C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2330D5980()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000017, 0x80000002330F88D0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3, 0);
}

uint64_t sub_2330D5A68(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330D6DBC(a1, a2 & 1);
}

uint64_t sub_2330D5B04(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return v7(v3, v4);
}

uint64_t sub_2330D5C04(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2330D5C28, 0, 0);
}

uint64_t sub_2330D5C28()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD00000000000001ALL, 0x80000002330F88B0);
  if (v1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2330D5D20(uint64_t a1, char a2, int *a3)
{
  v8 = a3 + *a3;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2330D6FE8;

  return (v8)(a1, a2 & 1);
}

uint64_t sub_2330D5E20(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2330D6FE0;

  return v8(v4, v5);
}

uint64_t sub_2330D5F24(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2330D5F48, 0, 0);
}

uint64_t sub_2330D5F48()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD00000000000001DLL, 0x80000002330F8890);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return v3(v4, v1 & 1);
}

uint64_t sub_2330D6034()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330D38F0(v2);
}

uint64_t sub_2330D60C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D4DF0();
}

uint64_t sub_2330D6158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330A89E0;

  return sub_2330D4EE8();
}

uint64_t sub_2330D61E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330D6FE4;

  return sub_2330D4FE8(v2);
}

uint64_t sub_2330D6294(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330D50D0(a1, v4);
}

uint64_t sub_2330D634C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330D6FE4;

  return sub_2330D51BC();
}

uint64_t sub_2330D63DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330D52C0(a1);
}

uint64_t sub_2330D6474(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330D5354(a1, v4);
}

uint64_t sub_2330D6528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330A89E0;

  return sub_2330D5448(a1);
}

uint64_t sub_2330D65C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330D6FE4;

  return sub_2330D554C(a1, v4);
}

uint64_t sub_2330D6674(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_233088E00;

  return sub_2330D5744(a1, a2, v6);
}

uint64_t sub_2330D673C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330D6FE4;

  return sub_2330D5960(a1);
}

uint64_t sub_2330D67D4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330D5A68(a1, a2 & 1);
}

uint64_t sub_2330D687C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330D5B04(a1, v4);
}

uint64_t sub_2330D6930(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330A8008;

  return sub_2330D5C04(a1, a2 & 1);
}

uint64_t sub_2330D69D8(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2330D6FE4;

  return sub_2330D5D20(a1, a2 & 1, v6);
}

uint64_t sub_2330D6A9C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_233088E00;

  return sub_2330D5E20(a1, a2, v6);
}

uint64_t sub_2330D6B64(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330A7C24;

  return sub_2330D5F24(a1, a2 & 1);
}

uint64_t sub_2330D6C2C()
{
  v10 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_233098F44(0x53656C706D617845, 0xED00007265767265, &v9);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_233084000, v2, v3, "%s received %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2330D6DBC(uint64_t a1, char a2)
{
  *(v2 + 25) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2330D6DE0, 0, 0);
}

uint64_t sub_2330D6DE0()
{
  v14 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x53656C706D617845, 0xED00007265767265, &v13);
    *(v6 + 12) = 2080;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE3D8, &qword_2330F6538);
    v8 = sub_2330F2650();
    v10 = sub_233098F44(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_233084000, v2, v3, "%s received %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2330D6FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2330AE488(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2330AD10C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2330AEFE8();
        v14 = v16;
      }

      result = sub_2330ADFC8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2330D70E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_233085FF8(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_2330AEA28(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2330952BC(a1, &qword_27DDDDD70, &qword_2330F41F8);
    v7 = sub_2330AD044(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_2330AF908();
        v11 = v13;
      }

      sub_233085FF8((*(v11 + 56) + 40 * v9), v14);
      sub_2330AE30C(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2330952BC(v14, &qword_27DDDDD70, &qword_2330F41F8);
  }

  return result;
}

id sub_2330D71F0()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 defaultWorkspace];
  if (result)
  {
    v6 = result;
    [result addObserver_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2330D7354(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_2330F1EB0();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D7424, v2, 0);
}

uint64_t sub_2330D7424()
{
  v1 = v0[15];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[13];
    v2 = v0[14];

    sub_2330AD10C(v3, v2);
    LOBYTE(v2) = v4;

    if (v2)
    {
      sub_2330D0250();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();

      v6 = v0[1];

      __asm { BRAA            X1, X16 }
    }
  }

  v8 = v0[13];
  v7 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE450, &qword_2330F6670);
  v9 = swift_allocObject();
  v0[20] = v9;
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = -1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2330AE488(v9, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v12;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2330D75FC, v9, 0);
}

uint64_t sub_2330D75FC()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_2330F2EF0();
  sub_2330F1E80();
  sub_2330F1E90();
  v5 = *(v3 + 8);
  v0[21] = v5;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = *(v1 + 120);
  if (v6 != 255)
  {
    if ((v6 & 1) == 0)
    {
      v18 = v0[15];
      (v0[21])(v0[19], v0[16]);
      v19 = sub_2330D7908;
      v20 = v18;
LABEL_13:

      return MEMORY[0x2822009F8](v19, v20, 0);
    }

    v7 = *(v0[20] + 112);
    v0[11] = v7;
    sub_2330D9128(v7, 1);
    sub_2330D9128(v7, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    swift_willThrowTypedImpl();
    v0[12] = v7;
    v8 = sub_2330F2DA0();
    v9 = v0[21];
    v10 = v0[19];
    v11 = v0[16];
    if (v8)
    {
      v12 = v8;
      sub_2330D9134(v7, v6);
      v9(v10, v11);
      sub_2330D9134(v7, v6);
    }

    else
    {
      v12 = swift_allocError();
      *v24 = v7;
      sub_2330D9134(v7, v6);
      v9(v10, v11);
    }

LABEL_12:
    v0[23] = v12;
    v20 = v0[15];
    v19 = sub_2330D79D4;
    goto LABEL_13;
  }

  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[16];
  sub_2330F1E80();
  sub_2330D942C();
  v16 = sub_2330F2590();
  v13(v14, v15);
  if ((v16 & 1) == 0)
  {
    v21 = v0[21];
    v22 = v0[19];
    v23 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE460, &qword_2330F6678);
    sub_2330D9484();
    v12 = swift_allocError();
    swift_willThrow();
    v21(v22, v23);
    goto LABEL_12;
  }

  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_2330D7A48;

  return MEMORY[0x282200490]();
}

uint64_t sub_2330D7908()
{
  v1 = v0[14];
  v2 = v0[13];
  swift_beginAccess();

  sub_2330D6FEC(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2330D79D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330D7A48()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_2330D7B58, v1, 0);
}

uint64_t sub_2330D7B58()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 120);
  if (v2 != 255)
  {
    if ((v2 & 1) == 0)
    {
      v14 = *(v0 + 120);
      (*(v0 + 168))(*(v0 + 152), *(v0 + 128));
      v15 = sub_2330D7908;
      v16 = v14;
LABEL_13:

      return MEMORY[0x2822009F8](v15, v16, 0);
    }

    v3 = *(v1 + 112);
    *(v0 + 88) = v3;
    sub_2330D9128(v3, 1);
    sub_2330D9128(v3, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    swift_willThrowTypedImpl();
    *(v0 + 96) = v3;
    v4 = sub_2330F2DA0();
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    if (v4)
    {
      v8 = v4;
      sub_2330D9134(v3, v2);
      v5(v6, v7);
      sub_2330D9134(v3, v2);
    }

    else
    {
      v8 = swift_allocError();
      *v20 = v3;
      sub_2330D9134(v3, v2);
      v5(v6, v7);
    }

LABEL_12:
    *(v0 + 184) = v8;
    v16 = *(v0 + 120);
    v15 = sub_2330D79D4;
    goto LABEL_13;
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  sub_2330F1E80();
  sub_2330D942C();
  v12 = sub_2330F2590();
  v9(v10, v11);
  if ((v12 & 1) == 0)
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE460, &qword_2330F6678);
    sub_2330D9484();
    v8 = swift_allocError();
    swift_willThrow();
    v17(v18, v19);
    goto LABEL_12;
  }

  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_2330D7A48;

  return MEMORY[0x282200490]();
}

uint64_t sub_2330D7E04()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    [v1 removeObserver_];

    swift_defaultActor_destroy();
    v1 = v0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200960](v1);
}

uint64_t sub_2330D7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D7F54, a4, 0);
}

uint64_t sub_2330D7F54()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v1 + 32;
    swift_beginAccess();
    v5 = 0x2789C2000uLL;
    v29 = v3;
    do
    {
      sub_2330995C4(v4, (v0 + 2));
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v6 = v0[13];
        v7 = [v6 *(v5 + 3368)];
        if (v7)
        {
          v8 = v7;
          v9 = sub_2330F25F0();
          v11 = v10;

          v12 = *(v3 + 112);
          if (*(v12 + 16))
          {

            v13 = sub_2330AD10C(v9, v11);
            v15 = v14;

            if (v15)
            {
              v16 = v0[17];
              v30 = v0[16];
              v17 = *(*(v12 + 56) + 8 * v13);

              v18 = sub_2330F2890();
              v19 = *(v18 - 8);
              (*(v19 + 56))(v16, 1, 1, v18);
              v20 = swift_allocObject();
              *(v20 + 16) = 0;
              *(v20 + 24) = 0;
              *(v20 + 32) = v17;
              *(v20 + 40) = 0;
              *(v20 + 48) = 0;
              sub_233088708(v16, v30);
              LODWORD(v16) = (*(v19 + 48))(v30, 1, v18);

              v21 = v0[16];
              if (v16 == 1)
              {
                sub_2330952BC(v0[16], &unk_27DDDE860, &qword_2330F3BB0);
              }

              else
              {
                sub_2330F2880();
                (*(v19 + 8))(v21, v18);
              }

              v22 = *(v20 + 16);
              swift_unknownObjectRetain();

              v3 = v29;
              if (v22)
              {
                swift_getObjectType();
                v23 = sub_2330F2840();
                v25 = v24;
                swift_unknownObjectRelease();
              }

              else
              {
                v23 = 0;
                v25 = 0;
              }

              sub_2330952BC(v0[17], &unk_27DDDE860, &qword_2330F3BB0);
              v26 = swift_allocObject();
              *(v26 + 16) = &unk_2330F6660;
              *(v26 + 24) = v20;
              if (v25 | v23)
              {
                v0[6] = 0;
                v0[7] = 0;
                v0[8] = v23;
                v0[9] = v25;
              }

              v5 = 0x2789C2000;
              swift_task_create();
            }

            else
            {

              v5 = 0x2789C2000;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_2330D832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D83D4, 0, 0);
}

uint64_t sub_2330D83D4()
{
  v1 = *(v0 + 112);
  sub_2330D0250();
  *(v0 + 144) = swift_allocError();
  *v2 = 1;

  return MEMORY[0x2822009F8](sub_2330D8460, v1, 0);
}

uint64_t sub_2330D8460()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = v1 + 32;
    swift_beginAccess();
    v30 = v3;
    do
    {
      sub_2330995C4(v4, v0 + 16);
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 104);
        v6 = [v5 bundleIdentifier];
        if (v6)
        {
          v7 = v6;
          v8 = sub_2330F25F0();
          v10 = v9;

          v11 = *(v3 + 112);
          if (*(v11 + 16) && (, v12 = sub_2330AD10C(v8, v10), v14 = v13, , (v14 & 1) != 0))
          {
            v15 = *(v0 + 136);
            v31 = *(v0 + 144);
            v16 = *(v0 + 128);
            v17 = *(*(v11 + 56) + 8 * v12);

            v18 = sub_2330F2890();
            v19 = *(v18 - 8);
            (*(v19 + 56))(v15, 1, 1, v18);
            v20 = swift_allocObject();
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            *(v20 + 32) = v17;
            *(v20 + 40) = v31;
            *(v20 + 48) = 1;
            sub_233088708(v15, v16);
            LODWORD(v15) = (*(v19 + 48))(v16, 1, v18);
            v21 = v31;

            v22 = *(v0 + 128);
            if (v15 == 1)
            {
              sub_2330952BC(*(v0 + 128), &unk_27DDDE860, &qword_2330F3BB0);
            }

            else
            {
              sub_2330F2880();
              (*(v19 + 8))(v22, v18);
            }

            v23 = *(v20 + 16);
            swift_unknownObjectRetain();

            v3 = v30;
            if (v23)
            {
              swift_getObjectType();
              v24 = sub_2330F2840();
              v26 = v25;
              swift_unknownObjectRelease();
            }

            else
            {
              v24 = 0;
              v26 = 0;
            }

            sub_2330952BC(*(v0 + 136), &unk_27DDDE860, &qword_2330F3BB0);
            v27 = swift_allocObject();
            *(v27 + 16) = &unk_2330F6640;
            *(v27 + 24) = v20;
            if (v26 | v24)
            {
              *(v0 + 48) = 0;
              *(v0 + 56) = 0;
              *(v0 + 64) = v24;
              *(v0 + 72) = v26;
            }

            swift_task_create();
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2330D8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D88F8, 0, 0);
}

uint64_t sub_2330D88F8()
{
  v1 = *(v0 + 112);
  sub_2330D0250();
  *(v0 + 144) = swift_allocError();
  *v2 = 2;

  return MEMORY[0x2822009F8](sub_2330D8984, v1, 0);
}

uint64_t sub_2330D8984()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = v1 + 32;
    swift_beginAccess();
    v30 = v3;
    do
    {
      sub_2330995C4(v4, v0 + 16);
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 104);
        v6 = [v5 bundleIdentifier];
        if (v6)
        {
          v7 = v6;
          v8 = sub_2330F25F0();
          v10 = v9;

          v11 = *(v3 + 112);
          if (*(v11 + 16) && (, v12 = sub_2330AD10C(v8, v10), v14 = v13, , (v14 & 1) != 0))
          {
            v15 = *(v0 + 136);
            v31 = *(v0 + 144);
            v16 = *(v0 + 128);
            v17 = *(*(v11 + 56) + 8 * v12);

            v18 = sub_2330F2890();
            v19 = *(v18 - 8);
            (*(v19 + 56))(v15, 1, 1, v18);
            v20 = swift_allocObject();
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            *(v20 + 32) = v17;
            *(v20 + 40) = v31;
            *(v20 + 48) = 1;
            sub_233088708(v15, v16);
            LODWORD(v15) = (*(v19 + 48))(v16, 1, v18);
            v21 = v31;

            v22 = *(v0 + 128);
            if (v15 == 1)
            {
              sub_2330952BC(*(v0 + 128), &unk_27DDDE860, &qword_2330F3BB0);
            }

            else
            {
              sub_2330F2880();
              (*(v19 + 8))(v22, v18);
            }

            v23 = *(v20 + 16);
            swift_unknownObjectRetain();

            v3 = v30;
            if (v23)
            {
              swift_getObjectType();
              v24 = sub_2330F2840();
              v26 = v25;
              swift_unknownObjectRelease();
            }

            else
            {
              v24 = 0;
              v26 = 0;
            }

            sub_2330952BC(*(v0 + 136), &unk_27DDDE860, &qword_2330F3BB0);
            v27 = swift_allocObject();
            *(v27 + 16) = &unk_2330F6618;
            *(v27 + 24) = v20;
            if (v26 | v24)
            {
              *(v0 + 48) = 0;
              *(v0 + 56) = 0;
              *(v0 + 64) = v24;
              *(v0 + 72) = v26;
            }

            swift_task_create();
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2330D8D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_2330F27D0();
  v12 = sub_2330F2890();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = v11;

  sub_2330878BC(0, 0, v10, a5, v13);
}

uint64_t sub_2330D8E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D8850(a1, v4, v5, v7, v6);
}

unint64_t sub_2330D8F58()
{
  result = qword_2814EAC58;
  if (!qword_2814EAC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC58);
  }

  return result;
}

uint64_t sub_2330D8FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = v6;
  *(v5 + 32) = *(a5 + 8);
  return MEMORY[0x2822009F8](sub_2330D8FD0, a4, 0);
}

uint64_t sub_2330D8FD0()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = *(v3 + 120);
  *(v3 + 120) = v1;
  sub_2330D9128(v2, v1);
  sub_2330D9134(v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

void sub_2330D9050(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2330D905C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330D8FA4(a1, v4, v5, v6, v1 + 5);
}

id sub_2330D9128(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2330D9134(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_2330D9050(a1, a2 & 1);
  }
}

uint64_t sub_2330D914C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D832C(a1, v4, v5, v7, v6);
}

uint64_t sub_2330D920C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2330877C8;

  return sub_2330D8FA4(a1, v4, v5, v6, v1 + 5);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2330D9320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D7EA8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  sub_2330D9050(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

unint64_t sub_2330D942C()
{
  result = qword_27DDDE458;
  if (!qword_27DDDE458)
  {
    sub_2330F1EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE458);
  }

  return result;
}

unint64_t sub_2330D9484()
{
  result = qword_27DDDE468;
  if (!qword_27DDDE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE460, &qword_2330F6678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE468);
  }

  return result;
}

unint64_t sub_2330D94FC()
{
  result = qword_27DDDE480;
  if (!qword_27DDDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE480);
  }

  return result;
}

char *sub_2330D9550()
{
  v1 = v0;
  sub_2330F1FF0();
  v2 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v3 = sub_2330F25C0();

  v4 = [v2 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] = v4;
  v5 = sub_2330F1FE0();
  v6 = &v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement];
  *v6 = v5;
  v6[1] = v7;
  sub_2330F21F0();
  *&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_transportDispatchService] = sub_2330F21E0();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for XPCServer();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] setDelegate_];
  return v8;
}

id sub_2330D9668()
{
  v1 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v3 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] setDelegate_];
  [*&v1[v3] invalidate];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_2330D98C8(void *a1)
{
  v2 = v1;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  v5 = a1;
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    v11 = sub_2330C025C(0xD000000000000057, 0x80000002330F8AB0, 0xD000000000000014, 0x80000002330F8B30);
    v13 = sub_233098F44(v11, v12, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_233084000, v6, v7, "%s Accepting new connection: %@", v8, 0x16u);
    sub_2330952BC(v9, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v17 = [v15 interfaceWithProtocol_];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v29 = sub_2330DBB14;
  v30 = v18;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2330CE2D8;
  v28 = &block_descriptor_9;
  v19 = _Block_copy(&v25);
  v20 = v5;

  [v20 setInterruptionHandler_];
  _Block_release(v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v29 = sub_2330DBB50;
  v30 = v21;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2330CE2D8;
  v28 = &block_descriptor_55;
  v22 = _Block_copy(&v25);
  v23 = v20;

  [v23 setInvalidationHandler_];
  _Block_release(v22);
  return [v23 activate];
}

void sub_2330D9CA0(void *a1, const char *a2)
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  v5 = a1;
  oslog = sub_2330F23A0();
  v6 = sub_2330F2960();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = [v5 serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2330F25F0();
      v13 = v12;
    }

    else
    {
      v13 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
    }

    v14 = sub_233098F44(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_233084000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }
}

uint64_t sub_2330D9EF8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6574617669746361, 0xEA00000000002928);
  [*(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) activate];
  v3 = *(v0 + 8);

  return v3();
}

id sub_2330D9FE8()
{
  v1 = *v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v3 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) setDelegate_];
  v4 = *(v1 + v3);

  return [v4 invalidate];
}

uint64_t sub_2330DA0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA14C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA1F4()
{
  v1 = sub_2330F2000();
  sub_2330DAFC8();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D78348], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330DA2C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA568(int a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 48) = a1;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2330DA5E8, 0, 0);
}

uint64_t sub_2330DA5E8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x726F70736E617274, 0xED0000293A5F2874);
  v5 = (*MEMORY[0x277D78448] + MEMORY[0x277D78448]);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2330DA730;
  v3 = *(v0 + 48);

  return v5(v3, 0, 0xF000000000000000);
}

uint64_t sub_2330DA730(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(v6 + 40) = v2;

  if (!v2)
  {

    if (a2 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_2330F1DF0();
      sub_2330B5294(a1, a2);
    }

    v8 = *(v6 + 24);
    (v8)[2](v8, v7, 0);

    _Block_release(v8);
    v9 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330DA8E4, 0, 0);
}

uint64_t sub_2330DA8E4()
{
  v1 = *(v0 + 40);

  v2 = sub_2330F1D50();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2330DAB14(int a1, void *a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 64) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_2330F1E00();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = v11;

  return MEMORY[0x2822009F8](sub_2330DABD0, 0, 0);
}

uint64_t sub_2330DABD0()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0xD000000000000012, 0x80000002330F8B10);
  v7 = (*MEMORY[0x277D78448] + MEMORY[0x277D78448]);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2330DAD14;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);

  return v7(v5, v3, v4);
}

uint64_t sub_2330DAD14(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(v6 + 56) = v2;

  if (!v2)
  {
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);

    sub_2330B5294(v8, v7);
    if (a2 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_2330F1DF0();
      sub_2330B5294(a1, a2);
    }

    v10 = *(v6 + 24);
    (v10)[2](v10, v9, 0);

    _Block_release(v10);
    v11 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330DAED8, 0, 0);
}

uint64_t sub_2330DAED8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_2330B5294(v3, v2);
  v4 = sub_2330F1D50();

  v5 = *(v0 + 24);
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_2330DAFC8()
{
  result = qword_27DDDE510;
  if (!qword_27DDDE510)
  {
    sub_2330F2000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE510);
  }

  return result;
}

uint64_t sub_2330DB020()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2330877C8;

  return sub_2330DAB14(v2, v3, v4, v5);
}

uint64_t sub_2330DB0E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_233088E00;

  return v6();
}

uint64_t sub_2330DB1CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233088E00;

  return sub_2330DB0E4(v2, v3, v4);
}

uint64_t sub_2330DB28C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2330877C8;

  return v7();
}

uint64_t sub_2330DB374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330DB28C(a1, v4, v5, v6);
}

uint64_t sub_2330DB440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_233088708(a3, v24 - v11);
  v13 = sub_2330F2890();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2330952BC(v12, &unk_27DDDE860, &qword_2330F3BB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2330F2880();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2330F2840();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2330F2670() + 32;
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

    sub_2330952BC(a3, &unk_27DDDE860, &qword_2330F3BB0);

    return v22;
  }

LABEL_8:
  sub_2330952BC(a3, &unk_27DDDE860, &qword_2330F3BB0);
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

uint64_t sub_2330DB72C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_233094328(a1, v4);
}

uint64_t sub_2330DB7E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_233094328(a1, v4);
}

uint64_t sub_2330DB89C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233088E00;

  return sub_2330DA568(v2, v4, v3);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2330DB990(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement];
  v5 = *&v2[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement + 8];
  v6 = sub_2330DBE00(v4, v5);
  if (v6)
  {
    sub_2330D98C8(a1);
  }

  else
  {
    if (qword_2814EAD90 != -1)
    {
      swift_once();
    }

    v7 = sub_2330F23C0();
    __swift_project_value_buffer(v7, qword_2814EBDB0);
    v8 = v2;
    v9 = sub_2330F23A0();
    v10 = sub_2330F2960();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_233098F44(v4, v5, &v14);
      _os_log_impl(&dword_233084000, v9, v10, "Rejecting connection missing entitlement: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x23839A490](v12, -1, -1);
      MEMORY[0x23839A490](v11, -1, -1);
    }
  }

  return v6 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2330DBB84(char a1, void *a2)
{
  sub_2330DBCA8();
  v3 = a2;
  v4 = sub_2330F2A90();
  v5 = [v4 encryptedValues];
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v6 = [v4 encryptedValues];
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_2330DBCA8()
{
  result = qword_27DDDDFA0;
  if (!qword_27DDDDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDDDFA0);
  }

  return result;
}

unint64_t sub_2330DBCF4(void *a1)
{
  v2 = [a1 encryptedValues];
  v3 = sub_2330F25C0();
  v4 = [v2 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
    if (swift_dynamicCast())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = [a1 recordID];
  return v4;
}

uint64_t sub_2330DBE00(uint64_t a1, uint64_t a2)
{
  v3 = sub_2330F25C0();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_2330F2B50();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v6;
    }
  }

  else
  {
    sub_2330DBEC8(v9);
    return 0;
  }

  return result;
}

uint64_t sub_2330DBEC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDD78, &qword_2330F4200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2330DBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_27DDDDBF8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DDDE530;
  v10 = *algn_27DDDE538;
  v11 = qword_27DDDDC00;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27DDDE540;
  v13 = *algn_27DDDE548;
  sub_2330B4224(qword_27DDDE540, *algn_27DDDE548);
  if (qword_27DDDDC08 != -1)
  {
    swift_once();
  }

  v14 = qword_27DDDE550;
  v15 = *algn_27DDDE558;
  sub_2330B4224(qword_27DDDE550, *algn_27DDDE558);
  if (qword_27DDDDC10 != -1)
  {
    swift_once();
  }

  v16 = qword_27DDDE560;
  v17 = *algn_27DDDE568;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0x4920656C706D6153;
  a5[3] = 0xEB000000002E636ELL;
  a5[4] = 0xD000000000000016;
  a5[5] = 0x80000002330F8BC0;
  a5[6] = 0x534F656C706D6173;
  a5[7] = 0xE800000000000000;
  a5[8] = 808335673;
  a5[9] = 0xE400000000000000;
  a5[10] = 0x6139395A3939;
  a5[11] = 0xE600000000000000;
  a5[12] = a3;
  a5[13] = a4;
  a5[14] = v9;
  a5[15] = v10;
  a5[16] = v12;
  a5[17] = v13;
  a5[18] = v14;
  a5[19] = v15;
  a5[20] = v16;
  a5[21] = v17;
  sub_2330B4224(v16, v17);
}

void sub_2330DC14C()
{
  v0 = [objc_opt_self() stringFromByteCount:0x370000000 countStyle:0];
  v1 = sub_2330F25F0();
  v3 = v2;

  qword_27DDDE530 = v1;
  *algn_27DDDE538 = v3;
}

uint64_t sub_2330DC1BC()
{
  result = sub_2330DC360();
  qword_27DDDE540 = result;
  *algn_27DDDE548 = v1;
  return result;
}

uint64_t sub_2330DC230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v9 = sub_2330F2640();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2330E9D4C(a2, a3);
  if (v15)
  {
    sub_2330F2630();
    v16 = sub_2330F2600();
    v18 = v17;

    result = (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  *a4 = v16;
  *a5 = v18;
  return result;
}

uint64_t sub_2330DC360()
{
  v0 = [objc_opt_self() configurationWithTextStyle_];
  v1 = sub_2330F25C0();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  updated = _s15VisionCompanion23SoftwareUpdateUtilitiesV15dataFromUIImagey10Foundation4DataVSgSo0H0CSgFZ_0(v4);

  return updated;
}

uint64_t sub_2330DC48C(uint64_t a1, unint64_t a2)
{
  sub_2330C04B8();
  v4 = (sub_2330F2B10() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    a1 = *v5;
    a2 = v5[1];
  }

  else
  {
  }

  sub_2330C050C(46, 0xE100000000000000, a1, a2);
  v6 = sub_2330F2780();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x238399480](v6, v8, v10, v12);

  return v13;
}

unint64_t sub_2330DC5E4(uint64_t a1)
{
  result = sub_2330DC60C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2330DC60C()
{
  result = qword_27DDDE570;
  if (!qword_27DDDE570)
  {
    sub_2330DC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE570);
  }

  return result;
}

unint64_t sub_2330DC664()
{
  result = qword_27DDDE578[0];
  if (!qword_27DDDE578[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DDDE578);
  }

  return result;
}

uint64_t sub_2330DC6B4(void *a1)
{
  sub_2330F2EC0();
  result = sub_2330F2AE0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2330DC764()
{
  v1 = *(*v0 + 112);
  sub_2330F2EC0();
  v2 = sub_2330F2AE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2330DC824()
{
  sub_2330DC764();

  return MEMORY[0x282200960](v0);
}

VisionCompanion::DaemonDefault __swiftcall DaemonDefault.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t DaemonDefault.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE680, &qword_2330F6AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330DCACC();
  sub_2330F2ED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  v10 = sub_2330F2D20();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_2330F2D20();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2330DCACC()
{
  result = qword_27DDDE688;
  if (!qword_27DDDE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE688);
  }

  return result;
}

uint64_t sub_2330DCB20()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_2330DCB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_2330F2DC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2330F2DC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2330DCC28(uint64_t a1)
{
  v2 = sub_2330DCACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2330DCC64(uint64_t a1)
{
  v2 = sub_2330DCACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DaemonDefault.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE690, &qword_2330F6AB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330DCACC();
  sub_2330F2EE0();
  v13 = 0;
  v9 = v11[3];
  sub_2330F2D50();
  if (!v9)
  {
    v12 = 1;
    sub_2330F2D50();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2330DCE64(uint64_t a1, uint64_t a2)
{
  sub_2330DD05C();
  sub_2330DD0B0();
  return sub_2330F2180();
}

uint64_t sub_2330DCEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2330DD05C();
  sub_2330DD0B0();
  return sub_2330F2190();
}

unint64_t sub_2330DCF58()
{
  result = qword_27DDDE698;
  if (!qword_27DDDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE698);
  }

  return result;
}

unint64_t sub_2330DCFB0()
{
  result = qword_27DDDE6A0;
  if (!qword_27DDDE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6A0);
  }

  return result;
}

unint64_t sub_2330DD008()
{
  result = qword_27DDDE6A8;
  if (!qword_27DDDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6A8);
  }

  return result;
}

unint64_t sub_2330DD05C()
{
  result = qword_27DDDE6B0;
  if (!qword_27DDDE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6B0);
  }

  return result;
}

unint64_t sub_2330DD0B0()
{
  result = qword_27DDDE6B8;
  if (!qword_27DDDE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6B8);
  }

  return result;
}

uint64_t sub_2330DD104()
{
  *(v1 + 88) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330DD1A0, v0, 0);
}

uint64_t sub_2330DD1A0()
{
  v1 = *(v0 + 88);
  *(v0 + 104) = *(v1 + 112);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6D68;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = &unk_2330F6D78;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDF40, &qword_2330F6D90);
  *(v0 + 128) = v7;
  v8 = sub_2330E43D0();
  *(v0 + 136) = v8;
  *v6 = v0;
  v6[1] = sub_2330DD328;

  return MEMORY[0x2821DF740](401, &unk_2330F6D88, v5, v2, v7, v3, v8);
}

uint64_t sub_2330DD328()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2330DD454, v1, 0);
}

uint64_t sub_2330DD454()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[18] = v4;
  *(v4 + 16) = &unk_2330F6DA0;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_2330DD574;
  v6 = v0[16];
  v7 = v0[17];

  return MEMORY[0x2821DF750](402, &unk_2330F6DB0, v4, v2, v6, v3, v7);
}

uint64_t sub_2330DD574()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2330DD6A0, v1, 0);
}

uint64_t sub_2330DD6A0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_2330F2110();
  *v3 = v0;
  v3[1] = sub_2330DD7A4;
  v5 = v0[11];
  v6 = MEMORY[0x277D783C8];

  return MEMORY[0x2821DF750](403, &unk_2330F6DC0, v5, v1, v4, v2, v6);
}

uint64_t sub_2330DD7A4()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2330DD8BC, v1, 0);
}

uint64_t sub_2330DD8BC()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[21] = v4;
  *(v4 + 16) = &unk_2330F6DD0;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[22] = v5;
  v6 = sub_2330F2290();
  v7 = sub_2330F20C0();
  *v5 = v0;
  v5[1] = sub_2330DDA10;

  return MEMORY[0x2821DF738](404, &unk_2330F6DE0, v4, v2, v6, v7, v3);
}

uint64_t sub_2330DDA10()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2330DDB3C, v1, 0);
}

uint64_t sub_2330DDB3C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_2330F21D0();
  *v3 = v0;
  v3[1] = sub_2330DDC40;
  v5 = v0[11];
  v6 = MEMORY[0x277D78430];

  return MEMORY[0x2821DF750](405, &unk_2330F6DF0, v5, v1, v4, v2, v6);
}

uint64_t sub_2330DDC40()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2330DDD58, v1, 0);
}

uint64_t sub_2330DDD58()
{
  *(v0 + 192) = sub_233092CCC();

  return MEMORY[0x2822009F8](sub_2330DDDD4, 0, 0);
}

uint64_t sub_2330DDE00()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2330F6E00;
  *(v3 + 24) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2330AE604(&unk_2330F4BC8, v3, 2, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v6;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2330DDF18, v2, 0);
}

uint64_t sub_2330DDF18()
{
  v18 = v0[24];
  v1 = v0[11];
  v2 = v0[12];
  v3 = sub_2330F2890();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v17 = sub_2330E494C(&qword_27DDDE708, v5, type metadata accessor for TVContentRequestServer, &unk_2330F6D18);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v17;
  v6[4] = v1;
  swift_retain_n();
  sub_2330878BC(0, 0, v2, &unk_2330F6E18, v6);

  v7 = sub_233099620(0, &qword_2814EAC28, 0x277CCAB98);
  v8 = *MEMORY[0x277CF0010];
  v4(v2, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = 0xD000000000000068;
  v9[7] = 0x80000002330F8C30;
  v9[8] = &unk_2330F6E28;
  v9[9] = v1;

  v10 = v8;
  sub_2330878BC(0, 0, v2, &unk_2330F3BC0, v9);

  v11 = sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
  v12 = sub_2330F25C0();
  v4(v2, 1, 1, v3);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v12;
  v13[6] = 0xD000000000000068;
  v13[7] = 0x80000002330F8C30;
  v13[8] = &unk_2330F6E40;
  v13[9] = v1;

  sub_2330878BC(0, 0, v2, &unk_2330F6E48, v13);

  v4(v2, 1, 1, v3);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v17;
  v14[4] = v1;
  swift_retain_n();
  sub_2330878BC(0, 0, v2, &unk_2330F6E58, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2330DE2A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330C92EC;

  return sub_2330E266C();
}

uint64_t sub_2330DE330(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E2A98(a1);
}

uint64_t sub_2330DE3C8(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_233088E00;

  return v6(v3);
}

uint64_t sub_2330DE4BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E2EB0(a1);
}

uint64_t sub_2330DE554(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330E3480(a1, a2);
}

uint64_t sub_2330DE600(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v6 = sub_2330F20C0();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_2330DE76C;

  return v10(v7, a2);
}

uint64_t sub_2330DE76C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    (*(v6 + 32))(v7, v5, v8);
    (*(v6 + 56))(v7, 0, 1, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_2330DE8D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E3BA8(a1);
}

uint64_t sub_2330DE96C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DECFC();
}

uint64_t sub_2330DEA1C()
{
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2330DEACC;

  return TVContentRequestCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_2330DEACC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2330953EC, v1, 0);
}

uint64_t sub_2330DEBDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330DECFC();
}

uint64_t sub_2330DEC6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DECFC();
}

uint64_t sub_2330DECFC()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2330DED44, v0, 0);
}

uint64_t sub_2330DED44()
{
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2330DEDF4;

  return TVContentRequestCloudKitCoordinator.fetchRequests()();
}

uint64_t sub_2330DEDF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_2330DF14C;
  }

  else
  {
    v6 = sub_2330DEF28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330DEF28()
{
  v18 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18F0);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = sub_2330F2F30();
    v9 = sub_233098F44(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_2330F2110();
    v11 = MEMORY[0x2383995E0](v4, v10);
    v13 = sub_233098F44(v11, v12, &v17);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_233084000, v2, v3, "%s fetched TV content requests %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = sub_2330DF520;
  v15 = *(v0 + 88);

  return sub_2330DF64C(v15);
}

uint64_t sub_2330DF14C()
{
  v31 = v0;
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  type metadata accessor for Code(0);
  *(v0 + 56) = 9;
  v2 = v1;
  sub_2330E494C(&qword_2814EACC8, 255, type metadata accessor for Code, &unk_2330F3ECC);
  v3 = sub_2330F1CE0();

  if (v3)
  {
    v4 = *(v0 + 64);

    *(v4 + 120) = MEMORY[0x277D84F90];

    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v5 = sub_2330F23C0();
    __swift_project_value_buffer(v5, qword_27DDE18F0);
    v6 = sub_2330F23A0();
    v7 = sub_2330F2980();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = sub_2330F2F30();
      v12 = sub_233098F44(v10, v11, &v30);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_233084000, v6, v7, "%s failed to fetch TV content requests; user not authenticated", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x23839A490](v9, -1, -1);
      MEMORY[0x23839A490](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 96);
    v14 = sub_2330F23C0();
    __swift_project_value_buffer(v14, qword_27DDE18F0);
    v15 = v13;
    v16 = sub_2330F23A0();
    v17 = sub_2330F2960();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 96);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v20 = 136315394;
      v23 = sub_2330F2F30();
      v25 = sub_233098F44(v23, v24, &v30);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v21 = v27;
      _os_log_impl(&dword_233084000, v16, v17, "%s failed to fetch TV content requests: %@", v20, 0x16u);
      sub_2330952BC(v21, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x23839A490](v22, -1, -1);
      MEMORY[0x23839A490](v20, -1, -1);
    }

    else
    {
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2330DF520()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_23308D118, v1, 0);
}

uint64_t sub_2330DF64C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2330DF66C, v1, 0);
}

uint64_t sub_2330DF66C()
{
  v1 = v0[2];
  v2 = v0[3];

  v4 = sub_23309F20C(v3, v1);

  v5 = *(v4 + 16);

  *(v2 + 120) = v1;

  if (v5)
  {
    sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
    v6 = [swift_getObjCClassFromMetadata() defaultCenter];
    v7 = sub_2330F2A00();
    [v6 postNotificationName:v7 object:0];
  }

  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_2330DF7B4;

  return sub_2330DF8A8();
}

uint64_t sub_2330DF7B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2330DF8A8()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_2330F21D0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_2330F2090();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v4 = sub_2330F1DD0();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = sub_2330F20C0();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v6 = sub_2330F2110();
  v1[37] = v6;
  v1[38] = *(v6 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330DFBA4, v0, 0);
}

void sub_2330DFBA4()
{
  v113 = v0;
  *(v0 + 368) = *(*(v0 + 152) + 112);
  sub_233090A7C();
  if ((sub_2330F2380() & 1) == 0)
  {
LABEL_47:

    v85 = *(v0 + 8);

    v85();
    return;
  }

  sub_233091A08(v0 + 16);
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_serialNumber_obj();

  if (!v3)
  {
LABEL_60:
    __break(1u);
    return;
  }

  v4 = *(v0 + 152);
  v5 = sub_2330F25F0();
  v7 = v6;

  v8 = *(v4 + 120);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    v11 = *(v0 + 304);
    v109 = (v11 + 32);
    v12 = MEMORY[0x277D84F90];
    v96 = v8;
    v98 = v7;
    v102 = v5;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = *(v11 + 72);
      (*(v11 + 16))(*(v0 + 360), v8 + v13 + v14 * v10, *(v0 + 296));
      if (sub_2330F2040() == v5 && v15 == v7)
      {
        break;
      }

      v17 = sub_2330F2DC0();

      if (v17)
      {
        goto LABEL_16;
      }

      (*(v11 + 8))(*(v0 + 360), *(v0 + 296));
LABEL_7:
      ++v10;
      v5 = v102;
      if (v9 == v10)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v18 = *v109;
    (*v109)(*(v0 + 352), *(v0 + 360), *(v0 + 296));
    v112[0] = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2330AC6C0(0, *(v12 + 16) + 1, 1);
      v12 = v112[0];
    }

    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2330AC6C0((v19 > 1), v20 + 1, 1);
      v12 = v112[0];
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 296);
    *(v12 + 16) = v20 + 1;
    v18(v12 + v13 + v20 * v14, v21, v22);
    v8 = v96;
    v7 = v98;
    goto LABEL_7;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:

  v106 = *(v12 + 16);
  if (v106)
  {
    v23 = 0;
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v99 = *MEMORY[0x277D783A8];
    v95 = (v25 + 8);
    v97 = (v25 + 104);
    v103 = v24;
    v93 = (v24 + 8);
    v94 = (v24 + 32);
    v26 = MEMORY[0x277D84F90];
    while (v23 < *(v12 + 16))
    {
      v27 = *(v0 + 288);
      v28 = *(v0 + 280);
      v29 = *(v0 + 264);
      v110 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v30 = *(v103 + 72);
      (*(v103 + 16))(*(v0 + 344), v12 + v110 + v30 * v23, *(v0 + 296));
      sub_2330F20E0();
      (*v97)(v28, v99, v29);
      sub_2330E494C(&qword_27DDDDF58, 255, MEMORY[0x277D783B8], MEMORY[0x277D783C0]);
      sub_2330F27A0();
      sub_2330F27A0();
      v31 = *v95;
      (*v95)(v28, v29);
      v31(v27, v29);
      if (*(v0 + 136) == *(v0 + 144))
      {
        v32 = *v94;
        (*v94)(*(v0 + 336), *(v0 + 344), *(v0 + 296));
        v112[0] = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2330AC6C0(0, *(v26 + 16) + 1, 1);
          v26 = v112[0];
        }

        v34 = *(v26 + 16);
        v33 = *(v26 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2330AC6C0((v33 > 1), v34 + 1, 1);
          v26 = v112[0];
        }

        v35 = *(v0 + 336);
        v36 = *(v0 + 296);
        *(v26 + 16) = v34 + 1;
        v32(v26 + v110 + v34 * v30, v35, v36);
      }

      else
      {
        (*v93)(*(v0 + 344), *(v0 + 296));
      }

      if (v106 == ++v23)
      {
        goto LABEL_34;
      }
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_34:
  *(v0 + 376) = v26;

  sub_233091CBC(v0 + 56);
  v37 = *(v26 + 16);
  *(v0 + 384) = v37;
  if (!v37)
  {
LABEL_46:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_47;
  }

  v38 = 0;
  v39 = *(v0 + 304);
  *(v0 + 464) = *(v39 + 80);
  *(v0 + 392) = *(v39 + 72);
  *(v0 + 400) = *(v39 + 16);
  v40 = MEMORY[0x277D78358];
  v41 = MEMORY[0x277D783A0];
  *(v0 + 468) = *MEMORY[0x277D78360];
  *(v0 + 472) = *v40;
  *(v0 + 476) = *v41;
  while (1)
  {
    v43 = *(v0 + 400);
    v44 = *(v0 + 328);
    v45 = *(v0 + 296);
    v46 = *(v0 + 248);
    v47 = *(v0 + 224);
    v48 = *(v0 + 232);
    v49 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v38;
    v50 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v38;
    *(v0 + 416) = v50;
    v43(v44, v49, v45);
    v51 = sub_2330F2210();
    v53 = v52;
    *(v0 + 424) = v52;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      break;
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v54 = swift_allocError();
    swift_willThrow();

    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 400);
    v56 = *(v0 + 328);
    v57 = *(v0 + 312);
    v58 = *(v0 + 296);
    v59 = sub_2330F23C0();
    __swift_project_value_buffer(v59, qword_27DDE18F0);
    v55(v57, v56, v58);
    v60 = v54;
    v61 = sub_2330F23A0();
    v62 = sub_2330F2960();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 328);
    v65 = *(v0 + 312);
    v66 = *(v0 + 296);
    v67 = (*(v0 + 304) + 8);
    if (v63)
    {
      v111 = *(v0 + 328);
      v104 = v62;
      v68 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v112[0] = v107;
      *v68 = 136315650;
      v69 = sub_2330F2F30();
      v71 = sub_233098F44(v69, v70, v112);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
      v72 = sub_2330F2D80();
      v74 = v73;
      v75 = *v67;
      (*v67)(v65, v66);
      v76 = sub_233098F44(v72, v74, v112);

      *(v68 + 14) = v76;
      *(v68 + 22) = 2112;
      v77 = v54;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 24) = v78;
      *v100 = v78;
      _os_log_impl(&dword_233084000, v61, v104, "%s failed to request TV content %s; error: %@", v68, 0x20u);
      sub_2330952BC(v100, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v100, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v107, -1, -1);
      MEMORY[0x23839A490](v68, -1, -1);

      v75(v111, v66);
    }

    else
    {

      v42 = *v67;
      (*v67)(v65, v66);
      v42(v64, v66);
    }

    v38 = *(v0 + 408) + 1;
    if (v38 == *(v0 + 384))
    {
      goto LABEL_46;
    }
  }

  v79 = *(v0 + 468);
  v81 = *(v0 + 208);
  v80 = *(v0 + 216);
  v82 = *(v0 + 192);
  v83 = *(v0 + 200);
  sub_2330F20D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
  sub_2330F1C90();
  *(swift_allocObject() + 16) = xmmword_2330F46B0;
  (*(v83 + 16))(v81, v80, v82);
  v84 = (*(v83 + 88))(v81, v82);
  if (v84 == v79 || v84 == *(v0 + 472))
  {
    v86 = *(v0 + 248);
    v87 = *(v0 + 232);
    v105 = *(v0 + 240);
    v108 = *(v0 + 256);
    v88 = *(v0 + 224);
    v101 = *(v0 + 216);
    v90 = *(v0 + 192);
    v89 = *(v0 + 200);
    sub_2330F1C80();

    (*(v89 + 8))(v101, v90);
    sub_2330F1DC0();

    (*(v87 + 8))(v86, v88);
    (*(v87 + 32))(v108, v105, v88);
    (*(v87 + 56))(v108, 0, 1, v88);
    v91 = swift_task_alloc();
    *(v0 + 432) = v91;
    *v91 = v0;
    v91[1] = sub_2330E0874;
    v92 = *(v0 + 256);

    sub_2330EAAEC(v51, v53, v92, 0);
  }

  else
  {

    sub_2330F2DB0();
  }
}

uint64_t sub_2330E0874()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 152);
  sub_2330952BC(v3, &qword_27DDDE6D8, &unk_2330F6D40);

  if (v0)
  {
    v5 = sub_2330E0C4C;
  }

  else
  {
    v5 = sub_2330E09E8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2330E09E8()
{
  v1 = *(v0 + 476);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  sub_233093C70(v0 + 96);
  sub_2330F2040();
  sub_2330F2050();
  (*(v4 + 104))(v2, v1, v3);
  sub_2330F21B0();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_2330E0B20;
  v6 = *(v0 + 184);

  return sub_2330AB128(v6);
}

uint64_t sub_2330E0B20()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_2330E1E7C;
  }

  else
  {
    v4 = sub_2330E141C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E0C4C()
{
  v64 = v0;
  v1 = 0x27DDDD000uLL;
  v2 = *(v0 + 440);
  while (1)
  {
    if (*(v1 + 3048) != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 400);
    v4 = *(v0 + 328);
    v5 = *(v0 + 312);
    v6 = *(v0 + 296);
    v7 = sub_2330F23C0();
    __swift_project_value_buffer(v7, qword_27DDE18F0);
    v3(v5, v4, v6);
    v8 = v2;
    v9 = sub_2330F23A0();
    v10 = sub_2330F2960();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 328);
    v13 = *(v0 + 312);
    v14 = *(v0 + 296);
    v15 = (*(v0 + 304) + 8);
    if (v11)
    {
      v62 = *(v0 + 328);
      v16 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63[0] = v60;
      *v16 = 136315650;
      v17 = sub_2330F2F30();
      v56 = v10;
      v19 = sub_233098F44(v17, v18, v63);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
      v20 = sub_2330F2D80();
      v22 = v21;
      v23 = *v15;
      (*v15)(v13, v14);
      v24 = sub_233098F44(v20, v22, v63);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2112;
      v25 = v2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v26;
      *v58 = v26;
      _os_log_impl(&dword_233084000, v9, v56, "%s failed to request TV content %s; error: %@", v16, 0x20u);
      sub_2330952BC(v58, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v58, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v60, -1, -1);
      v27 = v16;
      v1 = 0x27DDDD000;
      MEMORY[0x23839A490](v27, -1, -1);

      v23(v62, v14);
    }

    else
    {

      v28 = *v15;
      (*v15)(v13, v14);
      v28(v12, v14);
    }

    v29 = *(v0 + 408) + 1;
    if (v29 == *(v0 + 384))
    {
      break;
    }

    v30 = *(v0 + 400);
    v31 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = *(v0 + 248);
    v34 = *(v0 + 224);
    v35 = *(v0 + 232);
    v36 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v29;
    v37 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v29;
    *(v0 + 416) = v37;
    v30(v31, v36, v32);
    v38 = sub_2330F2210();
    v40 = v39;
    *(v0 + 424) = v39;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v43 = *(v0 + 468);
      v45 = *(v0 + 208);
      v44 = *(v0 + 216);
      v46 = *(v0 + 192);
      v47 = *(v0 + 200);
      sub_2330F20D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
      sub_2330F1C90();
      *(swift_allocObject() + 16) = xmmword_2330F46B0;
      (*(v47 + 16))(v45, v44, v46);
      v48 = (*(v47 + 88))(v45, v46);
      if (v48 == v43 || v48 == *(v0 + 472))
      {
        v49 = *(v0 + 248);
        v50 = *(v0 + 232);
        v59 = *(v0 + 240);
        v61 = *(v0 + 256);
        v51 = *(v0 + 224);
        v57 = *(v0 + 216);
        v53 = *(v0 + 192);
        v52 = *(v0 + 200);
        sub_2330F1C80();

        (*(v52 + 8))(v57, v53);
        sub_2330F1DC0();

        (*(v50 + 8))(v49, v51);
        (*(v50 + 32))(v61, v59, v51);
        (*(v50 + 56))(v61, 0, 1, v51);
        v54 = swift_task_alloc();
        *(v0 + 432) = v54;
        *v54 = v0;
        v54[1] = sub_2330E0874;
        v55 = *(v0 + 256);

        return sub_2330EAAEC(v38, v40, v55, 0);
      }

      else
      {

        return sub_2330F2DB0();
      }
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v2 = swift_allocError();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2330E141C()
{
  v90 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v88 = sub_2330F23C0();
  __swift_project_value_buffer(v88, qword_27DDE18F0);
  v1(v2, v3, v4);
  v5 = sub_2330F23A0();
  v6 = sub_2330F2980();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v85 = *(v0 + 168);
  if (v7)
  {
    v76 = v6;
    v82 = *(v0 + 184);
    v14 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v89[0] = v77;
    *v14 = 136315394;
    v15 = sub_2330F2F30();
    v79 = v9;
    v17 = sub_233098F44(v15, v16, v89);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
    v18 = sub_2330F2D80();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v8, v10);
    v22 = sub_233098F44(v18, v20, v89);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_233084000, v5, v76, "%s successfully requested TV content %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v77, -1, -1);
    MEMORY[0x23839A490](v14, -1, -1);

    (*(v12 + 8))(v82, v85);
    v21(v79, v10);
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v8, v10);
    (*(v12 + 8))(v13, v85);
    v23(v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v24 = *(v0 + 408) + 1;
  if (v24 == *(v0 + 384))
  {
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    while (1)
    {
      v38 = *(v0 + 400);
      v39 = *(v0 + 328);
      v40 = *(v0 + 296);
      v41 = *(v0 + 248);
      v42 = *(v0 + 224);
      v43 = *(v0 + 232);
      v44 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v24;
      v45 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 408) = v24;
      *(v0 + 416) = v45;
      v38(v39, v44, v40);
      v46 = sub_2330F2210();
      v48 = v47;
      *(v0 + 424) = v47;
      sub_2330F2010();
      sub_2330F1DB0();

      if ((*(v43 + 48))(v41, 1, v42) != 1)
      {
        break;
      }

      sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
      sub_2330E4188();
      v49 = swift_allocError();
      swift_willThrow();

      if (qword_27DDDDBE8 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 400);
      v51 = *(v0 + 328);
      v52 = *(v0 + 312);
      v53 = *(v0 + 296);
      __swift_project_value_buffer(v88, qword_27DDE18F0);
      v50(v52, v51, v53);
      v54 = v49;
      v55 = sub_2330F23A0();
      v56 = sub_2330F2960();

      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 328);
      v59 = *(v0 + 312);
      v60 = *(v0 + 296);
      v61 = (*(v0 + 304) + 8);
      if (v57)
      {
        v80 = v56;
        v86 = *(v0 + 328);
        v27 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v89[0] = v83;
        *v27 = 136315650;
        v28 = sub_2330F2F30();
        v30 = sub_233098F44(v28, v29, v89);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
        v31 = sub_2330F2D80();
        v33 = v32;
        v34 = *v61;
        (*v61)(v59, v60);
        v35 = sub_233098F44(v31, v33, v89);

        *(v27 + 14) = v35;
        *(v27 + 22) = 2112;
        v36 = v49;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 24) = v37;
        *v78 = v37;
        _os_log_impl(&dword_233084000, v55, v80, "%s failed to request TV content %s; error: %@", v27, 0x20u);
        sub_2330952BC(v78, &unk_27DDDE520, &qword_2330F4340);
        MEMORY[0x23839A490](v78, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v83, -1, -1);
        MEMORY[0x23839A490](v27, -1, -1);

        v34(v86, v60);
      }

      else
      {

        v62 = *v61;
        (*v61)(v59, v60);
        v62(v58, v60);
      }

      v24 = *(v0 + 408) + 1;
      if (v24 == *(v0 + 384))
      {
        goto LABEL_7;
      }
    }

    v63 = *(v0 + 468);
    v65 = *(v0 + 208);
    v64 = *(v0 + 216);
    v66 = *(v0 + 192);
    v67 = *(v0 + 200);
    sub_2330F20D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
    sub_2330F1C90();
    *(swift_allocObject() + 16) = xmmword_2330F46B0;
    (*(v67 + 16))(v65, v64, v66);
    v68 = (*(v67 + 88))(v65, v66);
    if (v68 == v63 || v68 == *(v0 + 472))
    {
      v69 = *(v0 + 248);
      v70 = *(v0 + 232);
      v84 = *(v0 + 240);
      v87 = *(v0 + 256);
      v71 = *(v0 + 224);
      v81 = *(v0 + 216);
      v73 = *(v0 + 192);
      v72 = *(v0 + 200);
      sub_2330F1C80();

      (*(v72 + 8))(v81, v73);
      sub_2330F1DC0();

      (*(v70 + 8))(v69, v71);
      (*(v70 + 32))(v87, v84, v71);
      (*(v70 + 56))(v87, 0, 1, v71);
      v74 = swift_task_alloc();
      *(v0 + 432) = v74;
      *v74 = v0;
      v74[1] = sub_2330E0874;
      v75 = *(v0 + 256);

      return sub_2330EAAEC(v46, v48, v75, 0);
    }

    else
    {

      return sub_2330F2DB0();
    }
  }
}

uint64_t sub_2330E1E7C()
{
  v64 = v0;
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = 0x27DDDD000uLL;
  v2 = *(v0 + 456);
  while (1)
  {
    if (*(v1 + 3048) != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 400);
    v4 = *(v0 + 328);
    v5 = *(v0 + 312);
    v6 = *(v0 + 296);
    v7 = sub_2330F23C0();
    __swift_project_value_buffer(v7, qword_27DDE18F0);
    v3(v5, v4, v6);
    v8 = v2;
    v9 = sub_2330F23A0();
    v10 = sub_2330F2960();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 328);
    v13 = *(v0 + 312);
    v14 = *(v0 + 296);
    v15 = (*(v0 + 304) + 8);
    if (v11)
    {
      v62 = *(v0 + 328);
      v16 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63[0] = v60;
      *v16 = 136315650;
      v17 = sub_2330F2F30();
      v56 = v10;
      v19 = sub_233098F44(v17, v18, v63);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
      v20 = sub_2330F2D80();
      v22 = v21;
      v23 = *v15;
      (*v15)(v13, v14);
      v24 = sub_233098F44(v20, v22, v63);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2112;
      v25 = v2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v26;
      *v58 = v26;
      _os_log_impl(&dword_233084000, v9, v56, "%s failed to request TV content %s; error: %@", v16, 0x20u);
      sub_2330952BC(v58, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v58, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v60, -1, -1);
      v27 = v16;
      v1 = 0x27DDDD000;
      MEMORY[0x23839A490](v27, -1, -1);

      v23(v62, v14);
    }

    else
    {

      v28 = *v15;
      (*v15)(v13, v14);
      v28(v12, v14);
    }

    v29 = *(v0 + 408) + 1;
    if (v29 == *(v0 + 384))
    {
      break;
    }

    v30 = *(v0 + 400);
    v31 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = *(v0 + 248);
    v34 = *(v0 + 224);
    v35 = *(v0 + 232);
    v36 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v29;
    v37 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v29;
    *(v0 + 416) = v37;
    v30(v31, v36, v32);
    v38 = sub_2330F2210();
    v40 = v39;
    *(v0 + 424) = v39;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v43 = *(v0 + 468);
      v45 = *(v0 + 208);
      v44 = *(v0 + 216);
      v46 = *(v0 + 192);
      v47 = *(v0 + 200);
      sub_2330F20D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
      sub_2330F1C90();
      *(swift_allocObject() + 16) = xmmword_2330F46B0;
      (*(v47 + 16))(v45, v44, v46);
      v48 = (*(v47 + 88))(v45, v46);
      if (v48 == v43 || v48 == *(v0 + 472))
      {
        v49 = *(v0 + 248);
        v50 = *(v0 + 232);
        v59 = *(v0 + 240);
        v61 = *(v0 + 256);
        v51 = *(v0 + 224);
        v57 = *(v0 + 216);
        v53 = *(v0 + 192);
        v52 = *(v0 + 200);
        sub_2330F1C80();

        (*(v52 + 8))(v57, v53);
        sub_2330F1DC0();

        (*(v50 + 8))(v49, v51);
        (*(v50 + 32))(v61, v59, v51);
        (*(v50 + 56))(v61, 0, 1, v51);
        v54 = swift_task_alloc();
        *(v0 + 432) = v54;
        *v54 = v0;
        v54[1] = sub_2330E0874;
        v55 = *(v0 + 256);

        return sub_2330EAAEC(v38, v40, v55, 0);
      }

      else
      {

        return sub_2330F2DB0();
      }
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v2 = swift_allocError();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2330E266C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_2330E26B4, v0, 0);
}

uint64_t sub_2330E26B4()
{
  v12 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18F0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_2330F2F30();
    v8 = sub_233098F44(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_233084000, v2, v3, "%s fetching TV content requests", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_2330E2890;

  return TVContentRequestCloudKitCoordinator.fetchRequests()();
}

uint64_t sub_2330E2890(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[7];
  if (v1)
  {
    v6 = sub_2330E2A34;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_2330E29CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330E29CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_2330E2A34()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E2A98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](sub_2330E2AE0, v1, 0);
}

uint64_t sub_2330E2AE0()
{
  v18 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18F0);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = sub_2330F2F30();
    v9 = sub_233098F44(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_2330F2110();
    v11 = MEMORY[0x2383995E0](v4, v10);
    v13 = sub_233098F44(v11, v12, &v17);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_233084000, v2, v3, "%s updating requests %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_2330E2D20;
  v15 = v0[7];

  return sub_2330AA834(v15);
}

uint64_t sub_2330E2D20()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_2330E2E4C;
  }

  else
  {
    v4 = sub_23308B1BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E2E4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E2EB0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2330F2110();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E2F98, v1, 0);
}

uint64_t sub_2330E2F98()
{
  v25 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    v14 = sub_2330F2F30();
    v16 = sub_233098F44(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E8]);
    v17 = sub_2330F2D80();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_233098F44(v17, v19, &v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_233084000, v6, v7, "%s starting TV content request %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v13, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_2330E3274;
  v22 = v0[7];

  return TVContentRequestCloudKitCoordinator.startRequest(_:)(v22);
}

uint64_t sub_2330E3274()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_2330E3410;
  }

  else
  {
    v4 = sub_2330E33A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E33A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E3410()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E3480(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_2330F2110();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_2330F2290();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E35C8, v2, 0);
}

uint64_t sub_2330E35C8()
{
  v25 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    v14 = sub_2330F2F30();
    v16 = sub_233098F44(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6C8, 255, MEMORY[0x277D78458], MEMORY[0x277D78460]);
    v17 = sub_2330F2D80();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_233098F44(v17, v19, &v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_233084000, v6, v7, "%s fetching TV content request status for identifier: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v13, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_2330E389C;
  v22 = v0[8];

  return sub_2330AB958(v22);
}

uint64_t sub_2330E389C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_2330E3A8C;
  }

  else
  {
    v4 = sub_2330E39B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330E39B0()
{
  v1 = *(v0 + 152);
  sub_2330E69E8(*(v0 + 144), *(v0 + 104));
  v2 = *(v0 + 144);
  if (v1)
  {

    *(v0 + 160) = v1;
    v3 = *(v0 + 72);
    v4 = sub_2330E3B2C;
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    sub_2330F20E0();

    (*(v6 + 8))(v5, v7);
    v4 = sub_2330E3AB0;
    v3 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E3AB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E3B2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330E3BA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2330F21D0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E3C90, v1, 0);
}

uint64_t sub_2330E3C90()
{
  v25 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    v14 = sub_2330F2F30();
    v16 = sub_233098F44(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6C0, 255, MEMORY[0x277D78438], MEMORY[0x277D78440]);
    v17 = sub_2330F2D80();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_233098F44(v17, v19, &v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_233084000, v6, v7, "%s updating TV content request status %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v13, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_2330E3F68;
  v22 = v0[7];

  return sub_2330AB128(v22);
}

uint64_t sub_2330E3F68()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_2330E4C5C;
  }

  else
  {
    v4 = sub_2330E4C60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E4094()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2330E40F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DD104();
}

unint64_t sub_2330E4188()
{
  result = qword_27DDDE6E0;
  if (!qword_27DDDE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6E0);
  }

  return result;
}

uint64_t sub_2330E41DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330A8008;

  return sub_2330DE2A0();
}

uint64_t sub_2330E426C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330A89E0;

  return sub_2330A1E08(v2);
}

uint64_t sub_2330E4318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330A2020(a1, v4);
}

unint64_t sub_2330E43D0()
{
  result = qword_27DDDE6F0;
  if (!qword_27DDDE6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDDF40, &qword_2330F6D90);
    v1 = MEMORY[0x277D783D0];
    sub_2330E494C(&qword_27DDDE6F8, 255, MEMORY[0x277D783D0], MEMORY[0x277D783E0]);
    sub_2330E494C(&qword_27DDDE700, 255, v1, MEMORY[0x277D783D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6F0);
  }

  return result;
}

uint64_t sub_2330E44CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE330(a1);
}

uint64_t sub_2330E4564(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330DE3C8(a1, v4);
}

uint64_t sub_2330E4618(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE4BC(a1);
}

uint64_t sub_2330E46B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330DE554(a1, a2);
}

uint64_t sub_2330E475C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_233088E00;

  return sub_2330DE600(a1, a2, v6);
}

uint64_t sub_2330E4824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE8D4(a1);
}

uint64_t sub_2330E48BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DE96C();
}

uint64_t sub_2330E494C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2330E4994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330DE9FC(a1, v4, v5, v6);
}

uint64_t sub_2330E4A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330DEBDC();
}

uint64_t sub_2330E4AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DE96C();
}

uint64_t objectdestroy_49Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2330E4BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DEC6C();
}

uint64_t sub_2330E4C64(uint64_t a1)
{
  v3 = sub_2330F2230();
  v4 = v1;

  MEMORY[0x2383994D0](0x63696669746F6E2ELL, 0xED00006E6F697461);

  qword_27DDDE710 = v3;
  *algn_27DDDE718 = v4;
  return result;
}

uint64_t sub_2330E4CDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return MEMORY[0x2822009F8](sub_2330E4D6C, 0, 0);
}

uint64_t sub_2330E4D6C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_2330F2520();
  *(v0 + 16) = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_2330F1E00();
    v7 = v6;

    *(v0 + 48) = v5;
    *(v0 + 56) = v7;
    sub_2330F1C60();
    swift_allocObject();
    sub_2330F1C50();
    sub_2330E5C70();
    sub_2330F1C40();

    v10 = sub_2330E638C(*(v0 + 24));
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *(v0 + 64) = v11;
    *(v0 + 72) = v15;

    v28 = swift_task_alloc();
    *(v0 + 80) = v28;
    *v28 = v0;
    v28[1] = sub_2330E519C;
    v29 = *(v0 + 40);

    return sub_2330E5780(v10, v12, v14, v16, v29);
  }

  else
  {
    v8 = v4;
    v9 = sub_2330F1D60();

    swift_willThrow();
    if (qword_2814EADA8 != -1)
    {
      swift_once();
    }

    v17 = sub_2330F23C0();
    __swift_project_value_buffer(v17, qword_2814EBDE0);
    v18 = v9;
    v19 = sub_2330F23A0();
    v20 = sub_2330F2960();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v30);
      *(v21 + 12) = 2112;
      v24 = v9;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_233084000, v19, v20, "%s failed to post notification: %@", v21, 0x16u);
      sub_2330952BC(v22, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x23839A490](v23, -1, -1);
      MEMORY[0x23839A490](v21, -1, -1);
    }

    else
    {
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2330E519C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_2330E5534;
  }

  else
  {

    v4 = sub_2330E52F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330E52F4()
{
  v17 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v9 = v0[6];
  v8 = v0[7];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_233084000, v4, v5, "%s successfully posted notification request: %@", v10, 0x16u);
    sub_2330952BC(v11, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);

    sub_2330B52A8(v9, v8);
  }

  else
  {
    sub_2330B52A8(v0[6], v0[7]);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2330E5534()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = v0[6];
  v1 = v0[7];

  sub_2330B52A8(v2, v1);
  v3 = v0[12];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDE0);
  v5 = v3;
  v6 = sub_2330F23A0();
  v7 = sub_2330F2960();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v15);
    *(v8 + 12) = 2112;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_233084000, v6, v7, "%s failed to post notification: %@", v8, 0x16u);
    sub_2330952BC(v9, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2330E5780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_2330E57A8, 0, 0);
}

uint64_t sub_2330E57A8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v0[23] = v1;
  v2 = sub_2330F25C0();
  [v1 setTitle_];

  v3 = sub_2330F25C0();
  [v1 setBody_];

  if (qword_27DDDDC18 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = v1;
  v6 = sub_2330F25C0();
  v7 = [objc_opt_self() requestWithIdentifier:v6 content:v5 trigger:0];
  v0[24] = v7;

  v0[2] = v0;
  v0[3] = sub_2330E59D4;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE728, &unk_2330F6EA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330E5BC4;
  v0[13] = &block_descriptor_10;
  v0[14] = v8;
  [v4 addNotificationRequest:v7 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330E59D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2330E5B4C;
  }

  else
  {
    v2 = sub_2330E5AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330E5AE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_2330E5B4C(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2330E5BC4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

unint64_t sub_2330E5C70()
{
  result = qword_27DDDE720;
  if (!qword_27DDDE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE720);
  }

  return result;
}

uint64_t sub_2330E5CC4(uint64_t a1)
{
  v2 = sub_2330F1F40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2330F1F60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE730, &unk_2330F6EB0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v50 - v14;
  v16 = sub_2330F1F10();
  sub_2330F1F20();
  sub_2330F1F50();
  (*(v8 + 8))(v11, v7);
  sub_2330F1F30();
  (*(v3 + 8))(v6, v2);
  v17 = sub_2330F1F00();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_2330952BC(v15, &qword_27DDDE730, &unk_2330F6EB0);
    v51 = 0;
    v52 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = sub_2330F1EF0();
    v22 = v21;
    (*(v18 + 8))(v15, v17);
    v51 = v20;
    v52 = v22;
    if (v22)
    {

      v19 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_233098C38(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_233098C38((v23 > 1), v24 + 1, 1, v19);
      }

      *(v19 + 2) = v24 + 1;
      v25 = &v19[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }
  }

  v26 = 0x53552D6E65;
  sub_2330952BC(&v51, &qword_27DDDDED8, &qword_2330F4710);
  v53 = v16;
  sub_23309E364(v19);
  v27 = v53;
  v28 = *(v53 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = (v53 + 40);
    while (v29 < *(v27 + 16))
    {
      if (*(a1 + 16))
      {
        v31 = *(v30 - 1);
        v16 = *v30;

        sub_2330AD10C(v31, v16);
        if (v32)
        {
          v26 = v31;
          goto LABEL_19;
        }
      }

      ++v29;
      v30 += 2;
      if (v28 == v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_17:
  v16 = 0xE500000000000000;
LABEL_19:

  if (qword_2814EADA8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v33 = sub_2330F23C0();
  __swift_project_value_buffer(v33, qword_2814EBDE0);

  v34 = sub_2330F23A0();
  v35 = sub_2330F2980();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v53 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v53);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_233098F44(v26, v16, &v53);
    _os_log_impl(&dword_233084000, v34, v35, "%s chosen language: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v37, -1, -1);
    MEMORY[0x23839A490](v36, -1, -1);
  }

  if (*(a1 + 16) && (v38 = sub_2330AD10C(v26, v16), (v39 & 1) != 0))
  {
    v40 = v38;

    v41 = *(*(a1 + 56) + 32 * v40);
  }

  else
  {

    v42 = sub_2330F23A0();
    v43 = sub_2330F2970();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v53);
      *(v44 + 12) = 2080;
      v46 = sub_233098F44(v26, v16, &v53);

      *(v44 + 14) = v46;
      _os_log_impl(&dword_233084000, v42, v43, "%s missing localization for language: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v45, -1, -1);
      MEMORY[0x23839A490](v44, -1, -1);
    }

    else
    {
    }

    sub_2330E68B4();
    v47 = swift_allocError();
    *v48 = 0;
    v41 = v47;
    swift_willThrow();
  }

  return v41;
}

NSObject *sub_2330E638C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE730, &unk_2330F6EB0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v34 - v5;
  v7 = sub_2330F1F60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2330F1F40();
  v12 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2330F1F20();
  sub_2330F1F50();
  (*(v8 + 8))(v11, v7);
  sub_2330F1F30();
  v16 = sub_2330F1F00();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    sub_2330952BC(v6, &qword_27DDDE730, &unk_2330F6EB0);
    if (qword_2814EADA8 != -1)
    {
      swift_once();
    }

    v18 = sub_2330F23C0();
    __swift_project_value_buffer(v18, qword_2814EBDE0);
    v19 = sub_2330F23A0();
    v20 = sub_2330F2980();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v36);
    v23 = "%s No identifier for current language found";
    goto LABEL_14;
  }

  v24 = sub_2330F1EF0();
  v26 = v25;
  (*(v17 + 8))(v6, v16);
  if (*(a1 + 16))
  {
    v27 = sub_2330AD10C(v24, v26);
    v29 = v28;

    if (v29)
    {
      v19 = *(*(a1 + 56) + 32 * v27);
      v30 = *(v12 + 8);

      v30(v15, v35);
      return v19;
    }
  }

  else
  {
  }

  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v31 = sub_2330F23C0();
  __swift_project_value_buffer(v31, qword_2814EBDE0);
  v19 = sub_2330F23A0();
  v20 = sub_2330F2970();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v36);
    v23 = "%s missing localization for primary language";
LABEL_14:
    _os_log_impl(&dword_233084000, v19, v20, v23, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x23839A490](v22, -1, -1);
    MEMORY[0x23839A490](v21, -1, -1);
  }

LABEL_15:

  v32 = sub_2330E5CC4(a1);
  if (!v1)
  {
    v19 = v32;
  }

  (*(v12 + 8))(v15, v35);
  return v19;
}

unint64_t sub_2330E68B4()
{
  result = qword_27DDDE738;
  if (!qword_27DDDE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE738);
  }

  return result;
}

unint64_t sub_2330E692C()
{
  result = qword_27DDDE740;
  if (!qword_27DDDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE740);
  }

  return result;
}

unint64_t sub_2330E6994()
{
  result = qword_27DDDE748;
  if (!qword_27DDDE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE748);
  }

  return result;
}

void sub_2330E69E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE758, &qword_2330F7068);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v84 = v79 - v5;
  v6 = sub_2330F2090();
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v82 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v85 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE760, &qword_2330F7070);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v79 - v15;
  v17 = sub_2330F20C0();
  v89 = *(v17 - 8);
  v90 = v17;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v81 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v88 = v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE768, &qword_2330F7078);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v79 - v25;
  v27 = sub_2330F2290();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v91 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2330F2AA0() == 0xD000000000000010 && 0x80000002330F7DC0 == v31)
  {
  }

  else
  {
    v32 = sub_2330F2DC0();

    if ((v32 & 1) == 0)
    {
LABEL_24:
      sub_2330E7C34();
      swift_allocError();
      swift_willThrow();

      return;
    }
  }

  v33 = [a1 recordID];
  v34 = [v33 recordName];

  sub_2330F25F0();
  sub_2330B1790(v26);

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_2330952BC(v26, &qword_27DDDE768, &qword_2330F7078);
    goto LABEL_24;
  }

  v35 = v91;
  (*(v28 + 32))(v91, v26, v27);
  v36 = [a1 encryptedValues];
  v37 = sub_2330F25C0();
  v38 = [v36 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v38 || (v94 = v38, v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70), (swift_dynamicCast() & 1) == 0))
  {
    (*(v28 + 8))(v35, v27);
    goto LABEL_24;
  }

  v80 = v39;
  v40 = v93;
  v79[9] = v92;
  v41 = [a1 encryptedValues];
  v42 = sub_2330F25C0();
  v43 = [v41 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v43 || (v79[10] = v40, v94 = v43, (swift_dynamicCast() & 1) == 0))
  {
    (*(v28 + 8))(v91, v27);
LABEL_23:

    goto LABEL_24;
  }

  v44 = v93;
  v79[8] = v92;
  v45 = [a1 encryptedValues];
  v46 = sub_2330F25C0();
  v47 = [v45 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v47 || (v94 = v47, (swift_dynamicCast() & 1) == 0))
  {
    (*(v28 + 8))(v91, v27);
LABEL_22:

    goto LABEL_23;
  }

  v79[7] = v44;
  v48 = v93;
  v79[5] = v92;
  v49 = [a1 encryptedValues];
  v50 = sub_2330F25C0();
  v51 = [v49 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v51 || (v79[6] = v48, v92 = v51, v52 = swift_dynamicCast(), v53 = v91, (v52 & 1) == 0))
  {
    (*(v28 + 8))(v91, v27);

    goto LABEL_22;
  }

  sub_2330F20A0();
  v54 = v89;
  v55 = v90;
  if ((*(v89 + 48))(v16, 1, v90) == 1)
  {
    (*(v28 + 8))(v53, v27);

    sub_2330952BC(v16, &qword_27DDDE760, &qword_2330F7070);
    goto LABEL_24;
  }

  (*(v54 + 32))(v88, v16, v55);
  v56 = [a1 encryptedValues];
  v57 = sub_2330F25C0();
  v58 = v54;
  v59 = [v56 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v59)
  {

    (*(v58 + 8))(v88, v90);
LABEL_42:
    (*(v28 + 8))(v91, v27);
    goto LABEL_24;
  }

  v92 = v59;
  v60 = swift_dynamicCast();
  v61 = v91;
  if ((v60 & 1) == 0)
  {

    (*(v89 + 8))(v88, v90);
    (*(v28 + 8))(v61, v27);
    goto LABEL_24;
  }

  v62 = v84;
  sub_2330F2070();
  v64 = v86;
  v63 = v87;
  if ((*(v87 + 48))(v62, 1, v86) == 1)
  {

    (*(v89 + 8))(v88, v90);
    (*(v28 + 8))(v61, v27);
    sub_2330952BC(v62, &qword_27DDDE758, &qword_2330F7068);
    goto LABEL_24;
  }

  (*(v63 + 32))(v85, v62, v64);
  v65 = [a1 encryptedValues];
  v66 = sub_2330F25C0();
  v67 = [v65 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v67 || (v92 = v67, (swift_dynamicCast() & 1) == 0) || v94 != 1)
  {

    (*(v87 + 8))(v85, v64);
    (*(v89 + 8))(v88, v90);
    goto LABEL_42;
  }

  v68 = [a1 encryptedValues];
  v69 = sub_2330F25C0();
  v70 = [v68 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v70)
  {
    v94 = v70;
    v71 = swift_dynamicCast();
    v72 = v92;
    if (!v71)
    {
      v72 = 0;
    }

    v84 = v72;
    if (v71)
    {
      v73 = v93;
    }

    else
    {
      v73 = 0;
    }

    v80 = v73;
  }

  else
  {
    v84 = 0;
    v80 = 0;
  }

  v79[4] = sub_2330F2250();
  v79[3] = v74;
  v79[2] = sub_2330F2260();
  v79[1] = v75;
  v76 = v87;
  (*(v87 + 16))(v82, v85, v86);
  v78 = v88;
  v77 = v89;
  (*(v89 + 16))(v81, v88, v90);
  sub_2330F2030();

  (*(v76 + 8))(v85, v86);
  (*(v77 + 8))(v78, v90);
  (*(v28 + 8))(v91, v27);
}

void *sub_2330E7684()
{
  v0 = sub_2330F20C0();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2330F2090();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2330F2290();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2330F2020();
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  sub_2330F25F0();
  sub_2330F2990();
  sub_233099620(0, &qword_27DDDDE80, 0x277CBC5D0);
  sub_2330F2280();
  v12 = sub_2330F2920();
  (*(v8 + 8))(v11, v7);
  sub_233099620(0, &qword_27DDDDFA0, 0x277CBC5A0);
  v37 = v12;
  v13 = sub_2330F2A90();
  v14 = [v13 encryptedValues];
  swift_getObjectType();
  v15 = sub_2330F2010();
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277CBBE08];
  v45 = MEMORY[0x277D837D0];
  v46 = MEMORY[0x277CBBE08];
  v42 = v15;
  v43 = v18;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v19 = [v13 encryptedValues];
  swift_getObjectType();
  v20 = sub_2330F20F0();
  v45 = v16;
  v46 = v17;
  v42 = v20;
  v43 = v21;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v22 = [v13 encryptedValues];
  swift_getObjectType();
  v23 = sub_2330F2060();
  v45 = v16;
  v46 = v17;
  v42 = v23;
  v43 = v24;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v13 encryptedValues];
  v25 = sub_2330F2100();
  if (v26)
  {
    v27 = MEMORY[0x277CBBE08];
    v28 = MEMORY[0x277D837D0];
  }

  else
  {
    v25 = 0;
    v28 = 0;
    v27 = 0;
    v44 = 0;
  }

  v42 = v25;
  v43 = v26;
  v45 = v28;
  v46 = v27;
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v29 = [v13 encryptedValues];
  swift_getObjectType();
  sub_2330F20D0();
  v30 = sub_2330F2080();
  (*(v3 + 8))(v6, v38);
  v31 = MEMORY[0x277D83B88];
  v32 = MEMORY[0x277CBBE20];
  v45 = MEMORY[0x277D83B88];
  v46 = MEMORY[0x277CBBE20];
  v42 = v30;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v13 encryptedValues];
  swift_getObjectType();
  v33 = v39;
  sub_2330F20E0();
  v34 = sub_2330F20B0();
  (*(v40 + 8))(v33, v41);
  v45 = v31;
  v46 = v32;
  v42 = v34;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v35 = [v13 encryptedValues];
  swift_getObjectType();
  v45 = v31;
  v46 = v32;
  v42 = 1;
  sub_2330F2A30();
  swift_unknownObjectRelease();

  return v13;
}

unint64_t sub_2330E7C34()
{
  result = qword_27DDDE770;
  if (!qword_27DDDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE770);
  }

  return result;
}

unint64_t sub_2330E7C9C()
{
  result = qword_27DDDE780;
  if (!qword_27DDDE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE780);
  }

  return result;
}

uint64_t UserCloudKitCoordinator.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncLock();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_2330E7D44()
{
  *(v1 + 16) = *v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2330E7DDC;

  return sub_2330E800C();
}

uint64_t sub_2330E7DDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_2330E7FF4;
  }

  else
  {
    v4 = sub_2330E7EF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330E7EF0()
{
  v1 = *(v0 + 40);
  v2 = sub_2330DBCF4(*(v0 + 32));
  v4 = v3;

  if (v1)
  {

LABEL_3:
    v5 = *(v0 + 32);
    sub_2330E9430();
    swift_allocError();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 8);

  return v8(v2, v4);
}

uint64_t sub_2330E8030()
{
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814EB0E8;
  v0[39] = qword_2814EB0E8;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_2330E8180;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE798, &unk_2330F71A0);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2330B8688;
  v0[21] = &block_descriptor_11;
  v0[22] = v2;
  [v1 fetchUserRecordIDWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330E8180()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_2330E8988;
  }

  else
  {
    v2 = sub_2330E8290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330E8290()
{
  v1 = v0[39];
  v2 = v0[34];
  v0[41] = v2;
  v3 = [v1 privateCloudDatabase];
  v0[42] = v3;
  v0[10] = v0;
  v0[15] = v0 + 37;
  v0[11] = sub_2330E83DC;
  v4 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFE0, &qword_2330F4DD8);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2330B8688;
  v0[29] = &block_descriptor_12_0;
  v0[30] = v4;
  [v3 fetchRecordWithID:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2330E83DC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_2330E8BEC;
  }

  else
  {
    v2 = sub_2330E84EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330E84EC()
{
  v15 = v0;
  v1 = *(v0 + 296);

  if (qword_2814EAD70 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD68);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 328);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v3;
    *v9 = v3;
    v11 = v3;
    _os_log_impl(&dword_233084000, v4, v5, "%s records found %@", v8, 0x16u);
    sub_23309AE8C(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_2330E86CC(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[38];

    v4[36] = v8;
    v9 = swift_task_alloc();
    v4[45] = v9;
    *v9 = v5;
    v9[1] = sub_2330E884C;

    return sub_2330E800C();
  }
}

uint64_t sub_2330E884C()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330E8E5C, 0, 0);
}

uint64_t sub_2330E8988(uint64_t a1)
{
  v14 = v1;
  swift_willThrow();
  v2 = v1[40];
  type metadata accessor for Code(0);
  v1[35] = 26;
  v3 = v2;
  sub_233099668();
  v4 = sub_2330F1CE0();

  if (v4)
  {

    if (qword_2814EAD70 != -1)
    {
      swift_once();
    }

    v5 = sub_2330F23C0();
    __swift_project_value_buffer(v5, qword_2814EBD68);
    v6 = sub_2330F23A0();
    v7 = sub_2330F2960();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v13);
      _os_log_impl(&dword_233084000, v6, v7, "%s zone not found; registering", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x23839A490](v9, -1, -1);
      MEMORY[0x23839A490](v8, -1, -1);
    }

    v10 = swift_task_alloc();
    v1[44] = v10;
    *v10 = v1;
    v10[1] = sub_2330E86CC;

    return sub_2330B7964(0x7372657355, 0xE500000000000000);
  }

  else
  {
    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_2330E8BEC(uint64_t a1)
{
  v15 = v1;
  v2 = v1[42];
  v3 = v1[41];
  swift_willThrow();

  v4 = v1[43];
  type metadata accessor for Code(0);
  v1[35] = 26;
  v5 = v4;
  sub_233099668();
  LOBYTE(v2) = sub_2330F1CE0();

  if (v2)
  {

    if (qword_2814EAD70 != -1)
    {
      swift_once();
    }

    v6 = sub_2330F23C0();
    __swift_project_value_buffer(v6, qword_2814EBD68);
    v7 = sub_2330F23A0();
    v8 = sub_2330F2960();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v14);
      _os_log_impl(&dword_233084000, v7, v8, "%s zone not found; registering", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x23839A490](v10, -1, -1);
      MEMORY[0x23839A490](v9, -1, -1);
    }

    v11 = swift_task_alloc();
    v1[44] = v11;
    *v11 = v1;
    v11[1] = sub_2330E86CC;

    return sub_2330B7964(0x7372657355, 0xE500000000000000);
  }

  else
  {
    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_2330E8E74(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2330E8E98, 0, 0);
}

uint64_t sub_2330E8E98()
{
  v1 = sub_2330DBB84(*(v0 + 88), *(v0 + 32));
  *(v0 + 40) = v1;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2330F4D50;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2330E8FD0;
  v5 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DE78](v2, v5, 1, 1);
}

uint64_t sub_2330E8FD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_2330E937C;
  }

  else
  {

    v5 = sub_2330E90F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330E90F0()
{
  v18 = v0;
  if (qword_2814EAD70 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBD68);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v17);
    *(v7 + 12) = 2080;
    v0[2] = v6;
    v0[3] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE88, "JQ");
    v9 = sub_2330F2650();
    v11 = sub_233098F44(v9, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_233084000, v2, v3, "%s modify results: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[5];
  sub_2330E93E4();
  v13 = [swift_getObjCClassFromMetadata() defaultCenter];
  v14 = sub_2330F25C0();
  [v13 postNotificationName:v14 object:0];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2330E937C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_2330E93E4()
{
  result = qword_2814EAC10;
  if (!qword_2814EAC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC10);
  }

  return result;
}

unint64_t sub_2330E9430()
{
  result = qword_27DDDE790;
  if (!qword_27DDDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE790);
  }

  return result;
}

unint64_t sub_2330E94B0()
{
  result = qword_27DDDE7A0;
  if (!qword_27DDDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7A0);
  }

  return result;
}

unint64_t sub_2330E950C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2330F2780();
  }

  __break(1u);
  return result;
}

uint64_t static HTMLUtilities.convertHTMLStringToLines(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7A8, &qword_2330F7270);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v42 - v6;
  v45 = a1;
  v46 = a2;
  v43 = 0x3E656C7974732F3CLL;
  v44 = 0xE800000000000000;
  v8 = sub_2330F1F60();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_2330C04B8();
  v40 = v9;
  v41 = v9;
  v10 = MEMORY[0x277D837D0];
  sub_2330F2B40();
  v12 = v11;
  v14 = v13;
  sub_2330E9878(v7);
  if (v14)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2330E950C(v12, a1, a2);
    v15 = MEMORY[0x238399480](v17);
    v16 = v18;
  }

  v45 = v15;
  v46 = v16;
  v43 = 0x3E2B5D3E5E5B3CLL;
  v44 = 0xE700000000000000;
  v42[2] = 0;
  v42[3] = 0xE000000000000000;
  v41 = v9;
  v39[0] = v10;
  v39[1] = v9;
  v19 = sub_2330F2B20();
  v21 = v20;

  v45 = 10;
  v46 = 0xE100000000000000;
  MEMORY[0x28223BE20](v22, v23);
  v40 = &v45;
  v24 = sub_2330E98F8(0x7FFFFFFFFFFFFFFFLL, 1, sub_2330E9CB8, v39, v19, v21, v42);
  v25 = *(v24 + 16);
  if (v25)
  {
    v45 = MEMORY[0x277D84F90];
    sub_2330AC704(0, v25, 0);
    v26 = v45;
    v27 = (v24 + 56);
    do
    {
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *v27;

      v32 = MEMORY[0x238399480](v28, v29, v30, v31);
      v34 = v33;

      v45 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2330AC704((v35 > 1), v36 + 1, 1);
        v26 = v45;
      }

      *(v26 + 16) = v36 + 1;
      v37 = v26 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v27 += 4;
      --v25;
    }

    while (v25);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v26;
}

uint64_t sub_2330E9878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7A8, &qword_2330F7270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2330E98F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2330F2780();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_233098E38(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_233098E38((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2330F2760();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2330F26B0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2330F26B0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2330F2780();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_233098E38(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2330F2780();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_233098E38(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_233098E38((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2330F26B0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2330E9CB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2330F2DC0() & 1;
  }
}

uint64_t sub_2330E9D4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2330F2640();
  MEMORY[0x28223BE20](v2 - 8, v3);
  type metadata accessor for HTMLUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_2330F25C0();
  v7 = sub_2330F25C0();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  sub_2330F25F0();

  sub_2330F2630();
  v9 = sub_2330F25B0();

  return v9;
}

unint64_t sub_2330E9EC4()
{
  result = qword_27DDDE7B0;
  if (!qword_27DDDE7B0)
  {
    sub_2330DC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7B0);
  }

  return result;
}

id sub_2330E9F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = *v5;

  v11 = sub_2330F25C0();
  v15[4] = sub_2330EA258;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2330EA040;
  v15[3] = &block_descriptor_12;
  v12 = _Block_copy(v15);
  v13 = [v10 registerForTaskWithIdentifier:v11 usingQueue:a3 launchHandler:v12];

  _Block_release(v12);

  return v13;
}

void sub_2330EA040(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_2330EA0CC(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v1 submitTaskRequest:a1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_2330F1D60();

  return swift_willThrow();
}

id sub_2330EA19C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2330F25C0();
  v7[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_2330F1D60();

  return swift_willThrow();
}

uint64_t sub_2330EA258(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MobileGestaltCoordinator.hasHomeButton.getter(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    return (homeButtonType != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MobileGestaltCoordinator.isPadDevice.getter(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    iPadCapability = MobileGestalt_get_iPadCapability();

    return iPadCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2330EA348(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_regionCode_obj();

    if (v3)
    {
      v4 = sub_2330F25F0();
      v6 = v5;

      v21[0] = v4;
      v21[1] = v6;
      sub_2330C04B8();
      v7 = sub_2330F2B30();
      v8 = v7 == 0;
      if (qword_2814EAD68 != -1)
      {
        swift_once();
      }

      v9 = sub_2330F23C0();
      __swift_project_value_buffer(v9, qword_2814EBD50);

      v10 = sub_2330F23A0();
      v11 = sub_2330F2950();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v7 == 0;
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21[0] = v14;
        *v13 = 136315650;
        *(v13 + 4) = sub_233098F44(0xD000000000000018, 0x80000002330F7320, v21);
        *(v13 + 12) = 2080;
        v15 = sub_233098F44(v4, v6, v21);

        *(v13 + 14) = v15;
        *(v13 + 22) = 1024;
        *(v13 + 24) = v12;
        _os_log_impl(&dword_233084000, v10, v11, "%s Value %s recieved from Gestalt %{BOOL}d", v13, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v14, -1, -1);
        MEMORY[0x23839A490](v13, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_2814EAD68 != -1)
      {
        swift_once();
      }

      v16 = sub_2330F23C0();
      __swift_project_value_buffer(v16, qword_2814EBD50);
      v17 = sub_2330F23A0();
      v18 = sub_2330F2950();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_233098F44(0xD000000000000018, 0x80000002330F7320, v21);
        _os_log_impl(&dword_233084000, v17, v18, "%s device is not green tea.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x23839A490](v20, -1, -1);
        MEMORY[0x23839A490](v19, -1, -1);
      }

      return 0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKContainer.init(identifier:bundleIdentifierOverride:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v7 = sub_2330F25C0();

  v8 = [v6 initWithContainerIdentifier:v7 environment:a5];

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID_];
  v10 = [v9 options];
  v11 = sub_2330F25C0();
  [v10 setApplicationBundleIdentifierOverrideForContainerAccess_];

  v12 = [v9 options];
  v13 = sub_2330F25C0();

  [v12 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

  v14 = [v9 options];
  [v14 setUseZoneWidePCS_];

  return v9;
}

void sub_2330EA81C(void *a3@<X8>)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2330F25C0();

  v6 = [v4 initWithBundleID_];

  *a3 = v6;
}

uint64_t sub_2330EA8B8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2330EA9CC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE728, &unk_2330F6EA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330E5BC4;
  v0[13] = &block_descriptor_13;
  v0[14] = v2;
  [v1 startWithErrorHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330EA9CC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_2330EAAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 416) = a4;
  *(v4 + 368) = a2;
  *(v4 + 376) = a3;
  *(v4 + 360) = a1;
  return MEMORY[0x2822009F8](sub_2330EAB14, 0, 0);
}

uint64_t sub_2330EAB14()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 384) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 416);
    v4 = *(v0 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7C0, &qword_2330F73F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2330F73E0;
    *(v0 + 320) = sub_2330F25F0();
    *(v0 + 328) = v6;
    sub_2330F2BC0();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 72));
    sub_2330EB0CC(v4, boxed_opaque_existential_0Tm);
    *(v0 + 336) = sub_2330F25F0();
    *(v0 + 344) = v8;
    sub_2330F2BC0();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = (v3 & 1) == 0;
    sub_2330B3CE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE118, &qword_2330F5308);
    swift_arrayDestroy();
    v9 = sub_2330F2520();

    v10 = [objc_opt_self() optionsWithDictionary_];
    *(v0 + 392) = v10;

    v11 = sub_2330F25C0();
    *(v0 + 400) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_2330EAE6C;
    v12 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7C8, &unk_2330F7400);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_23309A5DC;
    *(v0 + 280) = &block_descriptor_14;
    *(v0 + 288) = v12;
    [v2 openApplication:v11 withOptions:v10 completion:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2330EB078();
    swift_allocError();
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2330EAE6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_2330EAFF4;
  }

  else
  {
    v2 = sub_2330EAF7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330EAF7C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330EAFF4(uint64_t a1)
{
  v2 = v1[50];
  v4 = v1[48];
  v3 = v1[49];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

unint64_t sub_2330EB078()
{
  result = qword_27DDDE7B8;
  if (!qword_27DDDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7B8);
  }

  return result;
}

uint64_t sub_2330EB0CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2330EB178()
{
  result = qword_27DDDE7D0;
  if (!qword_27DDDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7D0);
  }

  return result;
}

uint64_t sub_2330EB1EC()
{
  sub_233092A18((v0 + 16));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2330EB2E0;
  v4 = *(v0 + 64);

  return MEMORY[0x2821DF758](801, &unk_2330F7550, v4, v1, v2);
}

uint64_t sub_2330EB2E0()
{

  return MEMORY[0x2822009F8](sub_2330EB3F8, 0, 0);
}

uint64_t sub_2330EB3F8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2330EB4E4;
  v4 = v0[8];

  return MEMORY[0x2821DF758](802, &unk_2330F7560, v4, v1, v2);
}

uint64_t sub_2330EB4E4()
{

  return MEMORY[0x2822009F8](sub_2330EB5FC, 0, 0);
}

uint64_t sub_2330EB5FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_2330EBDA4();
  *v3 = v0;
  v3[1] = sub_2330EB6FC;
  v5 = v0[8];

  return MEMORY[0x2821DF750](803, &unk_2330F7570, v5, v1, &type metadata for DaemonDefault, v2, v4);
}

uint64_t sub_2330EB6FC()
{

  return MEMORY[0x2822009F8](sub_23308D118, 0, 0);
}

uint64_t sub_2330EB814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EBDF8();
}

uint64_t sub_2330EB8B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330EC00C();
}

uint64_t sub_2330EB954(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v1;
  v4[1] = sub_2330EBA0C;

  return sub_2330EC220(v1 + 16);
}

uint64_t sub_2330EBA0C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330EBB40, 0, 0);
}

uint64_t sub_2330EBB58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330EB1CC(v2);
}

uint64_t sub_2330EBBEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EB814();
}

uint64_t sub_2330EBC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EB8B4();
}

uint64_t sub_2330EBD0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330EB954(a1);
}

unint64_t sub_2330EBDA4()
{
  result = qword_2814EB118[0];
  if (!qword_2814EB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814EB118);
  }

  return result;
}

uint64_t sub_2330EBE14()
{
  v11 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18A8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v10);
    _os_log_impl(&dword_233084000, v2, v3, "%s Showing the Debug menu.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  v6 = qword_2814EB0D8;
  if (qword_2814EB0D8)
  {
    v7 = sub_2330F25C0();
    [v6 setBool:0 forKey:v7];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2330EC028()
{
  v11 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18A8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v10);
    _os_log_impl(&dword_233084000, v2, v3, "%s Hiding the Debug menu.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  v6 = qword_2814EB0D8;
  if (qword_2814EB0D8)
  {
    v7 = sub_2330F25C0();
    [v6 setBool:1 forKey:v7];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2330EC220(uint64_t a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_2330EC254, 0, 0);
}

uint64_t sub_2330EC254()
{
  v17 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18A8);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_233098F44(v5, v4, &v16);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_233098F44(v7, v6, &v16);
    _os_log_impl(&dword_233084000, v2, v3, "%s setting value %s for key %s.", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  if (!v0[4] && v0[5] == 0xE000000000000000 || (sub_2330F2DC0() & 1) != 0)
  {
    if (qword_2814EB0D0 != -1)
    {
      swift_once();
    }

    v10 = qword_2814EB0D8;
    if (qword_2814EB0D8)
    {
      v11 = sub_2330F25C0();
      [v10 removeObjectForKey_];
LABEL_16:
    }
  }

  else
  {
    if (qword_2814EB0D0 != -1)
    {
      swift_once();
    }

    v12 = qword_2814EB0D8;
    if (qword_2814EB0D8)
    {
      v13 = sub_2330F25C0();
      v11 = sub_2330F25C0();
      [v12 setObject:v13 forKey:v11];

      goto LABEL_16;
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2330EC56C(uint64_t a1)
{
  v1 = sub_2330F2230();
  MEMORY[0x2383994D0](v1);

  qword_2814EBE38 = 0xD00000000000001BLL;
  unk_2814EBE40 = 0x80000002330F8E10;
  return result;
}

uint64_t sub_2330EC5D4(uint64_t a1)
{
  v3 = sub_2330F2230();
  v4 = v1;

  MEMORY[0x2383994D0](0x686364756F6C632ELL, 0xED00006C656E6E61);

  qword_2814EBE28 = v3;
  unk_2814EBE30 = v4;
  return result;
}

uint64_t sub_2330EC64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE880, &qword_2330F44A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2330F73E0;
  if (qword_2814EB0C0 != -1)
  {
    swift_once();
  }

  v1 = unk_2814EBE40;
  *(v0 + 32) = qword_2814EBE38;
  *(v0 + 40) = v1;
  v2 = qword_2814EB098;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_2814EBE30;
  *(v0 + 48) = qword_2814EBE28;
  *(v0 + 56) = v3;
  qword_2814EB0B0 = v0;
}

id sub_2330EC734(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2330F24F0();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection] = 0;
  v8 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_queue;
  sub_2330EF8E4();
  sub_2330F24E0();
  *&v2[v8] = sub_2330B045C(v7, 0xD000000000000068, 0x80000002330F8E80);
  v9 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_pushNotificationDispatch;
  type metadata accessor for PushNotificationDispatch();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = MEMORY[0x277D84F98];
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_dependencies] = a1;
  v11 = type metadata accessor for PushNotificationServer();
  v13.receiver = v2;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_2330EC85C()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2330EC8CC, 0, 0);
}

uint64_t sub_2330EC8CC()
{
  v1 = *(v0 + 64);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2330EF660;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = &unk_2330F7648;
  *(v6 + 24) = v5;
  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_2330ECA50;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF750](601, &unk_2330F7658, v6, v2, v9, v3, v10);
}

uint64_t sub_2330ECA50()
{

  return MEMORY[0x2822009F8](sub_2330ECB68, 0, 0);
}

uint64_t sub_2330ECB68()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2330EF7FC;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = &unk_2330F7660;
  *(v6 + 24) = v5;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2330ECCD8;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF750](602, &unk_2330F7668, v6, v2, v9, v3, v10);
}

uint64_t sub_2330ECCD8()
{

  return MEMORY[0x2822009F8](sub_2330ECDF0, 0, 0);
}

uint64_t sub_2330ECDF0()
{
  v28 = v0;
  v1 = _s15VisionCompanion20UserDefaultUtilitiesV30isUsingStagingForCloudChannelsSbyFZ_0();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315394;
    v7 = sub_2330F2F30();
    v9 = sub_233098F44(v7, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v10 = 0x6D706F6C65766564;
    }

    else
    {
      v10 = 0x69746375646F7270;
    }

    if (v1)
    {
      v11 = 0xEB00000000746E65;
    }

    else
    {
      v11 = 0xEA00000000006E6FLL;
    }

    v12 = sub_233098F44(v10, v11, &v27);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_233084000, v3, v4, "%s Registering with push notification environment %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  v13 = v0[8];
  sub_2330F25F0();
  v14 = *(v13 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_queue);
  v15 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v16 = v14;
  v17 = sub_2330F25C0();

  v18 = sub_2330F25C0();
  v19 = [v15 initWithEnvironmentName:v17 namedDelegatePort:v18 queue:v16];

  v20 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection;
  v21 = *(v13 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection);
  *(v13 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection) = v19;
  v22 = v19;

  if (v22)
  {
    if (qword_2814EB0A0 != -1)
    {
      swift_once();
    }

    v23 = sub_2330F27C0();
    [v22 _setEnabledTopics_];
  }

  v24 = *(v13 + v20);
  if (v24)
  {
    [v24 setDelegate_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v25 = v0[1];

  return v25();
}

uint64_t sub_2330ED148(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2330ED1B0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return v7(v3, v4);
}

void sub_2330ED2D4(uint64_t a1, unint64_t a2, const char *a3, SEL *a4)
{
  v7 = v4;
  swift_getObjectType();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v10 = sub_2330F23C0();
  __swift_project_value_buffer(v10, qword_2814EBDE0);

  v11 = sub_2330F23A0();
  v12 = sub_2330F2980();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315394;
    v15 = sub_2330F2F30();
    v17 = sub_233098F44(v15, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_233098F44(a1, a2, &v27);
    _os_log_impl(&dword_233084000, v11, v12, a3, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v14, -1, -1);
    v18 = v13;
    a4 = v25;
    MEMORY[0x23839A490](v18, -1, -1);
  }

  v19 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v20 = sub_2330F25C0();
  v26 = [v19 initWithChannelID_];

  v21 = *(v7 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection);
  if (v21)
  {
    v22 = qword_2814EB098;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = sub_2330F25C0();
    [v23 *a4];
  }
}

void sub_2330ED550(void *a1)
{
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v37 - v5;
  v7 = [a1 topic];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2330F25F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_2814EB0C0 == -1)
  {
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_once();
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  if (v9 == qword_2814EBE38 && v11 == unk_2814EBE40)
  {

LABEL_10:

    sub_2330ED9DC(a1);
    return;
  }

  v12 = sub_2330F2DC0();

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_14:
  v13 = [a1 topic];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2330F25F0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  if (qword_2814EB098 == -1)
  {
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    swift_once();
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  if (v15 == qword_2814EBE28 && v17 == unk_2814EBE30)
  {

LABEL_23:
    v19 = sub_2330F2890();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;
    v20[5] = a1;
    v21 = v1;
    v22 = a1;
    sub_2330878BC(0, 0, v6, &unk_2330F7638, v20);

    return;
  }

  v18 = sub_2330F2DC0();

  if (v18)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v23 = sub_2330F23C0();
  __swift_project_value_buffer(v23, qword_2814EBDE0);
  v24 = a1;
  v37 = sub_2330F23A0();
  v25 = sub_2330F2980();
  if (os_log_type_enabled(v37, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315394;
    v28 = sub_2330F2F30();
    v30 = sub_233098F44(v28, v29, &v38);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = [v24 topic];

    if (v31)
    {
      v32 = sub_2330F25F0();
      v34 = v33;

      v35 = sub_233098F44(v32, v34, &v38);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_233084000, v37, v25, "%s recieved notification on another message topic %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v27, -1, -1);
      MEMORY[0x23839A490](v26, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v36 = v37;
  }
}

void sub_2330ED9DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = [a1 userInfo];
  if (v9)
  {
    v10 = v9;
    sub_2330F2530();

    v11 = sub_2330F2520();

    v44 = [objc_opt_self() notificationFromRemoteNotificationDictionary_];

    if (v44)
    {
      v12 = [v44 recordZoneID];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 zoneName];

        v15 = sub_2330F25F0();
        v17 = v16;

        v18 = sub_2330F2890();
        (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v15;
        v19[5] = v17;
        v19[6] = v2;
        v19[7] = a1;
        v19[8] = ObjectType;
        v20 = v2;
        v21 = a1;
        sub_2330878BC(0, 0, v8, &unk_2330F7628, v19);

        return;
      }

      if (qword_2814EADA8 != -1)
      {
        swift_once();
      }

      v32 = sub_2330F23C0();
      __swift_project_value_buffer(v32, qword_2814EBDE0);
      v33 = a1;
      v34 = sub_2330F23A0();
      v35 = sub_2330F2960();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45 = v38;
        *v36 = 136315394;
        v39 = sub_2330F2F30();
        v41 = sub_233098F44(v39, v40, &v45);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2112;
        *(v36 + 14) = v33;
        *v37 = v33;
        v42 = v33;
        _os_log_impl(&dword_233084000, v34, v35, "%s failed to dispatch push notification %@", v36, 0x16u);
        sub_23309AE8C(v37);
        MEMORY[0x23839A490](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x23839A490](v38, -1, -1);
        MEMORY[0x23839A490](v36, -1, -1);

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2814EADA8 != -1)
      {
        swift_once();
      }

      v22 = sub_2330F23C0();
      __swift_project_value_buffer(v22, qword_2814EBDE0);
      v23 = a1;
      v44 = sub_2330F23A0();
      v24 = sub_2330F2960();

      if (os_log_type_enabled(v44, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45 = v27;
        *v25 = 136315394;
        v28 = sub_2330F2F30();
        v30 = sub_233098F44(v28, v29, &v45);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v23;
        *v26 = v23;
        v31 = v23;
        _os_log_impl(&dword_233084000, v44, v24, "%s failed to parse push notification %@", v25, 0x16u);
        sub_23309AE8C(v26);
        MEMORY[0x23839A490](v26, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x23839A490](v27, -1, -1);
        MEMORY[0x23839A490](v25, -1, -1);
LABEL_13:

        return;
      }
    }

    v43 = v44;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2330EDF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_2330EDF44, 0, 0);
}

uint64_t sub_2330EDF44()
{
  v28 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 40) == 0x656369766544 && v1 == 0xE600000000000000;
  if (v2 || (sub_2330F2DC0() & 1) != 0)
  {
    v3 = 0;
  }

  else if (*(v0 + 40) == 0xD000000000000012 && 0x80000002330F7DA0 == v1 || (sub_2330F2DC0() & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    if ((*(v0 + 40) != 0xD000000000000010 || 0x80000002330F7DC0 != v1) && (sub_2330F2DC0() & 1) == 0)
    {
      v5 = *(v0 + 40);
      v4 = *(v0 + 48);
      sub_23309982C();
      v6 = swift_allocError();
      *v7 = v5;
      v7[1] = v4;
      swift_willThrow();
      v8 = qword_2814EADA8;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 64);
      v10 = sub_2330F23C0();
      __swift_project_value_buffer(v10, qword_2814EBDE0);
      v11 = v9;
      v12 = v6;
      v13 = sub_2330F23A0();
      v14 = sub_2330F2960();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 64);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v16 = 136315650;
        v19 = sub_2330F2F30();
        v21 = sub_233098F44(v19, v20, &v27);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2112;
        *(v16 + 14) = v15;
        *v17 = v15;
        *(v16 + 22) = 2112;
        v22 = v15;
        v23 = v6;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 24) = v24;
        v17[1] = v24;
        _os_log_impl(&dword_233084000, v13, v14, "%s failed to dispatch push notification %@; error: %@", v16, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE520, &qword_2330F4340);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23839A490](v18, -1, -1);
        MEMORY[0x23839A490](v16, -1, -1);
      }

      else
      {
      }

      v25 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }

    v3 = 2;
  }

  *(v0 + 112) = v3;
  *(v0 + 80) = *(*(v0 + 56) + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_pushNotificationDispatch);

  return MEMORY[0x2822009F8](sub_2330EE2D8);
}

uint64_t sub_2330EE2D8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_2330AD184(*(v0 + 112));
    if (v4)
    {
      v5 = *(v2 + 56) + 16 * v3;
      v6 = *v5;
      *(v0 + 96) = *(v5 + 8);

      v9 = v6 + *v6;
      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_2330EE6B0;

      __asm { BRAA            X0, X16 }
    }
  }

  sub_2330AF2BC();
  *(v0 + 88) = swift_allocError();
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_2330EE474, 0, 0);
}

uint64_t sub_2330EE474()
{
  v21 = v0;
  v1 = v0[11];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBDE0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2330F23A0();
  v7 = sub_2330F2960();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315650;
    v12 = sub_2330F2F30();
    v14 = sub_233098F44(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    *(v9 + 22) = 2112;
    v15 = v8;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    v10[1] = v17;
    _os_log_impl(&dword_233084000, v6, v7, "%s failed to dispatch push notification %@; error: %@", v9, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE520, &qword_2330F4340);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x23839A490](v11, -1, -1);
    MEMORY[0x23839A490](v9, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2330EE6B0()
{

  return MEMORY[0x2822009F8](sub_2330EE7C8, 0, 0);
}

uint64_t sub_2330EE7C8()
{
  v14 = v0;
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDE0);

  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    v8 = sub_2330F2F30();
    v10 = sub_233098F44(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_233098F44(v5, v4, &v13);
    _os_log_impl(&dword_233084000, v2, v3, "%s successfully dispatched push notification for zoneName: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2330EE998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2330EE9B8, 0, 0);
}

id sub_2330EE9B8()
{
  v1 = v0[3];
  v2 = sub_233093F24();
  v0[4] = v2;
  result = [v1 userInfo];
  if (result)
  {
    v4 = result;
    v5 = sub_2330F2530();
    v0[5] = v5;

    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_2330EEAC0;

    return sub_2330E4CDC(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2330EEAC0()
{

  return MEMORY[0x2822009F8](sub_2330EEBD8, 0, 0);
}

uint64_t sub_2330EEBD8()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_2330EEC68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PushNotificationServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2330EEE40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330EC85C();
}

void sub_2330EEED0(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2330F1E20();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2330B4238(a1, a2);
  sub_2330F1E30();
  sub_2330EF46C();
  sub_2330F2B00();
  if (v31)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    v27 = xmmword_2330F46B0;
    v10 = MEMORY[0x277D84BC0];
    do
    {
      v11 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2A0, &qword_2330F5F80);
      v12 = swift_allocObject();
      *(v12 + 16) = v27;
      *(v12 + 56) = MEMORY[0x277D84B78];
      *(v12 + 64) = v10;
      *(v12 + 32) = v11;
      v13 = sub_2330F2620();
      v15 = v14;
      v28 = v8;
      v29 = v9;

      MEMORY[0x2383994D0](v13, v15);

      v8 = v28;
      v9 = v29;
      sub_2330F2B00();
    }

    while (v31 != 1);
  }

  (*(v26 + 8))(v7, v4);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v16 = sub_2330F23C0();
  __swift_project_value_buffer(v16, qword_2814EBDE0);

  v17 = sub_2330F23A0();
  v18 = sub_2330F2980();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315394;
    v21 = sub_2330F2F30();
    v23 = sub_233098F44(v21, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_233098F44(v8, v9, &v28);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_233084000, v17, v18, "%s did receive public token: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v20, -1, -1);
    MEMORY[0x23839A490](v19, -1, -1);
  }

  else
  {
  }
}

void sub_2330EF268(void *a1)
{
  swift_getObjectType();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = a1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    v8 = sub_2330F2F30();
    v10 = sub_233098F44(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = [v3 topic];

    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = sub_2330F25F0();
    v14 = v13;

    v15 = sub_233098F44(v12, v14, &v16);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_233084000, v4, v5, "%s received push notification for topic: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  sub_2330ED550(v3);
}

unint64_t sub_2330EF46C()
{
  result = qword_2814EB330;
  if (!qword_2814EB330)
  {
    sub_2330F1E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EB330);
  }

  return result;
}

uint64_t sub_2330EF4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2330877C8;

  return sub_2330EDF1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2330EF5A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330EE998(a1, v4, v5, v7, v6);
}

uint64_t sub_2330EF684(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_233088E00;

  return sub_2330ED148(a1, a2, v6);
}

uint64_t sub_2330EF748(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330ED1B0(a1, v4);
}

uint64_t sub_2330EF820(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2330877C8;

  return sub_2330ED148(a1, a2, v6);
}

unint64_t sub_2330EF8E4()
{
  result = qword_2814EAC60;
  if (!qword_2814EAC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC60);
  }

  return result;
}

void sub_2330EF934()
{
  sub_2330F2200();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2330F25C0();

  v2 = [v0 initWithSuiteName_];

  qword_27DDDE888 = v2;
}

id sub_2330EF9D4()
{
  result = sub_2330EF9F4();
  qword_2814EB0D8 = result;
  return result;
}

id sub_2330EF9F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    sub_2330F2220();
    goto LABEL_10;
  }

  v2 = sub_2330F25F0();
  v4 = v3;

  v5 = sub_2330F2220();
  if (!v4)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v2 != v5 || v4 != v6)
  {
    v8 = sub_2330F2DC0();

    if (v8)
    {
      return [objc_opt_self() standardUserDefaults];
    }

LABEL_11:
    sub_2330F2220();
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_2330F25C0();

    v11 = [v9 initWithSuiteName_];

    return v11;
  }

  return [objc_opt_self() standardUserDefaults];
}

id sub_2330EFB78(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

uint64_t static UserDefaultUtilities.getLatestNews()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (qword_27DDDE888)
  {
    v0 = qword_27DDDE888;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

      swift_unknownObjectRelease();
    }

    else
    {

      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

BOOL static UserDefaultUtilities.isGetLatestNewsSet()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (!qword_27DDDE888)
  {
    return 0;
  }

  v0 = qword_27DDDE888;
  v1 = sub_2330F25C0();
  v2 = [v0 objectForKey_];

  v3 = v2 != 0;
  if (v2)
  {
    sub_2330F2B50();

    swift_unknownObjectRelease();
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_2330DBEC8(v5);
  return v3;
}

uint64_t static UserDefaultUtilities.isRestrictedGeo()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (qword_27DDDE888)
  {
    v0 = qword_27DDDE888;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

      swift_unknownObjectRelease();
    }

    else
    {

      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

uint64_t _s15VisionCompanion20UserDefaultUtilitiesV30isUsingStagingForCloudChannelsSbyFZ_0()
{
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8)
  {
    v0 = qword_2814EB0D8;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

      swift_unknownObjectRelease();
    }

    else
    {

      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

uint64_t NetworkStatusCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkStatusCoordinator.init()();
  return v0;
}

uint64_t *NetworkStatusCoordinator.init()()
{
  v1 = *v0;
  v2 = sub_2330F24F0();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE890, &unk_2330F76B0);
  swift_allocObject();
  v0[2] = sub_2330F2410();
  sub_2330EF8E4();
  sub_2330F24E0();
  v0[3] = sub_2330B045C(v5, 0xD00000000000006FLL, 0x80000002330F9180);
  sub_2330F2460();
  swift_allocObject();
  sub_2330F2450();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;

  sub_2330F0948(sub_2330F0940, v7);
  sub_2330F2430();

  v8 = v0[3];
  sub_2330F2440();

  return v0;
}

uint64_t sub_2330F0500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2330F2490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2330F2470();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v33 - v14;
  sub_2330F2480();
  v16 = (*(v10 + 88))(v15, v9);
  if (v16 == *MEMORY[0x277CD8F78])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v37 = 0;
LABEL_11:
    sub_2330F2400();
  }

  if (v16 == *MEMORY[0x277CD8F68] || v16 == *MEMORY[0x277CD8F70])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v37 = 1;
    goto LABEL_11;
  }

  if (qword_27DDDDBD8 != -1)
  {
    swift_once();
  }

  v19 = sub_2330F23C0();
  __swift_project_value_buffer(v19, qword_27DDE18C0);
  (*(v5 + 16))(v8, a1, v4);
  v20 = sub_2330F23A0();
  v21 = sub_2330F2970();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v21;
    v23 = v22;
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v23 = 136315394;
    v24 = sub_2330F2F30();
    v34 = v20;
    v26 = sub_233098F44(v24, v25, v38);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_2330F2480();
    v27 = sub_2330F2650();
    v29 = v28;
    (*(v5 + 8))(v8, v4);
    v30 = sub_233098F44(v27, v29, v38);

    *(v23 + 14) = v30;
    v31 = v34;
    _os_log_impl(&dword_233084000, v34, v35, "%s found unexpected path status: %s", v23, 0x16u);
    v32 = v36;
    swift_arrayDestroy();
    MEMORY[0x23839A490](v32, -1, -1);
    MEMORY[0x23839A490](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_2330F0948(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2330F0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_2330F2890();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_2330878BC(0, 0, v13, &unk_2330F76C8, v15);
}

uint64_t sub_2330F0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE8A0, &qword_2330F77D8);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE8A8, &qword_2330F77E0);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330F0BD8, 0, 0);
}

uint64_t sub_2330F0BD8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[2] = *(v0[4] + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE890, &unk_2330F76B0);
  v5 = sub_2330F1BB4(&qword_27DDDE8B0, &qword_27DDDE890, &unk_2330F76B0, MEMORY[0x277CBCE20]);
  MEMORY[0x238399220](v4, v5);
  sub_2330F23F0();
  (*(v2 + 8))(v1, v3);
  v6 = sub_2330F1BB4(&qword_27DDDE8B8, &qword_27DDDE8A8, &qword_2330F77E0, MEMORY[0x277CBCDD0]);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_2330F0D64;
  v8 = v0[12];

  return MEMORY[0x282200308](v0 + 18, v8, v6);
}

uint64_t sub_2330F0D64()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2330F11C8;
  }

  else
  {
    v2 = sub_2330F0E78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2330F0E94()
{
  v20 = v0;
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = sub_2330DC48C(*(v0 + 40), *(v0 + 48));
    v6 = v5;
    if (qword_27DDDDBD8 != -1)
    {
      swift_once();
    }

    v7 = sub_2330F23C0();
    __swift_project_value_buffer(v7, qword_27DDE18C0);

    v8 = sub_2330F23A0();
    v9 = sub_2330F2980();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315394;
      v12 = sub_233098F44(v4, v6, &v19);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      if (v1)
      {
        v13 = 0x656E6E6F63736964;
      }

      else
      {
        v13 = 0x657463656E6E6F63;
      }

      if (v1)
      {
        v14 = 0xEC00000064657463;
      }

      else
      {
        v14 = 0xE900000000000064;
      }

      v15 = sub_233098F44(v13, v14, &v19);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_233084000, v8, v9, "%s received network status %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v11, -1, -1);
      MEMORY[0x23839A490](v10, -1, -1);
    }

    else
    {
    }

    v16 = *(v0 + 56);
    *(v0 + 145) = v1 & 1;
    v18 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_2330F1254;

    return v18(v0 + 145);
  }
}

uint64_t sub_2330F11C8()
{
  *(v0 + 24) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2330F1254()
{
  v1 = *v0;
  v2 = *v0;

  v3 = sub_2330F1BB4(&qword_27DDDE8B8, &qword_27DDDE8A8, &qword_2330F77E0, MEMORY[0x277CBCDD0]);
  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v2;
  v4[1] = sub_2330F0D64;
  v5 = *(v1 + 96);

  return MEMORY[0x282200308](v1 + 144, v5, v3);
}

uint64_t sub_2330F13F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_233088E00;

  return sub_2330F0A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2330F14D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = sub_2330F2890();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = &unk_2330F76D8;
  v15[8] = v13;

  sub_2330878BC(0, 0, v12, &unk_2330F76E0, v15);
}

uint64_t sub_2330F163C(_BYTE *a1, int *a2)
{
  if (*a1)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v6 = (a2 + *a2);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_2330877C8;

    return v6();
  }
}

uint64_t sub_2330F175C(_BYTE *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return sub_2330F163C(a1, v4);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2330F1854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2330877C8;

  return sub_2330F0A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t NetworkStatusCoordinator.deinit()
{

  return v0;
}

uint64_t NetworkStatusCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NetworkStatusCoordinator.NetworkStatus.description.getter()
{
  if (*v0)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x657463656E6E6F63;
  }
}

uint64_t NetworkStatusCoordinator.NetworkStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2330F2E80();
  MEMORY[0x238399C90](v1);
  return sub_2330F2EB0();
}

unint64_t sub_2330F1A70()
{
  result = qword_27DDDE898;
  if (!qword_27DDDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE898);
  }

  return result;
}

uint64_t sub_2330F1AC4()
{
  if (*v0)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x657463656E6E6F63;
  }
}

uint64_t sub_2330F1BB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static NSPredicate.truePredicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}