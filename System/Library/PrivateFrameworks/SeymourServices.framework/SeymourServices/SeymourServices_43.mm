uint64_t sub_2273137F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276699A0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227664F60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22731391C, 0, 0);
}

uint64_t sub_22731391C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_227313AAC;

  return v8();
}

uint64_t sub_227313AAC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227317450;
  }

  else
  {

    v2 = sub_227313BC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227313BC8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 160), *(v0[3] + 184));
  sub_2271D7EE8();

  sub_227664F40();
  swift_getObjectType();
  (*(v4 + 16))(v1, v2, v3);
  sub_227669990();
  sub_2276699D0();
  (*(v6 + 8))(v5, v9);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

void sub_227313D34(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v23 = a1;
  v5 = sub_227669360();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v14 = (v6 + 8);
  v24 = a2;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      (*(v6 + 16))(v8, *(v24 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v5);
      v17 = sub_227519118(v8, v23);
      if (v3)
      {
        break;
      }

      v12 &= v12 - 1;
      (*v14)(v8, v5, v17);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v14)(v8, v5, v17);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v18 = v24;

        __swift_project_boxed_opaque_existential_0((v21 + 160), *(v21 + 184));
        v19 = sub_22730FF6C(v18);
        sub_2272D7E8C(1, v19, v23);

        return;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227313F68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227664390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22731408C, 0, 0);
}

uint64_t sub_22731408C(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[6];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
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
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  *v15 = v1;
  v15[1] = sub_227311478;

  return (v18)(v1 + 2, sub_227317174, v13, v16, v10, v11);
}

uint64_t sub_2273142E4()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273143A4, 0, 0);
}

uint64_t sub_2273143A4(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_226EA3BA8;
  v10 = v1[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v1 + 2, sub_227317458, v10, v11, v6, v7);
}

uint64_t sub_227314564()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314624, 0, 0);
}

uint64_t sub_227314624(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_226EA3BA8;
  v10 = v1[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v1 + 2, sub_227317148, v10, v11, v6, v7);
}

uint64_t sub_2273147E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22766B390();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273148A8, 0, 0);
}

uint64_t sub_2273148A8(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v8 = v5[17];
  v9 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v8);
  v10 = swift_allocObject();
  v1[9] = v10;
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v6;
  v11 = *(v9 + 24);

  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v1[10] = v12;
  v13 = sub_227669480();
  *v12 = v1;
  v12[1] = sub_226F9DFCC;
  v14 = v1[2];

  return (v16)(v14, sub_2273170E0, v10, v13, v8, v9);
}

uint64_t sub_227314AA4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314B64, 0, 0);
}

uint64_t sub_227314B64(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  *v11 = v1;
  v11[1] = sub_227311858;

  return (v14)(v1 + 2, sub_227317074, v9, v12, v7, v8);
}

uint64_t sub_227314D68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669A40();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227665250();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = sub_227669480();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[15] = v7;
  v2[16] = *(v7 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314F50, 0, 0);
}

uint64_t sub_227314F50(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = *(v1 + 96);
  v7 = *(v1 + 88);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_0(v8 + 14, v8[17]);
  v11 = *(v6 + 16);
  *(v1 + 144) = v11;
  *(v1 + 152) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v5, v9, v7);
  v12 = *(v6 + 80);
  *(v1 + 184) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v1 + 160) = v14;
  *(v14 + 16) = v8;
  (*(v6 + 32))(v14 + v13, v5, v7);
  v15 = *(v10 + 24);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v1 + 168) = v16;
  *v16 = v1;
  v16[1] = sub_2273151A8;

  return v18();
}

uint64_t sub_2273151A8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_227317454;
  }

  else
  {

    v2 = sub_2273152C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273152C4()
{
  v1 = *(v0 + 184);
  v11 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v16 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  v6 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 160), *(*(v0 + 24) + 184));
  sub_2271D7EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v7 = (v1 + 32) & ~v1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  v11(v8 + v7, v6, v3);
  sub_226F4FF78(v8);
  swift_setDeallocating();
  (*(v2 + 8))(v8 + v7, v3);
  swift_deallocClassInstance();
  sub_227665240();
  swift_getObjectType();
  (*(v5 + 16))(v13, v4, v12);
  sub_227669A30();
  sub_2276699D0();
  (*(v16 + 8))(v14, v15);
  (*(v5 + 8))(v4, v12);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2273154F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v8 = sub_227669480();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a3, v8);
  sub_227564394(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 160), *(a2 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227669430();
    *(v13 + 40) = v14;
    sub_2272D7EB8(0, v13, a1);
  }

  return result;
}

uint64_t sub_227315698(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669A40();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227665250();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = sub_227669480();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[15] = v7;
  v2[16] = *(v7 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227315880, 0, 0);
}

uint64_t sub_227315880(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = *(v1 + 96);
  v7 = *(v1 + 88);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_0(v8 + 14, v8[17]);
  v11 = *(v6 + 16);
  *(v1 + 144) = v11;
  *(v1 + 152) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v5, v9, v7);
  v12 = *(v6 + 80);
  *(v1 + 184) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v1 + 160) = v14;
  *(v14 + 16) = v8;
  (*(v6 + 32))(v14 + v13, v5, v7);
  v15 = *(v10 + 24);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v1 + 168) = v16;
  *v16 = v1;
  v16[1] = sub_227315AD8;

  return v18();
}

uint64_t sub_227315AD8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_227315E20;
  }

  else
  {

    v2 = sub_227315BF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227315BF4()
{
  v1 = *(v0 + 184);
  v11 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v16 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  v6 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 160), *(*(v0 + 24) + 184));
  sub_2271D7EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v7 = (v1 + 32) & ~v1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  v11(v8 + v7, v6, v3);
  sub_226F4FF78(v8);
  swift_setDeallocating();
  (*(v2 + 8))(v8 + v7, v3);
  swift_deallocClassInstance();
  sub_227665240();
  swift_getObjectType();
  (*(v5 + 16))(v13, v4, v12);
  sub_227669A30();
  sub_2276699D0();
  (*(v16 + 8))(v14, v15);
  (*(v5 + 8))(v4, v12);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_227315E20()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_227315ECC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22751A1C8(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 160), *(a2 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_227670CD0;
    *(v6 + 32) = sub_227669430();
    *(v6 + 40) = v7;
    sub_2272D7EB8(1, v6, a1);
  }
}

uint64_t sub_227315FB4(uint64_t a1, void *a2)
{
  v92 = a1;
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v9 = swift_allocObject();
  v10 = v4;
  v11 = v5;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  KeyPath = swift_getKeyPath();
  sub_2273FC9C4(KeyPath);
  if (v97)
  {

    swift_setDeallocating();

    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
LABEL_15:
    swift_deallocClassInstance();
    return v4;
  }

  v84[1] = v8;
  v90 = 0;
  v16 = sub_226F3E6A8(v13);

  swift_setDeallocating();

  v17 = qword_2813B2078;
  v18 = sub_22766A100();
  v19 = *(v18 - 8);
  v87 = *(v19 + 8);
  v88 = v18;
  v86 = v19 + 8;
  v87(v9 + v17);
  swift_deallocClassInstance();
  v20 = a2[3];
  v89 = a2;
  v21 = __swift_project_boxed_opaque_existential_0(a2, v20);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v26 = swift_allocObject();
  v27 = v22;
  v28 = v23;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  swift_getKeyPath();
  sub_227230638(v16);
  v30 = v29;

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v95[0] = v30;
  v31 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v97 = v31;
  v32 = sub_22766C820();
  sub_226ED25F8(v95, v93);
  v33 = v94;
  if (v94)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v93, v94);
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    v39 = 0;
  }

  v91 = objc_opt_self();
  v40 = [v91 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v85) initWithLeftExpression:v32 rightExpression:v40 modifier:0 type:10 options:0];

  sub_226EBC888(v95);
  swift_beginAccess();
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v41(v95, 0);
  swift_endAccess();

  swift_getKeyPath();
  v44 = v90;
  v45 = sub_22730FD3C(v92, MEMORY[0x277D50DF8]);
  v92 = v44;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v95[0] = v45;

  v46 = sub_22766C820();
  sub_226ED25F8(v95, v93);
  v47 = v94;
  if (v94)
  {
    v48 = __swift_project_boxed_opaque_existential_0(v93, v94);
    v49 = *(v47 - 8);
    v50 = MEMORY[0x28223BE20](v48);
    v52 = v84 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52, v50);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v47);
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    v53 = 0;
  }

  v4 = v89;
  v54 = [v91 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v85) initWithLeftExpression:v46 rightExpression:v54 modifier:0 type:10 options:0];

  sub_226EBC888(v95);
  swift_beginAccess();
  v55 = sub_22766A080();
  v57 = v56;
  MEMORY[0x22AA985C0]();
  if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v55(v95, 0);
  swift_endAccess();

  v58 = swift_getKeyPath();
  v59 = v92;
  sub_2273FC91C(v58);
  if (v59)
  {

    swift_setDeallocating();

    (v87)(v26 + qword_2813B2078, v88);
    goto LABEL_15;
  }

  v62 = sub_226F3E6A8(v60);

  swift_setDeallocating();

  (v87)(v26 + qword_2813B2078, v88);
  swift_deallocClassInstance();
  v63 = __swift_project_boxed_opaque_existential_0(v4, *(v4 + 24));
  v64 = *v63;
  v65 = v63[1];
  v66 = *(v63 + 16);
  v67 = v63[3];
  v4 = swift_allocObject();
  v68 = v64;
  v69 = v65;

  sub_22766A070();
  *(v4 + 16) = v68;
  *(v4 + 24) = v69;
  *(v4 + 32) = v66;
  *(v4 + 40) = v67;
  swift_getKeyPath();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v95[0] = v62;

  v70 = sub_22766C820();
  sub_226ED25F8(v95, v93);
  v71 = v94;
  if (v94)
  {
    v72 = __swift_project_boxed_opaque_existential_0(v93, v94);
    v73 = *(v71 - 8);
    v74 = MEMORY[0x28223BE20](v72);
    v76 = v84 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v76, v74);
    v77 = sub_22766D170();
    (*(v73 + 8))(v76, v71);
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    v77 = 0;
  }

  v78 = [v91 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v79 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v95);
  swift_beginAccess();
  v80 = v79;
  v81 = sub_22766A080();
  v83 = v82;
  MEMORY[0x22AA985C0]();
  if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v81(v95, 0);
  swift_endAccess();

  return v4;
}

uint64_t sub_227316B70(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v38[3] = &type metadata for PersistenceHandle;
  v38[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v38[0] = v10;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = __swift_project_boxed_opaque_existential_0(v38, &type metadata for PersistenceHandle);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v16 = swift_allocObject();
  v17 = a2;
  v18 = a3;

  v19 = v12;
  v20 = v13;

  sub_22766A070();
  *(v16 + 16) = v19;
  *(v16 + 24) = v20;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v21 = sub_22730FD3C(a1, MEMORY[0x277D51D98]);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v37[0] = v21;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v22 = sub_22766C820();
  sub_226ED25F8(v37, v35);
  v23 = v36;
  if (v36)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x28223BE20](v24);
    v28 = v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v37);
  swift_beginAccess();
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v37, 0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v38);
  return v16;
}

unint64_t sub_22731701C()
{
  result = qword_27D7BCB28;
  if (!qword_27D7BCB28)
  {
    sub_227669360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB28);
  }

  return result;
}

uint64_t sub_2273170E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_0((v2[2] + 16), *(v2[2] + 40));
  return sub_227516BF8(v5, v6, a1, a2);
}

uint64_t sub_227317148@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_227519B90(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22731729C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(unint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(a2(0) - 8);
  result = a3(v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)), a1);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t objectdestroy_27Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_22731740C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*(v3 + 24), a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227317478(uint64_t a1)
{
  v34 = sub_227663480();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_2276633E0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
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

unint64_t sub_227317780(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v34[1] = v2;
    v47 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v10, 0);
    v45 = a1 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v38 = v5 + 8;
    v39 = v5 + 16;
    v36 = v10;
    v37 = v5 + 32;
    v35 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a1 + 36);
      v42 = v13;
      v43 = v16;
      v17 = *(a1 + 48);
      v44 = *(v5 + 72);
      v18 = v40;
      (*(v5 + 16))(v40, v17 + v44 * v12, v4);
      sub_227663470();
      (*(v5 + 8))(v18, v4);
      v19 = v46;
      v47 = v46;
      v20 = a1;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v46 = v22 + 1;
        sub_226F1F568((v21 > 1), v22 + 1, 1);
        v23 = v46;
        v19 = v47;
      }

      *(v19 + 16) = v23;
      v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v46 = v19;
      result = (*(v5 + 32))(v19 + v24 + v22 * v44, v9, v4);
      v14 = 1 << *(v20 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v25 = *(v45 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v20;
      if (v43 != *(v20 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v9;
        v28 = v4;
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v35 + 8 * v15);
        while (v30 < (v14 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v12, v43, 0);
            v14 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v43, 0);
LABEL_19:
        v4 = v28;
        v9 = v27;
      }

      v13 = v42 + 1;
      v12 = v14;
      if (v42 + 1 == v36)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227317B4C()
{
  v0 = sub_227662750();
  v157 = *(v0 - 8);
  v158 = v0;
  MEMORY[0x28223BE20](v0);
  v156 = &v144 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v171 = v4;
  v172 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v144 - v6;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v8;
  MEMORY[0x28223BE20](v9);
  v149 = &v144 - v10;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v174 = *(v145 - 8);
  v11 = *(v174 + 64);
  MEMORY[0x28223BE20](v145);
  v173 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v144 = &v144 - v13;
  MEMORY[0x28223BE20](v14);
  v146 = &v144 - v15;
  MEMORY[0x28223BE20](v16);
  v160 = &v144 - v17;
  MEMORY[0x28223BE20](v18);
  v161 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v162 = &v144 - v21;
  MEMORY[0x28223BE20](v22);
  v152 = &v144 - v23;
  MEMORY[0x28223BE20](v24);
  v163 = &v144 - v25;
  MEMORY[0x28223BE20](v26);
  v153 = &v144 - v27;
  MEMORY[0x28223BE20](v28);
  v154 = &v144 - v29;
  MEMORY[0x28223BE20](v30);
  v155 = &v144 - v31;
  v32 = sub_22766B390();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v36 = sub_22766B380();
  v37 = sub_22766C8B0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v2;
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_226E8E000, v36, v37, "handleScheduledAssetMaintenance", v39, 2u);
    v40 = v39;
    v2 = v38;
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  (*(v33 + 8))(v35, v32);
  v41 = v170;
  v42 = v170[75];
  v43 = v170[76];
  __swift_project_boxed_opaque_existential_0(v170 + 72, v42);

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v45 = v7;
  sub_226ECF5D8(sub_22732069C, v41, v42, v44, v43, v7);

  v46 = swift_allocObject();
  *(v46 + 16) = sub_2273206E8;
  *(v46 + 24) = v41;
  v47 = v172;
  (*(v3 + 16))(v172, v45, v2);
  v48 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v49 = (v171 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v3 + 32))(v50 + v48, v47, v2);
  v51 = (v50 + v49);
  *v51 = sub_226FBE218;
  v51[1] = v46;

  v52 = v144;
  sub_227669270();
  (*(v3 + 8))(v45, v2);
  v166 = 0x800000022769DC00;
  v53 = swift_allocObject();
  v53[2] = 0xD000000000000021;
  v53[3] = 0x800000022769DC00;
  v53[4] = 270;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_226F33024;
  *(v54 + 24) = v53;
  v55 = v173;
  v56 = v174;
  v57 = *(v174 + 16);
  v168 = v174 + 16;
  v58 = v145;
  v57(v173, v52, v145);
  v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v171 = *(v56 + 80);
  v159 = v59 + v11;
  v60 = v59;
  v169 = v59;
  v61 = (v59 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v167 = v61;
  v62 = swift_allocObject();
  v172 = *(v56 + 32);
  v164 = v56 + 32;
  (v172)(v62 + v60, v55, v58);
  v63 = (v62 + v61);
  *v63 = sub_226F32FE8;
  v63[1] = v54;
  v64 = v146;
  sub_227669270();
  v173 = *(v56 + 8);
  (v173)(v52, v58);
  v174 = v56 + 8;
  v65 = swift_allocObject();
  v66 = v170;
  *(v65 + 16) = sub_2273204BC;
  *(v65 + 24) = v66;
  v67 = v57;
  v165 = v57;
  v57(v52, v64, v58);
  v68 = v167;
  v69 = swift_allocObject();
  v70 = v52;
  v71 = v58;
  (v172)(v69 + v169, v70, v58);
  v72 = (v69 + v68);
  *v72 = sub_22732067C;
  v72[1] = v65;

  v73 = v160;
  sub_227669270();
  (v173)(v64, v71);
  v74 = swift_allocObject();
  v74[2] = 0xD000000000000021;
  v74[3] = v166;
  v74[4] = 272;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_226F33024;
  *(v75 + 24) = v74;
  v67(v64, v73, v71);
  v76 = swift_allocObject();
  v77 = v169;
  v78 = v172;
  (v172)(v76 + v169, v64, v71);
  v79 = (v76 + v68);
  *v79 = sub_226F32FE8;
  v79[1] = v75;
  v80 = v161;
  sub_227669270();
  (v173)(v73, v71);
  v81 = swift_allocObject();
  v82 = v170;
  *(v81 + 16) = sub_2273204C0;
  *(v81 + 24) = v82;
  v165(v73, v80, v71);
  v83 = v167;
  v84 = swift_allocObject();
  (v78)(v84 + v77, v73, v71);
  v85 = (v84 + v83);
  *v85 = sub_2272B81D4;
  v85[1] = v81;

  v86 = v149;
  sub_227669270();
  v87 = v71;
  (v173)(v161, v71);
  v88 = swift_allocObject();
  *(v88 + 16) = nullsub_1;
  *(v88 + 24) = 0;
  v89 = v150;
  v90 = v148;
  v91 = v151;
  (*(v150 + 16))(v148, v86, v151);
  v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v93 = (v147 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  (*(v89 + 32))(v94 + v92, v90, v91);
  v95 = (v94 + v93);
  *v95 = sub_2273204F0;
  v95[1] = v88;
  v96 = v162;
  sub_227669270();
  (*(v89 + 8))(v86, v91);
  v97 = swift_allocObject();
  v97[2] = 0xD000000000000021;
  v97[3] = v166;
  v97[4] = 274;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_226F33024;
  *(v98 + 24) = v97;
  v99 = v161;
  v100 = v165;
  v165(v161, v96, v87);
  v101 = v167;
  v102 = swift_allocObject();
  (v172)(v102 + v169, v99, v87);
  v103 = (v102 + v101);
  *v103 = sub_226F32FE8;
  v103[1] = v98;
  v104 = v152;
  sub_227669270();
  (v173)(v96, v87);
  __swift_project_boxed_opaque_existential_0(v170 + 52, v170[55]);
  v105 = sub_227665FC0();
  sub_22708193C(v105, v96);

  v100(v99, v96, v87);
  v106 = swift_allocObject();
  v107 = v169;
  v108 = v172;
  (v172)(v106 + v169, v99, v87);
  v109 = v160;
  v100(v160, v104, v87);
  v110 = v167;
  v111 = swift_allocObject();
  (v108)(v111 + v107, v109, v87);
  v112 = (v111 + v110);
  *v112 = sub_226EC14BC;
  v112[1] = v106;
  v113 = v163;
  sub_227669270();
  v114 = v173;
  (v173)(v162, v87);
  v114(v104, v87);
  v115 = swift_allocObject();
  v115[2] = 0xD000000000000021;
  v115[3] = v166;
  v115[4] = 276;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_226F33024;
  *(v116 + 24) = v115;
  v117 = v104;
  v118 = v104;
  v119 = v165;
  v165(v118, v113, v87);
  v120 = swift_allocObject();
  v121 = v169;
  (v172)(v120 + v169, v117, v87);
  v122 = (v120 + v110);
  *v122 = sub_226F32FE8;
  v122[1] = v116;
  v123 = v153;
  sub_227669270();
  v124 = v163;
  (v173)(v163, v87);
  v125 = v156;
  sub_227662740();
  sub_22751B450(v125, v124);
  (*(v157 + 8))(v125, v158);
  v119(v117, v124, v87);
  v126 = swift_allocObject();
  v127 = v126 + v121;
  v128 = v121;
  v129 = v172;
  (v172)(v127, v117, v87);
  v130 = v162;
  v119(v162, v123, v87);
  v131 = v167;
  v132 = swift_allocObject();
  (v129)(v132 + v128, v130, v87);
  v133 = (v132 + v131);
  *v133 = sub_226F33040;
  v133[1] = v126;
  v134 = v154;
  sub_227669270();
  v135 = v173;
  (v173)(v163, v87);
  v135(v123, v87);
  v136 = swift_allocObject();
  v136[2] = 0xD000000000000021;
  v136[3] = v166;
  v136[4] = 278;
  v137 = swift_allocObject();
  *(v137 + 16) = sub_226F33024;
  *(v137 + 24) = v136;
  v165(v123, v134, v87);
  v138 = swift_allocObject();
  (v172)(v138 + v128, v123, v87);
  v139 = (v138 + v131);
  *v139 = sub_226F32FE8;
  v139[1] = v137;
  v140 = v155;
  sub_227669270();
  v135(v134, v87);
  v141 = sub_227669290();
  v142 = swift_allocObject();
  *(v142 + 16) = 0;
  *(v142 + 24) = 0;
  v141(sub_226EB4544, v142);

  return (v135)(v140, v87);
}

uint64_t sub_227318E40(uint64_t a1, const char *a2, void (*a3)(void))
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, a2, v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_227318FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v8, v9, "handleScheduledPrivateDataBackgroundEvaluation", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2273C3E8C(v3);
  v11 = sub_227669290();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v11(sub_226EB4544, v12);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_227319210(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2273C3E8C(v5);
    v7 = sub_227669290();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_226EB4544, v8);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2273193C0(uint64_t a1)
{
  v2 = v1;
  v45 = a1;
  v46 = sub_227663480();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227669910();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  sub_22766A6C0();
  sub_22766B370();
  v14 = *(v9 + 8);
  v44 = v8;
  v40 = v14;
  v14(v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  __swift_project_boxed_opaque_existential_0((v2 + 496), *(v2 + 520));
  sub_2276696A0();
  v41 = v4;
  v16 = v48;
  *(inited + 32) = v47;
  *(inited + 40) = v16;
  __swift_project_boxed_opaque_existential_0((v2 + 496), *(v2 + 520));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2276696A0();
  v17 = v48;
  if (v48)
  {
    *(inited + 48) = v47;
    *(inited + 56) = v17;
  }

  else
  {
    v36 = sub_227663190();
    sub_227320474(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D4FD80], v36);
    swift_willThrow();

    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  v18 = v45;
  v47 = sub_227663430();
  v48 = v19;
  MEMORY[0x28223BE20](v47);
  *(&v39 - 2) = &v47;
  v20 = sub_226F7E20C(sub_227320454, (&v39 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v20)
  {
    swift_getObjectType();
    v21 = v39;
    (*(v5 + 104))(v7, *MEMORY[0x277D4E068], v39);
    sub_227669650();
    return (*(v5 + 8))(v7, v21);
  }

  else
  {
    v23 = v42;
    sub_22766A6C0();
    v24 = v43;
    v25 = v41;
    v26 = v46;
    (*(v43 + 16))(v41, v18, v46);
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 141558274;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2080;
      sub_227320474(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
      v31 = sub_22766D140();
      v32 = v25;
      v34 = v33;
      (*(v24 + 8))(v32, v26);
      v35 = sub_226E97AE8(v31, v34, &v47);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_226E8E000, v27, v28, "Broadcast - Skipping bundle update because device is neither current nor activePaired %{mask.hash}s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
    }

    return v40(v23, v44);
  }
}

uint64_t sub_227319A5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22766A6C0();
    sub_22766B370();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_227319B80(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22766A6C0();
    sub_22766B370();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_227319CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_227319E08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227669910();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227665780();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v16 = *(v10 + 16);
  v51 = a1;
  v16(v12, a1, v9);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  v19 = os_log_type_enabled(v17, v18);
  v49 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v45 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = v7;
    v23 = v22;
    v54 = v22;
    *v21 = 136315138;
    sub_227320474(&qword_27D7BCB58, MEMORY[0x277D51940], MEMORY[0x277D51948]);
    v24 = sub_22766D140();
    v25 = v9;
    v26 = v2;
    v28 = v27;
    (*(v10 + 8))(v12, v25);
    v29 = sub_226E97AE8(v24, v28, &v54);
    v2 = v26;

    *(v21 + 4) = v29;
    _os_log_impl(&dword_226E8E000, v17, v18, "Broadcast - %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v30 = v23;
    v7 = v44;
    MEMORY[0x22AA9A450](v30, -1, -1);
    v31 = v21;
    v6 = v45;
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  (*(v46 + 8))(v15, v47);
  v32 = sub_2276693C0();
  v33 = v48;
  (*(v7 + 104))(v48, *MEMORY[0x277D4F948], v6);
  v34 = sub_226EC9A38(v33, v32);

  (*(v7 + 8))(v33, v6);
  v35 = *MEMORY[0x277D4E110];
  v36 = v52;
  v37 = v50;
  if (v34)
  {
    v47 = *(v2 + 70);
    swift_getObjectType();
    v48 = v2;
    v38 = *(v36 + 104);
    v39 = v53;
    v38(v37, v35, v53);
    sub_227669650();
    (*(v36 + 8))(v37, v39);
  }

  else
  {
    v38 = *(v52 + 104);
  }

  swift_getObjectType();
  v40 = v35;
  v41 = v53;
  v38(v37, v40, v53);
  sub_227669650();
  return (*(v36 + 8))(v37, v41);
}

uint64_t sub_22731A36C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2276668F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22766A3D0();
    sub_22731A474();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_22731A474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = *(v1 + 75);
  v18 = *(v1 + 76);
  __swift_project_boxed_opaque_existential_0(v1 + 72, v17);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_227320684, v1, v17, v19, v18, v8);

  (*(v3 + 16))(v5, v8, v2);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v5, v2);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_227320330;
  v22[1] = v1;

  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v23 = v27;
  v24 = sub_227669290();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_226EB4544, v25);

  return (*(v28 + 8))(v12, v23);
}

uint64_t sub_22731A86C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2274717D4(v2, v3, v4);
  }

  return result;
}

uint64_t sub_22731A8E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v127 = v2;
  v128 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v130 = (&v113 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v131 = *(v5 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v5);
  v125 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = &v113 - v8;
  MEMORY[0x28223BE20](v9);
  v114 = &v113 - v10;
  MEMORY[0x28223BE20](v11);
  v115 = &v113 - v12;
  MEMORY[0x28223BE20](v13);
  v116 = &v113 - v14;
  MEMORY[0x28223BE20](v15);
  v117 = &v113 - v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v113 - v18;
  MEMORY[0x28223BE20](v19);
  v119 = &v113 - v20;
  MEMORY[0x28223BE20](v21);
  v120 = &v113 - v22;
  MEMORY[0x28223BE20](v23);
  v121 = &v113 - v24;
  v25 = sub_22766B390();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "handleCatalogUpdated", v32, 2u);
    v33 = v32;
    v0 = v31;
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  (*(v26 + 8))(v28, v25);
  v34 = v129;
  v35 = v129[75];
  v36 = v129[76];
  __swift_project_boxed_opaque_existential_0(v129 + 72, v35);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v38 = v130;
  sub_226ECF5D8(sub_22731FEB8, v34, v35, v37, v36, v130);

  v39 = *__swift_project_boxed_opaque_existential_0((v34 + 136), *(v34 + 160));
  v133[3] = type metadata accessor for AssetCatalogUpdater();
  v133[4] = &off_283A9F710;
  v133[0] = v39;
  sub_226E91B50(v133, v132);
  v40 = swift_allocObject();
  sub_226E92AB8(v132, v40 + 16);

  __swift_destroy_boxed_opaque_existential_0(v133);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22731FED4;
  *(v41 + 24) = v40;
  v42 = v128;
  (*(v1 + 16))(v128, v38, v0);
  v43 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v44 = (v127 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v1 + 32))(v45 + v43, v42, v0);
  v46 = (v45 + v44);
  *v46 = sub_226FBE058;
  v46[1] = v41;
  v47 = v113;
  sub_227669270();
  (*(v1 + 8))(v38, v0);
  v123 = 0x800000022769DC00;
  v48 = swift_allocObject();
  v48[2] = 0xD000000000000021;
  v48[3] = 0x800000022769DC00;
  v48[4] = 235;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_226F323BC;
  *(v49 + 24) = v48;
  v50 = v131;
  v130 = *(v131 + 16);
  v126 = v131 + 16;
  v51 = v125;
  (v130)(v125, v47, v5);
  v52 = *(v50 + 80);
  v127 = v52;
  v128 = ((v52 + 16) & ~v52);
  v53 = &v128[v6];
  v54 = v128;
  v55 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = *(v50 + 32);
  v57(&v54[v56], v51, v5);
  v58 = v50 + 32;
  v124 = v57;
  v59 = (v56 + v55);
  *v59 = sub_226F323DC;
  v59[1] = v49;
  v60 = v114;
  sub_227669270();
  v61 = *(v50 + 8);
  v131 = v50 + 8;
  v125 = v61;
  (v61)(v47, v5);
  v62 = swift_allocObject();
  v64 = v129;
  v63 = v130;
  *(v62 + 16) = sub_22731FF6C;
  *(v62 + 24) = v64;
  v63(v47, v60, v5);
  v65 = swift_allocObject();
  v57(&v128[v65], v47, v5);
  v66 = v58;
  v67 = (v65 + v55);
  *v67 = sub_227086964;
  v67[1] = v62;

  v68 = v115;
  sub_227669270();
  (v125)(v60, v5);
  v69 = swift_allocObject();
  v69[2] = 0xD000000000000021;
  v69[3] = v123;
  v69[4] = 243;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_226F33024;
  *(v70 + 24) = v69;
  (v130)(v60, v68, v5);
  v71 = swift_allocObject();
  v72 = v128;
  v122 = v66;
  v124(&v128[v71], v60, v5);
  v73 = (v71 + v55);
  *v73 = sub_226F32FE8;
  v73[1] = v70;
  v74 = v116;
  sub_227669270();
  (v125)(v68, v5);
  v75 = swift_allocObject();
  v77 = v129;
  v76 = v130;
  *(v75 + 16) = sub_22731FF74;
  *(v75 + 24) = v77;
  v76(v68, v74, v5);
  v78 = swift_allocObject();
  v79 = v124;
  v124(&v72[v78], v68, v5);
  v80 = (v78 + v55);
  *v80 = sub_22732067C;
  v80[1] = v75;

  v81 = v117;
  sub_227669270();
  v82 = v125;
  (v125)(v74, v5);
  v83 = swift_allocObject();
  v83[2] = 0xD000000000000021;
  v83[3] = v123;
  v83[4] = 251;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_226F33024;
  *(v84 + 24) = v83;
  v85 = v130;
  (v130)(v74, v81, v5);
  v86 = swift_allocObject();
  v79(&v128[v86], v74, v5);
  v87 = (v86 + v55);
  *v87 = sub_226F32FE8;
  v87[1] = v84;
  v88 = v118;
  sub_227669270();
  v82(v81, v5);
  v89 = swift_allocObject();
  v90 = v129;
  *(v89 + 16) = sub_22731FF7C;
  *(v89 + 24) = v90;
  v85(v81, v88, v5);
  v91 = swift_allocObject();
  v92 = v128;
  v124(&v128[v91], v81, v5);
  v93 = (v91 + v55);
  *v93 = sub_22732067C;
  v93[1] = v89;

  v94 = v119;
  sub_227669270();
  v82(v88, v5);
  v95 = swift_allocObject();
  v95[2] = 0xD000000000000021;
  v95[3] = v123;
  v95[4] = 257;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_226F33024;
  *(v96 + 24) = v95;
  (v130)(v88, v94, v5);
  v97 = swift_allocObject();
  v98 = &v92[v97];
  v99 = v124;
  v124(v98, v88, v5);
  v100 = (v97 + v55);
  *v100 = sub_226F32FE8;
  v100[1] = v96;
  v101 = v120;
  sub_227669270();
  v82(v94, v5);
  v102 = swift_allocObject();
  v104 = v129;
  v103 = v130;
  *(v102 + 16) = sub_2273206D0;
  *(v102 + 24) = v104;
  v103(v94, v101, v5);
  v105 = swift_allocObject();
  v99(&v128[v105], v94, v5);
  v106 = (v105 + v55);
  *v106 = sub_22732067C;
  v106[1] = v102;

  v107 = v121;
  sub_227669270();
  v108 = v101;
  v109 = v125;
  (v125)(v108, v5);
  v110 = sub_227669290();
  v111 = swift_allocObject();
  *(v111 + 16) = 0;
  *(v111 + 24) = 0;
  v110(sub_226E9F7B0, v111);

  return v109(v107, v5);
}

uint64_t sub_22731B7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_22731B854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v9;
  MEMORY[0x28223BE20](v10);
  v73 = &v70 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v12;
  MEMORY[0x28223BE20](v13);
  v79 = &v70 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v86 = *(v84 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v75 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v78 = &v70 - v21;
  v22 = *(v0 + 688);
  v82 = v0;
  v23 = *__swift_project_boxed_opaque_existential_0((v0 + 664), v22);
  v24 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v23 + v24, &v89);
  if (v90)
  {
    sub_226E92AB8(&v89, v88);
    sub_226E91B50(v88, v87);
    v25 = swift_allocObject();
    sub_226E92AB8(v87, v25 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    sub_226F099DC();
    v26 = swift_allocError();
    *v27 = 0;
    *(swift_allocObject() + 16) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v4, v7, v1);
  v28 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v29 = v1;
  v30 = swift_allocObject();
  (*(v2 + 32))(v30 + v28, v4, v1);
  v31 = (v30 + ((v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_22731C5A0;
  v31[1] = 0;
  sub_227665AD0();
  v32 = v73;
  sub_227669270();
  (*(v2 + 8))(v7, v29);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22731C6BC;
  *(v33 + 24) = 0;
  v34 = v72;
  v35 = v83;
  (*(v8 + 16))(v72, v32, v83);
  v36 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v37 = (v71 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v8 + 32))(v38 + v36, v34, v35);
  v39 = (v38 + v37);
  *v39 = sub_2273202AC;
  v39[1] = v33;
  v40 = v85;
  sub_227669270();
  (*(v8 + 8))(v32, v35);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22731C974;
  *(v41 + 24) = 0;
  v42 = v86;
  v73 = *(v86 + 16);
  v43 = v74;
  (v73)(v74, v40, v84);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v72 = v44;
  v45 = (v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = *(v42 + 32);
  v48 = v46 + v44;
  v49 = v84;
  v47(v48, v43, v84);
  v50 = (v46 + v45);
  *v50 = sub_226F5AAF8;
  v50[1] = v41;
  v51 = v75;
  sub_227669270();
  v52 = *(v42 + 8);
  v86 = v42 + 8;
  v83 = v52;
  (v52)(v85, v49);
  v53 = swift_allocObject();
  v54 = v82;
  *(v53 + 16) = sub_2273202DC;
  *(v53 + 24) = v54;
  (v73)(v43, v51, v49);
  v55 = swift_allocObject();
  v47(&v72[v55], v43, v49);
  v56 = (v55 + v45);
  *v56 = sub_226F09740;
  v56[1] = v53;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v57 = v79;
  sub_227669270();
  (v83)(v51, v49);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_22732030C;
  *(v58 + 24) = v54;
  v59 = v80;
  v60 = v77;
  v61 = v81;
  (*(v80 + 16))(v77, v57, v81);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v76 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  v65 = (v64 + v63);
  *v65 = sub_226FBE218;
  v65[1] = v58;

  v66 = v78;
  sub_227669270();
  (*(v59 + 8))(v57, v61);
  v67 = sub_227669290();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v67(sub_226EB4544, v68);

  return (v83)(v66, v49);
}

uint64_t sub_22731C308(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v12);

    v14 = sub_227669290();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(a5, v15);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void *sub_22731C480()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 78);
  __swift_destroy_boxed_opaque_existential_0(v0 + 83);

  __swift_destroy_boxed_opaque_existential_0(v0 + 89);
  __swift_destroy_boxed_opaque_existential_0(v0 + 94);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_22731C548()
{
  sub_22731C480();

  return swift_deallocClassInstance();
}

uint64_t sub_22731C5A0(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22731C6BC()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v8 = sub_227665AA0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_22766A6C0();
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "Subscription status - subscribed. Offline content is permitted.", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v12 = sub_227663190();
    sub_227320474(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D4FDA8], v12);
  }

  else
  {
    sub_226F099DC();
    swift_allocError();
    *v14 = 4;
  }

  return swift_willThrow();
}

id sub_22731C974(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  swift_getErrorValue();
  v21[3] = MEMORY[0x277D52C78];
  v21[4] = sub_226F09B58();
  LOBYTE(v21[0]) = 4;
  v9 = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v9)
  {
    sub_22766A6C0();
    v10 = sub_22766B380();
    v11 = sub_22766C8B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226E8E000, v10, v11, "Subscription status - not subscribed. Offline content will be deleted.", v12, 2u);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_22766A6C0();
    v14 = a1;
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_226E8E000, v15, v16, "Subscription fetch failed with error %@. Skipping asset bundle cancellation.", v17, 0xCu);
      sub_226E97D1C(v18, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_22731CC50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[75];
  v5 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v4);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_227320314, a1, v4, v6, v5, a2);
}

uint64_t sub_22731CCFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (v3)
  {
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  else
  {
    v59 = v10;
    v53 = v8;
    v54 = v7;
    v55 = a3;
    v13 = v58[1];
    *(inited + 32) = v58[0];
    *(inited + 40) = v13;
    v14 = sub_226F3E6A8(inited);
    swift_setDeallocating();
    sub_226FA6DA4(inited + 32);
    v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 16);
    v19 = v15[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v20 = swift_allocObject();
    v21 = v16;
    v22 = v17;

    sub_22766A070();
    *(v20 + 16) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    swift_getKeyPath();
    sub_227230638(v14);
    v24 = v23;

    v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v58[0] = v24;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v25 = sub_22766C820();
    sub_226ED25F8(v58, v56);
    v26 = v57;
    if (v57)
    {
      v27 = __swift_project_boxed_opaque_existential_0(v56, v57);
      v28 = *(v26 - 8);
      v29 = MEMORY[0x28223BE20](v27);
      v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);
      v32 = sub_22766D170();
      (*(v28 + 8))(v31, v26);
      __swift_destroy_boxed_opaque_existential_0(v56);
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

    sub_226E97D1C(v58, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v34 = sub_22766A080();
    v36 = v35;
    MEMORY[0x22AA985C0]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v34(v58, 0);
    swift_endAccess();

    v37 = sub_2272328B8(100);
    swift_setDeallocating();

    v38 = qword_2813B2078;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v20 + v38, v39);
    swift_deallocClassInstance();
    v40 = v59;
    sub_22766A6C0();

    v41 = sub_22766B380();
    v42 = sub_22766C8B0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58[0] = v44;
      *v43 = 136446210;
      sub_227317478(v37);
      v45 = MEMORY[0x22AA98660]();
      v47 = v46;

      v48 = sub_226E97AE8(v45, v47, v58);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_226E8E000, v41, v42, "Subscription status - Cancelling asset bundles on account change: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v43, -1, -1);

      (*(v53 + 8))(v59, v54);
    }

    else
    {

      (*(v53 + 8))(v40, v54);
    }

    v49 = v55;
    v50 = sub_227317780(v37, 7);

    v51 = sub_226F40934(v50);

    *v49 = v51;
  }

  return result;
}

void sub_22731D454(uint64_t a1, uint64_t a2)
{

  sub_2273CAE98(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
  sub_227669240();
}

uint64_t sub_22731D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v11 = *v10;
  v12 = *(*v10 + 336);
  v13 = *(*v10 + 344);
  __swift_project_boxed_opaque_existential_0((*v10 + 312), v12);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2273201F0, v11, v12, v14, v13, v9);

  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_22732020C;
  v17[1] = a1;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

void sub_22731D788(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_22766A6C0();

  v11 = sub_22766B380();
  v12 = sub_22766C8B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 141558274;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    sub_227663480();
    sub_227320474(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v16 = sub_22766C610();
    v18 = sub_226E97AE8(v16, v17, &v23);
    v22[0] = v6;
    v19 = v18;

    *(v14 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v11, v12, "Catalog Updated - cancelling bundles: %{mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v7 + 8))(v9, v22[0]);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = sub_2273CAE98(v10, a2);

  v23 = v20;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v21 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
  sub_227669240();
}

uint64_t sub_22731DA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  sub_22749C4F8(v8);
  (*(v3 + 16))(v5, v8, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  v11 = (v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = sub_2273201C0;
  v11[1] = a1;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731DC54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = sub_22766B390();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *a1;
  sub_22766A6C0();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v31 = v17;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    v19 = sub_2276639B0();
    v20 = MEMORY[0x22AA98660](v12, v19);
    v22 = sub_226E97AE8(v20, v21, &v31);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v13, v14, "Catalog Updated - cancelling requests: %{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    a2 = v28;
    MEMORY[0x22AA9A450](v23, -1, -1);
    v24 = v16;
    a3 = v29;
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  v25 = *(v6 + 8);
  v26 = v30;
  v25(v11, v30);
  sub_22766A6C0();
  sub_22766B370();
  v25(v8, v26);
  __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  return sub_226F29A00(v12, a3);
}

uint64_t sub_22731DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v42 - 8);
  v41 = *(v11 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - v14;
  __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  sub_2274934C4(v5);
  v37 = a1;
  v15 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v45[3] = type metadata accessor for AssetBundleHandler();
  v45[4] = &off_283AC3B48;
  v45[0] = v15;
  sub_226E91B50(v45, v44);
  v16 = swift_allocObject();
  sub_226E92AB8(v44, v16 + 16);

  __swift_destroy_boxed_opaque_existential_0(v45);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v17 = sub_22766C950();
  sub_227669A50();
  sub_227663480();
  sub_226E9CFD0(&qword_281398E90, &qword_27D7B8640, qword_227671210, MEMORY[0x277D83B68]);
  sub_227669230();

  (*(v38 + 8))(v5, v3);
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  v19 = v35;
  v20 = v39;
  (*(v6 + 16))(v35, v10, v39);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v19, v20);
  v23 = (v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_227320140;
  v23[1] = v18;
  v24 = v36;
  sub_227669270();
  (*(v6 + 8))(v10, v20);
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 16) = sub_227320170;
  *(v25 + 24) = v26;
  v27 = v40;
  v28 = v24;
  v29 = v42;
  (*(v11 + 16))(v40, v24, v42);
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v11 + 32))(v32 + v30, v27, v29);
  v33 = (v32 + v31);
  *v33 = sub_22732067C;
  v33[1] = v25;

  sub_227669270();
  return (*(v11 + 8))(v28, v29);
}

uint64_t sub_22731E45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_227320178, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227320190;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22731E784(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_226FBE034, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_226FBE050;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v5, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE218;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731E9DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = a1[75];
  v9 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v8);

  sub_226ECF5D8(sub_227181860, a1, v8, MEMORY[0x277D84D38], v9, a2);
}

uint64_t sub_22731EB40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v63 - v8;
  MEMORY[0x28223BE20](v10);
  v70 = v63 - v11;
  MEMORY[0x28223BE20](v12);
  v71 = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v76 = *(v14 - 8);
  v77 = v14;
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v80 = *(v18 - 8);
  v81 = v18;
  v79 = *(v80 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = v63 - v21;
  v69 = a1;
  __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v66 = v9;
  sub_22748F300(v9);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22731F364;
  *(v22 + 24) = 0;
  v67 = *(v4 + 16);
  v67(v6, v9, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v65 = v23;
  v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v64 = *(v4 + 32);
  v26 = v6;
  v27 = v3;
  v64(v25 + v23, v26, v3);
  v28 = (v25 + v24);
  *v28 = sub_227320338;
  v28[1] = v22;
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v29 = v70;
  sub_227669270();
  v30 = *(v4 + 8);
  v31 = v66;
  v30(v66, v27);
  v68 = v30;
  v67(v31, v29, v27);
  v32 = swift_allocObject();
  v33 = v31;
  v34 = v27;
  v64(v32 + v65, v33, v27);
  v35 = (v32 + v24);
  v36 = v69;
  *v35 = sub_227320368;
  v35[1] = v36;

  v37 = v71;
  sub_227669270();
  v30(v29, v34);
  v38 = *__swift_project_boxed_opaque_existential_0((v36 + 56), *(v36 + 80));
  v84[3] = type metadata accessor for AssetBundleHandler();
  v84[4] = &off_283AC3B48;
  v84[0] = v38;
  sub_226E91B50(v84, v83);
  v39 = swift_allocObject();
  sub_226E92AB8(v83, v39 + 16);

  __swift_destroy_boxed_opaque_existential_0(v84);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v40 = sub_22766C950();
  sub_227669A50();
  sub_227663480();
  sub_226E9CFD0(&qword_281398E90, &qword_27D7B8640, qword_227671210, MEMORY[0x277D83B68]);
  v41 = v72;
  sub_227669230();

  v68(v37, v34);
  v42 = swift_allocObject();
  *(v42 + 16) = nullsub_1;
  *(v42 + 24) = 0;
  v43 = v76;
  v44 = v77;
  v45 = v73;
  v46 = v41;
  (*(v76 + 16))(v73, v41, v77);
  v47 = v43;
  v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v47 + 32))(v50 + v48, v45, v44);
  v51 = (v50 + v49);
  *v51 = sub_227320680;
  v51[1] = v42;
  v52 = v74;
  sub_227669270();
  (*(v47 + 8))(v46, v44);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_227320378;
  *(v53 + 24) = v36;
  v54 = v80;
  v55 = v81;
  v56 = v78;
  (*(v80 + 16))(v78, v52, v81);
  v57 = v54;
  v58 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v59 = (v79 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  (*(v57 + 32))(v60 + v58, v56, v55);
  v61 = (v60 + v59);
  *v61 = sub_22732067C;
  v61[1] = v53;

  sub_227669270();
  return (*(v57 + 8))(v52, v55);
}

uint64_t sub_22731F364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_227317780(*a1, 7);
  v4 = sub_226F40934(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_22731F3B8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = v6;
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_22766B390();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_22766A6C0();

  v14 = sub_22766B380();
  v15 = sub_22766C8B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v4;
    v17 = v16;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    sub_227663480();
    v39 = a2;
    sub_227320474(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v18 = sub_22766C610();
    v20 = sub_226E97AE8(v18, v19, &v44);
    v37 = v10;
    v21 = v20;
    a2 = v39;

    *(v17 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v14, v15, "Audio Language Preference Updated - cancelling mismatched bundles: %{mask.hash}s", v17, 0x16u);
    v22 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v22, -1, -1);
    v23 = v17;
    v4 = v40;
    MEMORY[0x22AA9A450](v23, -1, -1);

    (*(v41 + 8))(v12, v37);
  }

  else
  {

    (*(v41 + 8))(v12, v10);
  }

  v24 = v13;
  v25 = sub_2273CAE98(v13, a2);

  v44 = v25;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v26 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
  sub_227669240();

  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_227320428;
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_227086F10;
  *(v29 + 24) = v28;
  v30 = v43;
  (*(v5 + 16))(v43, v9, v4);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = (v42 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v5 + 32))(v33 + v31, v30, v4);
  v34 = (v33 + v32);
  *v34 = sub_227320430;
  v34[1] = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_227669270();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_22731F8E8(uint64_t a1)
{
  v1 = sub_227317780(a1, 0);
  v2 = sub_226F40934(v1);

  return v2;
}

uint64_t sub_22731F938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_2273206B4, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22731FC60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_22732069C, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_2273206E8;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v5, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE218;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731FF8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

BOOL sub_227320028(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22766D190() & 1;
    }
  }

  return result;
}

uint64_t sub_22732009C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_227320214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);

  return sub_227669270();
}

void sub_227320380(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_227494A60(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_227320474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_359Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2273205B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227320744()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22732081C, 0, 0);
}

uint64_t sub_22732081C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_0((v0[3] + 16), *(v0[3] + 40));
  sub_2272858E0(24, 0, 0, v2);
  sub_2272A1748(v2, v1);
  v5 = *(v4 + 8);
  v0[8] = v5;
  v0[9] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *(v6 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v6 + 24) = 40;
  *(v6 + 32) = 2;
  *(v6 + 40) = 23;
  *(v6 + 48) = v1;
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  *v7 = v0;
  v7[1] = sub_2273209AC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227323674, v6, v8);
}

uint64_t sub_2273209AC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227320B4C, 0, 0);
  }

  else
  {
    v4 = v2[8];
    v5 = v2[7];
    v6 = v2[4];
    v7 = v2[2];

    v4(v5, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_227320B4C()
{
  (*(v0 + 64))(*(v0 + 56), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227320BCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227320C9C, 0, 0);
}

uint64_t sub_227320C9C()
{
  v1 = v0[7];
  v2 = v0[3];
  __swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
  sub_22732136C(25, v2, v1);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v3 + 24) = 40;
  *(v3 + 32) = 2;
  *(v3 + 40) = 27;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_227664420();
  *v4 = v0;
  v4[1] = sub_227320DD8;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227323558, v3, v5);
}

uint64_t sub_227320DD8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227323BC4, 0, 0);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_227320F5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22732102C, 0, 0);
}

uint64_t sub_22732102C()
{
  v1 = v0[7];
  v2 = v0[3];
  __swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
  sub_22732171C(26, v2, v1);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v3 + 24) = 40;
  *(v3 + 32) = 2;
  *(v3 + 40) = 31;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_2276676E0();
  *v4 = v0;
  v4[1] = sub_227321168;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273234C8, v3, v5);
}

uint64_t sub_227321168()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2273212EC, 0, 0);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2273212EC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22732136C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v33 = a3;
  v5 = sub_227664030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v30 = *(v32 - 8);
  v13 = MEMORY[0x28223BE20](v32);
  v15 = &v27 - v14;
  v16 = *(v3 + 16);
  v27 = v16;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v31;
  v21 = v28;
  v20 = v29;
  (*(v8 + 16))(v28, v12, v29);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_227323644;
  v24[1] = v19;
  sub_227664420();
  v25 = v27;
  sub_227669270();
  (*(v8 + 8))(v12, v20);
  sub_2272A1C8C(v15, v33);
  return (*(v30 + 8))(v15, v32);
}

uint64_t sub_22732171C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v33 = a3;
  v5 = sub_227667200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v30 = *(v32 - 8);
  v13 = MEMORY[0x28223BE20](v32);
  v15 = &v27 - v14;
  v16 = *(v3 + 16);
  v27 = v16;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v31;
  v21 = v28;
  v20 = v29;
  (*(v8 + 16))(v28, v12, v29);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_227323528;
  v24[1] = v19;
  sub_2276676E0();
  v25 = v27;
  sub_227669270();
  (*(v8 + 8))(v12, v20);
  sub_2272A21C0(v15, v33);
  return (*(v30 + 8))(v15, v32);
}

uint64_t sub_227321ACC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v33 = a3;
  v5 = sub_2276690A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v30 = *(v32 - 8);
  v13 = MEMORY[0x28223BE20](v32);
  v15 = &v27 - v14;
  v16 = *(v3 + 16);
  v27 = v16;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v31;
  v21 = v28;
  v20 = v29;
  (*(v8 + 16))(v28, v12, v29);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2273237B8;
  v24[1] = v19;
  sub_227668CE0();
  v25 = v27;
  sub_227669270();
  (*(v8 + 8))(v12, v20);
  sub_2272A658C(v15, v33);
  return (*(v30 + 8))(v15, v32);
}

uint64_t sub_227321E7C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227667B70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323920;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272AC3E4(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_227322234@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227667480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2273238A8;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272ACE5C(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_2273225EC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227664590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323830;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272A55D0(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_2273229A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_2276654E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2273239F8;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272AE880(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_227322D5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227665A40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323BC8;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272AE880(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_227323114@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v34 = a1;
  v36 = a3;
  v4 = sub_227665030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v33 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v14 = v29 - v13;
  v15 = *(v3 + 16);
  v16 = *(v5 + 16);
  v17 = v4;
  v29[1] = v4;
  v16(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v4, v12);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = v11;
  v29[0] = v11;
  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v34;
  v22 = v30;
  v23 = v32;
  (*(v7 + 16))(v30, v20, v32);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227323740;
  v26[1] = v21;
  v27 = v15;
  sub_227669270();
  (*(v7 + 8))(v29[0], v23);
  sub_2272AFD60(v14, v36);
  return (*(v33 + 8))(v14, v35);
}

uint64_t sub_2273236A4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_227323AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_227323C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_227323CD0(&qword_27D7BCB68, &protocol conformance descriptor for RecommendationError);
  v5 = sub_227323CD0(&qword_28139B778, MEMORY[0x277D51B78]);

  return a3(a1, v4, v5);
}

uint64_t sub_227323CD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227665A50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227323D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1;
    v46 = MEMORY[0x277D84F90];
    sub_226F1FC68(0, v1, 0);
    v4 = v46;
    v5 = v3 + 64;
    result = sub_22766CC90();
    v7 = 0;
    v41 = *(v3 + 36);
    v33 = v3 + 72;
    v34 = v3;
    v35 = v1;
    v36 = v3 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_32;
      }

      if (v41 != *(v3 + 36))
      {
        goto LABEL_33;
      }

      v38 = 1 << result;
      v39 = result >> 6;
      v10 = *(v3 + 48) + 24 * result;
      v11 = *(v10 + 16);
      v40 = result;
      v12 = *(*(v3 + 56) + 8 * result);
      v13 = *(v12 + 16);
      v42 = *v10;
      v43 = *(v10 + 8);
      v14 = *v10;
      if (v13)
      {
        sub_226EB396C(v14, v43, v11);

        v37 = v4;
        sub_226F1FCC8(0, v13, 0);
        v15 = v2;
        v16 = 32;
        v44 = v12;
        do
        {
          v45 = *(v12 + v16);
          sub_226EB396C(v42, v43, v11);
          v17 = v11;
          v19 = *(v2 + 16);
          v18 = *(v2 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_226F1FCC8((v18 > 1), v19 + 1, 1);
            v4 = v37;
          }

          *(v2 + 16) = v19 + 1;
          v20 = v2 + 32 * v19;
          *(v20 + 32) = v45;
          *(v20 + 40) = v42;
          *(v20 + 48) = v43;
          *(v20 + 56) = v17;
          v16 += 8;
          --v13;
          v11 = v17;
          v12 = v44;
        }

        while (v13);
        LOBYTE(v21) = v11;

        v2 = MEMORY[0x277D84F90];
        v3 = v34;
      }

      else
      {
        v21 = *(v10 + 16);
        sub_226EB396C(v14, *(v10 + 8), v11);
        v15 = v2;
      }

      v23 = *(v4 + 16);
      v22 = *(v4 + 24);
      result = v40;
      if (v23 >= v22 >> 1)
      {
        sub_226F1FC68((v22 > 1), v23 + 1, 1);
        result = v40;
      }

      *(v4 + 16) = v23 + 1;
      v24 = v4 + 32 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v43;
      *(v24 + 48) = v21;
      *(v24 + 56) = v15;
      v8 = 1 << *(v3 + 32);
      if (result >= v8)
      {
        goto LABEL_34;
      }

      v5 = v36;
      v25 = *(v36 + 8 * v39);
      if ((v25 & v38) == 0)
      {
        goto LABEL_35;
      }

      if (v41 != *(v3 + 36))
      {
        goto LABEL_36;
      }

      v26 = v25 & (-2 << (result & 0x3F));
      if (v26)
      {
        v8 = __clz(__rbit64(v26)) | result & 0x7FFFFFFFFFFFFFC0;
        v9 = v35;
      }

      else
      {
        v27 = v4;
        v28 = v39 << 6;
        v29 = v39 + 1;
        v30 = (v33 + 8 * v39);
        v9 = v35;
        while (v29 < (v8 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_22704FE58(result, v41, 0);
            v8 = __clz(__rbit64(v31)) + v28;
            goto LABEL_27;
          }
        }

        sub_22704FE58(result, v41, 0);
LABEL_27:
        v4 = v27;
      }

      ++v7;
      result = v8;
      if (v7 == v9)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t ModalityPair.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22713A9EC();
  v2 = sub_227663B60();
  MEMORY[0x22AA98450](40, 0xE100000000000000);
  v0 = sub_22766D140();
  MEMORY[0x22AA98450](v0);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return v2;
}

uint64_t static ModalityPair.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

uint64_t ModalityPair.hash(into:)(uint64_t a1)
{
  MEMORY[0x22AA996B0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t ModalityPair.hashValue.getter()
{
  sub_22766D370();
  sub_226F48228();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t ModalityDurationSplits.__allocating_init(splitsByModalities:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ModalityDurationSplits.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_227324378()
{
  result = qword_27D7BCB70;
  if (!qword_27D7BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB70);
  }

  return result;
}

void sub_22732442C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v69 = a4;
  v74 = a3;
  v72 = a2;
  v5 = sub_22766B390();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v68 - v8;
  MEMORY[0x28223BE20](v9);
  v71 = &v68 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_28;
    }

    v18 = *(a1 + 8 * v14++ + 32);
    if (*(v18 + 16))
    {
      v73 = v13;
      v19 = *(v18 + 40);
      v20 = *(v18 + 48);
      v21 = *(v18 + 56);
      sub_226EB396C(v19, v20, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2273A59E0(0, v16[2] + 1, 1, v16);
      }

      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        v16 = sub_2273A59E0((v22 > 1), v23 + 1, 1, v16);
      }

      v16[2] = v23 + 1;
      v24 = &v16[3 * v23];
      v24[4] = v19;
      v24[5] = v20;
      *(v24 + 48) = v21;
      v14 = v17;
      v13 = v73;
    }
  }

  v25 = v16[2];
  sub_22766A630();

  v26 = sub_22766B380();
  v27 = sub_22766C8B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v73 = v25;
    v29 = v28;
    v30 = swift_slowAlloc();
    v78 = v30;
    *v29 = 134218242;
    *(v29 + 4) = v72;
    *(v29 + 12) = 2080;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
    v32 = MEMORY[0x22AA98660](a1, v31);
    v34 = sub_226E97AE8(v32, v33, &v78);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_226E8E000, v26, v27, "[Algorithm.Branch]: Generating cliques with duration:%ld sets:%s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v30, -1, -1);
    v35 = v29;
    v25 = v73;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  v36 = v76;
  v37 = *(v75 + 8);
  v37(v13, v76);
  v38 = v74;
  if (v25 < 2)
  {

    v39 = v70;
    sub_22766A630();
    v40 = sub_22766B380();
    v41 = sub_22766C890();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v25;
      v44 = v42;
      *v42 = 134217984;
      *(v42 + 4) = v43;
      _os_log_impl(&dword_226E8E000, v40, v41, "[Algorithm.Branch]: numberOfModalities must be greater than 1. Got numberOfModalities=%ld", v42, 0xCu);
      MEMORY[0x22AA9A450](v44, -1, -1);
    }

    v37(v39, v36);
    v45 = sub_227664EC0();
    sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51188], v45);
    swift_willThrow();
    return;
  }

  if (!*(v74 + 16))
  {

    goto LABEL_23;
  }

  v47 = sub_22732A050(v16, v38);

  v48 = v47[2];

  if (v48)
  {
LABEL_23:
    v78 = MEMORY[0x277D84FA0];
    v53 = sub_227668780();
    v54 = v53 == sub_227668780();
    v55 = a1;
    v56 = v72;
    sub_227325EC4(1, MEMORY[0x277D84F90], v25, v55, v72, v69 & 1, v54, &v78);
    v57 = v71;
    sub_22766A630();

    v58 = sub_22766B380();
    v59 = sub_22766C8B0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77 = v61;
      *v60 = 134218242;
      *(v60 + 4) = v56;
      *(v60 + 12) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
      sub_226F481A4();
      v62 = sub_22766C610();
      v64 = v63;

      v65 = sub_226E97AE8(v62, v64, &v77);

      *(v60 + 14) = v65;
      _os_log_impl(&dword_226E8E000, v58, v59, "[Algorithm.Branch]: Completed solution for duration(%ld): %s", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x22AA9A450](v61, -1, -1);
      MEMORY[0x22AA9A450](v60, -1, -1);

      v66 = v71;
      v67 = v76;
    }

    else
    {

      v66 = v57;
      v67 = v36;
    }

    v37(v66, v67);
    return;
  }

  v49 = v68;
  sub_22766A630();
  v50 = sub_22766B380();
  v51 = sub_22766C890();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_226E8E000, v50, v51, "[Algorithm.Branch]: A split has to contain at least one of the disjunctive modalities.", v52, 2u);
    MEMORY[0x22AA9A450](v52, -1, -1);
  }

  v37(v49, v36);
}

void sub_227324B7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v89 = a5;
  v87 = a3;
  v88 = a4;
  v90 = sub_22766B390();
  v8 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = a1;
  v13 = *(a1 + 16);
  if (v13 <= a2)
  {
    sub_22766A630();
    v32 = sub_22766B380();
    v33 = sub_22766C890();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_226E8E000, v32, v33, "modalityPairs must have more keys than numberOfWorkouts", v34, 2u);
      MEMORY[0x22AA9A450](v34, -1, -1);
    }

    (*(v8 + 8))(v10, v90);
    v35 = sub_227664EC0();
    sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51188], v35);
    swift_willThrow();
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v113 = v8;
    v85 = &v83 - v12;
    v91 = v5;
    if (v13 + 1 >= a2 + 1)
    {
      v14 = a2 + 1;
    }

    else
    {
      v14 = v13 + 1;
    }

    v15 = v13 < a2;
    if (v13 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    if (v13 >= a2)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = v92;
    v104[0] = v92;
    v104[1] = v13;
    v104[2] = v16;
    v104[3] = v17;
    v105 = v15;
    v103 = MEMORY[0x277D84F90];
    sub_22732CCA4(v104, v97);
    sub_22732CCA4(v104, v97);

    v19 = sub_22766CC90();
    v20 = *(v18 + 36);
    v21 = 1 << *(v18 + 32);
    v22 = sub_22732A43C(v19, v20, 0, v16, v21, *(v18 + 36), 0, v18);
    if (v24 == 255)
    {
      v25 = v20;
    }

    else
    {
      v21 = v22;
      v25 = v23;
    }

    if (v24 == 255 || (v24 & 1) == 0)
    {
      if (v20 != v25)
      {
        goto LABEL_65;
      }

      if (v21 < v19)
      {
LABEL_66:
        __break(1u);
      }

      else
      {
        v26 = v92;
        v27 = sub_22732A5A0(v19, v20, 0, v21, v25, 0, v92);
        if (!v27)
        {
          sub_226E97D1C(v104, &qword_27D7BCBA0, &qword_2276808C8);
          v29 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }

        v106 = v26;
        v107 = v19;
        v108 = v20;
        v109 = 0;
        v110 = v21;
        v111 = v25;
        v112 = 0;
        v28 = v27;
        v29 = sub_2274CD880(v27, 0);
        v30 = sub_2274CE694(v95, (v29 + 4), v28);
        v97[1] = v95[1];
        v97[2] = v95[2];
        v98[0] = v96[0];
        *(v98 + 9) = *(v96 + 9);
        v97[0] = v95[0];
        sub_22732CCA4(v104, &v94);
        sub_226E97D1C(v97, &qword_27D7BCBA8, &qword_2276808D0);
        if (v30 == v28)
        {
          sub_226E97D1C(v104, &qword_27D7BCBA0, &qword_2276808C8);
LABEL_26:
          v99 = v92;
          v100 = v16;
          v101 = v17;
          v102 = v29;
          if (v16 == v17)
          {
            goto LABEL_58;
          }

          v84 = (v113 + 1);
          *&v31 = 136315138;
          v83 = v31;
          v37 = v91;
          while (1)
          {
            v38 = v102;
            v39 = v102[2];
            if (v39)
            {
              v91 = v37;
              *&v97[0] = MEMORY[0x277D84F90];

              sub_226F1FC88(0, v39, 0);
              v40 = *&v97[0];
              v41 = v99;
              v113 = (v99 + 64);
              v86 = v38;
              v42 = v38 + 5;
              v93 = v99;
              while (1)
              {
                v43 = *(v42 - 1);
                if (v43 < 0 || v43 >= 1 << *(v41 + 32))
                {
                  break;
                }

                if (((*(v113 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                {
                  goto LABEL_62;
                }

                if (*(v41 + 36) != *v42)
                {
                  goto LABEL_63;
                }

                v44 = *(v41 + 48) + 24 * v43;
                v45 = *v44;
                v46 = *(v44 + 8);
                v47 = *(v44 + 16);
                v48 = v40;
                sub_226EB396C(*v44, v46, v47);
                v40 = v48;
                *&v97[0] = v48;
                v49 = *(v48 + 16);
                v50 = *(v40 + 24);
                if (v49 >= v50 >> 1)
                {
                  sub_226F1FC88((v50 > 1), v49 + 1, 1);
                  v40 = *&v97[0];
                }

                v42 += 6;
                *(v40 + 16) = v49 + 1;
                v51 = v40 + 24 * v49;
                *(v51 + 32) = v45;
                *(v51 + 40) = v46;
                *(v51 + 48) = v47;
                --v39;
                v41 = v93;
                if (!v39)
                {
                  v52 = v40;

                  v37 = v91;
                  goto LABEL_39;
                }
              }

LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v52 = MEMORY[0x277D84F90];
LABEL_39:
            v91 = v37;
            sub_22732A738();
            v53 = *(v52 + 16);
            v54 = v52;
            if (!v53)
            {
              v113 = MEMORY[0x277D84F90];
              goto LABEL_54;
            }

            v55 = v52;
            v56 = 0;
            v57 = (v52 + 48);
            v93 = v53 - 1;
            v113 = MEMORY[0x277D84F90];
            v58 = v92;
            v86 = (v52 + 48);
            do
            {
              v59 = &v57[3 * v56];
              v60 = v56;
              while (1)
              {
                if (v60 >= *(v55 + 16))
                {
                  __break(1u);
                  goto LABEL_61;
                }

                if (*(v58 + 16))
                {
                  break;
                }

LABEL_42:
                ++v60;
                v59 += 24;
                if (v53 == v60)
                {
                  goto LABEL_54;
                }
              }

              v61 = *(v59 - 2);
              v62 = *(v59 - 1);
              v63 = *v59;
              sub_226EB396C(v61, v62, *v59);
              v64 = sub_226F491D8();
              if ((v65 & 1) == 0)
              {
                sub_226EB2DFC(v61, v62, v63);
                v58 = v92;
                v55 = v54;
                goto LABEL_42;
              }

              v66 = *(*(v92 + 56) + 8 * v64);

              sub_226EB2DFC(v61, v62, v63);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v113 = sub_2273A5A04(0, v113[2] + 1, 1, v113);
              }

              v57 = v86;
              v68 = v113[2];
              v67 = v113[3];
              if (v68 >= v67 >> 1)
              {
                v113 = sub_2273A5A04((v67 > 1), v68 + 1, 1, v113);
              }

              v55 = v54;
              v56 = v60 + 1;
              v69 = v113;
              v113[2] = v68 + 1;
              v69[v68 + 4] = v66;
              v58 = v92;
            }

            while (v93 != v60);
LABEL_54:
            v70 = v85;
            sub_22766A630();
            v71 = v113;

            v72 = sub_22766B380();
            v73 = sub_22766C8B0();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              *&v97[0] = v75;
              *v74 = v83;
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
              v77 = MEMORY[0x22AA98660](v71, v76);
              v79 = sub_226E97AE8(v77, v78, v97);

              *(v74 + 4) = v79;
              v71 = v113;
              _os_log_impl(&dword_226E8E000, v72, v73, "[Algorithm.Branch]: Generating combinations for %s", v74, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v75);
              MEMORY[0x22AA9A450](v75, -1, -1);
              MEMORY[0x22AA9A450](v74, -1, -1);
            }

            (*v84)(v70, v90);
            v80 = v91;
            sub_22732442C(v71, v87, v88, v89 & 1);
            v37 = v80;
            if (v80)
            {

              sub_226E97D1C(v104, &qword_27D7BCBA0, &qword_2276808C8);

              return;
            }

            v82 = v81;

            sub_227460250(v82);
            if (v100 == v101)
            {
LABEL_58:
              sub_226E97D1C(v104, &qword_27D7BCBA0, &qword_2276808C8);

              return;
            }
          }
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_227325478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a2 >= 90)
  {
    v7 = a1;
    if (*(a1 + 16) < a4)
    {
      v119 = v6;
      v8 = a1 + 64;
      v9 = 1 << *(a1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(a1 + 64);
      v12 = (v9 + 63) >> 6;

      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v15 = MEMORY[0x277D84F90];
      v122 = v7;
      v110 = v12;
      v112 = v7 + 64;
LABEL_7:
      v16 = v13;
      v115 = v15;
      if (!v11)
      {
        goto LABEL_9;
      }

      do
      {
        v13 = v16;
LABEL_12:
        v17 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = *(v7 + 48) + 24 * (v17 | (v13 << 6));
        v19 = *v18;
        v126 = *(v18 + 8);
        v123 = *(v18 + 16);
        sub_226EB396C(*v18, v126, v123);
        v20 = sub_227667250();
        if (!*(v20 + 16) || (v129 = v19, v130 = v126, LOBYTE(v131) = v123, sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v21 = sub_22766D3F0(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
        {
LABEL_21:

LABEL_22:
          v15 = v115;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136 = v115;
          v14 = MEMORY[0x277D84F90];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226F1FC88(0, *(v115 + 16) + 1, 1);
            v15 = v136;
          }

          v7 = v122;
          v29 = *(v15 + 16);
          v28 = *(v15 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_226F1FC88((v28 > 1), v29 + 1, 1);
            v7 = v122;
            v15 = v136;
          }

          *(v15 + 16) = v29 + 1;
          v30 = v15 + 24 * v29;
          *(v30 + 32) = v19;
          *(v30 + 40) = v126;
          *(v30 + 48) = v123;
          v12 = v110;
          v8 = v112;
          goto LABEL_7;
        }

        v24 = ~v22;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v25 = *(v20 + 48) + 24 * v23;
          v26 = *(v25 + 16);
          v134 = *v25;
          LOBYTE(v135) = v26;
          v129 = v19;
          v130 = v126;
          LOBYTE(v131) = v123;
          if (sub_227663B20())
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (a6)
        {
          goto LABEL_22;
        }

        sub_226EB2DFC(v19, v126, v123);
        v16 = v13;
        v7 = v122;
        v14 = MEMORY[0x277D84F90];
        v15 = v115;
        v12 = v110;
        v8 = v112;
      }

      while (v11);
      while (1)
      {
LABEL_9:
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
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
          goto LABEL_133;
        }

        if (v13 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v13);
        ++v16;
        if (v11)
        {
          goto LABEL_12;
        }
      }

      if (!*(v15 + 16))
      {

        return;
      }

      v31 = *(v7 + 16);
      v32 = __OFADD__(v31, 2);
      v33 = v31 + 2;
      v34 = v119;
      if (!v32)
      {
        v35 = 1;
        if (v33 > a4)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        v107 = v36;
        v136 = v14;
        while (1)
        {
          v37 = *(v15 + 16);
          v38 = v37 + 1;
          v109 = v35 + 1;
          v111 = v35;
          if (v37 + 1 >= v35 + 1)
          {
            v38 = v35 + 1;
          }

          v39 = v37 >= v35 ? v35 : 0;
          v40 = v37 >= v35 ? v38 : 0;
          v133 = v14;
          v41 = sub_22732B360(v15, v39, v40, v37 < v35);
          v43 = v42;
          v45 = v44;
          v129 = v41;
          v130 = v42;
          v131 = v44;
          v132 = v46;

          if (v43 != v45)
          {
            break;
          }

LABEL_43:

          sub_227460228(v133);
          if (v111 == v107)
          {
LABEL_123:

            return;
          }

          v35 = v109;
          v7 = v122;
          if (v109 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_132;
          }
        }

        while (2)
        {
          v47 = v132;
          v48 = *(v132 + 2);
          if (v48)
          {
            v113 = v45;
            v114 = v43;
            v120 = v34;
            *&v134 = v14;

            sub_226F1FC88(0, v48, 0);
            v49 = 0;
            v50 = v134;
            v127 = v129;
            v124 = v129 + 32;
            do
            {
              if (v49 >= *(v47 + 2))
              {
                goto LABEL_119;
              }

              v51 = *&v47[8 * v49 + 32];
              if ((v51 & 0x8000000000000000) != 0)
              {
                goto LABEL_120;
              }

              if (v51 >= *(v127 + 16))
              {
                goto LABEL_121;
              }

              v52 = v124 + 24 * v51;
              v54 = *v52;
              v53 = *(v52 + 8);
              v55 = *(v52 + 16);
              v56 = v50;
              sub_226EB396C(*v52, v53, v55);
              v50 = v56;
              *&v134 = v56;
              v58 = *(v56 + 16);
              v57 = *(v56 + 24);
              if (v58 >= v57 >> 1)
              {
                sub_226F1FC88((v57 > 1), v58 + 1, 1);
                v50 = v134;
              }

              ++v49;
              *(v50 + 16) = v58 + 1;
              v59 = v50 + 24 * v58;
              *(v59 + 32) = v54;
              *(v59 + 40) = v53;
              *(v59 + 48) = v55;
            }

            while (v48 != v49);
            v60 = v50;

            v61 = *(v47 + 2);
            v7 = v122;
            if (v61)
            {
              v62 = swift_isUniquelyReferenced_nonNull_native();
              v34 = v120;
              v14 = MEMORY[0x277D84F90];
              if ((v62 & 1) == 0)
              {
                v47 = sub_2272EC328(v47);
              }

              if (v61 <= *(v47 + 2))
              {
                v63 = v61 - 1;
                v64 = v47 + 32;
                v65 = &v47[8 * v61 + 24];
                v66 = *v65 + 1;
                if (__OFADD__(*v65, 1))
                {
                  goto LABEL_131;
                }

                *v65 = v66;
                v132 = v47;
                if (v66 != *(v129 + 16))
                {
LABEL_88:
                  v77 = v60;
                  goto LABEL_89;
                }

                v67 = *(v47 + 2);
                if (v61 > v67)
                {
                  goto LABEL_125;
                }

                v68 = &v47[8 * v61 + 24];
                while (1)
                {
                  v69 = v63;
                  if (*v65 != v66)
                  {
                    v132 = v47;
                    goto LABEL_88;
                  }

                  --v63;
                  if ((v69 - 1) < 0)
                  {
                    v132 = v47;
                    sub_22732AC98(&v129);
                    goto LABEL_88;
                  }

                  if (v63 >= v67)
                  {
                    goto LABEL_126;
                  }

                  v70 = *&v64[8 * v63];
                  v32 = __OFADD__(v70, 1);
                  v71 = v70 + 1;
                  if (v32)
                  {
                    goto LABEL_127;
                  }

                  *&v64[8 * v63] = v71;
                  if (v67 < v69)
                  {
                    goto LABEL_128;
                  }

                  if (v69 != v67)
                  {
                    break;
                  }

LABEL_62:
                  v67 = *(v47 + 2);
                  v68 -= 8;
                  if (v61 > v67)
                  {
                    goto LABEL_125;
                  }
                }

                v72 = v68;
                while (v69 < v67)
                {
                  v73 = v69 - 1;
                  v74 = *(v47 + 2);
                  if ((v69 - 1) >= v74)
                  {
                    goto LABEL_116;
                  }

                  v75 = v71 + 1;
                  if (__OFADD__(v71, 1))
                  {
                    goto LABEL_117;
                  }

                  v76 = v73 + 1;
                  if (v76 >= v74)
                  {
                    goto LABEL_118;
                  }

                  *v72++ = v75;
                  if (v75 != v66)
                  {
                    v69 = v76 + 1;
                    ++v71;
                    if (v76 + 1 != v67)
                    {
                      continue;
                    }
                  }

                  goto LABEL_62;
                }

                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
LABEL_120:
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              goto LABEL_130;
            }

            v34 = v120;
            v14 = MEMORY[0x277D84F90];
            v77 = v60;
            v43 = v114;
            if (v114 >= v113)
            {
              goto LABEL_89;
            }

LABEL_80:
            v78 = v77;
            v79 = v43 + 1;
            v130 = v43 + 1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v80 = *(v47 + 2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_2273A5610(0, v80, 1, v47);
                v132 = v47;
              }

              sub_22732B428(0, v80, 0);
            }

            else
            {
              v81 = sub_2274CD830(0, *(v47 + 3) >> 1);

              v47 = v81;
            }

            v132 = v47;
            v82 = sub_2273FC414(v79, 0, *(v129 + 16));
            sub_227460500(v82, v83);
            v7 = v122;
            v77 = v78;
          }

          else
          {
            v77 = v14;
            if (v43 < v45)
            {
              goto LABEL_80;
            }
          }

LABEL_89:
          v121 = v34;
          v84 = *(v7 + 16);
          v85 = v77;
          if (v84)
          {
            v86 = sub_2274CD86C(*(v7 + 16), 0);
            v87 = sub_2274CF838();
            v88 = v134;

            sub_226EBB21C(v88);
            if (v87 != v84)
            {
              goto LABEL_129;
            }

            v7 = v122;
            v77 = v85;
            v89 = *(v85 + 16);
            if (v89)
            {
LABEL_92:
              v90 = 0;
              v91 = v77 + 48;
              v125 = v86;
              v128 = v14;
LABEL_93:
              v92 = (v91 + 24 * v90);
              v93 = v90;
              while (v93 < *(v77 + 16))
              {
                if (*(v7 + 16))
                {
                  v94 = *(v92 - 2);
                  v95 = *(v92 - 1);
                  v96 = *v92;
                  sub_226EB396C(v94, v95, *v92);
                  v97 = sub_226F491D8();
                  if (v98)
                  {
                    v99 = *(*(v122 + 56) + 8 * v97);

                    sub_226EB2DFC(v94, v95, v96);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v128 = sub_2273A5A04(0, v128[2] + 1, 1, v128);
                    }

                    v14 = MEMORY[0x277D84F90];
                    v101 = v128[2];
                    v100 = v128[3];
                    if (v101 >= v100 >> 1)
                    {
                      v103 = sub_2273A5A04((v100 > 1), v101 + 1, 1, v128);
                      v77 = v85;
                      v128 = v103;
                    }

                    else
                    {
                      v77 = v85;
                    }

                    v90 = v93 + 1;
                    v128[2] = v101 + 1;
                    v128[v101 + 4] = v99;
                    v102 = v89 - 1 == v93;
                    v7 = v122;
                    v86 = v125;
                    if (v102)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_93;
                  }

                  sub_226EB2DFC(v94, v95, v96);
                  v7 = v122;
                  v77 = v85;
                }

                ++v93;
                v92 += 24;
                if (v89 == v93)
                {
                  v14 = MEMORY[0x277D84F90];
                  v86 = v125;
                  goto LABEL_110;
                }
              }

LABEL_122:
              __break(1u);
              goto LABEL_123;
            }
          }

          else
          {
            v86 = v14;
            v89 = *(v77 + 16);
            if (v89)
            {
              goto LABEL_92;
            }
          }

          v128 = v14;
LABEL_110:
          *&v134 = v86;
          sub_227460228(v128);
          sub_22732442C(v134, a2, a3, a5 & 1);
          v34 = v121;
          if (v121)
          {

            return;
          }

          v105 = v104;

          sub_227460250(v105);
          v43 = v130;
          v45 = v131;
          v7 = v122;
          if (v130 == v131)
          {
            v15 = v115;
            goto LABEL_43;
          }

          continue;
        }
      }

LABEL_133:
      __break(1u);
    }
  }
}

uint64_t sub_227325EC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v41 = result;
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_67;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v8 >= *(a4 + 16))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v9 = *(a4 + 8 * v8 + 32);
  if (*(v9 + 2))
  {
    v12 = a2;
    v46 = *(a2 + 16);
    v38 = result + 1;
    v13 = __OFADD__(result, 1);
    v40 = v13;

    v42 = a6;
    v43 = a7;
    v47 = v12;
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = *(v9 + 2);
        if (!v14)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v9 = sub_2272EC314(v9);
        v14 = *(v9 + 2);
        if (!v14)
        {
LABEL_61:
          __break(1u);
        }
      }

      v15 = v14 - 1;
      v50 = v9;
      v18 = *(v9 + 4);
      v17 = *(v9 + 5);
      v16 = v9 + 32;
      v19 = *(v16 + 2);
      v20 = v16[24];
      memmove(v16, v16 + 32, 32 * (v14 - 1));
      *(v16 - 2) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      v48 = v18;
      *(inited + 32) = v18;
      *(inited + 40) = v17;
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      sub_226EB396C(v17, v19, v20);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v22 = *(v12 + 24) >> 1, v23 = v12, v22 <= v46))
      {
        result = sub_2273A58D4(result, v46 + 1, 1, v12);
        v23 = result;
        v22 = *(result + 24) >> 1;
      }

      if (v22 <= *(v23 + 16))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v24 = (v23 + 32);
      swift_arrayInitWithCopy();

      v25 = *(v23 + 16);
      v26 = v25 + 1;
      *(v23 + 16) = v25 + 1;
      if (v25 != -1)
      {
        break;
      }

      result = MEMORY[0x277D84F90];
      v31 = *(MEMORY[0x277D84F90] + 16);
      if (v31)
      {
        goto LABEL_22;
      }

      if ((a7 & 1) == 0)
      {
        result = sub_226EB2DFC(v17, v19, v20);
        if (a6)
        {
          if (a5 < 0)
          {
            goto LABEL_57;
          }

          if (v41 == a3)
          {
            if (!a5)
            {
              goto LABEL_54;
            }

            goto LABEL_57;
          }

LABEL_55:
          if (v40)
          {
            goto LABEL_66;
          }

          sub_227325EC4(v38, v23, a3, a4, a5, a6 & 1, a7 & 1, a8);
          goto LABEL_57;
        }

LABEL_53:
        if (v41 == a3)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v36 = v48;
      if (v48 <= a5)
      {
        v32 = 0;
LABEL_43:
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_227670CD0;
        *(v37 + 32) = v36;
        *(v37 + 40) = v17;
        *(v37 + 48) = v19;
        *(v37 + 56) = v20;
        sub_2270B9444(&v51, v37);

        if (a6)
        {
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      result = sub_226EB2DFC(v17, v19, v20);
      v12 = v47;
      if ((a6 & 1) == 0)
      {
        if (a5 < 0)
        {
          goto LABEL_53;
        }

LABEL_52:
        v32 = 0;
        goto LABEL_46;
      }

      if ((a5 & 0x8000000000000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_58:
      v9 = v50;
      if (!*(v50 + 2))
      {
      }
    }

    v51 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v26, 0);
    result = v51;
    v27 = *(v51 + 16);
    do
    {
      v29 = *v24;
      v24 += 4;
      v28 = v29;
      v51 = result;
      v30 = *(result + 24);
      v31 = v27 + 1;
      if (v27 >= v30 >> 1)
      {
        sub_226F1F090((v30 > 1), v27 + 1, 1);
        result = v51;
      }

      *(result + 16) = v31;
      *(result + 8 * v27++ + 32) = v28;
      --v26;
    }

    while (v26);
    a6 = v42;
    a7 = v43;
LABEL_22:
    v32 = 0;
    v33 = 32;
    do
    {
      v34 = *(result + v33);
      v35 = __OFADD__(v32, v34);
      v32 += v34;
      if (v35)
      {
        __break(1u);
        goto LABEL_65;
      }

      v33 += 8;
      --v31;
    }

    while (v31);

    if (a7)
    {
      v36 = v48;
      if (v48 <= a5)
      {
        goto LABEL_43;
      }

      result = sub_226EB2DFC(v17, v19, v20);
      if (a6)
      {
LABEL_44:
        if (v32 > a5)
        {
          goto LABEL_57;
        }
      }

LABEL_45:
      if (v32 <= a5)
      {
LABEL_46:

        sub_2270B9444(&v51, v23);
      }
    }

    else
    {
      result = sub_226EB2DFC(v17, v19, v20);
      if ((a6 & 1) != 0 && v32 > a5)
      {
        goto LABEL_57;
      }
    }

    if (v41 == a3)
    {
      if ((a6 & 1) == 0 || v32 == a5)
      {
LABEL_54:
        sub_2270B9444(&v51, v23);
      }

LABEL_57:

      v12 = v47;
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  return result;
}

void *sub_227326368(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v43 = a2;
  v45 = sub_227664EC0();
  v37 = *(v45 - 1);
  MEMORY[0x28223BE20](v45);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22766B390();
  v36 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  if (a1 >= 6)
  {
    v40 = (v37 + 88);
    v39 = *MEMORY[0x277D511E8];
    v15 = (v36 + 8);
    *&v12 = 134218240;
    v38 = v12;
    do
    {
      v17 = sub_227327D58(a1, v43, a3, a4);
      if (v5)
      {
        v46 = v5;
        v18 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
        v19 = v41;
        if (!swift_dynamicCast())
        {
          goto LABEL_16;
        }

        v20 = (*v40)(v19, v45);
        if (v20 != v39)
        {
          (*(v37 + 8))(v19, v45);
LABEL_16:

          return a4;
        }

        v5 = 0;
      }

      else
      {
        if (*(v17 + 16))
        {
          a4 = sub_22732BF54(v17);

          return a4;
        }
      }

      sub_22766A630();
      v21 = v14;
      v22 = sub_22766B380();
      v23 = sub_22766C8B0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v42 = 0;
        v25 = a3;
        v26 = v24;
        *v24 = v38;
        *(v24 + 4) = a1;
        *(v24 + 12) = 2048;
        *(v24 + 14) = 5;
        _os_log_impl(&dword_226E8E000, v22, v23, "No modality duration candidates found for %ld, backing off by %ld minutes.", v24, 0x16u);
        v27 = v26;
        a3 = v25;
        v5 = v42;
        MEMORY[0x22AA9A450](v27, -1, -1);
      }

      v14 = v21;
      (*v15)(v21, v44);
      v16 = a1 <= 10;
      a1 -= 5;
    }

    while (!v16);
  }

  v28 = v35;
  sub_22766A630();
  v29 = sub_22766B380();
  v30 = sub_22766C890();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "Unable to find candidates.", v31, 2u);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  (*(v36 + 8))(v28, v44);
  sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
  a4 = v45;
  swift_allocError();
  (*(v37 + 104))(v32, *MEMORY[0x277D51188], a4);
  swift_willThrow();
  return a4;
}

uint64_t sub_2273267EC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v50 = a5;
  v9 = sub_227664EC0();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v53[0] = sub_22766D140();
  v53[1] = v14;
  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v17 = sub_22704B2CC();
  v43[1] = v16;
  v43[2] = v15;
  v43[0] = v17;
  v18 = sub_22766BEC0();
  MEMORY[0x22AA98450](v18);

  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v54 = a3;
  v19 = sub_22766D140();
  MEMORY[0x22AA98450](v19);

  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v54 = a4;
  v20 = v50;
  v21 = sub_22766D140();
  MEMORY[0x22AA98450](v21);

  v22 = sub_22766BFD0();

  v51 = v22;
  v23 = [v20 objectForKey_];
  if (!v23)
  {
    v32 = v44;
    v33 = v45;
    v24 = v46;
    v49 = a2;
    v34 = v52;
    v35 = sub_227327D58(a1, a2, a3, a4);
    if (!v34)
    {
      v38 = sub_22732BF54(v35);

      type metadata accessor for ModalityDurationSplits();
      v24 = swift_allocObject();
      *(v24 + 16) = v38;
      v39 = v51;
      [v20 setObject:v24 forKey:v51];

      return v24;
    }

    v52 = v34;
    v53[0] = v34;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if (swift_dynamicCast())
    {
      if ((*(v33 + 88))(v32, v24) == *MEMORY[0x277D511E8])
      {

        v37 = sub_227326368(a1, v49, a3, a4);
        v52 = 0;
        v41 = v37;
        type metadata accessor for ModalityDurationSplits();
        v24 = swift_allocObject();
        *(v24 + 16) = v41;
        v42 = v51;
        [v20 setObject:v24 forKey:v51];

        return v24;
      }

      (*(v33 + 8))(v32, v24);
    }

    else
    {
    }

    return v24;
  }

  v24 = v23;
  v47 = a3;
  v50 = a4;
  sub_22766A630();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 134218754;
    *(v27 + 4) = a1;
    *(v27 + 12) = 2080;
    v29 = sub_22766BEC0();
    v31 = sub_226E97AE8(v29, v30, v53);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v47;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v50;
    _os_log_impl(&dword_226E8E000, v25, v26, "Using cached splits for duration=%ld, modalityDurationMap=%s, maxWorkouts=%ld, numberOfExerciseDays=%ld", v27, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  (*(v48 + 8))(v13, v49);
  return v24;
}

void *sub_227326D54@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_227663AD0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_227326DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227668780();
  if (v8 != sub_227668780())
  {
    return 1;
  }

  v9 = sub_22732AEC8(a2);
  v10 = v9;
  if (a1 == 1 && *(a2 + 16) > v9)
  {
    v10 = *(a2 + 16);
  }

  sub_22766A630();
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_226E8E000, v11, v12, "Enforcing minimum workouts per day of %ld", v13, 0xCu);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_227326F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  HIDWORD(v149) = a6;
  v154 = a5;
  *&v165 = a4;
  v155 = a3;
  v160 = a2;
  v163 = sub_22766B390();
  v9 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v159 = v7;
  v164 = a1;
  if (v12)
  {
    v13 = sub_2274CD86C(v12, 0);
    v14 = sub_2274CF838();
    v15 = v166;

    sub_226EBB21C(v15);
    if (v14 != v12)
    {
      goto LABEL_178;
    }
  }

  v16 = sub_226F491E4();
  sub_22766A630();

  v17 = sub_22766B380();
  v18 = sub_22766C880();

  v19 = os_log_type_enabled(v17, v18);
  v161 = v13;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v166 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v160;
    *(v20 + 12) = 2080;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
    v23 = MEMORY[0x22AA98660](v13, v22);
    v25 = sub_226E97AE8(v23, v24, &v166);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v17, v18, "[Algorithm.Branch]: Building splits tree with duration: %ld == %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9A450](v21, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v163);
  v26 = sub_227326DB4(v165, v16);
  v150 = v27;

  v28 = *(v164 + 16);
  v29 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  if (v26 > v155)
  {
    goto LABEL_176;
  }

  v153 = v28;
  v156 = OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode;
  v30 = v161;
  v151 = v161 + 4;
  v163 = v164 + 64;
  v165 = xmmword_227670CD0;
  v31 = v26;
  while (1)
  {
    v162 = v31;
    v32 = v31 - 1;
    if (v31 == 1)
    {
LABEL_8:
      v33 = 1 << *(v164 + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & *(v164 + 64);
      v36 = (v33 + 63) >> 6;

      v37 = 0;
      v38 = v163;
      while (v35)
      {
LABEL_18:
        v40 = *(*(v164 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
        v41 = *(v40 + 16);
        v42 = *(v29 + 2);
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v43 > *(v29 + 3) >> 1)
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v29 = sub_2273A58D4(isUniquelyReferenced_nonNull_native, v45, 1, v29);
        }

        v35 &= v35 - 1;
        if (*(v40 + 16))
        {
          if ((*(v29 + 3) >> 1) - *(v29 + 2) < v41)
          {
            goto LABEL_164;
          }

          swift_arrayInitWithCopy();

          v38 = v163;
          if (v41)
          {
            v46 = *(v29 + 2);
            v47 = __OFADD__(v46, v41);
            v48 = v46 + v41;
            if (v47)
            {
              goto LABEL_169;
            }

            *(v29 + 2) = v48;
          }
        }

        else
        {

          v38 = v163;
          if (v41)
          {
            goto LABEL_161;
          }
        }
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {

          v49 = *(v29 + 2);
          if (!v49)
          {
            v52 = MEMORY[0x277D84F90];
LABEL_94:

            v96 = *(v52 + 16);
            if (v96)
            {
              v167 = MEMORY[0x277D84F90];
              sub_226F1FCA8(0, v96, 0);
              v97 = v167;
              v98 = (v52 + 56);
              do
              {
                v100 = *(v98 - 3);
                v99 = *(v98 - 2);
                v101 = *(v98 - 1);
                v102 = *v98;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
                v103 = swift_allocObject();
                *(v103 + 16) = v165;
                *(v103 + 32) = v100;
                *(v103 + 40) = v99;
                *(v103 + 48) = v101;
                *(v103 + 56) = v102;
                sub_226EB396C(v99, v101, v102);
                v167 = v97;
                v105 = *(v97 + 16);
                v104 = *(v97 + 24);
                if (v105 >= v104 >> 1)
                {
                  sub_226F1FCA8((v104 > 1), v105 + 1, 1);
                  v97 = v167;
                }

                *(v97 + 16) = v105 + 1;
                *(v97 + 8 * v105 + 32) = v103;
                v98 += 32;
                --v96;
              }

              while (v96);

              v30 = v161;
            }

            else
            {

              v97 = MEMORY[0x277D84F90];
            }

            v106 = v97;
            goto LABEL_102;
          }

          v50 = 0;
          v51 = -v49;
          v52 = MEMORY[0x277D84F90];
          v54 = v159;
          v53 = v160;
          v55 = v154;
          v56 = v156;
LABEL_32:
          v57 = *(v29 + 2);
          if (v50 > v57)
          {
            v57 = v50;
          }

          v58 = -v57;
          v59 = &v29[32 * v50++ + 56];
          while (v58 + v50 != 1)
          {
            v60 = *(v59 - 3);
            if (*(v54 + v56))
            {
              if ((v55 & 1) == 0 || v60 <= v53)
              {
                goto LABEL_43;
              }
            }

            else if ((v55 & 1) == 0 || v60 == v53)
            {
LABEL_43:
              v61 = *(v59 - 2);
              v62 = *v59;
              v63 = v61;
              v158 = *(v59 - 1);
              LODWORD(v157) = v62;
              sub_226EB396C(v61, v158, v62);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v167 = v52;
              if ((v64 & 1) == 0)
              {
                sub_226F1FCC8(0, *(v52 + 16) + 1, 1);
                v52 = v167;
              }

              v66 = *(v52 + 16);
              v65 = *(v52 + 24);
              if (v66 >= v65 >> 1)
              {
                sub_226F1FCC8((v65 > 1), v66 + 1, 1);
                v52 = v167;
              }

              *(v52 + 16) = v66 + 1;
              v67 = v52 + 32 * v66;
              *(v67 + 32) = v60;
              *(v67 + 40) = v63;
              v54 = v159;
              *(v67 + 48) = v158;
              *(v67 + 56) = v157;
              v55 = v154;
              v53 = v160;
              v30 = v161;
              v56 = v156;
              if (v51 + v50)
              {
                goto LABEL_32;
              }

              goto LABEL_94;
            }

            ++v50;
            v59 += 32;
            if (v51 + v50 == 1)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_155;
        }

        v35 = *(v38 + 8 * v39);
        ++v37;
        if (v35)
        {
          v37 = v39;
          goto LABEL_18;
        }
      }

LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:

LABEL_158:

LABEL_159:

      return;
    }

    v68 = sub_227668780();
    if (v68 != sub_227668780())
    {
      break;
    }

    if (v153 == 1)
    {
      goto LABEL_8;
    }

LABEL_78:
    v83 = v160;
    if (v153 < v162 && v160 >= 90)
    {
      v84 = v152;
      sub_227325478(v164, v160, v150, v155, v154 & 1, BYTE4(v149) & 1);
      v152 = v84;
      if (v84)
      {
        goto LABEL_158;
      }

      v86 = v85;
      v87 = *(v85 + 16);
      v88 = v166;
      v89 = v166[2];
      v90 = v89 + v87;
      if (__OFADD__(v89, v87))
      {
        goto LABEL_174;
      }

      v91 = swift_isUniquelyReferenced_nonNull_native();
      if (!v91 || v90 > v88[3] >> 1)
      {
        if (v89 <= v90)
        {
          v92 = v89 + v87;
        }

        else
        {
          v92 = v89;
        }

        v88 = sub_2273A5A04(v91, v92, 1, v88);
      }

      v93 = v160;
      if (*(v86 + 16))
      {
        if ((v88[3] >> 1) - v88[2] < v87)
        {
          goto LABEL_177;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        swift_arrayInitWithCopy();

        if (v87)
        {
          v94 = v88[2];
          v95 = (v94 + v87);
          if (__OFADD__(v94, v87))
          {
            goto LABEL_179;
          }

          v88[2] = v95;
          v166 = v88;
LABEL_119:
          v119 = 0;
          v158 = v88 + 4;
          v120 = MEMORY[0x277D84F90];
          v157 = v95;
          while (2)
          {
            if (v119 >= v88[2])
            {
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
              goto LABEL_166;
            }

            v121 = v158[v119];
            v122 = *(v121 + 16);
            if (v122)
            {
              v123 = v88;
              v167 = v120;

              sub_226F1F090(0, v122, 0);
              v124 = v167;
              v125 = (v121 + 32);
              v126 = *(v167 + 16);
              do
              {
                v128 = *v125;
                v125 += 4;
                v127 = v128;
                v167 = v124;
                v129 = *(v124 + 24);
                v130 = v126 + 1;
                if (v126 >= v129 >> 1)
                {
                  sub_226F1F090((v129 > 1), v126 + 1, 1);
                  v124 = v167;
                }

                *(v124 + 16) = v130;
                *(v124 + 8 * v126++ + 32) = v127;
                --v122;
              }

              while (v122);
              v120 = MEMORY[0x277D84F90];
              v88 = v123;
              v93 = v160;
              v30 = v161;
              goto LABEL_130;
            }

            v130 = *(v120 + 16);

            v124 = v120;
            if (v130)
            {
LABEL_130:
              v131 = 0;
              v132 = 32;
              do
              {
                v133 = *(v124 + v132);
                v47 = __OFADD__(v131, v133);
                v131 += v133;
                if (v47)
                {
                  __break(1u);
                  goto LABEL_154;
                }

                v132 += 8;
                --v130;
              }

              while (v130);

              v134 = v131 == v93;
              v95 = v157;
              if (v134)
              {
                goto LABEL_152;
              }
            }

            else
            {
            }

            if (++v119 == v95)
            {
              goto LABEL_103;
            }

            continue;
          }
        }
      }

      else
      {

        if (v87)
        {
          goto LABEL_175;
        }
      }

      v95 = v88[2];
      v166 = v88;
      if (v95)
      {
        goto LABEL_119;
      }

      goto LABEL_103;
    }

    v107 = v154;
    if (v162 < v153)
    {
      v108 = v152;
      sub_227324B7C(v164, v162, v160, v150, v154 & 1);
      v152 = v108;
      if (v108)
      {
        goto LABEL_158;
      }

LABEL_102:
      sub_227460228(v106);
      goto LABEL_103;
    }

    if (v153 == v162)
    {

      v110 = v107 & 1;
      v111 = v152;
      sub_22732442C(v109, v83, v150, v110);
      v152 = v111;
      if (v111)
      {
LABEL_162:

        goto LABEL_159;
      }

      v113 = v112;

      sub_227460250(v113);
      v114 = v166;
      v158 = v166[2];
      if (v158)
      {
        v115 = 0;
        v157 = v166 + 4;
        do
        {
          if (v115 >= *(v114 + 16))
          {
            goto LABEL_173;
          }

          v135 = v157[v115];
          v136 = *(v135 + 16);
          if (v136)
          {
            v137 = v114;
            v167 = MEMORY[0x277D84F90];

            sub_226F1F090(0, v136, 0);
            v138 = v167;
            v139 = (v135 + 32);
            v140 = *(v167 + 16);
            do
            {
              v142 = *v139;
              v139 += 4;
              v141 = v142;
              v167 = v138;
              v143 = *(v138 + 24);
              v144 = v140 + 1;
              if (v140 >= v143 >> 1)
              {
                sub_226F1F090((v143 > 1), v140 + 1, 1);
                v138 = v167;
              }

              *(v138 + 16) = v144;
              *(v138 + 8 * v140++ + 32) = v141;
              --v136;
            }

            while (v136);
            v114 = v137;
            v83 = v160;
            v30 = v161;
          }

          else
          {
            v145 = MEMORY[0x277D84F90];
            v144 = *(MEMORY[0x277D84F90] + 16);

            v138 = v145;
            if (!v144)
            {

              if (!v83)
              {
                goto LABEL_152;
              }

              goto LABEL_137;
            }
          }

          v146 = 0;
          v147 = 32;
          do
          {
            v148 = *(v138 + v147);
            v47 = __OFADD__(v146, v148);
            v146 += v148;
            if (v47)
            {
              goto LABEL_156;
            }

            v147 += 8;
            --v144;
          }

          while (v144);

          if (v146 == v83)
          {
            goto LABEL_152;
          }

LABEL_137:
          ++v115;
        }

        while (v115 != v158);
      }
    }

LABEL_103:
    if (v162 == v155)
    {
      goto LABEL_152;
    }

    v31 = v162 + 1;
    v29 = MEMORY[0x277D84F90];
    if (__OFADD__(v162, 1))
    {
      goto LABEL_170;
    }
  }

  if (v153 != 1)
  {
    goto LABEL_78;
  }

  v69 = sub_22732B0A8(v30);
  if (v69 >= v160)
  {
    goto LABEL_78;
  }

  v70 = *(v30 + 16);
  if (!v70)
  {
LABEL_114:
    v116 = v152;
    sub_22732442C(v29, v160, v150, v154 & 1);
    v152 = v116;
    if (v116)
    {
      goto LABEL_157;
    }

    v118 = v117;

    sub_227460250(v118);
    if (v166[2])
    {
LABEL_152:

      return;
    }

    goto LABEL_103;
  }

  v71 = 0;
  while (2)
  {
    if (v71 >= *(v30 + 16))
    {
      goto LABEL_165;
    }

    v72 = v162;
    if ((v162 & 0x8000000000000000) == 0)
    {
      if (v162)
      {
        v73 = v151[v71];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        v74 = sub_22766C380();
        v75 = 0;
        *(v74 + 16) = v72;
        *(v74 + 32) = v73;
        do
        {
          *(v74 + 8 * v75 + 40) = v73;

          ++v75;
        }

        while (v32 != v75);
      }

      else
      {
        v74 = MEMORY[0x277D84F90];
      }

      v76 = *(v74 + 16);
      v77 = *(v29 + 2);
      v78 = v77 + v76;
      if (__OFADD__(v77, v76))
      {
        goto LABEL_167;
      }

      v79 = swift_isUniquelyReferenced_nonNull_native();
      if ((v79 & 1) != 0 && v78 <= *(v29 + 3) >> 1)
      {
        if (!*(v74 + 16))
        {
LABEL_56:

          if (v76)
          {
            goto LABEL_168;
          }

LABEL_57:
          if (++v71 == v70)
          {
            goto LABEL_114;
          }

          continue;
        }
      }

      else
      {
        if (v77 <= v78)
        {
          v80 = v77 + v76;
        }

        else
        {
          v80 = v77;
        }

        v29 = sub_2273A5A04(v79, v80, 1, v29);
        if (!*(v74 + 16))
        {
          goto LABEL_56;
        }
      }

      if ((*(v29 + 3) >> 1) - *(v29 + 2) < v76)
      {
        goto LABEL_171;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
      v30 = v161;
      swift_arrayInitWithCopy();

      if (v76)
      {
        v81 = *(v29 + 2);
        v47 = __OFADD__(v81, v76);
        v82 = v81 + v76;
        if (v47)
        {
          goto LABEL_172;
        }

        *(v29 + 2) = v82;
      }

      goto LABEL_57;
    }

    break;
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
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
}

uint64_t sub_227327D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = sub_227323D14(a2);
  if (*(v11 + 16))
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9878, &qword_227674CC8);
    v13 = sub_22766D010();
    v11 = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v70 = v13;
  sub_227328830(v11, 1, &v70);
  if (!v5)
  {
    v14 = v70;
    v15 = swift_allocObject();
    sub_227326F68(v14, a1, a3, a4, 1, 0);
    v69 = a1;
    v16 = a2;
    *(v15 + 16) = v17;
    v18 = sub_227668780();
    v19 = v18 != sub_227668780() || a3 < 4;
    v71 = v15;
    if (!v19)
    {

      sub_22732B690(v20);
      v22 = v21;

      *(v71 + 16) = v22;
      v15 = v71;
    }

    v23 = sub_227668780();
    if (v23 == sub_227668780())
    {
      v24 = *(*(v15 + 16) + 16);
      v25 = v16;
      if (!v24 && v69 >= 90 && (, v26 = sub_22732BC60(v16, v6), , v27 = v26[2], , *(v16 + 16) == 2) && v27 == 1)
      {
        sub_227326F68(v14, v69, a3, a4, 0, 1);
        v29 = v28;

        v40 = v71;
        *(v71 + 16) = v29;

        v41 = *(v40 + 16);
        v42 = MEMORY[0x277D84F90];
        v68 = *(v41 + 16);
        if (v68)
        {
          v67 = v41 + 32;

          v65 = 0;
          v43 = 0;
          v66 = v42;
          v44 = v71;
          v45 = v42;
          v64 = v41;
          while (1)
          {
            if (v43 >= *(v41 + 16))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v46 = *(v67 + 8 * v43);
            v47 = *(v46 + 16);
            if (v47)
            {
              v70 = v45;

              sub_226F1F090(0, v47, 0);
              v48 = v70;
              v49 = (v46 + 32);
              v50 = *(v70 + 16);
              do
              {
                v52 = *v49;
                v49 += 4;
                v51 = v52;
                v70 = v48;
                v53 = *(v48 + 24);
                v54 = v50 + 1;
                if (v50 >= v53 >> 1)
                {
                  sub_226F1F090((v53 > 1), v50 + 1, 1);
                  v48 = v70;
                }

                *(v48 + 16) = v54;
                *(v48 + 8 * v50++ + 32) = v51;
                --v47;
              }

              while (v47);
              v44 = v71;
              v41 = v64;
              v45 = MEMORY[0x277D84F90];
            }

            else
            {
              v54 = v45[2];

              v48 = v45;
              if (!v54)
              {

                if (!v65)
                {
                  goto LABEL_47;
                }

                goto LABEL_30;
              }
            }

            v55 = 0;
            v56 = 32;
            do
            {
              v57 = *(v48 + v56);
              v58 = __OFADD__(v55, v57);
              v55 += v57;
              if (v58)
              {
                __break(1u);
                goto LABEL_56;
              }

              v56 += 8;
              --v54;
            }

            while (v54);

            if (v55 > v69)
            {
              goto LABEL_30;
            }

            if (v65 < v55)
            {

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA8, &unk_227679920);
              v59 = swift_allocObject();
              *(v59 + 16) = xmmword_227670CD0;
              v65 = v55;
              v66 = v59;
              *(v59 + 32) = v46;
              goto LABEL_31;
            }

            if (v55 == v65)
            {
LABEL_47:
              v60 = v66;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v60 = sub_2273A5A04(0, v66[2] + 1, 1, v66);
              }

              v62 = v60[2];
              v61 = v60[3];
              v66 = v60;
              if (v62 >= v61 >> 1)
              {
                v66 = sub_2273A5A04((v61 > 1), v62 + 1, 1, v60);
              }

              v66[2] = v62 + 1;
              v66[v62 + 4] = v46;
              v45 = MEMORY[0x277D84F90];
              goto LABEL_31;
            }

LABEL_30:

LABEL_31:
            if (++v43 == v68)
            {

              v63 = v44;
              v25 = v16;
              v42 = v66;
              goto LABEL_54;
            }
          }
        }

        v63 = v71;
LABEL_54:
        *(v63 + 16) = v42;
      }

      else
      {
      }
    }

    else
    {

      v25 = v16;
    }

    v30 = *(v71 + 16);
    if (!*(v30 + 16))
    {
      goto LABEL_25;
    }

    v31 = *(v25 + 16);
    if (v31)
    {
      v32 = sub_2274CD858(*(v25 + 16), 0);
      v33 = sub_2274CF83C();
      v34 = v70;

      sub_226EBB21C(v34);
      if (v33 == v31)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v32 = MEMORY[0x277D84F90];
LABEL_23:
    v35 = sub_22732BE20(v30, v32);

    if (v35)
    {
      v36 = v71;
      v37 = *(v71 + 16);

      sub_22732840C(v36);

      return v37;
    }

LABEL_25:
    v37 = sub_227664EC0();
    sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D511E8], v37);
    swift_willThrow();
    sub_22732840C(v71);

    return v37;
  }

LABEL_57:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22732840C(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A630();

  v6 = sub_22766B380();
  v7 = sub_22766C880();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v10 = *(a1 + 16);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
    v12 = MEMORY[0x22AA98660](v10, v11);
    v14 = v13;

    v15 = sub_226E97AE8(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v6, v7, "[Algorithm]: Completed generating splits: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22732860C()
{
  v1 = OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanEnumerationUtils(uint64_t a1)
{
  result = qword_27D7BCB78;
  if (!qword_27D7BCB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273286FC(uint64_t a1)
{
  result = sub_227667370();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t *sub_227328794(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v7 = sub_22732B974(v6, a2, a3);

    return v7;
  }

  return result;
}

void sub_227328830(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);

  v10 = sub_226F491D8();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_226FE718C(v15, a2 & 1);
    v10 = sub_226F491D8();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_226FF2664();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = v21[6] + 24 * v10;
  *v22 = v6;
  *(v22 + 8) = v5;
  *(v22 + 16) = v8;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v37 != 1)
    {
      v16 = (a1 + 88);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v6 = *(v16 - 3);
        v5 = *(v16 - 2);
        v7 = *v16;
        v8 = *(v16 - 8);
        v26 = *a3;
        sub_226EB396C(v6, v5, v8);

        v27 = sub_226F491D8();
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_23;
        }

        a2 = v28;
        if (v26[3] < v31)
        {
          sub_226FE718C(v31, 1);
          v27 = sub_226F491D8();
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v34 = v33[6] + 24 * v27;
        *v34 = v6;
        *(v34 + 8) = v5;
        *(v34 + 16) = v8;
        *(v33[7] + 8 * v27) = v7;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        ++v25;
        v33[2] = v36;
        v16 += 4;
        if (v37 == v25)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_21:

    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227328C40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
  result = sub_22766D010();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(*(v4 + 56) + 8 * v16);
    sub_22766D370();
    sub_226EB396C(v18, v19, v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227328EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
  result = sub_22766D010();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v34 = *(*(v4 + 56) + 8 * v16);
    v21 = v9;
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v9 = v21;
    v22 = -1 << *(v21 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v21 + 48) + 24 * v25;
    *v30 = v19;
    *(v30 + 8) = v18;
    *(v30 + 16) = v20;
    *(*(v21 + 56) + 8 * v25) = v34;
    ++*(v21 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_227329178(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9920, &qword_2276808F0);
      v8 = sub_22766D010();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(a4[6] + 8 * v16);
        v18 = *(a4[7] + 8 * v16);
        v19 = sub_22766D360();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v17;
        *(*(v9 + 56) + 8 * v23) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_22732937C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2276637B0();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v43 - v11;
  v54 = sub_227665680();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC070, &qword_22767C440);
  result = sub_22766D010();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v13;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_2271C411C(v31, v47);
    v33 = *(v28 + 32);
    v13 = v22;
    v33(v22, v29, v21);
    sub_226F69C10(v32, v55);
    sub_226EAC06C(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
    result = sub_22766BF50();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v13, v54);
    result = sub_226F69C10(v55, *(v17 + 56) + v37 * v50);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v13;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2273297D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
  result = sub_22766D010();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(*(v4 + 56) + 8 * v16);
    v22 = v9;
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v9 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v22 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    *(*(v22 + 56) + 8 * v26) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227329A6C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v49 = sub_227665F20();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v37 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBB8, &qword_2276808F8);
  result = sub_22766D010();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v40;
  }

  v14 = 0;
  v37[1] = v7 + 16;
  v38 = result;
  v47 = v7 + 32;
  v15 = result + 64;
  v37[0] = a4;
  v39 = v7;
  v16 = v49;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v46 = *(v7 + 72);
    v22 = v41;
    (*(v7 + 16))(v41, v21 + v46 * v20, v16);
    v23 = (a4[7] + 16 * v20);
    v24 = *v23;
    v25 = v23[1];
    v43 = *(v7 + 32);
    v44 = v24;
    v43(v48, v22, v16);
    v12 = v38;
    sub_226EAC06C(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    v45 = v25;

    result = sub_22766BF50();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v15 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v12 + 48) + v29 * v46, v48, v49);
    v34 = (*(v12 + 56) + 16 * v29);
    v35 = v45;
    *v34 = v44;
    v34[1] = v35;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v13 = v42;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v40[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227329E14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  result = sub_22766D010();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_22766D370();

    sub_22766C100();
    result = sub_22766D3F0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_22732A050(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_22732A1F0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_22732CD20(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_22732A1F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v20 = result;
  v21 = a3 + 32;
  v25 = a4 + 56;
  v22 = v6;
  while (2)
  {
    v19 = v4;
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      if (v5 >= v6)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v7 = v21 + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v23 = v5 + 1;
      v24 = v5 + 1;
      sub_22766D370();
      sub_226EB396C(v9, v8, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v11 = sub_22766D3F0();
      v12 = -1 << *(a4 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v25 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_4:
      result = sub_226EB2DFC(v9, v8, v10);
LABEL_5:
      v6 = v22;
      v5 = v24;
      if (v23 == v22)
      {
        goto LABEL_17;
      }
    }

    v16 = ~v12;
    sub_226F48150();
    sub_226EC1E18();
    while ((sub_227663B20() & 1) == 0)
    {
      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v25 + 8 * (v13 >> 6))) == 0)
      {
        goto LABEL_4;
      }
    }

    result = sub_226EB2DFC(v9, v8, v10);
    v17 = v20[v14];
    v20[v14] = v17 | v15;
    if ((v17 & v15) != 0)
    {
      goto LABEL_5;
    }

    v4 = v19 + 1;
    v6 = v22;
    v5 = v24;
    if (!__OFADD__(v19, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_17:

  return sub_22726A888(v20, a2, v19, a4);
}

uint64_t sub_22732A43C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_22732CD14(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22732A5A0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_22732A6B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_22766CCB0();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_22732A738()
{
  v1 = v0;
  v4 = v0[3];
  v2 = v0 + 3;
  v3 = v4;
  v5 = v4[2];
  v67 = v2;
  if (!v5)
  {
    v51 = v1[1];
    if (v51 >= v1[2])
    {
      return;
    }

    v52 = v51 + 1;
    v1[1] = v51 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v1[3];
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v54 + 16), sub_2273A5A28, sub_22732B4D0);
    }

    else
    {
      v55 = sub_2274CD880(0, *(v54 + 24) >> 1);

      *v2 = v55;
    }

    v56 = *v1;

    v57 = sub_22766CC90();
    if (v51 >= -1)
    {
      v58 = v57;
      v59 = *(v56 + 36);
      v60 = 1 << *(v56 + 32);
      v61 = sub_22732A43C(v57, v59, 0, v52, v60, *(v56 + 36), 0, v56);
      if (v63 == 255)
      {
        v64 = v60;
      }

      else
      {
        v64 = v61;
      }

      if (v63 == 255)
      {
        v65 = v59;
      }

      else
      {
        v65 = v62;
      }

      if (v63 != 255 && (v63 & 1) != 0)
      {
        goto LABEL_94;
      }

      if (v59 == v65)
      {
        if (v64 >= v58)
        {
          v75[0] = v56;
          v75[1] = v58;
          v75[2] = v59;
          v76 = 0;
          v77 = v64;
          v78 = v65;
          v79 = 0;
          sub_227460704(v75);
          return;
        }

LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_84:
    v3 = sub_2272EC560(v3);
  }

  if (v5 > v3[2])
  {
    __break(1u);
    goto LABEL_86;
  }

  v6 = v5 - 1;
  v74 = v3 + 4;
  v7 = &v3[3 * v5 + 1];
  v69 = v5;
  v5 = *v1;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = sub_22732A6B8(*v7, v9, v10, *v1);
  v72 = v12;
  v70 = v13;
  sub_22704FE58(v8, v9, v10);
  *v7 = v11;
  *(v7 + 8) = v72;
  *(v7 + 16) = v70 & 1;
  v1[3] = v3;
  v14 = v3[2];
  if (v69 > v14)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v15 = v7;
  if (*(v7 + 16))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  if (*(v5 + 36) != *(v7 + 8))
  {
    goto LABEL_87;
  }

  if (*v7 == 1 << *(v5 + 32))
  {
    v16 = v5 + 64;
    v73 = v5 + 72;
    v66 = v1;
    v68 = v7;
    while ((*(v15 + 16) & 1) == 0)
    {
      v18 = *(v5 + 36);
      if (v18 != *(v15 + 8))
      {
        goto LABEL_78;
      }

      v19 = *v15;
      if (*v15 != 1 << *(v5 + 32))
      {
        return;
      }

      if (v6 <= 0)
      {

        sub_22732AD54(v1);
        return;
      }

      if (v6 - 1 >= v14)
      {
        goto LABEL_79;
      }

      v71 = v6 - 1;
      v20 = &v74[3 * v6 - 3];
      v21 = *v20;
      if (*v20 < 0 || v21 >= v19)
      {
        goto LABEL_80;
      }

      v22 = v20[1];
      v23 = v21 >> 6;
      v24 = *(v16 + 8 * (v21 >> 6));
      if (v18 != v22 || (v24 & (1 << v21)) == 0)
      {
        goto LABEL_81;
      }

      v26 = v24 & (-2 << (v21 & 0x3F));
      if (v26)
      {
        v19 = __clz(__rbit64(v26)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = *(v20 + 16);
        v28 = v23 << 6;
        v29 = v23 + 1;
        v30 = (v73 + 8 * v23);
        while (v29 < (v19 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_22704FE58(v21, v22, v27);
            v19 = __clz(__rbit64(v31)) + v28;
            goto LABEL_28;
          }
        }

        sub_22704FE58(v21, v22, v27);
LABEL_28:
        v1 = v66;
        v2 = v67;
      }

      *v20 = v19;
      v20[1] = v18;
      *(v20 + 16) = 0;
      *v2 = v3;
      v33 = v3[2];
      if (v33 < v6)
      {
        goto LABEL_82;
      }

      v34 = v3[2];
      v35 = v6;
      if (v6 != v33)
      {
        while (v35 < v33)
        {
          if (v35 > v34)
          {
            goto LABEL_71;
          }

          v36 = &v74[3 * v35];
          v37 = *(v36 - 3);
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }

          v38 = 1 << *(v5 + 32);
          if (v37 >= v38)
          {
            goto LABEL_72;
          }

          v39 = v37 >> 6;
          v40 = *(v16 + 8 * (v37 >> 6));
          if (((v40 >> v37) & 1) == 0)
          {
            goto LABEL_73;
          }

          v41 = *(v36 - 2);
          if (*(v5 + 36) != v41)
          {
            goto LABEL_74;
          }

          v42 = v40 & (-2 << (v37 & 0x3F));
          if (v42)
          {
            v38 = __clz(__rbit64(v42)) | v37 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v43 = v39 << 6;
            v44 = v39 + 1;
            v45 = (v73 + 8 * v39);
            while (v44 < (v38 + 63) >> 6)
            {
              v47 = *v45++;
              v46 = v47;
              v43 += 64;
              ++v44;
              if (v47)
              {
                v38 = __clz(__rbit64(v46)) + v43;
                break;
              }
            }
          }

          if (v35 >= v34)
          {
            goto LABEL_75;
          }

          v48 = *v36;
          v49 = v36[1];
          v50 = *(v36 + 16);
          *v36 = v38;
          v36[1] = v41;
          *(v36 + 16) = 0;
          sub_22704FE58(v48, v49, v50);
          *v2 = v3;
          v6 = v3[2];
          if (v35 >= v6)
          {
            goto LABEL_76;
          }

          if (v36[2])
          {
            goto LABEL_91;
          }

          if (*(v5 + 36) != *(v36 + 2))
          {
            goto LABEL_77;
          }

          if (++v35 != v33)
          {
            v34 = v3[2];
            if (*v36 != 1 << *(v5 + 32))
            {
              continue;
            }
          }

          goto LABEL_9;
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_9:
      v14 = v6;
      v15 = v68;
      v17 = v69 > v6;
      v6 = v71;
      if (v17)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_92;
  }
}

unint64_t *sub_22732AC98(unint64_t *result)
{
  v1 = result[1];
  if (v1 < result[2])
  {
    v2 = result;
    v3 = (result + 3);
    result[1] = v1 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v5 + 16), sub_2273A5610, sub_22732B428);
    }

    else
    {
      *v3 = sub_2274CD830(0, *(v5 + 24) >> 1);
    }

    v6 = sub_2273FC414(v2[1], 0, *(*v2 + 16));
    return sub_227460500(v6, v7);
  }

  return result;
}

uint64_t *sub_22732AD54(uint64_t *result)
{
  v1 = result[1];
  if (v1 < result[2])
  {
    v2 = result;
    v3 = result + 3;
    result[1] = v1 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v5 + 16), sub_2273A5A28, sub_22732B4D0);
    }

    else
    {
      *v3 = sub_2274CD880(0, *(v5 + 24) >> 1);
    }

    v6 = *v2;
    swift_bridgeObjectRetain_n();
    v7 = sub_22766CC90();
    v8 = *(v6 + 36);
    v9 = *(v6 + 32);

    v10 = v2[1];
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_22732A43C(v7, v8, 0, v10, 1 << v9, v8, 0, v6);
      if (v12 == 255)
      {
        v13 = (1 << v9);
      }

      else
      {
        v13 = result;
      }

      if (v12 == 255)
      {
        v14 = v8;
      }

      else
      {
        v14 = v11;
      }

      if (v12 != 255 && (v12 & 1) != 0)
      {
        goto LABEL_21;
      }

      if (v8 == v14)
      {
        if (v13 >= v7)
        {
          v15[0] = v6;
          v15[1] = v7;
          v15[2] = v8;
          v16 = 0;
          v17 = v13;
          v18 = v14;
          v19 = 0;
          return sub_227460704(v15);
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_22732AEC8(uint64_t a1)
{
  v2 = sub_22718C9FC(8, 0, 1, a1);
  v3 = sub_22718C9FC(0, 0, 1, a1);
  v4 = sub_22718C9FC(13, 0, 1, a1);
  v5 = *(a1 + 16);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        if (v5 == 3)
        {
          return 3;
        }

        if (v5 >= 4)
        {
          sub_226F4D188(&unk_283A925F8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          swift_arrayDestroy();
          return 2;
        }

        return 1;
      }

      if (v5 == 2)
      {
        return 2;
      }

      if (v5 >= 3)
      {
        v7 = &unk_283A926D0;
        goto LABEL_27;
      }

      return 1;
    }

    if (v4)
    {
      if (v5 == 2)
      {
        return 2;
      }

      if (v5 < 3)
      {
        return 1;
      }

      v8 = &unk_283A92720;
    }

    else
    {
      if (v5 < 2)
      {
        return 1;
      }

      v8 = &unk_283A92698;
    }

LABEL_21:
    sub_226F4D188(v8);
    sub_226E97D1C(v8 + 32, &qword_27D7B8560, &unk_227671560);
    return 2;
  }

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  if ((v4 & 1) == 0)
  {
    if (v5 < 2)
    {
      return 1;
    }

    v8 = &unk_283A92660;
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    return 2;
  }

  if (v5 >= 3)
  {
    v7 = &unk_283A92758;
LABEL_27:
    sub_226F4D188(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    swift_arrayDestroy();
    return 2;
  }

  return 1;
}

uint64_t sub_22732B0A8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    do
    {
      v22 = v2;
      v4 = v3;
      while (1)
      {
        if (v4 >= v1)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v3 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_27;
        }

        swift_getKeyPath();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        sub_226E9CFD0(&qword_27D7BCB88, &qword_27D7B87B8, &qword_227680850, MEMORY[0x277D83970]);
        sub_22766C200();

        if (v27 != 255)
        {
          break;
        }

        result = sub_22732BF30(v23, v25, v26, 255);
        ++v4;
        if (v3 == v1)
        {
          v2 = v22;
          goto LABEL_16;
        }
      }

      v5 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A58D4(0, *(v22 + 16) + 1, 1, v22);
        v5 = result;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      v8 = v5;
      v9 = v23;
      if (v7 >= v6 >> 1)
      {
        result = sub_2273A58D4((v6 > 1), v7 + 1, 1, v5);
        v11 = v25;
        v10 = v26;
        v8 = result;
        v9 = v23;
      }

      else
      {
        v10 = v26;
        v11 = v25;
      }

      *(v8 + 16) = v7 + 1;
      v12 = v8 + 32 * v7;
      v2 = v8;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = v10;
      *(v12 + 56) = v27 & 1;
    }

    while (v3 != v1);
  }

LABEL_16:
  v13 = *(v2 + 16);
  if (v13)
  {
    v24 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v13, 0);
    v14 = v24;
    v15 = *(v24 + 16);
    v16 = 32;
    do
    {
      v17 = *(v2 + v16);
      v18 = *(v24 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_226F1F090((v18 > 1), v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      *(v24 + 8 * v15 + 32) = v17;
      v16 += 32;
      ++v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v19 = sub_2274CFCF0(v14);
  v21 = v20;

  if (v21)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

unint64_t sub_22732B360(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  result = sub_2273FC414(v5, 0, *(a1 + 16));
  v8 = (v7 - result);
  if (__OFSUB__(v7, result))
  {
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v9 = result;
      v10 = v7;
      v11 = sub_2274CD830(v7 - result, 0);
      if (sub_22745819C(v12, (v11 + 4), v8, v9, v10) != v8)
      {
        __break(1u);
      }
    }

    return a1;
  }

  return result;
}

unint64_t sub_22732B428(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22732B4D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBB0, &qword_2276808D8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  v14 = 24 * v12;
  if (result != v13 || result >= v13 + v14)
  {
    result = memmove(result, v13, v14);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v16;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22732B5B8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}