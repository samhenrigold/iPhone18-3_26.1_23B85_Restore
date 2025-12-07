uint64_t sub_2271FDCD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = objc_opt_self();
  sub_227665EE0();
  v6 = sub_22766C0B0();

  [v5 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v4 + 40), *(v4 + 64));
  sub_2271D7EE8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271FDE24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FDEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a3, a1);
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_227670CD0;
    sub_2276627D0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    *(v10 + 32) = sub_22766D140();
    *(v10 + 40) = v11;
    a5(1, v10, a1);
  }

  return result;
}

uint64_t sub_2271FDFD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A170();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227669D60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_2276638D0();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[15] = v7;
  v2[16] = *(v7 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FE1B8, 0, 0);
}

uint64_t sub_2271FE1B8(uint64_t a1)
{
  v38 = v1;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[2];
  sub_22766A630();
  v35 = *(v4 + 16);
  v35(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[16];
  v9 = v1[17];
  v11 = v1[14];
  v12 = v1[15];
  v14 = v1[10];
  v13 = v1[11];
  if (v8)
  {
    v34 = v1[15];
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
    v17 = sub_22766D140();
    v33 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v32, "Inserting Workout Plan: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v33, v34);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v1[13];
  v22 = v1[10];
  v23 = v1[11];
  v24 = v1[2];
  v25 = v1[3];
  v26 = v25[17];
  __swift_project_boxed_opaque_existential_0(v25 + 13, v25[16]);
  v35(v21, v24, v22);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v1[18] = v28;
  *(v28 + 16) = v25;
  (*(v23 + 32))(v28 + v27, v21, v22);
  v29 = *(v26 + 24);

  v36 = (v29 + *v29);
  v30 = swift_task_alloc();
  v1[19] = v30;
  *v30 = v1;
  v30[1] = sub_2271FE54C;

  return v36();
}

uint64_t sub_2271FE54C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_22720E16C;
  }

  else
  {

    v2 = sub_22720E0FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2271FE668(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22727EB5C(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_227670CD0;
    sub_2276637C0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_22766D140();
    v14 = v13;
    (*(v8 + 8))(v10, v7);
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_2272D7E08(0, v11, a1);
  }
}

uint64_t sub_2271FE820(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227665CA0();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FE9A0, 0, 0);
}

uint64_t sub_2271FE9A0(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[7];
  v10 = v1[2];
  v9 = v1[3];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v11 = v9[17];
  __swift_project_boxed_opaque_existential_0(v9 + 13, v9[16]);
  (*(v6 + 16))(v5, v10, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v1[14] = v13;
  (*(v6 + 32))(v13 + v12, v5, v8);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(v11 + 24);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[15] = v15;
  *v15 = v1;
  v15[1] = sub_2271FEBF0;

  return v17();
}

uint64_t sub_2271FEBF0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22717061C;
  }

  else
  {

    v2 = sub_2271FED0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271FED0C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = objc_opt_self();
  sub_227665EE0();
  v6 = sub_22766C0B0();

  [v5 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v4 + 40), *(v4 + 64));
  sub_2271D7EE8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271FEE54(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = sub_2276627D0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
  v9 = sub_227665CA0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v19 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a2, v9);
  sub_22756554C(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v20 + 40), *(v20 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v19;
    sub_227665C40();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = v21;
    v16 = sub_22766D140();
    v18 = v17;
    (*(v22 + 8))(v7, v15);
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_2272D7DDC(0, v14, a1);
  }

  return result;
}

uint64_t sub_2271FF0F0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD0, &qword_227679720);
  v10 = sub_2276627D0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v13 + v12, a2, v10);
  v14 = sub_226F4BB6C(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  v15 = sub_227273B0C(v14, a1);

  if (!v3)
  {
    sub_22722AEAC(v15, v9);

    v17 = sub_2276638D0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_226E97D1C(v9, &unk_27D7BB920, &unk_227672480);
      v19 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51188], v19);
      return swift_willThrow();
    }

    else
    {
      return (*(v18 + 32))(a3, v9, v17);
    }
  }

  return result;
}

char *sub_2271FF3E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, char **a4@<X8>)
{
  result = sub_226E9B790(a2, a3 & 1, a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2271FF424(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v2[7] = swift_task_alloc();
  v3 = sub_2276627D0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = sub_2276638D0();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FF664, 0, 0);
}

uint64_t sub_2271FF664(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  v9 = v1[2];
  v8 = v1[3];
  sub_22766A630();
  sub_22766B370();
  v10 = *(v3 + 8);
  v1[19] = v10;
  v1[20] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  v11 = v8[16];
  v12 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v11);
  (*(v7 + 16))(v5, v9, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v1[21] = v14;
  *(v14 + 16) = v8;
  (*(v7 + 32))(v14 + v13, v5, v6);
  v15 = *(v12 + 24);

  v20 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[22] = v16;
  *v16 = v1;
  v16[1] = sub_2271FF8B4;
  v17 = v1[15];
  v18 = v1[12];

  return v20(v17, sub_22720CB10, v14, v18, v11, v12);
}

uint64_t sub_2271FF8B4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2271FFD6C;
  }

  else
  {

    v2 = sub_2271FF9D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271FF9D0()
{
  v15 = v0[19];
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v14 = v0[16];
  v6 = v0[4];
  v7 = v0[5];
  v8 = sub_227662750();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = *(v2 + 56);
  v9(v5, 1, 1, v3);
  v10 = sub_227663540();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v9(v7, 1, 1, v3);
  sub_227663890();
  sub_226E97D1C(v7, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v6, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v5, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v4, &qword_27D7B9690, qword_227670B50);
  sub_22766A630();
  sub_22766B370();
  v15(v1, v14);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_2271FFC58;
  v12 = v0[14];

  return sub_2271FDFD0(v12);
}

uint64_t sub_2271FFC58()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2271FFF3C;
  }

  else
  {
    v2 = sub_2271FFE38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271FFD6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FFE38()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v3(v0[14], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271FFF3C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v3(v0[14], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227200030(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2276638D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2276627D0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272001CC, 0, 0);
}

uint64_t sub_2272001CC(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[15];
  v5 = v1[5];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  v8 = swift_allocObject();
  v1[18] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = 1;
  *(v8 + 32) = 1;
  v9 = *(v7 + 24);

  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v1[19] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  v1[20] = v11;
  *v10 = v1;
  v10[1] = sub_2272003D4;

  return (v13)(v1 + 2, sub_22720D744, v8, v11, v6, v7);
}

uint64_t sub_2272003D4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2272007C4;
  }

  else
  {

    v2 = sub_2272004F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2272004F0()
{
  v0[3] = v0[2];
  swift_getKeyPath();
  sub_226E9CFD0(&qword_281398E78, &qword_27D7BC180, &qword_2276854E0, MEMORY[0x277D83B68]);
  sub_226EAC024(&qword_28139BCD0, MEMORY[0x277D4FFA8], MEMORY[0x277D4FFB8]);
  v1 = sub_22766C220();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[7];
    v16 = MEMORY[0x277D84F90];
    result = sub_226F20288(0, v2, 0);
    v15 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v16;
    v7 = *(v1 + 16) - 1;
    while (v7 != -1)
    {
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_14;
      }

      v8 = v0[8];
      v9 = v0[6];
      (*(v4 + 16))(v8, v15 + *(v4 + 72) * v7, v9);
      sub_2276637C0();
      (*(v4 + 8))(v8, v9);
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F20288((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[14];
      v13 = v0[9];
      *(v16 + 16) = v11 + 1;
      result = (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      --v7;
      if (!--v2)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_10:
    v0[22] = v6;
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_227200874;

    return sub_2272011EC();
  }

  return result;
}

uint64_t sub_2272007C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227200874(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22720113C;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_22720099C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22720099C()
{
  v1 = v0[22];
  v2 = sub_2271E5958(v0[25], MEMORY[0x277D52D18], MEMORY[0x277D52CF8]);

  v24 = *(v1 + 16);
  if (v24)
  {
    v4 = 0;
    v5 = v0[10];
    v23 = v1;
    while (2)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v7 = *(v5 + 72);
      v25 = v4 + 1;
      (*(v5 + 16))(v0[11], v0[22] + v6 + v7 * v4, v0[9]);
      v8 = v2 + v6;
      v9 = *(v2 + 16) + 1;
      do
      {
        if (!--v9)
        {
          v14 = v0[12];
          v13 = v0[13];
          v16 = v0[10];
          v15 = v0[11];
          v17 = v0[9];
          v18 = v0[5];

          v19 = *(v16 + 32);
          v19(v14, v15, v17);
          v19(v13, v14, v17);
          __swift_project_boxed_opaque_existential_0((v18 + 424), *(v18 + 448));
          v20 = swift_task_alloc();
          v0[26] = v20;
          *v20 = v0;
          v20[1] = sub_227200D4C;
          v21 = v0[13];
          v22 = v0[4];

          return sub_22714E544(v22, v21);
        }

        sub_226EAC024(&qword_27D7B8750, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v8 += v7;
      }

      while ((sub_22766BFB0() & 1) == 0);
      result = (*(v5 + 8))(v0[11], v0[9]);
      v4 = v25;
      v1 = v23;
      if (v25 != v24)
      {
        continue;
      }

      break;
    }
  }

  v10 = sub_227664EC0();
  sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51190], v10);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_227200D4C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_22720107C;
  }

  else
  {
    v2 = sub_227200E60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227200E60()
{
  sub_227665740();
  if (v1 <= 0.0)
  {
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[4];
    v7 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51190], v7);
    swift_willThrow();
    v9 = sub_227665750();
    (*(*(v9 - 8) + 8))(v6, v9);
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    (*(v0[10] + 8))(v0[13], v0[9]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_22720107C()
{
  (*(v0[10] + 8))(v0[13], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22720113C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272011EC()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272012AC, 0, 0);
}

uint64_t sub_2272012AC(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  *v9 = v1;
  v9[1] = sub_226F9D924;
  v11 = v1[3];

  return (v13)(v1 + 2, sub_22720D728, v11, v10, v6, v7);
}

uint64_t sub_227201480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_227237FB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    result = swift_deallocClassInstance();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_227201694(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227667440();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272017B8, 0, 0);
}

uint64_t sub_2272017B8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v5[16]);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[11] = v8;
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = *(v6 + 24);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_22720199C;

  return v12();
}

uint64_t sub_22720199C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227201BEC;
  }

  else
  {

    v2 = sub_227201AB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227201AB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = objc_opt_self();
  sub_227665EE0();
  v6 = sub_22766C0B0();

  [v5 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v4 + 40), *(v4 + 64));
  sub_2271D7EE8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_227201BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227201C64(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = sub_2276627D0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D8, &qword_227679D80);
  v9 = sub_227667440();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v19 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a3, v9);
  sub_227564FE4(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v20 + 40), *(v20 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v19;
    sub_227667430();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = v21;
    v16 = sub_22766D140();
    v18 = v17;
    (*(v22 + 8))(v7, v15);
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_2272D7E34(0, v14, a1);
  }

  return result;
}

uint64_t sub_227201F00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC130, &qword_22767CC70);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_227667C80();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227202020, 0, 0);
}

uint64_t sub_227202020()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 424), *(v0[3] + 448));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2272020C8;
  v2 = v0[2];

  return sub_22714D158(v2);
}

uint64_t sub_2272020C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227202244, 0, 0);
  }
}

uint64_t sub_227202244()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v40 = v0[4];
    v50 = MEMORY[0x277D84F90];
    sub_226F202A8(0, v2, 0);
    v4 = v50;
    v5 = v1 + 64;
    result = sub_22766CC90();
    v7 = 0;
    v8 = *(v1 + 36);
    v41 = v3;
    v39 = v1 + 64;
    v34 = v1 + 72;
    v35 = v2;
    v36 = v8;
    v37 = v1;
    v38 = v0;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v1 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v43 = 1 << result;
      v44 = result >> 6;
      v42 = v7;
      v10 = *(v40 + 48);
      v49 = v4;
      v12 = v0[7];
      v11 = v0[8];
      v46 = v0[6];
      v47 = v0[5];
      v13 = *(v1 + 48);
      v14 = result;
      v15 = sub_227665F20();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v11, v13 + *(v16 + 72) * v14, v15);
      v17 = *(v1 + 56);
      v18 = sub_227666760();
      v19 = *(v18 - 8);
      v48 = v14;
      (*(v19 + 16))(v11 + v10, v17 + *(v19 + 72) * v14, v18);
      (*(v16 + 32))(v12, v11, v15);
      (*(v19 + 32))(v12 + *(v40 + 48), v11 + v10, v18);
      sub_226E93170(v12, v46, &qword_27D7BC130, &qword_22767CC70);
      v45 = *(v40 + 48);
      sub_226E93170(v12, v47, &qword_27D7BC130, &qword_22767CC70);
      sub_227667C70();
      v20 = v12;
      v4 = v49;
      sub_226E97D1C(v20, &qword_27D7BC130, &qword_22767CC70);
      (*(v16 + 8))(v47, v15);
      (*(v19 + 8))(v46 + v45, v18);
      v22 = *(v49 + 16);
      v21 = *(v49 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F202A8((v21 > 1), v22 + 1, 1);
        v4 = v49;
      }

      v23 = v38[11];
      v24 = v38[9];
      *(v4 + 16) = v22 + 1;
      (*(v41 + 32))(v4 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v23, v24);
      v1 = v37;
      v9 = 1 << *(v37 + 32);
      result = v14;
      v5 = v39;
      if (v48 >= v9)
      {
        goto LABEL_28;
      }

      v25 = *(v39 + 8 * v44);
      if ((v25 & v43) == 0)
      {
        goto LABEL_29;
      }

      v8 = v36;
      if (v36 != *(v37 + 36))
      {
        goto LABEL_30;
      }

      v0 = v38;
      v26 = v25 & (-2 << (v48 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v48 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v44 << 6;
        v28 = (v34 + 8 * v44);
        v29 = v44 + 1;
        while (v29 < (v9 + 63) >> 6)
        {
          v31 = *v28++;
          v30 = v31;
          v27 += 64;
          ++v29;
          if (v31)
          {
            sub_226EB526C(v48, v36, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v48, v36, 0);
      }

LABEL_4:
      v7 = v42 + 1;
      result = v9;
      if (v42 + 1 == v35)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
LABEL_22:
    v32 = sub_226F45684(v4);

    v33 = v0[1];

    return v33(v32);
  }

  return result;
}

uint64_t sub_227202748(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22766A170();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_227669D60();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_227667780();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v2[15] = *(v7 + 64);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227202924, 0, 0);
}

uint64_t sub_227202924()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v6[16]);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  (*(v4 + 32))(v9 + v8, v1, v3);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = *(v7 + 24);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_227202B14;

  return v13();
}

uint64_t sub_227202B14()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_227202F84;
  }

  else
  {

    v2 = sub_227202C30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227202C30()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_227202CC0;

  return sub_2271E6B88();
}

uint64_t sub_227202CC0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_22720301C;
  }

  else
  {
    v2 = sub_227202DD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227202DD4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v11 = v0[8];
  v10 = v0[7];
  v5 = v0[3];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v11 + 8))(v3, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_227202F84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22720301C(uint64_t a1)
{
  v2 = v1[21];
  sub_22766A630();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226E8E000, v4, v5, "Error evaluating active workout plan completion with error: %@", v8, 0xCu);
    sub_226E97D1C(v9, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);
  v13 = v1[11];
  v12 = v1[12];
  v14 = v1[9];
  v15 = v1[10];
  v22 = v1[8];
  v21 = v1[7];
  v16 = v1[3];
  v17 = objc_opt_self();
  sub_227665EE0();
  v18 = sub_22766C0B0();

  [v17 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v13 + 8))(v12, v15);
  __swift_project_boxed_opaque_existential_0((v16 + 40), *(v16 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v22 + 8))(v14, v21);

  v19 = v1[1];

  return v19();
}

uint64_t sub_2272032E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB30, &qword_227679A10);
  v8 = sub_227667780();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a2, v8);
  sub_227565AB4(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 40), *(a3 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227667760();
    *(v13 + 40) = v14;
    sub_2272D7E60(0, v13, a1);
  }

  return result;
}

uint64_t sub_2272034CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_227232BB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    result = swift_deallocClassInstance();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_2272036E0()
{
  v1[8] = v0;
  v2 = sub_22766B390();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272037A0, 0, 0);
}

uint64_t sub_2272037A0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v5 = *(v1 + 64);
  v4 = *(v1 + 72);
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  sub_226E91B50((v5 + 18), v1 + 16);
  v8 = swift_allocObject();
  *(v1 + 96) = v8;
  sub_226E92AB8((v1 + 16), v8 + 16);
  v12 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  *(v1 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC198, &unk_22767CD40);
  *v9 = v1;
  v9[1] = sub_227203994;

  return v12(v1 + 56, sub_22720D6F8, v8, v10, v6, v7);
}

uint64_t sub_227203994()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_227203B1C;
  }

  else
  {

    v2 = sub_227203AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227203AB0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227203B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227203B88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_2272382B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
    return swift_deallocClassInstance();
  }

  else
  {
    v17 = v13;
    swift_setDeallocating();

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v10 + v18, v19);
    swift_deallocClassInstance();
    v20 = sub_2271E5958(v17, MEMORY[0x277D51CF0], MEMORY[0x277D51CD0]);

    v21 = sub_226F45B58(v20);

    v22 = sub_227281800(v21, a1);

    MEMORY[0x28223BE20](v23);
    v29[2] = a1;
    sub_2275F2440(sub_22720E188, v29, v22);
    v25 = v24;

    v26 = sub_226F459BC(v25);

    v27 = sub_2271E4E80(v26);

    v28 = sub_226F45CF4(v27);

    *a2 = v28;
  }

  return result;
}

uint64_t sub_227203ED8()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227203F98, 0, 0);
}

uint64_t sub_227203F98(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_226EA3BA8;
  v10 = v1[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v1 + 2, sub_22720D6CC, v10, v11, v6, v7);
}

uint64_t sub_227204158(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22766B390();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204218, 0, 0);
}

uint64_t sub_227204218(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v5 = *(v1 + 72);
  v4 = *(v1 + 80);
  v6 = *(v1 + 64);
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  sub_226E91B50((v5 + 18), v1 + 16);
  v9 = swift_allocObject();
  *(v1 + 104) = v9;
  sub_226E92AB8((v1 + 16), v9 + 16);
  *(v9 + 56) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v1 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  *v11 = v1;
  v11[1] = sub_22720442C;

  return (v14)(v1 + 56, sub_22720D68C, v9, v12, v7, v8);
}

uint64_t sub_22720442C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2272045B4;
  }

  else
  {

    v2 = sub_227204548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227204548()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2272045B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227204620@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_227281800(a2, a1);
  if (!v3)
  {
    MEMORY[0x28223BE20](result);
    v11[2] = a1;
    sub_2275F2440(sub_22720D6AC, v11, v7);
    v9 = v8;

    v10 = sub_226F459BC(v9);

    *a3 = v10;
  }

  return result;
}

uint64_t sub_2272046EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276627D0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204810, 0, 0);
}

uint64_t sub_227204810(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[6];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v7[16];
  v11 = v7[17];
  __swift_project_boxed_opaque_existential_0(v7 + 13, v10);
  (*(v6 + 16))(v5, v9, v8);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v1[12] = v13;
  *(v13 + 16) = v7;
  (*(v6 + 32))(v13 + v12, v5, v8);
  v14 = *(v11 + 24);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[13] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  *v15 = v1;
  v15[1] = sub_227204A68;

  return (v18)(v1 + 2, sub_22720D5D8, v13, v16, v10, v11);
}

uint64_t sub_227204A68()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_227204BFC;
  }

  else
  {

    v2 = sub_227204B84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227204B84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227204BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227204C74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204D34, 0, 0);
}

uint64_t sub_227204D34(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC188, &qword_22768C760);
  *v11 = v1;
  v11[1] = sub_227204F34;

  return (v14)(v1 + 2, sub_22720D658, v9, v12, v7, v8);
}

uint64_t sub_227204F34()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2271D1B28;
  }

  else
  {

    v2 = sub_227205050;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227205050()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2272050BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227668A70();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720523C, 0, 0);
}

uint64_t sub_22720523C(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[7];
  v10 = v1[2];
  v9 = v1[3];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v11 = v9[17];
  __swift_project_boxed_opaque_existential_0(v9 + 13, v9[16]);
  (*(v6 + 16))(v5, v10, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v1[14] = v13;
  (*(v6 + 32))(v13 + v12, v5, v8);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(v11 + 24);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[15] = v15;
  *v15 = v1;
  v15[1] = sub_22720548C;

  return v17();
}

uint64_t sub_22720548C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22720E168;
  }

  else
  {

    v2 = sub_22720E160;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272055A8(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC140, &qword_22767CC98);
  MEMORY[0x28223BE20](v5 - 8);
  *&v59 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v51 - v8;
  v9 = sub_227665CA0();
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v51 - v12;
  v63 = sub_2276627D0();
  v13 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  result = sub_227668A60();
  if (v25)
  {
    v55 = result;
    v56 = v9;
    __swift_project_boxed_opaque_existential_0((a3 + 144), *(a3 + 168));
    sub_227668A50();
    sub_227254380(v17, v64, v23);
    if (v3)
    {
      (*(v13 + 8))(v17, v63);
    }

    else
    {
      v26 = *(v13 + 8);
      v27 = v17;
      v28 = v63;
      v53 = v13 + 8;
      v54 = a3;
      v52 = v26;
      v26(v27, v63);
      sub_226E93170(v23, v20, &qword_27D7BC148, &unk_22767CCA0);
      v29 = v62;
      v30 = v56;
      if ((*(v62 + 48))(v20, 1, v56) == 1)
      {

        sub_226E97D1C(v20, &qword_27D7BC148, &unk_22767CCA0);
        v31 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51198], v31);
        swift_willThrow();
        return sub_226E97D1C(v23, &qword_27D7BC148, &unk_22767CCA0);
      }

      else
      {
        v51 = v23;
        (*(v29 + 32))(v61, v20, v30);
        v33 = v58;
        (*(v13 + 56))(v58, 1, 1, v28);
        v34 = sub_227665C20();
        v35 = v59;
        (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
        v36 = v29;
        sub_227665C80();

        sub_226E97D1C(v35, &qword_27D7BC140, &qword_22767CC98);
        sub_226E97D1C(v33, &unk_27D7BB9D0, &qword_227671550);
        v37 = v64;
        v38 = __swift_project_boxed_opaque_existential_0(v64, v64[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
        v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v40 = swift_allocObject();
        v59 = xmmword_227670CD0;
        *(v40 + 16) = xmmword_227670CD0;
        v41 = v60;
        (*(v36 + 16))(v40 + v39, v60, v30);
        sub_22756554C(v40, v38[1], *(v38 + 16), v38[3]);

        __swift_project_boxed_opaque_existential_0((v54 + 40), *(v54 + 64));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
        v42 = swift_allocObject();
        *(v42 + 16) = v59;
        v43 = v37;
        v44 = v57;
        sub_227665C40();
        sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v45 = v63;
        v46 = sub_22766D140();
        v48 = v47;
        v52(v44, v45);
        *(v42 + 32) = v46;
        *(v42 + 40) = v48;
        sub_2272D7DDC(0, v42, v43);

        v49 = *(v62 + 8);
        v50 = v56;
        v49(v41, v56);
        v49(v61, v50);
        return sub_226E97D1C(v51, &qword_27D7BC148, &unk_22767CCA0);
      }
    }
  }

  return result;
}

char *sub_227205D2C(void *a1, void *a2)
{
  v116 = sub_227669F10();
  v117 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v118 = &v110[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v110[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v110[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v124 = &v110[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v110[-v12];
  v121 = sub_22766B390();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  *&v140 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_227663FA0();
  v127 = *(v14 - 8);
  v128 = v14;
  MEMORY[0x28223BE20](v14);
  v131 = &v110[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2276627D0();
  v135 = *(v16 - 8);
  v136 = v16;
  MEMORY[0x28223BE20](v16);
  v119 = &v110[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v130 = &v110[-v19];
  v129 = sub_227662930();
  v139 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v138 = &v110[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_227662750();
  v22 = *(v21 - 8);
  v133 = v21;
  v134 = v22;
  MEMORY[0x28223BE20](v21);
  v126 = &v110[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v137 = &v110[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v110[-v27];
  v29 = sub_2276638D0();
  v141 = *(v29 - 8);
  v142 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v110[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v34 = &v110[-v33];
  MEMORY[0x28223BE20](v35);
  v37 = &v110[-v36];
  v38 = a2[21];
  v132 = a2;
  __swift_project_boxed_opaque_existential_0(a2 + 18, v38);
  v39 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v40 = v143;
  result = (v39)(a1);
  if (!v40)
  {
    v43 = v138;
    v42 = v139;
    v113 = v34;
    v44 = v140;
    v114 = v31;
    v143 = v37;
    v115 = a1;
    v45 = v141;
    v46 = v142;
    if ((*(v141 + 48))(v28, 1, v142) == 1)
    {
      sub_226E97D1C(v28, &unk_27D7BB920, &unk_227672480);
      v47 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D511A8], v47);
      return swift_willThrow();
    }

    else
    {
      (*(v45 + 32))(v143, v28, v46);
      sub_227663870();
      v49 = v129;
      (*(v42 + 104))(v43, *MEMORY[0x277CC9968], v129);
      sub_227663810();
      (*(v42 + 8))(v43, v49);
      v50 = sub_226F491E8();
      v51 = __swift_project_boxed_opaque_existential_0(v132 + 53, v132[56]);
      v52 = v130;
      sub_2276637C0();
      __swift_project_boxed_opaque_existential_0(v51, v51[3]);
      v53 = v131;
      v54 = v115;
      sub_226EAF48C(v115, v131);
      sub_227663F60();
      v56 = v55;
      (*(v127 + 8))(v53, v128);
      sub_22727227C(v52, v50, v54, v56);
      v139 = 0;
      v57 = *(v135 + 8);
      v138 = (v135 + 8);
      v131 = v57;
      (v57)(v52, v136);
      v58 = sub_226F491E8();
      sub_227035964(v50, v58);
      v60 = v59;

      v61 = v126;
      sub_227662720();
      v62 = sub_2276626B0();
      v63 = (v134 + 8);
      v64 = *(v134 + 8);
      v65 = v61;
      v66 = v133;
      (v64)(v65, v133);
      v68 = v141;
      v67 = v142;
      if (v60 & 1) != 0 || (v62)
      {
        v129 = v64;
        v130 = v63;
        sub_22766A630();
        v69 = v113;
        v126 = *(v68 + 16);
        v127 = v68 + 16;
        (v126)(v113, v143, v67);
        v70 = sub_22766B380();
        v71 = sub_22766C8B0();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v144 = v112;
          *v72 = 136315650;
          sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
          v111 = v71;
          v73 = sub_22766D140();
          v74 = v67;
          v76 = v75;
          v128 = *(v68 + 8);
          v128(v69, v74);
          v77 = sub_226E97AE8(v73, v76, &v144);

          *(v72 + 4) = v77;
          *(v72 + 12) = 1024;
          *(v72 + 14) = v60 & 1;
          *(v72 + 18) = 1024;
          *(v72 + 20) = v62 & 1;
          _os_log_impl(&dword_226E8E000, v70, v111, "Marking %s as complete, with workoutsCompleted: %{BOOL}d isPastEndDate: %{BOOL}d", v72, 0x18u);
          v78 = v112;
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x22AA9A450](v78, -1, -1);
          v79 = v72;
          v66 = v133;
          MEMORY[0x22AA9A450](v79, -1, -1);
        }

        else
        {

          v128 = *(v68 + 8);
          v128(v69, v67);
        }

        (*(v120 + 8))(v44, v121);
        v80 = v125;
        v81 = v122;
        (*(v134 + 56))(v122, 1, 1, v66);
        v82 = v136;
        v83 = *(v135 + 56);
        v84 = v124;
        v83(v124, 1, 1, v136);
        v85 = sub_227663540();
        (*(*(v85 - 8) + 56))(v80, 1, 1, v85);
        v86 = v123;
        v83(v123, 1, 1, v82);
        v87 = v114;
        v88 = v80;
        v89 = v143;
        sub_227663890();
        sub_226E97D1C(v86, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v88, &qword_27D7BC128, &unk_22767CC20);
        sub_226E97D1C(v84, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v81, &qword_27D7B9690, qword_227670B50);
        v90 = v115;
        v91 = __swift_project_boxed_opaque_existential_0(v115, v115[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
        v92 = v66;
        v93 = (*(v141 + 80) + 32) & ~*(v141 + 80);
        v94 = swift_allocObject();
        v140 = xmmword_227670CD0;
        *(v94 + 16) = xmmword_227670CD0;
        v95 = v142;
        (v126)(v94 + v93, v87, v142);
        v96 = v139;
        sub_22756601C(v94, v91[1], *(v91 + 16), v91[3]);

        if (v96)
        {
          v97 = v128;
          v128(v87, v95);
          (v129)(v137, v92);
          return v97(v89, v95);
        }

        else
        {
          v139 = *__swift_project_boxed_opaque_existential_0(v132 + 5, v132[8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
          v98 = swift_allocObject();
          *(v98 + 16) = v140;
          v99 = v136;
          v100 = v87;
          v101 = v119;
          sub_2276637C0();
          sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v102 = sub_22766D140();
          v104 = v103;
          (v131)(v101, v99);
          *(v98 + 32) = v102;
          *(v98 + 40) = v104;
          sub_2272D7E08(0, v98, v90);

          swift_getObjectType();
          sub_2276637C0();
          v105 = v118;
          sub_227669F00();
          v106 = v116;
          sub_2276699D0();
          (*(v117 + 8))(v105, v106);
          v107 = v142;
          v108 = v100;
          v109 = v128;
          v128(v108, v142);
          (v129)(v137, v133);
          return v109(v143, v107);
        }
      }

      else
      {
        (v64)(v137, v66);
        return (*(v68 + 8))(v143, v67);
      }
    }
  }

  return result;
}

char *sub_227206D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v72 = a4;
  v6 = sub_22766B390();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v68 - v9;
  v10 = sub_227663FA0();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276627D0();
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_227665440();
  v85 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v86 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  v18 = sub_2276638D0();
  v87 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = *(a2 + 168);
  v82 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 144), v24);
  v25 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v26 = v89;
  result = (v25)(a1);
  if (!v26)
  {
    v71 = a1;
    v69 = v20;
    v89 = v23;
    v28 = v87;
    if ((*(v87 + 48))(v17, 1, v18) == 1)
    {
      sub_226E97D1C(v17, &unk_27D7BB920, &unk_227672480);
      v29 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D511A8], v29);
      return swift_willThrow();
    }

    else
    {
      v31 = *(v28 + 32);
      v70 = v18;
      v31(v89, v17, v18);
      v32 = v86;
      sub_227663860();
      v33 = sub_2276637D0();
      MEMORY[0x28223BE20](v33);
      *(&v68 - 2) = v32;
      sub_2271E5F78(sub_22720D5B8, (&v68 - 4), v34);
      v36 = sub_226F44880(v35);

      v37 = __swift_project_boxed_opaque_existential_0((v82 + 424), *(v82 + 448));
      v38 = v80;
      sub_2276637C0();
      __swift_project_boxed_opaque_existential_0(v37, v37[3]);
      v39 = v79;
      v40 = v71;
      sub_226EAF48C(v71, v79);
      sub_227663F60();
      v42 = v41;
      (*(v77 + 8))(v39, v78);
      v43 = sub_22727FE50(v38, v36, v40, v42);
      (*(v83 + 8))(v38, v84);

      v44 = v76;
      sub_2274CFFC4(v43, v76);

      v45 = sub_227665F20();
      v46 = *(v45 - 8);
      v47 = (*(v46 + 48))(v44, 1, v45);
      v48 = v70;
      if (v47 == 1)
      {
        sub_226E97D1C(v44, &qword_27D7B9BC8, &qword_227675590);
        v49 = v75;
        sub_22766A630();
        v50 = v69;
        v51 = v89;
        (*(v28 + 16))(v69, v89, v48);
        v52 = sub_22766B380();
        v53 = sub_22766C890();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v90 = v55;
          *v54 = 136315138;
          sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180], MEMORY[0x277D50198]);
          v56 = sub_22766D140();
          v57 = v50;
          v59 = v58;
          v60 = *(v28 + 8);
          v60(v57, v70);
          v61 = sub_226E97AE8(v56, v59, &v90);

          *(v54 + 4) = v61;
          _os_log_impl(&dword_226E8E000, v52, v53, "Couldn't find the next incomplete workout for the active plan: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          v62 = v55;
          v48 = v70;
          MEMORY[0x22AA9A450](v62, -1, -1);
          v63 = v54;
          v51 = v89;
          MEMORY[0x22AA9A450](v63, -1, -1);

          (*(v73 + 8))(v75, v74);
        }

        else
        {

          v60 = *(v28 + 8);
          v60(v50, v48);
          (*(v73 + 8))(v49, v74);
        }

        v64 = v81;
        v65 = v85;
        v66 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D51180], v66);
        swift_willThrow();
        v60(v51, v48);
        return (*(v65 + 8))(v86, v64);
      }

      else
      {
        (*(v28 + 8))(v89, v70);
        (*(v46 + 32))(v72, v44, v45);
        return (*(v85 + 8))(v32, v81);
      }
    }
  }

  return result;
}

BOOL sub_227207754(uint64_t a1, uint64_t a2)
{
  v2 = sub_227665440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665F00();
  sub_226EAC024(&qword_27D7BC170, MEMORY[0x277D51640], MEMORY[0x277D51650]);
  v6 = sub_22766BF80();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

void sub_227207884(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v232 = a3;
  v211 = a4;
  v215 = sub_227664010();
  v228 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v227 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v229 = &v199 - v8;
  MEMORY[0x28223BE20](v9);
  v210 = &v199 - v10;
  v11 = sub_227666B60();
  v12 = *(v11 - 8);
  v234 = v11;
  v235 = v12;
  MEMORY[0x28223BE20](v11);
  v216 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v217 = &v199 - v15;
  MEMORY[0x28223BE20](v16);
  v218 = &v199 - v17;
  MEMORY[0x28223BE20](v18);
  v219 = &v199 - v19;
  MEMORY[0x28223BE20](v20);
  v220 = &v199 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v199 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v199 - v26;
  v28 = sub_227667370();
  v221 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_227663FA0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 248);
  v231 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 224), v35);
  v36 = v233;
  sub_226EAF48C(a1, v34);
  if (v36)
  {
    return;
  }

  v225 = v27;
  v212 = v24;
  v213 = v32;
  v214 = v31;
  sub_227663E60();
  v37 = sub_227663E90();
  v38 = sub_227046898(v232, v30, a1);
  v204 = v34;
  v205 = v30;
  v206 = v28;
  v39 = v38;
  v203 = sub_2271E5358(v38);
  v207 = 0;
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v230 = (v235 + 8);
  v231 = v235 + 16;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v47 = v234;
  v232 = v39;
  v233 = v39 + 56;
  v48 = v225;
  while (v43)
  {
LABEL_12:
    v51 = v235;
    v52 = v48;
    (*(v235 + 16))(v48, *(v39 + 48) + *(v235 + 72) * (__clz(__rbit64(v43)) | (v45 << 6)), v47);
    v53 = sub_227666AC0();
    (*(v51 + 8))(v52, v47);
    v54 = *(v53 + 16);
    v55 = *(v46 + 2);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      goto LABEL_180;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v56 > *(v46 + 3) >> 1)
    {
      if (v55 <= v56)
      {
        v58 = v55 + v54;
      }

      else
      {
        v58 = v55;
      }

      v46 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v58, 1, v46);
    }

    v47 = v234;
    v43 &= v43 - 1;
    if (*(v53 + 16))
    {
      if ((*(v46 + 3) >> 1) - *(v46 + 2) < v54)
      {
        goto LABEL_192;
      }

      swift_arrayInitWithCopy();

      v39 = v232;
      v40 = v233;
      v48 = v225;
      if (v54)
      {
        v59 = *(v46 + 2);
        v60 = __OFADD__(v59, v54);
        v61 = v59 + v54;
        if (v60)
        {
          goto LABEL_198;
        }

        *(v46 + 2) = v61;
      }
    }

    else
    {

      v39 = v232;
      v40 = v233;
      v48 = v225;
      if (v54)
      {
        goto LABEL_181;
      }
    }
  }

  v49 = v228;
  while (1)
  {
    v50 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_173;
    }

    if (v50 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v50);
    ++v45;
    if (v43)
    {
      v45 = v50;
      goto LABEL_12;
    }
  }

  v202 = sub_226F3E6A8(v46);

  v62 = v233;
  v63 = 1 << *(v39 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v39 + 56);
  v66 = (v63 + 63) >> 6;
  v67 = v37 + 56;
  v224 = v49 + 16;
  v225 = v49 + 32;
  v223 = (v49 + 8);

  v68 = v66;
  v69 = 0;
  v208 = MEMORY[0x277D84F90];
  v70 = v235;
  v71 = v212;
  v209 = v68;
  v222 = v37 + 56;
  v226 = v37;
  if (!v65)
  {
    goto LABEL_31;
  }

  do
  {
LABEL_30:
    v72 = v69;
LABEL_34:
    v73 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    (*(v70 + 16))(v71, *(v39 + 48) + *(v70 + 72) * (v73 | (v72 << 6)), v47);
    sub_227666B40();
    v75 = v74;
    v76 = 1 << *(v37 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v37 + 56);
    v79 = (v76 + 63) >> 6;

    v80 = 0;
    v81 = v215;
    v82 = v229;
    if (!v78)
    {
LABEL_39:
      while (1)
      {
        v83 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        if (v83 >= v79)
        {
          v37 = v226;

          v71 = v212;
          v47 = v234;
          (*v230)(v212, v234);
          v69 = v72;
          v70 = v235;
          v39 = v232;
          v62 = v233;
          v68 = v209;
          if (!v65)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v78 = *(v67 + 8 * v83);
        ++v80;
        if (v78)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    while (1)
    {
      v83 = v80;
LABEL_42:
      v84 = v228;
      (*(v228 + 16))(v82, *(v226 + 48) + *(v228 + 72) * (__clz(__rbit64(v78)) | (v83 << 6)), v81);
      v85 = *(v84 + 32);
      v86 = v227;
      v85(v227, v82, v81);
      v87 = sub_227664000();
      sub_227663FF0();
      v89 = v87 + v88;
      v90 = sub_227664000();
      sub_227663FE0();
      if (v90 - v91 <= v75 && v75 <= v89)
      {
        break;
      }

      v78 &= v78 - 1;
      (*v223)(v86, v81);
      v80 = v83;
      v67 = v222;
      v82 = v229;
      if (!v78)
      {
        goto LABEL_39;
      }
    }

    v93 = v210;
    v85(v210, v86, v81);
    v201 = sub_227663FD0();
    v200 = v94;
    v47 = v234;
    (*v230)(v212, v234);
    (*v223)(v93, v81);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_226EB3F78(0, *(v208 + 2) + 1, 1, v208);
    }

    v70 = v235;
    v62 = v233;
    v68 = v209;
    v67 = v222;
    v96 = *(v208 + 2);
    v95 = *(v208 + 3);
    v71 = v212;
    v37 = v226;
    if (v96 >= v95 >> 1)
    {
      v100 = sub_226EB3F78((v95 > 1), v96 + 1, 1, v208);
      v68 = v209;
      v62 = v233;
      v208 = v100;
    }

    v97 = v208;
    *(v208 + 2) = v96 + 1;
    v98 = &v97[16 * v96];
    v99 = v200;
    *(v98 + 4) = v201;
    *(v98 + 5) = v99;
    v69 = v72;
    v39 = v232;
  }

  while (v65);
LABEL_31:
  while (1)
  {
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v72 >= v68)
    {

      v229 = sub_226F3E6A8(v208);

      v101 = v233;
      v102 = 1 << *(v39 + 32);
      v103 = -1;
      if (v102 < 64)
      {
        v103 = ~(-1 << v102);
      }

      v104 = v103 & *(v39 + 56);
      v105 = (v102 + 63) >> 6;

      v106 = 0;
      v107 = MEMORY[0x277D84F90];
      while (v104)
      {
        v108 = v220;
LABEL_66:
        v110 = v234;
        (*(v70 + 16))(v108, *(v39 + 48) + *(v70 + 72) * (__clz(__rbit64(v104)) | (v106 << 6)), v234);
        v111 = sub_227666AD0();
        (*(v70 + 8))(v108, v110);
        v112 = *(v111 + 16);
        v113 = *(v107 + 2);
        v114 = v113 + v112;
        if (__OFADD__(v113, v112))
        {
          goto LABEL_182;
        }

        v115 = swift_isUniquelyReferenced_nonNull_native();
        if (!v115 || v114 > *(v107 + 3) >> 1)
        {
          if (v113 <= v114)
          {
            v116 = v113 + v112;
          }

          else
          {
            v116 = v113;
          }

          v107 = sub_226EB3F78(v115, v116, 1, v107);
        }

        v70 = v235;
        v104 &= v104 - 1;
        if (*(v111 + 16))
        {
          if ((*(v107 + 3) >> 1) - *(v107 + 2) < v112)
          {
            goto LABEL_193;
          }

          swift_arrayInitWithCopy();

          v39 = v232;
          v101 = v233;
          if (v112)
          {
            v117 = *(v107 + 2);
            v60 = __OFADD__(v117, v112);
            v118 = v117 + v112;
            if (v60)
            {
              goto LABEL_199;
            }

            *(v107 + 2) = v118;
          }
        }

        else
        {

          v39 = v232;
          v101 = v233;
          if (v112)
          {
            goto LABEL_183;
          }
        }
      }

      v108 = v220;
      while (1)
      {
        v109 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_175;
        }

        if (v109 >= v105)
        {

          v227 = sub_226F3E6A8(v107);

          v119 = v207;
          v120 = sub_2271E4224(v39);
          v228 = v119;
          v226 = sub_226F3E6A8(v120);

          v121 = v233;
          v122 = 1 << *(v39 + 32);
          v123 = -1;
          if (v122 < 64)
          {
            v123 = ~(-1 << v122);
          }

          v124 = v123 & *(v39 + 56);
          v125 = (v122 + 63) >> 6;

          v126 = 0;
          v127 = MEMORY[0x277D84F90];
          while (v124)
          {
            v128 = v219;
LABEL_89:
            v130 = v234;
            (*(v70 + 16))(v128, *(v39 + 48) + *(v70 + 72) * (__clz(__rbit64(v124)) | (v126 << 6)), v234);
            v131 = sub_227666AE0();
            (*(v70 + 8))(v128, v130);
            v132 = *(v131 + 16);
            v133 = *(v127 + 2);
            v134 = v133 + v132;
            if (__OFADD__(v133, v132))
            {
              goto LABEL_184;
            }

            v135 = swift_isUniquelyReferenced_nonNull_native();
            if (!v135 || v134 > *(v127 + 3) >> 1)
            {
              if (v133 <= v134)
              {
                v136 = v133 + v132;
              }

              else
              {
                v136 = v133;
              }

              v127 = sub_226EB3F78(v135, v136, 1, v127);
            }

            v70 = v235;
            v124 &= v124 - 1;
            if (*(v131 + 16))
            {
              if ((*(v127 + 3) >> 1) - *(v127 + 2) < v132)
              {
                goto LABEL_194;
              }

              swift_arrayInitWithCopy();

              v39 = v232;
              v121 = v233;
              if (v132)
              {
                v137 = *(v127 + 2);
                v60 = __OFADD__(v137, v132);
                v138 = v137 + v132;
                if (v60)
                {
                  goto LABEL_200;
                }

                *(v127 + 2) = v138;
              }
            }

            else
            {

              v39 = v232;
              v121 = v233;
              if (v132)
              {
                goto LABEL_185;
              }
            }
          }

          v128 = v219;
          while (1)
          {
            v129 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              goto LABEL_176;
            }

            if (v129 >= v125)
            {

              v225 = sub_226F3E6A8(v127);

              v139 = v233;
              v140 = 1 << *(v39 + 32);
              v141 = -1;
              if (v140 < 64)
              {
                v141 = ~(-1 << v140);
              }

              v142 = v141 & *(v39 + 56);
              v143 = (v140 + 63) >> 6;

              v144 = 0;
              v145 = MEMORY[0x277D84F90];
              while (v142)
              {
                v146 = v218;
LABEL_112:
                v148 = v234;
                (*(v70 + 16))(v146, *(v39 + 48) + *(v70 + 72) * (__clz(__rbit64(v142)) | (v144 << 6)), v234);
                v149 = sub_227666AF0();
                (*(v70 + 8))(v146, v148);
                v150 = *(v149 + 16);
                v151 = *(v145 + 2);
                v152 = v151 + v150;
                if (__OFADD__(v151, v150))
                {
                  goto LABEL_186;
                }

                v153 = swift_isUniquelyReferenced_nonNull_native();
                if (!v153 || v152 > *(v145 + 3) >> 1)
                {
                  if (v151 <= v152)
                  {
                    v154 = v151 + v150;
                  }

                  else
                  {
                    v154 = v151;
                  }

                  v145 = sub_226EB3F78(v153, v154, 1, v145);
                }

                v70 = v235;
                v142 &= v142 - 1;
                if (*(v149 + 16))
                {
                  if ((*(v145 + 3) >> 1) - *(v145 + 2) < v150)
                  {
                    goto LABEL_195;
                  }

                  swift_arrayInitWithCopy();

                  v39 = v232;
                  v139 = v233;
                  if (v150)
                  {
                    v155 = *(v145 + 2);
                    v60 = __OFADD__(v155, v150);
                    v156 = v155 + v150;
                    if (v60)
                    {
                      goto LABEL_201;
                    }

                    *(v145 + 2) = v156;
                  }
                }

                else
                {

                  v39 = v232;
                  v139 = v233;
                  if (v150)
                  {
                    goto LABEL_187;
                  }
                }
              }

              v146 = v218;
              while (1)
              {
                v147 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_177;
                }

                if (v147 >= v143)
                {

                  v224 = sub_226F3E6A8(v145);

                  v157 = v233;
                  v158 = 1 << *(v39 + 32);
                  v159 = -1;
                  if (v158 < 64)
                  {
                    v159 = ~(-1 << v158);
                  }

                  v160 = v159 & *(v39 + 56);
                  v161 = (v158 + 63) >> 6;

                  v162 = 0;
                  v163 = MEMORY[0x277D84F90];
                  while (v160)
                  {
                    v164 = v217;
LABEL_135:
                    v166 = v234;
                    v167 = v235;
                    (*(v235 + 16))(v164, *(v232 + 48) + *(v235 + 72) * (__clz(__rbit64(v160)) | (v162 << 6)), v234);
                    v168 = sub_227666A80();
                    (*(v167 + 8))(v164, v166);
                    v169 = *(v168 + 16);
                    v170 = *(v163 + 2);
                    v171 = v170 + v169;
                    if (__OFADD__(v170, v169))
                    {
                      goto LABEL_188;
                    }

                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v172 || v171 > *(v163 + 3) >> 1)
                    {
                      if (v170 <= v171)
                      {
                        v173 = v170 + v169;
                      }

                      else
                      {
                        v173 = v170;
                      }

                      v163 = sub_226EB3F78(v172, v173, 1, v163);
                    }

                    v160 &= v160 - 1;
                    if (*(v168 + 16))
                    {
                      if ((*(v163 + 3) >> 1) - *(v163 + 2) < v169)
                      {
                        goto LABEL_196;
                      }

                      swift_arrayInitWithCopy();

                      v157 = v233;
                      if (v169)
                      {
                        v174 = *(v163 + 2);
                        v60 = __OFADD__(v174, v169);
                        v175 = v174 + v169;
                        if (v60)
                        {
                          goto LABEL_202;
                        }

                        *(v163 + 2) = v175;
                      }
                    }

                    else
                    {

                      v157 = v233;
                      if (v169)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  v164 = v217;
                  while (1)
                  {
                    v165 = v162 + 1;
                    if (__OFADD__(v162, 1))
                    {
                      goto LABEL_178;
                    }

                    if (v165 >= v161)
                    {
                      v176 = v232;

                      v223 = sub_226F3E6A8(v163);

                      v177 = v233;
                      v178 = 1 << *(v176 + 32);
                      v179 = -1;
                      if (v178 < 64)
                      {
                        v179 = ~(-1 << v178);
                      }

                      v180 = v179 & *(v176 + 56);
                      v181 = (v178 + 63) >> 6;

                      v182 = 0;
                      v183 = MEMORY[0x277D84F90];
                      v184 = v221;
                      v185 = v214;
                      v186 = v213;
                      while (v180)
                      {
                        v187 = v216;
LABEL_158:
                        v189 = v234;
                        v190 = v235;
                        (*(v235 + 16))(v187, *(v232 + 48) + *(v235 + 72) * (__clz(__rbit64(v180)) | (v182 << 6)), v234);
                        v191 = sub_227666AA0();
                        (*(v190 + 8))(v187, v189);
                        v192 = *(v191 + 16);
                        v193 = *(v183 + 2);
                        v194 = v193 + v192;
                        if (__OFADD__(v193, v192))
                        {
                          goto LABEL_190;
                        }

                        v195 = swift_isUniquelyReferenced_nonNull_native();
                        if (!v195 || v194 > *(v183 + 3) >> 1)
                        {
                          if (v193 <= v194)
                          {
                            v196 = v193 + v192;
                          }

                          else
                          {
                            v196 = v193;
                          }

                          v183 = sub_226EB3F78(v195, v196, 1, v183);
                        }

                        v180 &= v180 - 1;
                        if (*(v191 + 16))
                        {
                          if ((*(v183 + 3) >> 1) - *(v183 + 2) < v192)
                          {
                            goto LABEL_197;
                          }

                          swift_arrayInitWithCopy();

                          v184 = v221;
                          v185 = v214;
                          v186 = v213;
                          v177 = v233;
                          if (v192)
                          {
                            v197 = *(v183 + 2);
                            v60 = __OFADD__(v197, v192);
                            v198 = v197 + v192;
                            if (v60)
                            {
                              goto LABEL_203;
                            }

                            *(v183 + 2) = v198;
                          }
                        }

                        else
                        {

                          v184 = v221;
                          v185 = v214;
                          v186 = v213;
                          v177 = v233;
                          if (v192)
                          {
                            goto LABEL_191;
                          }
                        }
                      }

                      v187 = v216;
                      while (1)
                      {
                        v188 = v182 + 1;
                        if (__OFADD__(v182, 1))
                        {
                          goto LABEL_179;
                        }

                        if (v188 >= v181)
                        {

                          sub_226F3E6A8(v183);

                          sub_2276657C0();
                          (*(v184 + 8))(v205, v206);
                          (*(v186 + 8))(v204, v185);
                          return;
                        }

                        v180 = *(v177 + 8 * v188);
                        ++v182;
                        if (v180)
                        {
                          v182 = v188;
                          goto LABEL_158;
                        }
                      }
                    }

                    v160 = *(v157 + 8 * v165);
                    ++v162;
                    if (v160)
                    {
                      v162 = v165;
                      goto LABEL_135;
                    }
                  }
                }

                v142 = *(v139 + 8 * v147);
                ++v144;
                if (v142)
                {
                  v144 = v147;
                  goto LABEL_112;
                }
              }
            }

            v124 = *(v121 + 8 * v129);
            ++v126;
            if (v124)
            {
              v126 = v129;
              goto LABEL_89;
            }
          }
        }

        v104 = *(v101 + 8 * v109);
        ++v106;
        if (v104)
        {
          v106 = v109;
          goto LABEL_66;
        }
      }
    }

    v65 = *(v62 + 8 * v72);
    ++v69;
    if (v65)
    {
      goto LABEL_34;
    }
  }

LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
}

uint64_t sub_227208C88@<X0>(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v113 = a1;
  v108 = a4;
  v107 = a5;
  v119 = sub_2276627D0();
  v112 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v109 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v102 - v15;
  v17 = swift_projectBox();
  v111 = __swift_project_boxed_opaque_existential_0((a2 + 144), *(a2 + 168));
  swift_beginAccess();
  v18 = *(v9 + 16);
  v18(v13, v17, v8);
  sub_227663820();
  v19 = *(v9 + 8);
  v110 = v8;
  v19(v13, v8);
  v21 = v113;
  v20 = v114;
  v111 = v16;
  sub_227254380(v7, v113, v16);
  if (v20)
  {
    return (*(v112 + 8))(v7, v119);
  }

  v105 = v19;
  v106 = v17;
  v114 = v18;
  (*(v112 + 8))(v7, v119);
  v23 = sub_227665CA0();
  v24 = *(v23 - 8);
  v25 = v111;
  v26 = (*(v24 + 48))(v111, 1, v23);
  v103 = 0;
  if (v26 == 1)
  {
    sub_226E97D1C(v25, &qword_27D7BC148, &unk_22767CCA0);
    v104 = MEMORY[0x277D84FA0];
  }

  else
  {
    v104 = sub_227665C60();
    (*(v24 + 8))(v25, v23);
  }

  v27 = v109;
  v28 = v110;
  v29 = v114;
  v30 = v106;
  swift_beginAccess();
  v29(v27, v30, v28);
  v31 = sub_227663840();
  v105(v27, v28);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v109 = ((v33 + 63) >> 6);

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v110 = v31 + 64;
  v111 = v31;
  while (v35)
  {
    v119 = v38;
LABEL_16:
    v114 = v35;
    v40 = *(*(v31 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
    v41 = *(v40 + 16);
    if (v41)
    {
      v117[0] = MEMORY[0x277D84F90];

      sub_226F1EF90();
      v25 = v117[0];
      v112 = v40;
      v42 = v40 + 40;
      do
      {

        v43 = sub_227667380();
        v45 = v44;

        v117[0] = v25;
        v46 = *(v25 + 16);
        if (v46 >= *(v25 + 24) >> 1)
        {
          sub_226F1EF90();
          v25 = v117[0];
        }

        *(v25 + 16) = v46 + 1;
        v47 = v25 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v45;
        v42 += 16;
        --v41;
      }

      while (v41);

      v21 = v113;
      v32 = v110;
      v31 = v111;
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v48 = *(v25 + 16);
    v38 = v119;
    v49 = *(v119 + 16);
    v50 = v49 + v48;
    if (__OFADD__(v49, v48))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      v112 = isUniquelyReferenced_nonNull_native;
      sub_22766C360();
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v50 > *(v38 + 24) >> 1)
    {
      if (v49 <= v50)
      {
        v51 = v49 + v48;
      }

      else
      {
        v51 = v49;
      }

      isUniquelyReferenced_nonNull_native = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v51, 1, v38);
      v38 = isUniquelyReferenced_nonNull_native;
    }

    v35 = (v114 - 1) & v114;
    if (*(v25 + 16))
    {
      if ((*(v38 + 24) >> 1) - *(v38 + 16) < v48)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      if (v48)
      {
        v52 = *(v38 + 16);
        v53 = __OFADD__(v52, v48);
        v54 = v52 + v48;
        if (v53)
        {
          goto LABEL_53;
        }

        *(v38 + 16) = v54;
      }
    }

    else
    {

      if (v48)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v39 >= v109)
    {
      break;
    }

    v35 = *(v32 + 8 * v39);
    ++v37;
    if (v35)
    {
      v119 = v38;
      v37 = v39;
      goto LABEL_16;
    }
  }

  v55 = sub_226F3E6A8(v38);

  v56 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v57 = *v56;
  v58 = v56[1];
  v59 = *(v56 + 16);
  v60 = v56[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v21 = swift_allocObject();
  v61 = v57;
  v62 = v58;

  sub_22766A070();
  v21[2] = v61;
  v21[3] = v62;
  *(v21 + 32) = v59;
  v21[5] = v60;
  swift_getKeyPath();
  v119 = v55;
  sub_227230638(v55);
  v64 = v63;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v117[0] = v64;
  sub_226F06498();

  v65 = sub_22766C820();
  sub_226E93170(v117, v115, &unk_27D7BC990, &qword_227670A30);
  v66 = v116;
  if (v116)
  {
    v67 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v68 = *(v66 - 8);
    v69 = MEMORY[0x28223BE20](v67);
    v71 = &v102 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v68 + 16))(v71, v69);
    v72 = sub_22766D170();
    (*(v68 + 8))(v71, v66);
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v72 = 0;
  }

  v25 = v108;
  v114 = objc_opt_self();
  v73 = [v114 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v113) initWithLeftExpression:v65 rightExpression:v73 modifier:0 type:10 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  v32 = qword_2813B2078;
  swift_beginAccess();
  v37 = sub_22766A080();
  v75 = v74;
  MEMORY[0x22AA985C0]();
  isUniquelyReferenced_nonNull_native = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (isUniquelyReferenced_nonNull_native >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_54;
  }

LABEL_39:
  sub_22766C3A0();
  (v37)(v117, 0);
  swift_endAccess();

  swift_getKeyPath();
  v76 = v103;
  v77 = sub_2271E5734(v25);
  v78 = v76;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v117[0] = v77;

  v79 = sub_22766C820();
  sub_226E93170(v117, v115, &unk_27D7BC990, &qword_227670A30);
  v80 = v116;
  if (v116)
  {
    v81 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v112 = v32;
    v82 = *(v80 - 8);
    v83 = MEMORY[0x28223BE20](v81);
    v85 = &v102 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85, v83);
    v86 = sub_22766D170();
    (*(v82 + 8))(v85, v80);
    v78 = v76;
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v86 = 0;
  }

  v87 = [v114 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v88 = [objc_allocWithZone(v113) initWithLeftExpression:v79 rightExpression:v87 modifier:0 type:10 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v89 = v88;
  v90 = sub_22766A080();
  v92 = v91;
  MEMORY[0x22AA985C0]();
  if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v90(v117, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC91C(KeyPath);
  if (v78)
  {

    swift_setDeallocating();

    v95 = qword_2813B2078;
    v96 = sub_22766A100();
    (*(*(v96 - 8) + 8))(v21 + v95, v96);
    return swift_deallocClassInstance();
  }

  else
  {
    v97 = sub_226F3E6A8(v94);

    swift_setDeallocating();

    v98 = qword_2813B2078;
    v99 = sub_22766A100();
    (*(*(v99 - 8) + 8))(v21 + v98, v99);
    swift_deallocClassInstance();
    v100 = v107;
    *v107 = v104;
    if (*(v97 + 16) <= *(v119 + 16) >> 3)
    {
      v117[0] = v119;
      sub_22700604C(v97);

      v100[1] = v117[0];
    }

    else
    {
      v101 = sub_22700776C(v97, v119);

      v100[1] = v101;
    }
  }

  return result;
}

uint64_t sub_227209A48@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227663FB0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227209A74@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v57 = a5;
  v53 = a4;
  v56 = a6;
  v51 = sub_2276638D0();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2276627D0();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227667380();
  v46 = a2;
  if (v17 == a2 && v18 == a3)
  {
  }

  else
  {
    v19 = sub_22766D190();

    if ((v19 & 1) == 0)
    {
      result = sub_227667380();
      goto LABEL_10;
    }
  }

  sub_22766A630();
  (*(v11 + 16))(v13, v57, v10);

  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v22 = 136315650;
    *(v22 + 4) = sub_226E97AE8(v46, a3, &v58);
    *(v22 + 12) = 2080;
    v23 = swift_projectBox();
    swift_beginAccess();
    v24 = v49;
    v25 = *(v49 + 16);
    v53 = v20;
    v26 = v47;
    v27 = v23;
    v28 = v51;
    v25(v47, v27, v51);
    LODWORD(v46) = v21;
    v29 = v48;
    sub_2276637C0();
    (*(v24 + 8))(v26, v28);
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = v52;
    v31 = sub_22766D140();
    v33 = v32;
    (*(v50 + 8))(v29, v30);
    v34 = sub_226E97AE8(v31, v33, &v58);

    *(v22 + 14) = v34;
    *(v22 + 22) = 2080;
    sub_226EAC024(&qword_27D7BB360, MEMORY[0x277D52828], MEMORY[0x277D52840]);
    v35 = sub_22766D140();
    v37 = v36;
    (*(v11 + 8))(v13, v10);
    v38 = sub_226E97AE8(v35, v37, &v58);

    *(v22 + 24) = v38;
    v39 = v53;
    _os_log_impl(&dword_226E8E000, v53, v46, "Found outdated workout %s in %s. Replacing with new: %s", v22, 0x20u);
    v40 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v40, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v54 + 8))(v16, v55);
  result = sub_227666A50();
LABEL_10:
  v43 = v56;
  *v56 = result;
  v43[1] = v42;
  return result;
}

uint64_t sub_22720A018(void *a1, uint64_t a2)
{
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v8);
  if (!v2)
  {
    sub_227663E60();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

char *sub_22720A128(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = sub_2276638D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226E9B790(0, 1, a1);
  if (!v2)
  {
    v16 = result;
    v24 = a2;
    v25 = a1;
    v26 = 0;
    v27 = result;
    v28 = result;
    swift_getKeyPath();

    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
    sub_226E9CFD0(&qword_281398E78, &qword_27D7BC180, &qword_2276854E0, MEMORY[0x277D83B68]);
    sub_226EAC024(&qword_28139BDC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    sub_22766C200();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_22700CE8C(v14, v7);
      sub_226E97D1C(v7, &unk_27D7BB920, &unk_227672480);
      (*(v12 + 8))(v14, v11);
      v16 = v28;
    }

    v18 = v25;
    v17 = v26;
    v19 = v24;
    if (*(v16 + 16))
    {
      v20 = sub_2271E5958(v16, MEMORY[0x277D50180], MEMORY[0x277D50150]);
      v21 = sub_226F45B58(v20);

      sub_227282340(v21, v18);

      if (!v17)
      {
        __swift_project_boxed_opaque_existential_0((v19 + 40), *(v19 + 64));
        v22 = sub_2271E5958(v16, MEMORY[0x277D50180], MEMORY[0x277D50150]);

        sub_2271E62E8(v22, v18);
      }
    }
  }

  return result;
}

unint64_t *sub_22720A52C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22720CDF8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_22720A5C8(uint64_t a1, char a2, void *a3)
{
  v59 = sub_227666B60();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB090, &qword_227679BB0);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_226E93170(v52, v11, &qword_27D7BB090, &qword_227679BB0);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_226E92000(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF41A8();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FEB78C(v23, a2 & 1);
  v25 = sub_226E92000(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_226E93170(v52 + *(v56 + 72) * v34, v11, &qword_27D7BB090, &qword_227679BB0);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_226E92000(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_226FEB78C(v43, 1);
            v39 = sub_226E92000(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22720AB34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_2276638D0();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_227117914(v5);
  }

  sub_22720AF34(a1, a2, MEMORY[0x277D50180], MEMORY[0x277D50180], MEMORY[0x277D50180], sub_22711739C);
  *v2 = v5;
}

void sub_22720AC34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_2276642E0();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2271179AC(v5);
  }

  sub_22720AF34(a1, a2, MEMORY[0x277D50820], MEMORY[0x277D50820], MEMORY[0x277D50820], sub_2271173CC);
  *v2 = v5;
}

void sub_22720AD34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_227666B60();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2271179F8(v5);
  }

  sub_22720AF34(a1, a2, MEMORY[0x277D52828], MEMORY[0x277D52828], MEMORY[0x277D52828], sub_2271173E4);
  *v2 = v5;
}

void sub_22720AE34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_2276658B0();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_227117A44(v5);
  }

  sub_22720AF34(a1, a2, MEMORY[0x277D519E0], MEMORY[0x277D519E0], MEMORY[0x277D519E0], sub_2271173FC);
  *v2 = v5;
}

void sub_22720AF34(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(char **, unint64_t *, char **))
{
  v12 = v6[1];
  v13 = sub_22766D130();
  if (v13 < v12)
  {
    if (v12 >= -1)
    {
      v14 = v13;
      v18 = a5;
      v15 = v12 / 2;
      if (v12 < 2)
      {
        v16 = MEMORY[0x277D84F90];
      }

      else
      {
        a3(0);
        v16 = sub_22766C380();
        *(v16 + 16) = v15;
      }

      v17 = *(a3(0) - 8);
      v20[0] = (v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
      v20[1] = v15;
      sub_22720B398(v20, v21, v6, a1, a2, v14, a4, v18, a6);
      *(v16 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_12;
  }

  if (v12)
  {
    sub_22720B0A8(0, v12, 1, a1, a2, a5);
  }
}

void sub_22720B0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v7;
  v53 = a5;
  v54 = a4;
  v12 = a6(0);
  MEMORY[0x28223BE20](v12);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v39 - v15;
  v19.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v6;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v12, v19);
        v30(v27, v28, v12);
        v31 = v54(v29, v27);
        if (v8)
        {
          v38 = *v50;
          (*v50)(v27, v12);
          v38(v29, v12);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v12);
        v34(v29, v12);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v12);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v8 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v8 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22720B398(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, char *a6, uint64_t (*a7)(void), uint64_t (*a8)(void), void (*a9)(char **, unint64_t *, char **))
{
  v11 = v9;
  v162 = a4;
  v163 = a5;
  v141 = a1;
  v157 = a9;
  v14 = (a7)(0, a2);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v143 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v146 = &v131 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v138 = &v131 - v23;
  MEMORY[0x28223BE20](v24);
  v140 = &v131 - v25;
  v30.n128_f64[0] = MEMORY[0x28223BE20](v26);
  v139 = &v131 - v31;
  v32 = a3[1];
  v147 = a3;
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_104:
    a6 = *v141;
    if (*v141)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v149 = v29;
  v144 = v28;
  v145 = v27;
  v136 = a6;
  v33 = 0;
  v158 = (v15 + 8);
  v159 = v15 + 16;
  v154 = (v15 + 32);
  v34 = MEMORY[0x277D84F90];
  v156 = v15;
  v161 = v14;
  v135 = a8;
  while (1)
  {
    v35 = v33;
    if ((v33 + 1) >= v32)
    {
      v56 = v33 + 1;
    }

    else
    {
      v142 = v32;
      v160 = v11;
      v36 = *a3;
      v37 = *(v15 + 9);
      v38 = &v36[v37 * (v33 + 1)];
      v39 = *(v15 + 2);
      v40 = v139;
      v41 = v33;
      (v39)(v139, v38, v14, v30);
      v155 = v36;
      v42 = &v36[v37 * v35];
      v43 = v140;
      v150 = v39;
      (v39)(v140, v42, v14);
      v44 = v14;
      v45 = v160;
      LODWORD(v152) = v162(v40, v43);
      v160 = v45;
      if (v45)
      {
        v130 = *v158;
        (*v158)(v43, v14);
        v130(v40, v14);
        goto LABEL_116;
      }

      v46 = *v158;
      (*v158)(v43, v44);
      v148 = v46;
      v46(v40, v44);
      v134 = (v142 - 1);
      v151 = v142 - 2;
      v47 = &v155[v37 * (v41 + 2)];
      v137 = v41;
      a6 = v41;
      v11 = v160;
      v48 = v138;
      v155 = v37;
      v153 = v34;
      while (v151 != a6)
      {
        v49 = v161;
        v50 = v11;
        v51 = v150;
        (v150)(v48, v47, v161);
        v52 = v149;
        (v51)(v149, v38, v49);
        v53 = v162(v48, v52);
        v11 = v50;
        if (v50)
        {
          v128 = v148;
          (v148)(v52, v49);
          (v128)(v48, v49);
LABEL_116:

          return;
        }

        v54 = v53;
        v55 = v148;
        (v148)(v52, v49);
        (v55)(v48, v49);
        ++a6;
        v37 = v155;
        v47 = &v155[v47];
        v38 = &v155[v38];
        v34 = v153;
        if ((v152 ^ v54))
        {
          v56 = a6 + 1;
          v14 = v161;
          goto LABEL_12;
        }
      }

      a6 = v134;
      v14 = v161;
      v56 = v142;
LABEL_12:
      a3 = v147;
      v15 = v156;
      v35 = v137;
      if ((v152 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v56 < v137)
      {
        goto LABEL_140;
      }

      if (v137 <= a6)
      {
        v57 = v56;
        v58 = v37 * (v56 - 1);
        v59 = v57 * v37;
        v142 = v57;
        v60 = v137;
        a6 = (v137 * v37);
        do
        {
          if (v60 != --v57)
          {
            v160 = v11;
            v62 = *v147;
            if (!*v147)
            {
              goto LABEL_144;
            }

            v152 = *v154;
            v152(v143, &a6[v62], v161);
            if (a6 < v58 || &a6[v62] >= v62 + v59)
            {
              v61 = v161;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v61 = v161;
              if (a6 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v152((v62 + v58), v143, v61);
            v11 = v160;
            v14 = v61;
            v37 = v155;
          }

          ++v60;
          v58 -= v37;
          v59 -= v37;
          a6 = &v37[a6];
        }

        while (v60 < v57);
        a8 = v135;
        a3 = v147;
        v15 = v156;
        v35 = v137;
        v56 = v142;
      }

      else
      {
LABEL_15:
        a8 = v135;
      }
    }

    v63 = a3[1];
    if (v56 >= v63)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v56, v35))
    {
      goto LABEL_136;
    }

    if (v56 - v35 >= v136)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v35, v136))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v142 = v56;
    if (&v136[v35] >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = &v136[v35];
    }

    if (v64 < v35)
    {
      goto LABEL_139;
    }

    if (v142 == v64)
    {
      v56 = v142;
LABEL_37:
      if (v56 < v35)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v153 = v34;
    v110 = *a3;
    v111 = *(v15 + 9);
    v155 = *(v15 + 2);
    v15 = v110 + v111 * (v142 - 1);
    v151 = -v111;
    v137 = v35;
    a6 = &v35[-v142];
    v152 = v110;
    v132 = v111;
    v112 = v110 + v142 * v111;
    v150 = v64;
    do
    {
      v133 = v112;
      v113 = v112;
      v134 = a6;
      v148 = v15;
      while (1)
      {
        v114 = v144;
        v115 = v155;
        (v155)(v144, v113, v14, v30);
        v116 = v145;
        v115(v145, v15, v14);
        v117 = v14;
        v118 = v162(v114, v116);
        v160 = v11;
        if (v11)
        {
          v129 = *v158;
          (*v158)(v116, v14);
          v129(v114, v14);
          goto LABEL_116;
        }

        v119 = v118;
        v120 = *v158;
        (*v158)(v116, v117);
        v120(v114, v117);
        if ((v119 & 1) == 0)
        {
          break;
        }

        if (!v152)
        {
          goto LABEL_142;
        }

        v121 = *v154;
        v122 = v146;
        v14 = v161;
        (*v154)(v146, v113, v161);
        swift_arrayInitWithTakeFrontToBack();
        v121(v15, v122, v14);
        v15 += v151;
        v113 += v151;
        v123 = __CFADD__(a6++, 1);
        v11 = v160;
        if (v123)
        {
          goto LABEL_100;
        }
      }

      v11 = v160;
      v14 = v161;
LABEL_100:
      v15 = &v148[v132];
      a6 = v134 - 1;
      v112 = &v133[v132];
      v56 = v150;
      ++v142;
    }

    while (v142 != v150);
    a8 = v135;
    a3 = v147;
    v34 = v153;
    v35 = v137;
    if (v150 < v137)
    {
      goto LABEL_135;
    }

LABEL_38:
    a6 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_2273A4F9C(0, *(v34 + 2) + 1, 1, v34);
    }

    v66 = *(v34 + 2);
    v65 = *(v34 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v34 = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v34);
    }

    *(v34 + 2) = v67;
    v68 = &v34[16 * v66];
    *(v68 + 4) = v35;
    *(v68 + 5) = v56;
    v15 = *v141;
    if (!*v141)
    {
      goto LABEL_145;
    }

    v150 = v56;
    if (v66)
    {
      break;
    }

    v11 = a6;
LABEL_89:
    v32 = a3[1];
    v33 = v150;
    v15 = v156;
    v14 = v161;
    if (v150 >= v32)
    {
      goto LABEL_104;
    }
  }

  v11 = a6;
  while (1)
  {
    v69 = v67 - 1;
    if (v67 >= 4)
    {
      v74 = &v34[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_122;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_123;
      }

      v81 = &v34[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_125;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_128;
      }

      if (v85 >= v77)
      {
        v103 = &v34[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          v69 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v67 == 3)
    {
      v70 = *(v34 + 4);
      v71 = *(v34 + 5);
      v80 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      v73 = v80;
LABEL_58:
      if (v73)
      {
        goto LABEL_124;
      }

      v86 = &v34[16 * v67];
      v88 = *v86;
      v87 = *(v86 + 1);
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      v91 = v89;
      if (v89)
      {
        goto LABEL_127;
      }

      v92 = &v34[16 * v69 + 32];
      v94 = *v92;
      v93 = *(v92 + 1);
      v80 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v80)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v90, v95))
      {
        goto LABEL_131;
      }

      if (v90 + v95 >= v72)
      {
        if (v72 < v95)
        {
          v69 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v96 = &v34[16 * v67];
    v98 = *v96;
    v97 = *(v96 + 1);
    v80 = __OFSUB__(v97, v98);
    v90 = v97 - v98;
    v91 = v80;
LABEL_72:
    if (v91)
    {
      goto LABEL_126;
    }

    v99 = &v34[16 * v69];
    v101 = *(v99 + 4);
    v100 = *(v99 + 5);
    v80 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v80)
    {
      goto LABEL_129;
    }

    if (v102 < v90)
    {
      goto LABEL_89;
    }

LABEL_79:
    a6 = (v69 - 1);
    if (v69 - 1 >= v67)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v107 = *&v34[16 * a6 + 32];
    v108 = *&v34[16 * v69 + 40];
    sub_22720BFE4((*a3 + *(v156 + 9) * v107), (*a3 + *(v156 + 9) * *&v34[16 * v69 + 32]), *a3 + *(v156 + 9) * v108, v15, v162, v163, a8, v157);
    if (v11)
    {
      goto LABEL_116;
    }

    if (v108 < v107)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_2271171D0(v34);
    }

    if (a6 >= *(v34 + 2))
    {
      goto LABEL_121;
    }

    v109 = &v34[16 * a6];
    *(v109 + 4) = v107;
    *(v109 + 5) = v108;
    v164 = v34;
    sub_227117144(v69);
    v34 = v164;
    v67 = *(v164 + 2);
    if (v67 <= 1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  v34 = sub_2271171D0(v34);
LABEL_106:
  v164 = v34;
  v124 = *(v34 + 2);
  if (v124 < 2)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v125 = *a3;
    if (!*a3)
    {
      break;
    }

    v126 = *&v34[16 * v124];
    a3 = *&v34[16 * v124 + 24];
    sub_22720BFE4(&v125[*(v15 + 9) * v126], &v125[*(v15 + 9) * *&v34[16 * v124 + 16]], &v125[*(v15 + 9) * a3], a6, v162, v163, a8, v157);
    if (v11)
    {
      goto LABEL_116;
    }

    if (a3 < v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_2271171D0(v34);
    }

    if (v124 - 2 >= *(v34 + 2))
    {
      goto LABEL_133;
    }

    v127 = &v34[16 * v124];
    *v127 = v126;
    v127[1] = a3;
    v164 = v34;
    sub_227117144(v124 - 1);
    v34 = v164;
    v124 = *(v164 + 2);
    a3 = v147;
    if (v124 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void sub_22720BFE4(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t (*a7)(void), void (*a8)(char **, unint64_t *, char **))
{
  v10 = v8;
  v82 = a5;
  v79 = a4;
  v15 = a7(0);
  v81 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v22);
  v84 = &v68 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_70;
  }

  v27 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v26 != -1)
  {
    v80 = a3;
    v28 = (a2 - a1) / v26;
    v88 = a1;
    v29 = v79;
    v87 = v79;
    v83 = v26;
    v70 = a8;
    if (v28 < v27 / v26)
    {
      v30 = v10;
      v31 = a2;
      v32 = v28 * v26;
      v78 = v21;
      if (v79 < a1 || &a1[v32] <= v79)
      {
        v33 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v33 = v15;
        if (v79 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v29 + v32;
      v85 = v30;
      v86 = v29 + v32;
      v35 = v31;
      v36 = v32 < 1 || v31 >= v80;
      v37 = v84;
      if (!v36)
      {
        v38 = *(v81 + 16);
        v81 += 16;
        v75 = v38;
        v76 = (v81 - 8);
        while (1)
        {
          v84 = v35;
          v39 = v75;
          (v75)(v37);
          v40 = v78;
          v39(v78, v29, v33);
          v41 = v85;
          v42 = v82(v37, v40);
          v85 = v41;
          if (v41)
          {
            v66 = *v76;
            (*v76)(v40, v33);
            v66(v37, v33);
            goto LABEL_65;
          }

          v43 = v42;
          v44 = v29;
          v45 = *v76;
          (*v76)(v40, v33);
          v45(v37, v33);
          if (v43)
          {
            v46 = v83;
            v47 = &v84[v83];
            v29 = v44;
            if (a1 < v84 || a1 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_32:
              v46 = v83;
            }

            else if (a1 != v84)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_32;
            }

            v35 = v47;
            goto LABEL_37;
          }

          v46 = v83;
          v29 = &v44[v83];
          if (a1 < v44 || a1 >= v29)
          {
            break;
          }

          if (a1 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v46 = v83;
          }

          v87 = v29;
          v35 = v84;
LABEL_37:
          a1 += v46;
          v88 = a1;
          if (v29 >= v77 || v35 >= v80)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_65;
    }

    v34 = v27 / v26 * v26;
    v77 = v23;
    if (v79 < a2 || &a2[v34] <= v79)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v79 == a2)
      {
LABEL_42:
        v48 = v29 + v34;
        if (v34 >= 1)
        {
          v49 = -v26;
          v50 = v80;
          v74 = (v81 + 16);
          v75 = (v81 + 8);
          v51 = v48;
          v72 = a1;
          v73 = a6;
          v71 = -v26;
          do
          {
            v78 = v48;
            v69 = v48;
            v52 = &a2[v49];
            v84 = &a2[v49];
            v76 = a2;
            while (1)
            {
              v85 = v10;
              if (a2 <= a1)
              {
                v88 = a2;
                v48 = v69;
                goto LABEL_67;
              }

              v81 = v50;
              v83 = v51;
              v54 = *v74;
              v80 = v51 + v49;
              v55 = v15;
              v56 = v49;
              v54(v18);
              v57 = v77;
              (v54)(v77, v52, v55);
              v58 = v85;
              v59 = v82(v18, v57);
              if (v58)
              {
                v67 = *v75;
                (*v75)(v57, v55);
                v67(v18, v55);
                v88 = v76;
                v86 = v78;
                goto LABEL_65;
              }

              v60 = v59;
              v85 = 0;
              v61 = v81;
              v62 = v81 + v56;
              v63 = *v75;
              (*v75)(v57, v55);
              v15 = v55;
              v63(v18, v55);
              if (v60)
              {
                break;
              }

              v64 = v80;
              v65 = v80;
              v50 = v62;
              if (v61 < v83 || v62 >= v83)
              {
                swift_arrayInitWithTakeFrontToBack();
                v52 = v84;
              }

              else
              {
                v52 = v84;
                if (v61 != v83)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v78 = v65;
              v51 = v65;
              v53 = v64 > v79;
              v10 = v85;
              a1 = v72;
              v49 = v71;
              a2 = v76;
              if (!v53)
              {
                v48 = v78;
                goto LABEL_66;
              }
            }

            v50 = v62;
            if (v61 < v76 || v62 >= v76)
            {
              a2 = v84;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a2 = v84;
              if (v61 != v76)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v78;
            v51 = v83;
            v10 = v85;
            a1 = v72;
            v49 = v71;
          }

          while (v83 > v79);
        }

LABEL_66:
        v85 = v10;
        v88 = a2;
LABEL_67:
        v86 = v48;
LABEL_65:
        v70(&v88, &v87, &v86);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v26 = v83;
    goto LABEL_42;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_22720C6D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v33 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v3, 0);
    v5 = v33;
    v32 = v2 + 64;
    result = sub_22766CC90();
    v6 = result;
    v7 = 0;
    v28 = v2 + 72;
    v29 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v32 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v31 = *(v2 + 36);
      v10 = (*(v2 + 56) + 16 * v6);
      v11 = v2;
      v12 = *v10;
      v13 = v10[1];

      v14 = a2(v12, v13);
      v16 = v15;

      v17 = v5;
      v34 = v5;
      v18 = *(v5 + 16);
      v19 = *(v17 + 24);
      if (v18 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v18 + 1, 1);
        v17 = v34;
      }

      *(v17 + 16) = v18 + 1;
      v20 = v17 + 16 * v18;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v8 = 1 << *(v11 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v21 = *(v32 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v11;
      v5 = v17;
      if (v31 != *(v11 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_226EB526C(v6, v31, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v6, v31, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v29)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22720C954()
{
  v0 = sub_2276639D0();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_22766BFD0();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_22766C000();
    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
  }

  sub_2276639C0();
  v12[1] = v2[4];
  v13 = sub_22766D140();
  v14 = v9;
  MEMORY[0x22AA98450](46, 0xE100000000000000);
  MEMORY[0x22AA98450](v2[5], v2[6]);
  MEMORY[0x22AA98450](24415, 0xE200000000000000);
  MEMORY[0x22AA98450](v6, v8);

  v10 = v13;
  sub_22720DA88(v2, MEMORY[0x277D501E8]);
  return v10;
}

uint64_t sub_22720CC10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22720CD3C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_22720CD74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F87F74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_22720CDF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  MEMORY[0x28223BE20](v54);
  v7 = &v45 - v6;
  v8 = sub_227665F20();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v12;
  v16 = 0;
  v55 = a3;
  v17 = *(a3 + 64);
  v48 = a3 + 64;
  v49 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v58 = a4 + 56;
  v52 = &v45 - v12;
  v53 = v13;
  v60 = (v13 + 8);
  v61 = v13 + 16;
  v62 = v7;
  v51 = v21;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v57 = (v20 - 1) & v20;
LABEL_14:
    v25 = v22 | (v16 << 6);
    v26 = v55;
    v27 = v55[6];
    v59 = *(v53 + 72);
    v28 = *(v53 + 16);
    v28(v15, v27 + v59 * v25, v8, v14);
    v29 = v26[7];
    v50 = v25;
    v30 = (v29 + 16 * v25);
    v31 = v15;
    v33 = *v30;
    v32 = v30[1];
    v34 = v62;
    (v28)(v62, v31, v8);
    v35 = (v34 + *(v54 + 48));
    *v35 = v33;
    v35[1] = v32;
    v36 = *(a4 + 16);
    v56 = v32;
    if (!v36)
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    sub_226EAC024(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    swift_bridgeObjectRetain_n();
    v37 = sub_22766BF50();
    v38 = -1 << *(a4 + 32);
    v39 = v37 & ~v38;
    if ((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
    {
      v40 = ~v38;
      while (1)
      {
        v41 = a4;
        (v28)(v10, *(a4 + 48) + v39 * v59, v8);
        sub_226EAC024(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
        v42 = sub_22766BFB0();
        v43 = *v60;
        (*v60)(v10, v8);
        if (v42)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        a4 = v41;
        if (((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_226E97D1C(v62, &qword_27D7BC168, &qword_22767CCF8);

      v15 = v52;
      v43(v52, v8);
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v44 = __OFADD__(v49++, 1);
      a4 = v41;
      v21 = v51;
      v20 = v57;
      if (v44)
      {
        __break(1u);
LABEL_23:
        sub_227329A6C(v47, v46, v49, v55);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_226E97D1C(v62, &qword_27D7BC168, &qword_22767CCF8);

      v15 = v52;
      (*v60)(v52, v8);
      v21 = v51;
      v20 = v57;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v24 = *(v48 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v57 = (v24 - 1) & v24;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_22720D2A0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_22720A52C(v13, v7, a1, a2);
      MEMORY[0x22AA9A450](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_22720CDF8((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_22720D50C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227668E60() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_2271F8D84(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

char *sub_22720D5D8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = *(sub_2276627D0() - 8);
  result = sub_227281E38(v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_22720D658@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_227281800(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22720D6CC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_227281C1C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_22720D744@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_226E9B790(*(v2 + 24), *(v2 + 32), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22720D958(uint64_t a1)
{
  v4 = *(sub_227667100() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226E92F34;

  return sub_2272D0838(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_22720DA88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22720DAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663090() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2271F1784(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_133Tm()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22720DCEC(void *a1)
{
  v3 = *(sub_2276638D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227665CA0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_2271F2960(a1, v1 + v4, v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_22720DDF8()
{
  result = qword_27D7BC210;
  if (!qword_27D7BC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC210);
  }

  return result;
}

unint64_t sub_22720DE4C()
{
  result = qword_27D7BC218;
  if (!qword_27D7BC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC218);
  }

  return result;
}

void sub_22720DF00(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *a1;
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v4;
  sub_2275F28B8(sub_22720DF64, v7, v5);
  *a2 = v6;
}

uint64_t objectdestroy_87Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t static WorkoutPlanItemReference.representativeSamples()(uint64_t a1)
{
  result = sub_22766C090();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 40);
    v6 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v10 = *(v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v11 = *(v6 + 24) >> 1, v11 <= v10))
      {
        result = sub_2273A57A4(result, v10 + 1, 1, v6);
        v6 = result;
        v11 = *(result + 24) >> 1;
      }

      if (v11 <= *(v6 + 16))
      {
        goto LABEL_13;
      }

      ++v4;
      swift_arrayInitWithCopy();

      ++*(v6 + 16);
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_11:

    return v6;
  }

  return result;
}

void sub_22720E31C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 workout];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

void sub_22720E3FC(void *a1)
{
  v2 = sub_22766BFD0();
  [a1 setWorkout_];
}

unint64_t sub_22720E454(uint64_t a1)
{
  result = sub_22720E47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22720E47C()
{
  result = qword_27D7BC238;
  if (!qword_27D7BC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC238);
  }

  return result;
}

uint64_t sub_22720E4D0(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = sub_22766B390();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v4 = sub_227662940();
  v2[53] = v4;
  v2[54] = *(v4 - 8);
  v2[55] = swift_task_alloc();
  v5 = sub_227662750();
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v6 = sub_2276624A0();
  v2[60] = v6;
  v2[61] = *(v6 - 8);
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720E6B0, 0, 0);
}

uint64_t sub_22720E6B0()
{
  v1 = v0[49];
  __swift_project_boxed_opaque_existential_0(v1 + 16, v1[19]);
  v2 = sub_22766A990();
  v4 = v3;
  v0[46] = sub_227662570();
  v0[47] = v5;
  v0[63] = v5;
  sub_226EDC420(v2, v4);
  v6 = v1[14];
  v0[64] = v6;
  v7 = v1[15];
  v0[65] = v7;
  v0[66] = v1[2];
  sub_226F5E0B4(v6, v7);

  v8 = swift_task_alloc();
  v0[67] = v8;
  *v8 = v0;
  v8[1] = sub_22720E7D4;
  v9 = v0[62];

  return sub_2273CD428(v9, 0xD00000000000002FLL, 0x800000022769B8C0);
}

uint64_t sub_22720E7D4()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {

    v3 = sub_22720F690;
  }

  else
  {
    *(v2 + 552) = *(v2 + 368);
    v3 = sub_22720E8F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22720E8F8(uint64_t a1)
{
  v2 = v1[69];
  v3 = v1[63];
  v5 = v1[58];
  v4 = v1[59];
  v6 = v1[56];
  v7 = v1[57];
  v9 = v1[54];
  v8 = v1[55];
  v10 = v1[53];
  sub_227662720();
  sub_227662920();
  sub_2276625F0();
  (*(v9 + 8))(v8, v10);
  v11 = *(v7 + 8);
  v11(v5, v6);
  sub_2276626F0();
  v13 = v12;
  v11(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D839F8];
  *(v14 + 16) = xmmword_227670CD0;
  v16 = MEMORY[0x277D83A80];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = v13;
  v17 = sub_22766C030();
  v19 = v18;
  v1[70] = v17;
  v1[71] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  strcpy((inited + 32), "blindedElement");
  v21 = MEMORY[0x277D837D0];
  *(inited + 47) = -18;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 72) = v21;
  *(inited + 80) = 0x692D63696C627570;
  *(inited + 120) = v21;
  *(inited + 88) = 0xEB000000006F666ELL;
  *(inited + 96) = v17;
  *(inited + 104) = v19;

  v22 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  v1[30] = v22;
  v23 = swift_task_alloc();
  v1[72] = v23;
  *v23 = v1;
  v23[1] = sub_22720EB84;

  return sub_2273CFC4C(0);
}

uint64_t sub_22720EB84(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 584) = a1;

  if (v1)
  {

    *(v3 + 648) = v1;
    v4 = sub_22720F214;
  }

  else
  {
    v4 = sub_22720ECB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22720ECB0(uint64_t a1)
{
  v2 = sub_2276623E0();
  sub_226E93170(v1 + 240, v1 + 272, &unk_27D7BC990, &qword_227670A30);
  v3 = *(v1 + 296);
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_0((v1 + 272), *(v1 + 296));
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    v7 = sub_22766D170();
    (*(v5 + 8))(v6, v3);

    __swift_destroy_boxed_opaque_existential_0((v1 + 272));
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(v1 + 584) requestWithMethod:4 URL:v2 parameters:v7];
  *(v1 + 592) = v8;
  swift_unknownObjectRelease();

  v9 = swift_task_alloc();
  *(v1 + 600) = v9;
  *v9 = v1;
  v9[1] = sub_22720EE9C;

  return sub_2273D1154(v8, 0, 1, 0, 0);
}

uint64_t sub_22720EE9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {

    v4 = sub_22720F19C;
  }

  else
  {
    v4 = sub_22720EFBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22720EFBC()
{
  v1 = *(v0 + 584);

  sub_226E97D1C(v0 + 240, &unk_27D7BC990, &qword_227670A30);
  v2 = swift_task_alloc();
  *(v0 + 624) = v2;
  *v2 = v0;
  v2[1] = sub_22720F07C;
  v3 = *(v0 + 608);

  return sub_2273CDC0C(v3);
}

uint64_t sub_22720F07C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {

    v4 = sub_22720F748;
  }

  else
  {
    v4 = sub_22720F304;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22720F19C()
{
  v1 = *(v0 + 584);

  *(v0 + 648) = *(v0 + 616);

  return MEMORY[0x2822009F8](sub_22720F214, 0, 0);
}

uint64_t sub_22720F214()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[60];

  sub_226EDC420(v2, v1);
  (*(v4 + 8))(v3, v5);
  sub_226E97D1C((v0 + 30), &unk_27D7BC990, &qword_227670A30);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22720F304()
{
  if (![*(v0 + 632) object])
  {

    sub_22766A690();
    v14 = sub_22766B380();
    v15 = sub_22766C890();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Evaluated element could not be parsed as JSON", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    v17 = *(v0 + 632);
    v18 = *(v0 + 608);
    v19 = *(v0 + 512);
    v20 = *(v0 + 488);
    v35 = *(v0 + 496);
    v33 = *(v0 + 520);
    v34 = *(v0 + 480);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 400);

    (*(v22 + 8))(v21, v23);
    v24 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51F48], v24);
    swift_willThrow();

    sub_226EDC420(v19, v33);
    (*(v20 + 8))(v35, v34);
    goto LABEL_7;
  }

  v1 = *(v0 + 640);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_22766CC20();
  swift_unknownObjectRelease();
  sub_226F04970((v0 + 336), (v0 + 304));
  sub_227215D20(v0 + 304, v5, v4, v3, v2, (v0 + 144));
  v6 = v1;
  v7 = *(v0 + 632);
  v8 = *(v0 + 608);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 480);
  if (v6)
  {

    sub_226EDC420(v10, v9);

    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v12 + 8))(v11, v13);
LABEL_7:

    v26 = *(v0 + 8);
    goto LABEL_9;
  }

  v27 = *(v0 + 384);

  sub_226EDC420(v10, v9);

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  (*(v12 + 8))(v11, v13);
  v28 = *(v0 + 160);
  *v27 = *(v0 + 144);
  v27[1] = v28;
  v29 = *(v0 + 176);
  v30 = *(v0 + 192);
  v31 = *(v0 + 224);
  v27[4] = *(v0 + 208);
  v27[5] = v31;
  v27[2] = v29;
  v27[3] = v30;

  v26 = *(v0 + 8);
LABEL_9:

  return v26();
}

uint64_t sub_22720F690()
{
  v1 = v0[65];
  v2 = v0[64];

  sub_226EDC420(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22720F748()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 480);

  sub_226EDC420(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22720F82C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22766C050();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[19] = v4;
  *v4 = v2;
  v4[1] = sub_22720F928;

  return sub_22720E4D0((v2 + 2));
}

uint64_t sub_22720F928()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22720FA78, 0, 0);
  }
}

uint64_t sub_22720FA78(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  sub_22766C040();
  v5 = sub_22766C010();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15 || (sub_227662570(), sub_226FB1424(v5, v7), v8 = sub_227662510(), v10 = v9, , v10 >> 60 == 15))
  {
    v11 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51F30], v11);
    swift_willThrow();
LABEL_16:
    sub_227215CCC((v1 + 2));

    v26 = v1[1];
    goto LABEL_17;
  }

  v13 = sub_227662510();
  if (v14 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v30 = v13;
  v31 = v14;
  v15 = sub_227662560();
  v16 = SecCertificateCreateWithData(0, v15);

  if (!v16)
  {
LABEL_13:
    sub_226FB1424(v30, v31);
LABEL_14:
    v24 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51F58], v24);
    swift_willThrow();
    goto LABEL_15;
  }

  v17 = SecCertificateCopyKey(v16);
  if (!v17)
  {
    v18 = v16;
LABEL_12:

    goto LABEL_13;
  }

  v18 = v17;
  v19 = SecKeyCopyExternalRepresentation(v17, 0);
  if (!v19)
  {

    goto LABEL_12;
  }

  v28 = v1[20];
  v20 = v1[15];
  v21 = v19;
  v29 = sub_227662590();
  v23 = v22;

  __swift_project_boxed_opaque_existential_0((v20 + 128), *(v20 + 152));
  sub_22766A9A0();
  if (v28)
  {
    sub_226EDC420(v29, v23);

    sub_226FB1424(v30, v31);
LABEL_15:
    sub_226FB1424(v8, v10);
    goto LABEL_16;
  }

  sub_226F5E0B4(v1[6], v1[7]);

  sub_2276648E0();
  sub_226EDC420(v29, v23);

  sub_226FB1424(v30, v31);
  sub_226FB1424(v8, v10);
  sub_227215CCC((v1 + 2));

  v26 = v1[1];
LABEL_17:

  return v26();
}

uint64_t sub_22720FE14(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720FF28, 0, 0);
}

uint64_t sub_22720FF28()
{
  v1 = v0[7];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 3, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_22721008C;
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[7];

  return (v10)(v6, sub_227215A64, v8, v7, v2, v3);
}

uint64_t sub_22721008C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2272105E8;
  }

  else
  {

    v2 = sub_2272101A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272101A8()
{
  v35 = v0;
  v1 = v0[13];
  sub_226E93170(v0[14], v1, &unk_27D7B96D0, &qword_227674908);
  v2 = sub_227664900();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_226E97D1C(v0[13], &unk_27D7B96D0, &qword_227674908);
    sub_22766A690();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "No saved token", v6, 2u);
      MEMORY[0x22AA9A450](v6, -1, -1);
    }

    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[8];
    v10 = v0[9];

    (*(v10 + 8))(v8, v9);
    v11 = sub_227665E90();
    sub_227215894();
    v12 = swift_allocError();
    v33 = *MEMORY[0x277D51F60];
    v32 = *(*(v11 - 8) + 104);
    v32(v13);
    swift_willThrow();
    sub_226E97D1C(v7, &unk_27D7B96D0, &qword_227674908);
    sub_22766A690();
    v14 = v12;
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();

    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    if (v17)
    {
      v31 = v0[8];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = MEMORY[0x22AA995D0](v0[3], v0[4]);
      v25 = sub_226E97AE8(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v15, v16, "Error querying token from the database: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);

      (*(v19 + 8))(v18, v31);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    swift_allocError();
    (v32)(v29, v33, v11);
    swift_willThrow();

    v28 = v0[1];
  }

  else
  {
    v26 = v0[13];
    v27 = v0[6];
    sub_226E97D1C(v0[14], &unk_27D7B96D0, &qword_227674908);
    (*(v3 + 32))(v27, v26, v2);

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_2272105E8()
{
  v21 = v0;

  v1 = v0[16];
  sub_22766A690();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v19 = v0[10];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v11 = sub_226E97AE8(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Error querying token from the database: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v19, v6);
  }

  else
  {
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];

    (*(v13 + 8))(v12, v14);
  }

  v15 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51F60], v15);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_22721084C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227662750();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_227664900();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_22766B390();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272109C8, 0, 0);
}

uint64_t sub_2272109C8()
{
  v1 = *(v0[5] + 16);
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_227210A68;

  return sub_22736D530(v1);
}

uint64_t sub_227210A68(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[17] = a1;
  v4[18] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v5;
    v8[1] = sub_227210C14;

    return sub_2273CE6CC(0xD00000000000001FLL, 0x800000022769B8A0);
  }
}

uint64_t sub_227210C14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_227211160;
  }

  else
  {
    v4 = sub_227210D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227210D3C()
{
  v50 = v0;
  v1 = sub_2276648B0();
  v0[2] = 0.0;
  v3 = sub_2272158EC(v1, v2, (v0 + 2));

  if (!v3)
  {

    v23 = MEMORY[0x277D51F28];
LABEL_12:
    v39 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *v23, v39);
    swift_willThrow();

    v41 = *(v0 + 1);
    goto LABEL_13;
  }

  v5 = *(v0 + 10);
  v4 = *(v0 + 11);
  v6 = *(v0 + 9);
  v7 = *(v0 + 3);
  v8 = v0[2];
  v9 = *(v0 + 20);
  sub_22766C510();
  v11 = v8 + v10 * v9;
  sub_22766A690();
  (*(v5 + 16))(v4, v7, v6);

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v44 = *(v0 + 18);
    v45 = *(v0 + 20);
    v43 = *(v0 + 17);
    v46 = *(v0 + 13);
    v14 = *(v0 + 11);
    v47 = *(v0 + 12);
    v48 = *(v0 + 14);
    v15 = *(v0 + 9);
    v16 = *(v0 + 10);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v49[0] = v18;
    *v17 = 136315906;
    v19 = sub_2276648F0();
    v21 = v20;
    (*(v16 + 8))(v14, v15);
    v22 = sub_226E97AE8(v19, v21, v49);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_226E97AE8(v43, v44, v49);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v45;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v11;
    _os_log_impl(&dword_226E8E000, v12, v13, "Checking for a valid token with publicKeyVersion %s, currentKeyVersion %s, bag token TTL %ld and tokenExpiration %f", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v25 = *(v0 + 13);
    v24 = *(v0 + 14);
    v27 = *(v0 + 11);
    v26 = *(v0 + 12);
    v28 = *(v0 + 9);
    v29 = *(v0 + 10);

    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
  }

  v31 = *(v0 + 17);
  v30 = *(v0 + 18);
  if (sub_2276648F0() == v31 && v32 == v30)
  {
  }

  else
  {
    v33 = sub_22766D190();

    if (v33)
    {
LABEL_11:
      v23 = MEMORY[0x277D51EF0];
      goto LABEL_12;
    }
  }

  v35 = *(v0 + 7);
  v34 = *(v0 + 8);
  v36 = *(v0 + 6);
  sub_227662720();
  sub_2276626F0();
  v38 = v37;
  (*(v35 + 8))(v34, v36);
  if (v11 < v38)
  {
    goto LABEL_11;
  }

  v41 = *(v0 + 1);
LABEL_13:

  return v41();
}

uint64_t sub_227211160()
{
  v1 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51ED8], v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227211250()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22721131C, 0, 0);
}

uint64_t sub_22721131C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2272113C8;

  return sub_2273CE6CC(0xD000000000000025, 0x800000022769B930);
}

uint64_t sub_2272113C8(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_227211634;
  }

  else
  {
    v3 = sub_2272114E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272114E4()
{
  v1 = v0[12];
  v2 = sub_226E97A5C(0x64uLL);
  if (v1 < v2)
  {
    sub_22766A690();
    v3 = sub_22766B380();
    v4 = sub_22766C8B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[12];
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v2;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v5;
      _os_log_impl(&dword_226E8E000, v3, v4, "Randomly generated value %ld was not less than the token threshold %ld. Fetching denied.", v6, 0x16u);
      MEMORY[0x22AA9A450](v6, -1, -1);
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];

    (*(v8 + 8))(v7, v9);
  }

  v10 = v0[1];

  return v10(v1 >= v2);
}

uint64_t sub_227211634()
{
  v21 = v0;
  v1 = sub_227665E90();
  sub_227215894();
  v2 = swift_allocError();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D51EF8], v1);
  swift_willThrow();
  sub_22766A690();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v0[10];
    v8 = v0[7];
    v7 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to fetch token threshold with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    (*(v16 + 8))(v14, v15);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_22721187C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_227664900();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_22721198C;

  return sub_22720F82C(a1);
}

uint64_t sub_22721198C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227211AD8, 0, 0);
  }
}

uint64_t sub_227211AD8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v5[7];
  __swift_project_boxed_opaque_existential_0(v5 + 3, v5[6]);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = *(v6 + 24);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_227211CBC;

  return v12();
}

uint64_t sub_227211CBC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_227211DD8;
  }

  else
  {

    v2 = sub_2271D1AC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227211DD8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227211E6C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  sub_226EDC420(*(v0 + 112), *(v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_227211EE8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_227665E90();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_227664900();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = sub_2276666C0();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_22766A8A0();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227212160, 0, 0);
}

uint64_t sub_227212160()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8F8], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    *(v0 + 336) = *MEMORY[0x277D524E8];
    v8 = *(v7 + 104);
    *(v0 + 208) = v8;
    *(v0 + 216) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v8(v6);
    v9 = swift_task_alloc();
    *(v0 + 224) = v9;
    *v9 = v0;
    v9[1] = sub_227212460;
    v10 = *(v0 + 136);

    return sub_22720FE14(v10);
  }

  else
  {
    sub_22766A690();
    v12 = sub_22766B380();
    v13 = sub_22766C8B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v12, v13, "Skipping playback voucher fetch with rand due to unsupported platform", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);

    (*(v19 + 8))(v17, v18);
    sub_227215894();
    swift_allocError();
    (*(v16 + 104))(v20, *MEMORY[0x277D51EE0], v15);
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_227212460()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272126EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[30] = v3;
    *v3 = v2;
    v3[1] = sub_2272125D8;
    v4 = v2[22];
    v5 = v2[17];

    return sub_22721084C(v5, v4);
  }
}

uint64_t sub_2272125D8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_227212BE8;
  }

  else
  {
    v2 = sub_227212AB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272126EC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v4 + 8);
  *(v0 + 256) = v5;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  *(v0 + 16) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v7 = (*(*(v0 + 104) + 88))(*(v0 + 112), *(v0 + 96));
    if (v7 == *MEMORY[0x277D51F60])
    {

      sub_22766A690();
      v8 = sub_22766B380();
      v9 = sub_22766C8B0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_226E8E000, v8, v9, "Existing token not found", v10, 2u);
        MEMORY[0x22AA9A450](v10, -1, -1);
      }

      v11 = *(v0 + 80);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);

      v14 = *(v13 + 8);
      *(v0 + 272) = v14;
      v14(v11, v12);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_227212FC8;
LABEL_10:
      v15[1] = v16;

      return sub_227211250();
    }

    if (v7 == *MEMORY[0x277D51EF0])
    {

      sub_22766A690();
      v17 = sub_22766B380();
      v18 = sub_22766C8B0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_226E8E000, v17, v18, "Existing token expired", v19, 2u);
        MEMORY[0x22AA9A450](v19, -1, -1);
      }

      v20 = *(v0 + 64);
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);

      v23 = *(v22 + 8);
      *(v0 + 304) = v23;
      v23(v20, v21);
      v15 = swift_task_alloc();
      *(v0 + 312) = v15;
      *v15 = v0;
      v16 = sub_2272134BC;
      goto LABEL_10;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_227212AB4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  (*(v0[19] + 8))(v0[22], v0[18]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227212BE8()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v4 + 8);
  *(v0 + 256) = v5;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  *(v0 + 16) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v7 = (*(*(v0 + 104) + 88))(*(v0 + 112), *(v0 + 96));
    if (v7 == *MEMORY[0x277D51F60])
    {

      sub_22766A690();
      v8 = sub_22766B380();
      v9 = sub_22766C8B0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_226E8E000, v8, v9, "Existing token not found", v10, 2u);
        MEMORY[0x22AA9A450](v10, -1, -1);
      }

      v11 = *(v0 + 80);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);

      v14 = *(v13 + 8);
      *(v0 + 272) = v14;
      v14(v11, v12);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_227212FC8;
LABEL_10:
      v15[1] = v16;

      return sub_227211250();
    }

    if (v7 == *MEMORY[0x277D51EF0])
    {

      sub_22766A690();
      v17 = sub_22766B380();
      v18 = sub_22766C8B0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_226E8E000, v17, v18, "Existing token expired", v19, 2u);
        MEMORY[0x22AA9A450](v19, -1, -1);
      }

      v20 = *(v0 + 64);
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);

      v23 = *(v22 + 8);
      *(v0 + 304) = v23;
      v23(v20, v21);
      v15 = swift_task_alloc();
      *(v0 + 312) = v15;
      *v15 = v0;
      v16 = sub_2272134BC;
      goto LABEL_10;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_227212FC8(char a1)
{
  *(*v1 + 340) = a1;

  return MEMORY[0x2822009F8](sub_2272130C8, 0, 0);
}

uint64_t sub_2272130C8(uint64_t a1)
{
  if (*(v1 + 340) == 1)
  {
    (*(v1 + 208))(*(v1 + 168), *(v1 + 336), *(v1 + 144));
    v2 = swift_task_alloc();
    *(v1 + 288) = v2;
    *v2 = v1;
    v2[1] = sub_22721334C;
    v3 = *(v1 + 24);

    return sub_22721187C(v3);
  }

  else
  {
    sub_22766A690();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "Playback voucher fetch denied, returning nil", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v1 + 272);
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    v11 = *(v1 + 72);
    v12 = *(v1 + 40);

    v8(v11, v12);
    sub_227215894();
    swift_allocError();
    (*(v10 + 104))(v13, *MEMORY[0x277D51EE0], v9);
    swift_willThrow();

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_22721334C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  (*(v2 + 256))(*(v2 + 168), *(v2 + 144));
  if (v0)
  {
    v3 = sub_227213AAC;
  }

  else
  {
    v3 = sub_227216954;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272134BC(char a1)
{
  *(*v1 + 341) = a1;

  return MEMORY[0x2822009F8](sub_2272135BC, 0, 0);
}

uint64_t sub_2272135BC(uint64_t a1)
{
  if (*(v1 + 341) == 1)
  {
    (*(v1 + 208))(*(v1 + 160), *(v1 + 336), *(v1 + 144));
    v2 = swift_task_alloc();
    *(v1 + 320) = v2;
    *v2 = v1;
    v2[1] = sub_227213840;
    v3 = *(v1 + 24);

    return sub_22721187C(v3);
  }

  else
  {
    sub_22766A690();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "Token fetch denied", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v1 + 304);
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    v11 = *(v1 + 56);
    v12 = *(v1 + 40);

    v8(v11, v12);
    sub_227215894();
    swift_allocError();
    (*(v10 + 104))(v13, *MEMORY[0x277D51EE0], v9);
    swift_willThrow();

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_227213840()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  (*(v2 + 256))(*(v2 + 160), *(v2 + 144));
  if (v0)
  {
    v3 = sub_227213BAC;
  }

  else
  {
    v3 = sub_2272139B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272139B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227213AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227213BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227213CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_227665E90();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_227664900();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_22766A8A0();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227213E9C, 0, 0);
}

uint64_t sub_227213E9C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8F8], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_227214120;
    v7 = v0[16];

    return sub_22720FE14(v7);
  }

  else
  {
    sub_22766A690();
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "Skipping playback voucher fetch due to unsupported platform", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[6];
    v16 = v0[7];

    (*(v16 + 8))(v14, v15);
    sub_227215894();
    swift_allocError();
    (*(v13 + 104))(v17, *MEMORY[0x277D51EE0], v12);
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_227214120()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272143A8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[22] = v3;
    *v3 = v2;
    v3[1] = sub_227214294;
    v4 = v2[5];
    v5 = v2[16];

    return sub_22721084C(v5, v4);
  }
}

uint64_t sub_227214294()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2272147C8;
  }

  else
  {
    v2 = sub_227214700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272143A8()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
    if (v3 == *MEMORY[0x277D51F60])
    {

      sub_22766A690();
      v4 = sub_22766B380();
      v5 = sub_22766C8B0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226E8E000, v4, v5, "Existing token not found, fetching a new one", v6, 2u);
        MEMORY[0x22AA9A450](v6, -1, -1);
      }

      v7 = *(v0 + 72);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);

      (*(v9 + 8))(v7, v8);
      v10 = swift_task_alloc();
      *(v0 + 192) = v10;
      *v10 = v0;
      v11 = sub_227214B38;
LABEL_10:
      v10[1] = v11;
      v18 = *(v0 + 24);

      return sub_22721187C(v18);
    }

    if (v3 == *MEMORY[0x277D51EF0])
    {

      sub_22766A690();
      v12 = sub_22766B380();
      v13 = sub_22766C8B0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_226E8E000, v12, v13, "Existing token expired, fetching a new one", v14, 2u);
        MEMORY[0x22AA9A450](v14, -1, -1);
      }

      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 48);

      (*(v16 + 8))(v15, v17);
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v11 = sub_227214D00;
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227214700()
{
  (*(v0[15] + 32))(v0[3], v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272147C8()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 184);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
    if (v3 == *MEMORY[0x277D51F60])
    {

      sub_22766A690();
      v4 = sub_22766B380();
      v5 = sub_22766C8B0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226E8E000, v4, v5, "Existing token not found, fetching a new one", v6, 2u);
        MEMORY[0x22AA9A450](v6, -1, -1);
      }

      v7 = *(v0 + 72);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);

      (*(v9 + 8))(v7, v8);
      v10 = swift_task_alloc();
      *(v0 + 192) = v10;
      *v10 = v0;
      v11 = sub_227214B38;
LABEL_10:
      v10[1] = v11;
      v18 = *(v0 + 24);

      return sub_22721187C(v18);
    }

    if (v3 == *MEMORY[0x277D51EF0])
    {

      sub_22766A690();
      v12 = sub_22766B380();
      v13 = sub_22766C8B0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_226E8E000, v12, v13, "Existing token expired, fetching a new one", v14, 2u);
        MEMORY[0x22AA9A450](v14, -1, -1);
      }

      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 48);

      (*(v16 + 8))(v15, v17);
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v11 = sub_227214D00;
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227214B38()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_227214E14;
  }

  else
  {
    v2 = sub_227214C4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227214C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227214D00()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_227214EC8;
  }

  else
  {
    v2 = sub_227216958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227214E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227214EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227214F7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2276666C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22721503C, 0, 0);
}

uint64_t sub_22721503C()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D524E8], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2272150F4;
  v2 = v0[2];

  return sub_22720FE14(v2);
}

uint64_t sub_2272150F4()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22721537C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_227215268;
    v4 = v2[6];
    v5 = v2[2];

    return sub_22721084C(v5, v4);
  }
}

uint64_t sub_227215268()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22721547C;
  }

  else
  {
    v2 = sub_2272153FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22721537C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272153FC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22721547C()
{
  v1 = v0[2];
  v2 = sub_227664900();
  (*(*(v2 - 8) + 8))(v1, v2);
  (*(v0[5] + 8))(v0[6], v0[4]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_227215570(uint64_t a1)
{
  v3 = sub_2276666C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = "SeymourServices/PlaybackVoucherProvider.swift";
  *(v10 + 24) = 45;
  *(v10 + 32) = 2;
  *(v10 + 40) = 294;
  *(v10 + 48) = &unk_22767D1A8;
  *(v10 + 56) = v9;
  sub_227664900();

  return sub_227669270();
}

uint64_t sub_22721574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = swift_allocObject();
  *(v10 + 16) = "SeymourServices/PlaybackVoucherProvider.swift";
  *(v10 + 24) = 45;
  *(v10 + 32) = 2;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = v9;
  sub_227664900();

  return sub_227669270();
}

uint64_t sub_2272157F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227214F7C(a1, v1);
}

unint64_t sub_227215894()
{
  result = qword_28139B6E8;
  if (!qword_28139B6E8)
  {
    sub_227665E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B6E8);
  }

  return result;
}

BOOL sub_2272158EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22766CE10();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_2272159E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_227215AB0(uint64_t a1)
{
  v4 = *(sub_2276666C0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227213CAC(a1, v6, v1 + v5);
}

uint64_t objectdestroy_12Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227215D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v97 = a4;
  v98 = a5;
  v95 = a3;
  v94 = a2;
  v96 = a6;
  v7 = sub_227665E90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  v104 = sub_22766B390();
  v100 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v92 - v20;
  MEMORY[0x28223BE20](v22);
  v99 = &v92 - v23;
  sub_226E97CC0(a1, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  if (!swift_dynamicCast())
  {
    sub_227215894();
    swift_allocError();
    v41 = v40;
    v42 = MEMORY[0x277D51F50];
LABEL_17:
    (*(v8 + 104))(v41, *v42, v7);
    return swift_willThrow();
  }

  v92 = v8;
  v93 = v7;
  v24 = v101;
  if (!*(v101 + 2) || (v25 = sub_226E92000(0xD000000000000010, 0x800000022769B8F0), (v26 & 1) == 0) || (sub_226E97CC0(*(v24 + 7) + 32 * v25, v103), (swift_dynamicCast() & 1) == 0))
  {
    sub_22766A690();
    v43 = sub_22766B380();
    v44 = sub_22766C890();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226E8E000, v43, v44, "Evaluated element malformed", v45, 2u);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    (*(v100 + 8))(v15, v104);
    if (*(v24 + 2) && (v46 = sub_226E92000(0x737574617473, 0xE600000000000000), (v47 & 1) != 0))
    {
      sub_226E97CC0(*(v24 + 7) + 32 * v46, v103);

      if (swift_dynamicCast())
      {
        v99 = v101;
        v48 = *MEMORY[0x277D51EE8];
        v49 = v92;
        v98 = *(v92 + 104);
        v50 = v93;
        v98(v13, v48, v93);
        sub_227215894();
        v104 = sub_22766D280();
        v100 = v51;
        v52 = *(v49 + 8);
        v52(v13, v50);
        v98(v10, v48, v50);
        v53 = sub_22766D270();
        v52(v10, v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227670CD0;
        *(inited + 32) = 0xD000000000000019;
        v55 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v56 = v99;
        *(inited + 40) = 0x800000022769B910;
        *(inited + 48) = v56;
        sub_227149264(inited);
        swift_setDeallocating();
        sub_226E97D1C(v55, &unk_27D7BE5C0, &qword_22767D1D0);
        v57 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v58 = sub_22766BFD0();

        v59 = sub_22766BE90();

        [v57 initWithDomain:v58 code:v53 userInfo:v59];

        return swift_willThrow();
      }
    }

    else
    {
    }

    v60 = v93;
    sub_227215894();
    swift_allocError();
    v62 = v61;
    v63 = MEMORY[0x277D51F38];
LABEL_26:
    (*(v92 + 104))(v62, *v63, v60);
    return swift_willThrow();
  }

  if (!*(v24 + 2) || (v27 = sub_226E92000(0x666F6F7270, 0xE500000000000000), (v28 & 1) == 0) || (sub_226E97CC0(*(v24 + 7) + 32 * v27, v103), (swift_dynamicCast() & 1) == 0))
  {

    sub_22766A690();
    v65 = sub_22766B380();
    v66 = sub_22766C890();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v93;
    v69 = v92;
    if (v67)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_226E8E000, v65, v66, "Proof malformed", v70, 2u);
      MEMORY[0x22AA9A450](v70, -1, -1);
    }

    (*(v100 + 8))(v18, v104);
    sub_227215894();
    swift_allocError();
    v72 = v71;
    v73 = MEMORY[0x277D51F08];
    goto LABEL_31;
  }

  if (!*(v24 + 2) || (v29 = sub_226E92000(0x697472654379656BLL, 0xEE00657461636966), (v30 & 1) == 0) || (sub_226E97CC0(*(v24 + 7) + 32 * v29, v103), (swift_dynamicCast() & 1) == 0))
  {

    sub_22766A690();
    v74 = sub_22766B380();
    v75 = sub_22766C890();
    v76 = os_log_type_enabled(v74, v75);
    v68 = v93;
    v69 = v92;
    if (v76)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_226E8E000, v74, v75, "Public key certificate malformed", v77, 2u);
      MEMORY[0x22AA9A450](v77, -1, -1);
    }

    (*(v100 + 8))(v21, v104);
    sub_227215894();
    swift_allocError();
    v72 = v78;
    v73 = MEMORY[0x277D51F18];
LABEL_31:
    (*(v69 + 104))(v72, *v73, v68);
    return swift_willThrow();
  }

  v31 = v102;
  if (!*(v24 + 2) || (v32 = v101, v33 = sub_226E92000(0x4B746E6572727563, 0xEC00000064497965), (v34 & 1) == 0))
  {

    goto LABEL_38;
  }

  sub_226E97CC0(*(v24 + 7) + 32 * v33, v103);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    v7 = v93;
    v79 = v99;
    sub_22766A690();
    v80 = sub_22766B380();
    v81 = sub_22766C890();
    v82 = os_log_type_enabled(v80, v81);
    v8 = v92;
    if (v82)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_226E8E000, v80, v81, "Server public key version malformed", v83, 2u);
      MEMORY[0x22AA9A450](v83, -1, -1);
    }

    (*(v100 + 8))(v79, v104);
    sub_227215894();
    swift_allocError();
    v41 = v84;
    v42 = MEMORY[0x277D51F40];
    goto LABEL_17;
  }

  v104 = v32;
  v36 = v101;
  v35 = v102;
  v37 = sub_227662510();
  v39 = v38;

  if (v39 >> 60 == 15)
  {

LABEL_43:
    v60 = v93;
    sub_227215894();
    swift_allocError();
    v62 = v87;
    v63 = MEMORY[0x277D51F10];
    goto LABEL_26;
  }

  v100 = v36;
  v99 = sub_227662510();
  v86 = v85;

  if (v86 >> 60 == 15)
  {

    sub_226FB1424(v37, v39);
    goto LABEL_43;
  }

  v88 = v98;

  v89 = v94;
  v90 = v95;
  result = sub_226F5E0B4(v94, v95);
  v91 = v96;
  *v96 = v37;
  v91[1] = v39;
  v91[2] = v99;
  v91[3] = v86;
  v91[4] = v89;
  v91[5] = v90;
  v91[6] = v104;
  v91[7] = v31;
  v91[8] = v100;
  v91[9] = v35;
  v91[10] = v97;
  v91[11] = v88;
  return result;
}

uint64_t sub_2272168A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227211EE8(a1, v1);
}

unint64_t sub_227216960(char a1)
{
  result = 0x706F506863746566;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 12:
    case 25:
      result = 0xD000000000000012;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000035;
      break;
    case 7:
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 13:
    case 14:
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD000000000000026;
      break;
    case 19:
    case 20:
    case 21:
      result = 0xD000000000000022;
      break;
    case 22:
      result = 0xD000000000000026;
      break;
    case 23:
      result = 0xD000000000000030;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 28:
      result = 0xD00000000000002FLL;
      break;
    case 29:
    case 32:
      result = 0xD000000000000023;
      break;
    case 30:
      result = 0xD000000000000027;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_227216CBC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_227216960(*a1);
  v5 = v4;
  if (v3 == sub_227216960(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227216D44()
{
  v1 = *v0;
  sub_22766D370();
  sub_227216960(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227216DA8(uint64_t a1)
{
  sub_227216960(*v1);
  sub_22766C100();
}

uint64_t sub_227216DFC(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_227216960(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_227216E5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227216EB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_227216E8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_227216960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227216EB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D1E0();

  if (v2 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for NetworkScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227217060()
{
  result = qword_27D7BC240;
  if (!qword_27D7BC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC240);
  }

  return result;
}

void sub_2272170E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2276728D0;
  *(v9 + 32) = sub_227665940();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_227665930();
  *(v9 + 56) = v11;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_22721781C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22721789C;
  aBlock[3] = &block_descriptor_21;
  v14 = _Block_copy(aBlock);

  [a3 getNotificationSettingsForTopicsWithCompletionHandler_];
  _Block_release(v14);
}

void sub_2272172DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v51 = a2;
  v42 = sub_227668980();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2276659D0();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_227667190();
  MEMORY[0x28223BE20](v45);
  v44 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v31 - v11;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v40 = *MEMORY[0x277D52C48];
  v39 = (v10 + 104);
  v38 = *MEMORY[0x277D52C40];
  v37 = (v10 + 16);
  v36 = *MEMORY[0x277D53690];
  v35 = (v4 + 104);
  v34 = v6 + 16;
  v46 = v6;
  v33 = v6 + 8;
  v32 = (v10 + 8);
  v52 = a1;

  v18 = 0;
  v50 = MEMORY[0x277D84F90];
  v31 = xmmword_227670CD0;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = (*(v52 + 48) + 16 * v20);
    v22 = v21[1];
    v23 = *(*(v52 + 56) + 8 * v20);
    v15 &= v15 - 1;
    v53[0] = *v21;
    v53[1] = v22;
    MEMORY[0x28223BE20](v17);
    *(&v31 - 2) = v53;

    v24 = v23;
    if (sub_226F7E160(sub_226FA6D84, (&v31 - 2), v51))
    {
      if ([v24 authorizationStatus] == 2)
      {
        v25 = v38;
      }

      else
      {
        v25 = v40;
      }

      v26 = v43;
      v27 = v45;
      (*v39)(v43, v25, v45);
      (*v37)(v44, v26, v27);
      (*v35)(v41, v36, v42);

      sub_2276659B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF28, &unk_2276799C8);
      v28 = v46;
      v29 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v31;
      (*(v28 + 16))(v30 + v29, v48, v47);
      v53[0] = v50;

      sub_22746166C(v30);

      (*(v46 + 8))(v48, v47);
      v17 = (*v32)(v43, v45);
      v50 = v53[0];
    }

    else
    {
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v53[0] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
      sub_22766C450();
      return;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22721781C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2272172DC(a1, v4, v5);
}

uint64_t sub_22721789C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_226E99364(0, &qword_281398A88, 0x277CE1FD0);
  v3 = sub_22766BEB0();

  v2(v3);
}

uint64_t sub_227217930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_22766B390();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272179FC, 0, 0);
}

uint64_t sub_2272179FC()
{
  v1 = *(v0[22] + 16);
  v0[27] = v1;
  if (v1)
  {
    v2 = v1;
    sub_22766A730();
    v3 = sub_22766B380();
    v4 = sub_22766C8B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226E8E000, v3, v4, "Clearing all notification topics", v5, 2u);
      MEMORY[0x22AA9A450](v5, -1, -1);
    }

    v6 = v0[26];
    v7 = v0[23];
    v8 = v0[24];

    v9 = *(v8 + 8);
    v0[28] = v9;
    v9(v6, v7);
    sub_226E99364(0, &qword_281398A60, 0x277CE1FF0);
    sub_227217FE8();
    v10 = sub_22766C570();
    v0[29] = v10;
    v0[2] = v0;
    v0[3] = sub_227217C5C;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2275D21B0;
    v0[13] = &block_descriptor_12;
    v0[14] = v11;
    [v2 setNotificationTopics:v10 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_227217C5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_227217DE4;
  }

  else
  {
    v2 = sub_227217D6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227217D6C()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227217DE4(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  swift_willThrow();

  sub_22766A730();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 240);
    v8 = *(v1 + 216);
    v21 = *(v1 + 200);
    v22 = *(v1 + 224);
    v20 = *(v1 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v1 + 152), *(v1 + 160));
    v13 = sub_226E97AE8(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to reset notification topics %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v22(v21, v20);
  }

  else
  {
    v14 = *(v1 + 240);
    v15 = *(v1 + 224);
    v16 = *(v1 + 200);
    v17 = *(v1 + 184);

    v15(v16, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

unint64_t sub_227217FE8()
{
  result = qword_281398A58;
  if (!qword_281398A58)
  {
    sub_226E99364(255, &qword_281398A60, 0x277CE1FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398A58);
  }

  return result;
}

unint64_t sub_22721807C()
{
  result = qword_27D7BC258;
  if (!qword_27D7BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC258);
  }

  return result;
}

unint64_t sub_2272180D0(uint64_t a1)
{
  result = sub_2272180F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272180F8()
{
  result = qword_27D7BC260;
  if (!qword_27D7BC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC260);
  }

  return result;
}

uint64_t sub_22721814C(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EE90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EE90((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_227218254(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = [a1 sessionIdentifier];
  if (!v20)
  {
    goto LABEL_10;
  }

  v55 = v11;
  v21 = v20;
  v52 = sub_22766C000();
  v23 = v22;

  v24 = [a1 startDate];
  if (!v24)
  {
LABEL_9:

LABEL_10:
    v37 = sub_227664DD0();
    sub_22721959C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
    swift_willThrow();

    return;
  }

  v51 = v23;
  v25 = v24;
  sub_227662710();

  v26 = [a1 workoutIdentifier];
  if (!v26)
  {
    (*(v55 + 8))(v19, v10);
    goto LABEL_9;
  }

  v50 = v2;
  v27 = v26;
  v28 = sub_22766C000();
  v49 = v29;

  [a1 percentageCompleted];
  v30 = [a1 activityType];
  if ((v30 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v48 = a2;
    v31 = *(v55 + 16);
    v32 = v15;
    v45 = v55 + 16;
    v46 = v30;
    v44 = v31;
    v31(v15, v19, v10);
    [a1 duration];
    v33 = [a1 scoreSummary];
    if (v33)
    {
      v34 = v33;
      [v34 elapsedSeconds];
      [v34 personalScore];
      [v34 communityLowerScore];
      [v34 communityLowerMiddleScore];
      [v34 communityUpperMiddleScore];
      [v34 communityUpperScore];
      v35 = v9;
      sub_227663BF0();

      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v9;
    }

    v39 = sub_227663C10();
    (*(*(v39 - 8) + 56))(v35, v36, 1, v39);
    v40 = [a1 timeZoneOffset];
    v41 = v40;
    v47 = v28;
    if (v40)
    {
      [v40 integerValue];
    }

    v44(v53, v32, v10);
    sub_226E93170(v9, v54, &qword_27D7BC268, &qword_22767D488);
    sub_2276644E0();

    sub_226E97D1C(v9, &qword_27D7BC268, &qword_22767D488);
    v42 = *(v55 + 8);
    v42(v32, v10);
    v42(v19, v10);
  }
}

void sub_2272187F4(void *a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v32 = sub_227663C10();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276644F0();
  v12 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_2276644D0();
  v13 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227664500();
  [a1 setPercentageCompleted_];
  sub_227664520();
  v14 = sub_2276626A0();
  (*(v9 + 8))(v11, v8);
  [a1 setStartDate_];

  sub_227664510();
  [a1 setDuration_];
  v15 = sub_227664490();
  if ((v16 & 1) == 0)
  {
    if (v15 >= 0x7FFFFFFF)
    {
      v17 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    [a1 setActivityType_];
  }

  sub_2276644A0();
  v18 = v32;
  if ((*(v6 + 48))(v5, 1, v32) == 1)
  {
    sub_226E97D1C(v5, &qword_27D7BC268, &qword_22767D488);
  }

  else
  {
    v19 = v31;
    (*(v6 + 32))(v31, v5, v18);
    v20 = objc_opt_self();
    v21 = sub_22766BFD0();
    v22 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:v30];

    type metadata accessor for ManagedScoreSummary();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {

      v27 = sub_227664DD0();
      sub_22721959C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51000], v27);
      swift_willThrow();
      (*(v6 + 8))(v19, v18);
      return;
    }

    v24 = v23;
    sub_22717DDCC(v23);
    [a1 setScoreSummary_];

    (*(v6 + 8))(v19, v18);
  }

  sub_2276644B0();
  if ((v25 & 1) == 0)
  {
    v26 = sub_22766C750();
    [a1 setTimeZoneOffset_];
  }
}

void *static ArchivedSession.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC268, &qword_22767D488);
  MEMORY[0x28223BE20](v0 - 8);
  v52 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v51 = v39 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC270, &qword_22767D490);
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = (v39 - v5);
  v48 = sub_227664530();
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662750();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276629D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22766C090();
  sub_226F5D220();
  v55 = sub_22766CFA0();
  v54 = sub_22766C090();
  sub_226F5D274();
  v43 = sub_22766BE70();
  v42 = sub_227662630();
  v14 = sub_22766BE70();
  v15 = static ScoreSummary.representativeSamples()();
  sub_2276629C0();
  sub_227662740();
  v16 = sub_227662980();
  v17 = *(v57 + 8);
  v45 = v9;
  v46 = v7;
  v17(v9, v7);
  (*(v11 + 8))(v13, v10);
  v18 = sub_22766C380();
  v18[2] = 3;
  v18[4] = v16;
  v18[5] = v16;
  v18[6] = v16;
  v81 = v55;
  v82[0] = v56;
  v82[1] = v82;
  v82[2] = &v81;
  v79 = v43;
  v80 = v54;
  v82[3] = &v80;
  v82[4] = &v79;
  v77 = v14;
  v78 = v42;
  v82[5] = &v78;
  v82[6] = &v77;
  v75 = v18;
  v76 = v15;
  v82[7] = &v76;
  v82[8] = &v75;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v67 = v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v69 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v70 = v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v72 = v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC278, &qword_22767D498);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v21 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v59 = v21;
  v60 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v61 = v21;
  v22 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v62 = v22;
  v63 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v64 = v22;
  v65 = sub_226F5BF60(&qword_27D7BC280, &qword_27D7BC278, &qword_22767D498);
  v66 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v23 = sub_2276638E0();

  v24 = *(v23 + 16);
  if (v24)
  {
    v58 = MEMORY[0x277D84F90];
    result = sub_226F1F628(0, v24, 0);
    v26 = 0;
    v41 = v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v42 = v24;
    v27 = v58;
    v39[1] = v53 + 32;
    v40 = (v57 + 16);
    v43 = v23;
    v44 = v4;
    while (v26 < *(v23 + 16))
    {
      v28 = v49;
      sub_226E93170(v41 + *(v4 + 72) * v26, v49, &qword_27D7BC270, &qword_22767D490);
      v29 = *v28;
      v57 = v27;
      v54 = v28[2];
      v55 = v29;
      v56 = v28[3];
      v30 = *(v50 + 96);
      v31 = *(v50 + 128);
      v32 = sub_227663C10();
      v33 = *(v32 - 8);
      v34 = v28 + v31;
      v35 = v51;
      (*(v33 + 16))(v51, v34, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
      (*v40)(v45, v28 + v30, v46);
      sub_226E93170(v35, v52, &qword_27D7BC268, &qword_22767D488);

      v36 = v47;
      v27 = v57;
      sub_2276644E0();
      sub_226E97D1C(v35, &qword_27D7BC268, &qword_22767D488);
      sub_226E97D1C(v28, &qword_27D7BC270, &qword_22767D490);
      v58 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226F1F628((v37 > 1), v38 + 1, 1);
        v27 = v58;
      }

      ++v26;
      *(v27 + 16) = v38 + 1;
      result = (*(v53 + 32))(v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38, v36, v48);
      v23 = v43;
      v4 = v44;
      if (v42 == v26)
      {

        return v27;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227219544(uint64_t a1)
{
  result = sub_22721959C(&qword_2813A57B8, MEMORY[0x277D50978], &protocol conformance descriptor for ArchivedSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22721959C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272195E4()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 120);
  swift_getObjectType();
  v12[1] = v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D4E6D8], v2);
  swift_allocObject();
  swift_weakInit();
  sub_2276650A0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  (*(v3 + 8))(v5, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_227219854()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v6 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(1, sub_2272275BC, v6);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v7 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(0, sub_2272275C4, v7);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v8 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(2, sub_2272275CC, v8);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v9 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(3, sub_2272275D4, v9);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v10 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(4, sub_2272275DC, v10);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v11 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(5, sub_2272275E4, v11);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v12 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(6, sub_2272275EC, v12);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v13 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(7, sub_2272275F4, v13);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v14 = swift_allocObject();
  swift_weakInit();

  sub_2273BF364(8, sub_2272275FC, v14);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v15 = swift_allocObject();
  swift_weakInit();
  sub_227488824(0xCu, &unk_22767D5B8, v15);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v16 = swift_allocObject();
  swift_weakInit();
  sub_22722721C(13, sub_2272276E8, v16);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v17 = swift_allocObject();
  swift_weakInit();
  sub_22722702C(14, sub_2272276F0, v17);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v18 = swift_allocObject();
  swift_weakInit();
  sub_227226E3C(20, sub_227227730, v18);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v19 = swift_allocObject();
  swift_weakInit();
  sub_227226C4C(16, sub_227227738, v19);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v20 = swift_allocObject();
  swift_weakInit();
  sub_227226A5C(17, sub_227227740, v20);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v21 = swift_allocObject();
  swift_weakInit();
  sub_22722686C(18, sub_227227748, v21);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v22 = swift_allocObject();
  swift_weakInit();
  sub_22722667C(19, sub_227227750, v22);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v23 = swift_allocObject();
  swift_weakInit();
  sub_22722648C(15, sub_227227758, v23);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v24 = swift_allocObject();
  swift_weakInit();
  sub_22722629C(21, sub_227227760, v24);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v25 = swift_allocObject();
  swift_weakInit();
  sub_2272260AC(22, sub_227227768, v25);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v26 = swift_allocObject();
  swift_weakInit();
  sub_227225EBC(23, sub_227227770, v26);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v27 = swift_allocObject();
  swift_weakInit();
  sub_226F65C44(28, sub_227227778, v27);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v28 = swift_allocObject();
  swift_weakInit();
  sub_226F65A54(27, sub_2272277A8, v28);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v29 = swift_allocObject();
  swift_weakInit();
  sub_226F65864(29, sub_2272277D8, v29);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v30 = swift_allocObject();
  swift_weakInit();
  sub_22712AA24(37, sub_227227808, v30);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v31 = swift_allocObject();
  swift_weakInit();
  sub_22712A834(38, sub_227227840, v31);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v32 = swift_allocObject();
  swift_weakInit();
  sub_226F65674(35, sub_227227848, v32);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v33 = swift_allocObject();
  swift_weakInit();
  sub_22712A644(44, sub_227227878, v33);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v34 = swift_allocObject();
  swift_weakInit();
  sub_226F65484(31, sub_2272278C4, v34);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v35 = swift_allocObject();
  swift_weakInit();
  sub_226F65294(32, sub_2272278F4, v35);

  __swift_project_boxed_opaque_existential_0((v1 + 40), *(v1 + 64));
  v36 = swift_allocObject();
  swift_weakInit();
  sub_226F650A4(33, sub_227227924, v36);
}