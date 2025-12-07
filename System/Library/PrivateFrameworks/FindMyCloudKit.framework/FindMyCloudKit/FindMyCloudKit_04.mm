uint64_t sub_24AD5986C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AD5AC9C;

  return sub_24AD51020(v2, v3, v4, v5, v6);
}

unint64_t sub_24AD59928()
{
  result = qword_281064A40;
  if (!qword_281064A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A40);
  }

  return result;
}

uint64_t sub_24AD5997C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD599EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AD59A54(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24AD0C594;

  return sub_24AD4E61C(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_24AD59B2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AD5AC9C;

  return sub_24AD4F85C(v2, v3, v5, v4);
}

uint64_t sub_24AD59BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C594;

  return sub_24AD3FFD0(a1, v4, v5, v6);
}

uint64_t sub_24AD59CA0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);

  return sub_24AD4E1EC(a1, a2);
}

uint64_t sub_24AD59D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C594;

  return sub_24AD3EB0C(a1, v4, v5, v6);
}

uint64_t sub_24AD59DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C594;

  return sub_24AD51B2C(a1, v4);
}

uint64_t objectdestroy_4Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AD59EF0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD0C594;

  return sub_24AD4BF40(a1, v7, v4, v5, v6);
}

uint64_t sub_24AD59FB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C594;

  return sub_24AD52508(a1, v4);
}

uint64_t sub_24AD5A06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C594;

  return sub_24AD4C72C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AD5A140()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0BDA0;

  return sub_24AD4DCA0(v2);
}

uint64_t sub_24AD5A1D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD5AC9C;

  return sub_24AD4D7B4(v2);
}

uint64_t objectdestroy_151Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24AD5A2F4(int a1, void *a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);

  return sub_24AD4B2E0(a1, a2, a3 & 1);
}

uint64_t sub_24AD5A3D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD420D0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24AD5A540(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24AD5A588(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C360;

  return sub_24AD41CB8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_232Tm()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_235Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);
  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

uint64_t sub_24AD5A938(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD40F98(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_239Tm()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AD5AB70(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C594;

  return sub_24AD40B80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24AD5ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C360;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t CloudBacked.creationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  v5[7] = swift_task_alloc();
  v6 = sub_24AD5E404();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5AE80, 0, 0);
}

uint64_t sub_24AD5AE80()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v4 + 40))(v5, v4);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v4 + 48))(v5, v4);
  v6 = sub_24AD5EB14();
  v0[11] = v6;
  v7 = (*(v4 + 24))(v5, v4);
  v9 = v8;
  v0[12] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24AD5B024;
  v11 = v0[7];

  return sub_24AD17754(v11, v7, v9, v6);
}

uint64_t sub_24AD5B024()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24AD5B2CC;
  }

  else
  {
    v2 = sub_24AD5B154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD5B154()
{
  v1 = *(v0 + 56);
  v2 = sub_24AD5E3C4();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 88);
    sub_24AD5DA80(v1);
    sub_24AD3514C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 16);

    (*(v3 + 32))(v7, v1, v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AD5B2CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD5B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C594;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t CloudBacked.modificationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  v5[7] = swift_task_alloc();
  v6 = sub_24AD5E404();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5B504, 0, 0);
}

uint64_t sub_24AD5B504()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v4 + 40))(v5, v4);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v4 + 48))(v5, v4);
  v6 = sub_24AD5EB14();
  v0[11] = v6;
  v7 = (*(v4 + 24))(v5, v4);
  v9 = v8;
  v0[12] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24AD5B6A8;
  v11 = v0[7];

  return sub_24AD17AFC(v11, v7, v9, v6);
}

uint64_t sub_24AD5B6A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24AD5E0BC;
  }

  else
  {
    v2 = sub_24AD5E0C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD5B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD5B884;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_24AD5B884(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t CloudBacked.recordChangeTag(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_24AD5E404();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5BA58, 0, 0);
}

uint64_t sub_24AD5BA58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v4 + 40))(v5, v4);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v4 + 48))(v5, v4);
  v6 = sub_24AD5EB14();
  v0[13] = v6;
  v7 = (*(v4 + 24))(v5, v4);
  v9 = v8;
  v0[14] = v8;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_24AD5BBF0;

  return sub_24AD17DDC(v7, v9, v6);
}

uint64_t sub_24AD5BBF0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_24AD5BE20;
  }

  else
  {
    v5 = sub_24AD5BD28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD5BD28()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 24);

    v3 = *(v0 + 8);

    return v3(v2, v1);
  }

  else
  {
    v5 = *(v0 + 104);
    sub_24AD3514C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AD5BE20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD5BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD5BF38;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_24AD5BF38(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CloudBacked.ckRecord(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_24AD5E404();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5C0FC, 0, 0);
}

uint64_t sub_24AD5C0FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v9 = v0[3];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v4 + 40))(v5, v4);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v4 + 48))(v5, v4);
  v0[10] = sub_24AD5EB14();
  v6 = *(v4 + 24);
  v0[11] = v6;
  v0[12] = (v4 + 24) & 0xFFFFFFFFFFFFLL | 0xDC87000000000000;
  v0[13] = v6(v5, v4);
  v0[14] = v7;

  return MEMORY[0x2822009F8](sub_24AD5C260, v9, 0);
}

uint64_t sub_24AD5C260()
{
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_24AD5C308;
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  return sub_24ACF6588(v3, v2, v4);
}

uint64_t sub_24AD5C308(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_24AD5C680;
  }

  else
  {

    v5 = sub_24AD5C42C;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD5C42C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[5];
    v4 = v0[4];
    v0[2] = v1;
    (*(v3 + 96))(v0 + 2, v4);
    v5 = v0[2];
    v6 = [v5 valueStore];
    [v6 resetChangedKeys];

    v7 = [v5 encryptedValueStore];
    [v7 resetChangedKeys];
  }

  else
  {
    if (qword_281064A68 != -1)
    {
      swift_once();
    }

    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_281065430);
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24ACF2000, v9, v10, "Failed to fetch CKRecord -- creating a new one", v11, 2u);
      MEMORY[0x24C22F400](v11, -1, -1);
    }

    v12 = v0[11];
    v13 = v0[10];
    v14 = v0[5];
    v15 = v0[4];

    sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
    v12(v15, v14);
    v16 = v13;
    v0[2] = sub_24AD5EBD4();
    (*(v14 + 96))(v0 + 2, v15, v14);

    v5 = v0[2];
  }

  v17 = v0[1];

  return v17(v5);
}

uint64_t sub_24AD5C680()
{

  return MEMORY[0x2822009F8](sub_24AD5C6E8, 0, 0);
}

uint64_t sub_24AD5C6E8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_24AD5C754(void *a1)
{
  v1 = a1;
  CKRecord.description.getter();

  v2 = sub_24AD5E834();

  return v2;
}

uint64_t CKRecord.description.getter()
{
  v1 = v0;
  v72 = *MEMORY[0x277D85DE8];
  if (!os_variant_has_internal_diagnostics())
  {
    return 0x657463616465723CLL;
  }

  *&v66 = v0;
  v68 = 0;
  v69 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6358, &qword_24AD614D8);
  sub_24AD5EE64();
  v3 = v68;
  v2 = v69;
  v4 = [v0 recordID];
  v5 = [v4 zoneID];

  v6 = [v0 recordID];
  v7 = [v6 recordName];

  v8 = sub_24AD5E844();
  v10 = v9;

  v68 = v8;
  v69 = v10;
  MEMORY[0x24C22E570](10298, 0xE200000000000000);
  v11 = [v5 zoneName];
  v12 = sub_24AD5E844();
  v14 = v13;

  MEMORY[0x24C22E570](v12, v14);

  MEMORY[0x24C22E570](58, 0xE100000000000000);
  v15 = [v5 ownerName];
  v16 = sub_24AD5E844();
  v18 = v17;

  MEMORY[0x24C22E570](v16, v18);

  MEMORY[0x24C22E570](41, 0xE100000000000000);
  v19 = v69;
  v63 = v68;
  v20 = [v1 encryptedValues];
  swift_getObjectType();
  v21 = [v20 changedKeys];
  v22 = sub_24AD5E8C4();

  v23 = sub_24AD3774C(v22);

  v24 = [v20 allKeys];
  v25 = sub_24AD5E8C4();

  v68 = v25;

  sub_24AD5CF00(&v68);

  v26 = v68;
  v27 = [v1 recordChangeTag];
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = sub_24AD5E844();
    v32 = v31;

    v68 = 0x3D676174202CLL;
    v69 = 0xE600000000000000;
    v33 = v30;
    v26 = v29;
    MEMORY[0x24C22E570](v33, v32);

    v34 = v69;
    v62 = v68;
    v35 = *(v29 + 2);
    if (v35)
    {
LABEL_4:
      v57 = v34;
      v58 = v19;
      v59 = v3;
      v60 = v2;
      v61 = v5;
      v65 = MEMORY[0x277D84F90];
      sub_24AD33600(0, v35, 0);
      v36 = 0;
      v37 = v65;
      v64 = v26 + 32;
      v38 = v23 + 56;
      while (1)
      {
        v39 = &v64[16 * v36];
        v40 = *v39;
        v41 = *(v39 + 1);
        if (*(v23 + 16))
        {
          sub_24AD5F074();

          sub_24AD5E874();
          v42 = sub_24AD5F094();
          v43 = -1 << *(v23 + 32);
          v44 = v42 & ~v43;
          if ((*(v38 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              v46 = (*(v23 + 48) + 16 * v44);
              v47 = *v46 == v40 && v46[1] == v41;
              if (v47 || (sub_24AD5EF84() & 1) != 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v38 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v68 = v40;
            v69 = v41;

            MEMORY[0x24C22E570](42, 0xE100000000000000);
            v48 = v68;
            v49 = v69;
            goto LABEL_18;
          }
        }

        else
        {
        }

LABEL_16:

        v48 = v40;
        v49 = v41;
LABEL_18:
        MEMORY[0x24C22E570](v48, v49);

        MEMORY[0x24C22E570](2112800, 0xE300000000000000);
        sub_24AD5EBA4();
        if (v67)
        {
          sub_24AD5DB4C(&v66, &v68);
        }

        else
        {
          v70 = MEMORY[0x277D837D0];
          v71 = MEMORY[0x277CBBE08];
          v68 = 0;
          v69 = 0xE000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6360, &qword_24AD614E0);
        sub_24AD5EE64();
        __swift_destroy_boxed_opaque_existential_1Tm(&v68);

        v51 = *(v65 + 16);
        v50 = *(v65 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_24AD33600((v50 > 1), v51 + 1, 1);
        }

        ++v36;
        *(v65 + 16) = v51 + 1;
        v52 = v65 + 16 * v51;
        *(v52 + 32) = 0;
        *(v52 + 40) = 0xE000000000000000;
        if (v36 == v35)
        {

          v2 = v60;
          v5 = v61;
          v19 = v58;
          v3 = v59;
          v34 = v57;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v62 = 0;
    v34 = 0xE000000000000000;
    v35 = *(v26 + 2);
    if (v35)
    {
      goto LABEL_4;
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_28:
  v68 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6250, &qword_24AD609C8);
  sub_24AD5DAE8();
  v54 = sub_24AD5E814();
  v56 = v55;

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_24AD5ED34();

  v68 = 0x726F6365524B433CLL;
  v69 = 0xEB00000000203A64;
  MEMORY[0x24C22E570](v3, v2);

  MEMORY[0x24C22E570](0x64726F636572203BLL, 0xEB000000003D6449);
  MEMORY[0x24C22E570](v63, v19);

  MEMORY[0x24C22E570](v62, v34);

  MEMORY[0x24C22E570](31520, 0xE200000000000000);
  MEMORY[0x24C22E570](v54, v56);

  MEMORY[0x24C22E570](15997, 0xE200000000000000);
  swift_unknownObjectRelease();

  return v68;
}

uint64_t sub_24AD5CF00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD5D9D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24AD5CF6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24AD5CF6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24AD5EF44();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24AD5E8F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24AD5D134(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24AD5D064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24AD5D064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24AD5EF84(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AD5D134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24AD5D9C4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_24AD5D710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_24AD5EF84();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24AD5EF84();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24AD2EB24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24AD2EB24((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_24AD5D710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24AD5D9C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24AD5D938(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_24AD5EF84(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24AD5D710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24AD5EF84() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_24AD5EF84() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_24AD5D938(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24AD5D9C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t _s14FindMyCloudKit0C6BackedPAAE4zoneSo14CKRecordZoneIDCvg_0(uint64_t a1, uint64_t a2)
{
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  (*(a2 + 32))(a1, a2);
  sub_24AD5E844();
  return sub_24AD5EB74();
}

uint64_t sub_24AD5DA80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AD5DAE8()
{
  result = qword_27EFA6368;
  if (!qword_27EFA6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA6250, &qword_24AD609C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6368);
  }

  return result;
}

uint64_t sub_24AD5DB4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t dispatch thunk of CloudBacked.creationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C360;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudBacked.modificationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C594;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudBacked.recordChangeTag(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD57E80;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudBacked.ckRecord(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD35664;

  return v9(a1, a2, a3);
}