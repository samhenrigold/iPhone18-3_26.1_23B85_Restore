uint64_t sub_23826469C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyVenue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238264700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyVenue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238264764(uint64_t a1)
{
  v2 = type metadata accessor for EnergyVenue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2382648BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  [*(v0 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  return sub_238279180();
}

uint64_t objectdestroy_41Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_238264A74(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238263878(v8, v9, a2, v7, v2 + v6, v10);
}

uint64_t sub_238264B54()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238264D18;

  return sub_23825F914(v3);
}

uint64_t sub_238264D18()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  *(v1 + 57) = 0;

  return MEMORY[0x2822009F8](sub_238264E30, 0, 0);
}

uint64_t sub_238264E30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = v0 + 57;
  v2[4] = sub_23826207C;
  v2[5] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_238264F40;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238266F7C, v2, v4);
}

uint64_t sub_238264F40()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_238265078()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_23826523C;

  return sub_23825F914(v3);
}

uint64_t sub_23826523C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_238265350, 0, 0);
}

uint64_t sub_238265350()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  *(v2 + 32) = sub_23826218C;
  *(v2 + 40) = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_238265460;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_23826783C, v2, v4);
}

uint64_t sub_238265460()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_238265594;
  }

  else
  {

    v2 = sub_23826557C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238265594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238265618()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 40) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2382657DC;

  return sub_23825F914(v3);
}

uint64_t sub_2382657DC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2382658F0, 0, 0);
}

uint64_t sub_2382658F0()
{
  v1 = v0[4];
  v0[3] = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = v0 + 3;
  v2[4] = sub_238261918;
  v2[5] = 0;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7DC0, &qword_23827F880);
  *v3 = v0;
  v3[1] = sub_238265A1C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_23826730C, v2, v4);
}

uint64_t sub_238265A1C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238265B5C, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_238265B5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238265BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_238278BC0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238265C88, 0, 0);
}

uint64_t sub_238265C88()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 64) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_238265E4C;

  return sub_23825F914(v3);
}

uint64_t sub_238265E4C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_238265F60, 0, 0);
}

uint64_t sub_238265F60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = sub_238266D28;
  *(v7 + 24) = v6;
  *(v0 + 113) = 0;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v8[2] = v4;
  v8[3] = v0 + 113;
  v8[4] = sub_238266DB0;
  v8[5] = v7;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_238266110;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238266DEC, v8, v10);
}

uint64_t sub_238266110()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238266278, 0, 0);
  }

  else
  {

    v3 = *(v2 + 112);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_238266278()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2382662F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 112) = a1;
  v4 = sub_238278BC0();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 + 64);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382663C0, 0, 0);
}

uint64_t sub_2382663C0()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 64) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_238266584;

  return sub_23825F914(v3);
}

uint64_t sub_238266584()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_238266698, 0, 0);
}

uint64_t sub_238266698()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 112);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  v6 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = 6;
  *(v8 + 32) = sub_238266AB4;
  *(v8 + 40) = v7;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_238266828;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_238266B40, v8, v10);
}

uint64_t sub_238266828()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2382669B4;
  }

  else
  {

    v2 = sub_238266944;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238266944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2382669B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238266A2C()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_238266AB4(void **a1, uint64_t a2, uint64_t a3)
{
  sub_238278BC0();
  v7 = *(v3 + 16);

  sub_238261E34(a1, a2, a3, v7);
}

uint64_t sub_238266B64(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_238267968(a1, v4, v5, v6);
}

uint64_t sub_238266C18(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
  v3 = *(v1 + 16);

  return sub_2382679E8(a1, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_238266D28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_238278BC0();

  sub_238261B74(a1, a2, a3);
}

uint64_t sub_238266E2C(char *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v8 = *(v7 + *(v5 + 64));
  v9 = *a1;

  return sub_238263C74(v9, a2, v6, v7, v8);
}

uint64_t sub_238266EDC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_238266F1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_56Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64) + v6;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 1, v5 | 7);
}

uint64_t sub_238267098(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  [*(v3 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_238279180();
}

uint64_t objectdestroy_62Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23826722C(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v3 = *(v1 + 16);

  return sub_238264094(a1, v3);
}

uint64_t sub_2382672AC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_238267320(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238264168(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_131Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382674B0(void **a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *a1;

  return sub_238263BB8(v9, a2, v7, v2 + v6, v8);
}

uint64_t sub_23826756C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2382675B0(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2382640F8(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_149Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_238267744(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *v8;
  v12 = *(v8 + 8);

  return sub_2382637A8(v9, v10, a2, v7, v2 + v6, v11, v12);
}

uint64_t sub_2382678D4(int a1, id a2)
{
  [a2 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  return sub_238279180();
}

uint64_t sub_238267920(void *a1)
{
  [a1 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  return sub_238279180();
}

uint64_t sub_238267968(int a1, id a2, uint64_t a3, char a4)
{
  [a2 invalidate];
  sub_238241158();
  swift_allocError();
  *v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
  return sub_238279170();
}

uint64_t sub_2382679E8(void *a1, id a2)
{
  [a2 invalidate];
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
    return sub_238279180();
  }
}

uint64_t EKXPCValueContainer<>.init(_coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_238279300();
  v33 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  v35 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - v17;
  sub_238267DB8();
  v19 = sub_2382792E0();
  if (v19)
  {
    v20 = v19;
    v31[0] = a2;
    v31[1] = v5;
    v32 = a3;
    v36 = a1;
    v21 = sub_238278B30();
    v23 = v22;
    v24 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v25 = sub_238268008();
    sub_23824FCC4(v21, v23);
    if (v25)
    {
      sub_2382792D0();
      v27 = v35;
      v28 = (*(v35 + 48))(v13, 1, AssociatedTypeWitness);
      v29 = v36;
      if (v28 != 1)
      {
        (*(v27 + 32))(v18, v13, AssociatedTypeWitness);
        (*(v27 + 16))(v16, v18, AssociatedTypeWitness);
        v30 = (*(v32 + 24))(v16, v31[0]);
        (*(v27 + 8))(v18, AssociatedTypeWitness);
        [v25 finishDecoding];

        return v30;
      }

      (*(v33 + 8))(v13, v10);
      [v25 finishDecoding];
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_238267DB8()
{
  result = qword_2814F0860;
  if (!qword_2814F0860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0860);
  }

  return result;
}

void EKXPCValueContainer<>.encode(_with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  (*(a3 + 16))(a2, a3);
  sub_2382792C0();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, AssociatedTypeWitness);
  [v12 finishEncoding];
  v15 = [v12 encodedData];
  if (v15)
  {
    v16 = v15;
    v17 = sub_238278FF0();
    [a1 encodeObject:v16 forKey:v17];
  }

  else
  {
    __break(1u);
    (*(v13 + 8))(v11, AssociatedTypeWitness);
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_238268008()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_238278B20();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_238278AF0();

    swift_willThrow();
  }

  return v2;
}

id XPCElectricalLoadEventContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void _s9EnergyKit31XPCElectricityGuidanceContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for ElectricityGuidance(0);
  sub_238269D28(&unk_27DEF7E00, type metadata accessor for ElectricityGuidance, &protocol conformance descriptor for ElectricityGuidance);
  sub_2382792C0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238278FF0();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s9EnergyKit36XPCElectricityGuidanceQueryContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2382699E8();
  sub_2382792C0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238278FF0();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s9EnergyKit23XPCEnergyVenueContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for EnergyVenue(0);
  sub_238269D28(&qword_27DEF7DD0, type metadata accessor for EnergyVenue, &protocol conformance descriptor for EnergyVenue);
  sub_2382792C0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238278FF0();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_238268578(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  sub_2382792C0();

  [v9 finishEncoding];
  v10 = [v9 encodedData];
  if (v10)
  {
    v11 = v10;
    v12 = sub_238278FF0();
    [a1 encodeObject:v11 forKey:v12];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id XPCElectricalLoadEventContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCElectricalLoadEventContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238268A9C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricalLoadEventContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238268A9C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCElectricalLoadEventContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricalLoadEventContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_238268A4C(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_238268A9C(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7E18, &unk_23827F940);
      sub_238269C74();
      sub_2382792D0();
      if (v14)
      {
        EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
        v11 = objc_allocWithZone(EventContainer);
        *&v11[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = EventContainer;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_238268C60()
{
  result = qword_27DEF7D98;
  if (!qword_27DEF7D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7D90, &unk_23827F920);
    sub_238269D28(&unk_27DEF7DA0, type metadata accessor for SandboxExtension, &protocol conformance descriptor for SandboxExtension);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7D98);
  }

  return result;
}

id sub_238268D14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ElectricityGuidance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_238267DB8();
  v12 = sub_2382792E0();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_238278B30();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v18 = sub_238268008();
    sub_23824FCC4(v14, v16);
    if (v18)
    {
      sub_238269D28(&qword_27DEF7E10, type metadata accessor for ElectricityGuidance, &protocol conformance descriptor for ElectricityGuidance);
      sub_2382792D0();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_238269A90(v4, v11, type metadata accessor for ElectricityGuidance);
        sub_238269AF8(v11, v9, type metadata accessor for ElectricityGuidance);
        v20 = type metadata accessor for XPCElectricityGuidanceContainer(0);
        v21 = objc_allocWithZone(v20);
        sub_238269AF8(v9, v21 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value, type metadata accessor for ElectricityGuidance);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_238269B60(v9, type metadata accessor for ElectricityGuidance);
        sub_238269B60(v11, type metadata accessor for ElectricityGuidance);
        [v18 finishDecoding];

        return v22;
      }

      sub_23824C65C(v4, &qword_27DEF7CB8, &qword_23827F748);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_238269034(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      sub_238269A3C();
      sub_2382792D0();
      v10 = v16[1];
      if (v16[0] != 2)
      {
        Container = type metadata accessor for XPCElectricityGuidanceQueryContainer();
        v12 = objc_allocWithZone(Container);
        v13 = &v12[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
        *v13 = v16[0] & 1;
        v13[1] = v10 & 1;
        v15.receiver = v12;
        v15.super_class = Container;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        return v14;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_2382691B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for EnergyVenue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_238267DB8();
  v12 = sub_2382792E0();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_238278B30();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v18 = sub_238268008();
    sub_23824FCC4(v14, v16);
    if (v18)
    {
      sub_238269D28(&unk_27DEF7DE0, type metadata accessor for EnergyVenue, &protocol conformance descriptor for EnergyVenue);
      sub_2382792D0();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_238269A90(v4, v11, type metadata accessor for EnergyVenue);
        sub_238269AF8(v11, v9, type metadata accessor for EnergyVenue);
        v20 = type metadata accessor for XPCEnergyVenueContainer(0);
        v21 = objc_allocWithZone(v20);
        sub_238269AF8(v9, v21 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value, type metadata accessor for EnergyVenue);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_238269B60(v9, type metadata accessor for EnergyVenue);
        sub_238269B60(v11, type metadata accessor for EnergyVenue);
        [v18 finishDecoding];

        return v22;
      }

      sub_23824C65C(v4, &qword_27DEF7CE0, &unk_23827F930);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_2382694D4(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7DC0, &qword_23827F880);
      sub_238269934();
      sub_2382792D0();
      if (v14)
      {
        v10 = type metadata accessor for XPCEnergyVenuesContainer();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_238269650(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D90, &unk_23827F920);
      sub_2382697CC();
      sub_2382792D0();
      if (v14)
      {
        v10 = type metadata accessor for XPCSandboxExtensionContainer();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_2382697CC()
{
  result = qword_27DEF7DB0;
  if (!qword_27DEF7DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7D90, &unk_23827F920);
    sub_238269D28(&qword_27DEF7DB8, type metadata accessor for SandboxExtension, &protocol conformance descriptor for SandboxExtension);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DB0);
  }

  return result;
}

unint64_t sub_238269880()
{
  result = qword_27DEF7DC8;
  if (!qword_27DEF7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7DC0, &qword_23827F880);
    sub_238269D28(&qword_27DEF7DD0, type metadata accessor for EnergyVenue, &protocol conformance descriptor for EnergyVenue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DC8);
  }

  return result;
}

unint64_t sub_238269934()
{
  result = qword_27DEF7DD8;
  if (!qword_27DEF7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7DC0, &qword_23827F880);
    sub_238269D28(&unk_27DEF7DE0, type metadata accessor for EnergyVenue, &protocol conformance descriptor for EnergyVenue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DD8);
  }

  return result;
}

unint64_t sub_2382699E8()
{
  result = qword_27DEF7DF0;
  if (!qword_27DEF7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DF0);
  }

  return result;
}

unint64_t sub_238269A3C()
{
  result = qword_27DEF7DF8;
  if (!qword_27DEF7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DF8);
  }

  return result;
}

uint64_t sub_238269A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238269AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238269B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238269BC0()
{
  result = qword_27DEF7E20;
  if (!qword_27DEF7E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7E18, &unk_23827F940);
    sub_238269D28(&qword_27DEF7E28, type metadata accessor for ElectricalLoadEvent, &protocol conformance descriptor for ElectricalLoadEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7E20);
  }

  return result;
}

unint64_t sub_238269C74()
{
  result = qword_27DEF7E30;
  if (!qword_27DEF7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7E18, &unk_23827F940);
    sub_238269D28(&unk_27DEF7E38, type metadata accessor for ElectricalLoadEvent, &protocol conformance descriptor for ElectricalLoadEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7E30);
  }

  return result;
}

uint64_t sub_238269D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id XPCElectricityGuidanceContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23825BBE8(a1, v3 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

id XPCElectricityGuidanceContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_23825BBE8(a1, v1 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

id XPCElectricityGuidanceContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238268D14(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricityGuidanceContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238268D14(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCElectricityGuidanceContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricityGuidanceContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826A184(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23825BBE8(a1, v3 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

uint64_t type metadata accessor for XPCElectricityGuidanceContainer(uint64_t a1)
{
  result = qword_27DEF7E48;
  if (!qword_27DEF7E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826A24C(uint64_t a1)
{
  result = type metadata accessor for ElectricityGuidance(319);
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

id XPCElectricityGuidanceQueryContainer.__allocating_init(value:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = *a1;
  v5[1] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

void XPCElectricityGuidanceQueryContainer.value.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value);
  a1[1] = v2;
}

id XPCElectricityGuidanceQueryContainer.init(value:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[1];
  v5 = &v1[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = *a1;
  v5[1] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCElectricityGuidanceQueryContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238269034(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricityGuidanceQueryContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238269034(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCElectricityGuidanceQueryContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricityGuidanceQueryContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23826A640(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value);
  a1[1] = v2;
}

id sub_23826A660(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = v2;
  v5[1] = v3;
  v7.receiver = v4;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCEnergyVenueContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_238264700(a1, v3 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

id XPCEnergyVenueContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_238264700(a1, v1 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

id XPCEnergyVenueContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_2382691B4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCEnergyVenueContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_2382691B4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCEnergyVenueContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEnergyVenueContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826AB28(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_238264700(a1, v3 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

uint64_t type metadata accessor for XPCEnergyVenueContainer(uint64_t a1)
{
  result = qword_27DEF7E68;
  if (!qword_27DEF7E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826ABF0(uint64_t a1)
{
  result = type metadata accessor for EnergyVenue(319);
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

id XPCEnergyVenuesContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEnergyVenuesContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEnergyVenuesContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_2382694D4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCEnergyVenuesContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_2382694D4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCEnergyVenuesContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEnergyVenuesContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826AFD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238269650(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCSandboxExtensionContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238269650(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCSandboxExtensionContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCSandboxExtensionContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826B3A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t SandboxExtension.__allocating_init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SandboxExtension.init(extensionClass:fileURL:context:)(a1, a2, a3);
  return v6;
}

uint64_t SandboxExtensionClass.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

void *SandboxExtension.Context.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = j__sandbox_extension_consume;
  result[3] = 0;
  result[4] = j__sandbox_extension_release;
  result[5] = 0;
  result[6] = j__sandbox_extension_issue_file;
  result[7] = 0;
  return result;
}

uint64_t SandboxExtension.__allocating_init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 48) = 1;
  *(v8 + 16) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = 0;
  v9 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v10 = sub_238278B10();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  return v8;
}

uint64_t SandboxExtension.init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 1;
  *(v4 + 16) = a4;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  v6 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v7 = sub_238278B10();
  (*(*(v7 - 8) + 32))(v4 + v6, a3, v7);
  return v4;
}

uint64_t SandboxExtension.init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  result = swift_beginAccess();
  v9 = *(a3 + 48);
  if (v7)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_5:

  sub_238279050();
  sub_238278B00();
  v19 = a2;
  v10 = *MEMORY[0x277D861E8];
  v11 = sub_238279010();

  v12 = sub_238279010();

  v13 = v9(v11 + 32, v12 + 32, v10);

  if (v13)
  {
    *(v4 + 24) = sub_238279050();
    *(v4 + 32) = v14;
    free(v13);
    v15 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
    v16 = sub_238278B10();
    (*(*(v16 - 8) + 32))(v4 + v15, v19, v16);
    *(v4 + 16) = a3;
  }

  else
  {
    sub_23826D08C();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 1;
    swift_willThrow();

    v18 = sub_238278B10();
    (*(*(v18 - 8) + 8))(v19, v18);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);
    swift_beginAccess();
    v3 = *(v2 + 16);
    v4 = sub_238279010();

    v5 = v3(v4 + 32);

    if (v5 == -1)
    {
      v7 = MEMORY[0x2383ECE70](v6);
      sub_23826D08C();
      swift_allocError();
      *v8 = v7;
      *(v8 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      *(v1 + 40) = v5;
      *(v1 + 48) = 0;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.release()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 40);
    v3 = *(v1 + 16);
    swift_beginAccess();
    v4 = *(v3 + 32);

    LODWORD(v2) = v4(v2);

    if (v2 == sub_238278F90())
    {
      *(v1 + 40) = 0;
      *(v1 + 48) = 1;
    }

    else
    {
      v5 = MEMORY[0x2383ECE70]();
      sub_23826D08C();
      swift_allocError();
      *v6 = v5;
      *(v6 + 4) = 0;
      swift_willThrow();
    }
  }
}

uint64_t static SandboxExtension.withResources<A>(resources:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_23826BB6C, 0, 0);
}

void sub_23826BB6C()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    v2 = sub_238279420();
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v0[12] + 32;
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x2383ED2C0](v3, v0[12]);
    }

    else
    {
      v6 = *(v5 + 8 * v3);
    }

    if (*(v6 + 48) == 1)
    {
      v7 = *(v6 + 16);
      swift_beginAccess();
      v8 = *(v7 + 16);
      v9 = sub_238279010();

      v10 = v8(v9 + 32);

      if (v10 == -1)
      {
        MEMORY[0x2383ECE70](v11);
      }

      else
      {
        *(v6 + 40) = v10;
        *(v6 + 48) = 0;
      }
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_14:
  v14 = (v0[13] + *v0[13]);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_23826BD88;
  v13 = v0[11];

  v14(v13);
}

uint64_t sub_23826BD88()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23826BFE8;
  }

  else
  {
    v2 = sub_23826BE9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23826BE9C()
{
  v1 = v0[15];
  if (v1)
  {
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v0[12];
      v4 = v3 & 0xC000000000000001;
      v5 = v3 + 32;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x2383ED2C0](v2, v0[12]);
          if ((*(v7 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = *(v5 + 8 * v2);

          if ((*(v7 + 48) & 1) == 0)
          {
LABEL_10:
            v8 = *(v7 + 40);
            v9 = *(v7 + 16);
            swift_beginAccess();
            v10 = *(v9 + 32);

            LODWORD(v8) = v10(v8);

            if (v8 == sub_238278F90())
            {
              *(v7 + 40) = 0;
              *(v7 + 48) = 1;
            }

            else
            {
              MEMORY[0x2383ECE70]();
            }
          }
        }

        ++v2;
        v6 = v0[15];

        if (v2 == v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v11 = v0[1];

    v11();
  }
}

void sub_23826BFE8(uint64_t result)
{
  v2 = v1[15];
  if (v2)
  {
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = v1[12];
      v5 = v4 & 0xC000000000000001;
      v6 = v4 + 32;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x2383ED2C0](v3, v1[12]);
          if ((*(v8 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v8 = *(v6 + 8 * v3);

          if ((*(v8 + 48) & 1) == 0)
          {
LABEL_10:
            v9 = *(v8 + 40);
            v10 = *(v8 + 16);
            swift_beginAccess();
            v11 = *(v10 + 32);

            LODWORD(v9) = v11(v9);

            if (v9 == sub_238278F90())
            {
              *(v8 + 40) = 0;
              *(v8 + 48) = 1;
            }

            else
            {
              MEMORY[0x2383ECE70]();
            }
          }
        }

        ++v3;
        v7 = v1[15];

        if (v3 == v7)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    swift_willThrow();
    v12 = v1[1];

    v12();
  }
}

void SandboxExtension.withResource<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  SandboxExtension.consume()();
  if (!v8)
  {
    a1(v3 + OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL);
    if ((*(v3 + 48) & 1) == 0)
    {
      v12 = *(v3 + 40);
      v13 = *(v4 + 16);
      swift_beginAccess();
      v14 = *(v13 + 32);

      LODWORD(v12) = v14(v12);

      if (v12 == sub_238278F90())
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
        return;
      }

      v17 = MEMORY[0x2383ECE70]();
      sub_23826D08C();
      v18 = swift_allocError();
      *v19 = v17;
      *(v19 + 4) = 0;
      v20 = v18;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a3, a2);
      if ((*(v4 + 48) & 1) == 0)
      {
        v9 = *(v4 + 40);
        v10 = *(v4 + 16);
        swift_beginAccess();
        v11 = *(v10 + 32);

        LODWORD(v9) = v11(v9);

        if (v9 != sub_238278F90())
        {
          v15 = MEMORY[0x2383ECE70]();
          sub_23826D08C();
          swift_allocError();
          *v16 = v15;
          *(v16 + 4) = 0;
          swift_willThrow();

          return;
        }

        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
      }

      swift_willThrow();
    }
  }
}

uint64_t SandboxExtension.withResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_23826C37C, 0, 0);
}

uint64_t sub_23826C37C()
{
  SandboxExtension.consume()();
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[12];
    v5 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
    v8 = (v0[9] + *v0[9]);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_23826C4D0;
    v7 = v0[8];

    return v8(v7, v4 + v5);
  }
}

uint64_t sub_23826C4D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23826C7F8;
  }

  else
  {
    v2 = sub_23826C5E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23826C5E4()
{
  v1 = v0[12];
  if (*(v1 + 48))
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 32);

  LODWORD(v2) = v4(v2);

  if (v2 == sub_238278F90())
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
LABEL_4:
    v5 = v0[1];
    goto LABEL_11;
  }

  v6 = v0[11];
  v7 = v0[8];
  v8 = MEMORY[0x2383ECE70]();
  sub_23826D08C();
  v9 = swift_allocError();
  *v10 = v8;
  *(v10 + 4) = 0;
  swift_willThrow();
  (*(*(v6 - 8) + 8))(v7, v6);
  v11 = v0[12];
  if ((*(v11 + 48) & 1) == 0)
  {
    v12 = *(v11 + 40);
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v13 + 32);

    LODWORD(v12) = v14(v12);

    if (v12 != sub_238278F90())
    {
      v15 = MEMORY[0x2383ECE70]();
      swift_allocError();
      *v16 = v15;
      *(v16 + 4) = 0;
      swift_willThrow();

      goto LABEL_10;
    }

    *(v11 + 40) = 0;
    *(v11 + 48) = 1;
  }

  swift_willThrow();
LABEL_10:
  v5 = v0[1];
LABEL_11:

  return v5();
}

uint64_t sub_23826C7F8(uint64_t a1)
{
  v2 = v1[14];
  v3 = v1[12];
  if (*(v3 + 48))
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 40);
  v5 = *(v3 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);

  LODWORD(v4) = v6(v4);

  if (v4 == sub_238278F90())
  {
    *(v3 + 40) = 0;
    *(v3 + 48) = 1;
LABEL_4:
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = MEMORY[0x2383ECE70]();
  sub_23826D08C();
  swift_allocError();
  *v8 = v7;
  *(v8 + 4) = 0;
  swift_willThrow();

LABEL_6:
  v9 = v1[1];

  return v9();
}

uint64_t SandboxExtension.deinit()
{

  v1 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v2 = sub_238278B10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v2 = sub_238278B10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23826CA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826E0B0;
  a2[1] = v6;
}

uint64_t sub_23826CAC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_23826E070;
  *(v6 + 24) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_consume.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_consume.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_23826CC44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826E03C;
  a2[1] = v6;
}

uint64_t sub_23826CCC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = sub_23826DFFC;
  *(v6 + 40) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_release.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_release.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_23826CE48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826DFC0;
  a2[1] = v6;
}

uint64_t sub_23826CEC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 48) = sub_23826DF74;
  *(v6 + 56) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_issue_file.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_issue_file.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *SandboxExtension.Context.init()()
{
  result = v0;
  v0[2] = j__sandbox_extension_consume;
  v0[3] = 0;
  v0[4] = j__sandbox_extension_release;
  v0[5] = 0;
  v0[6] = j__sandbox_extension_issue_file;
  v0[7] = 0;
  return result;
}

unint64_t sub_23826D08C()
{
  result = qword_27DEF7EA0;
  if (!qword_27DEF7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EA0);
  }

  return result;
}

void *SandboxExtension.Context.deinit()
{

  return v0;
}

uint64_t SandboxExtension.Context.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23826D158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4C5255656C6966;
  }

  else
  {
    v3 = 0x6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x4C5255656C6966;
  }

  else
  {
    v5 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_238279590();
  }

  return v8 & 1;
}

uint64_t sub_23826D1FC()
{
  sub_238279600();
  sub_238279020();

  return sub_238279620();
}

uint64_t sub_23826D27C(uint64_t a1)
{
  sub_238279020();
}

uint64_t sub_23826D2E8(uint64_t a1)
{
  sub_238279600();
  sub_238279020();

  return sub_238279620();
}

uint64_t sub_23826D364@<X0>(char *a2@<X8>)
{
  v3 = sub_238279430();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23826D3C4(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23826D400()
{
  if (*v0)
  {
    return 0x4C5255656C6966;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_23826D438@<X0>(char *a3@<X8>)
{
  v4 = sub_238279430();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_23826D49C(uint64_t a1)
{
  v2 = sub_23826DA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23826D4D8(uint64_t a1)
{
  v2 = sub_23826DA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7EA8, &qword_23827FB30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23826DA48();
  sub_238279640();
  v8[15] = 0;
  sub_238279500();
  if (!v1)
  {
    v8[14] = 1;
    sub_238278B10();
    sub_23826E0E4(&qword_27DEF7EB8, MEMORY[0x277CC9268]);
    sub_238279550();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_23826D6CC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23826D71C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_23826D71C(void *a1)
{
  v3 = sub_238278B10();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7EF0, qword_23827FE78);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23826DA48();
  sub_238279630();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = a1;
    v10 = v6;
    v24 = 0;
    v11 = v22;
    v12 = sub_238279470();
    v14 = v13;
    v19 = v12;
    v23 = 1;
    sub_23826E0E4(&qword_27DEF7EF8, MEMORY[0x277CC9280]);
    sub_2382794C0();
    (*(v10 + 8))(v8, v11);
    type metadata accessor for SandboxExtension.Context();
    v16 = v14;
    v17 = swift_allocObject();
    v17[2] = j__sandbox_extension_consume;
    v17[3] = 0;
    v17[4] = j__sandbox_extension_release;
    v17[5] = 0;
    v17[6] = j__sandbox_extension_issue_file;
    v17[7] = 0;
    type metadata accessor for SandboxExtension(0);
    v9 = swift_allocObject();
    *(v9 + 48) = 1;
    v18 = v19;
    *(v9 + 16) = v17;
    *(v9 + 24) = v18;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    (*(v21 + 32))(v9 + OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL, v5, v3);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return v9;
}

unint64_t sub_23826DA48()
{
  result = qword_27DEF7EB0;
  if (!qword_27DEF7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EB0);
  }

  return result;
}

unint64_t sub_23826DAA0()
{
  result = qword_27DEF7EC0;
  if (!qword_27DEF7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EC0);
  }

  return result;
}

uint64_t type metadata accessor for SandboxExtension(uint64_t a1)
{
  result = qword_27DEF7EC8;
  if (!qword_27DEF7EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826DB70(uint64_t a1)
{
  result = sub_238278B10();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtension.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtension.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23826DD2C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23826DD48(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23826DDE8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23826DE04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_23826DE38()
{
  result = qword_27DEF7ED8;
  if (!qword_27DEF7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7ED8);
  }

  return result;
}

unint64_t sub_23826DE90()
{
  result = qword_27DEF7EE0;
  if (!qword_27DEF7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EE0);
  }

  return result;
}

unint64_t sub_23826DEE8()
{
  result = qword_27DEF7EE8;
  if (!qword_27DEF7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EE8);
  }

  return result;
}

uint64_t sub_23826DF3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23826DF74(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 16);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  v4(&v6, &v9, &v8, &v7);
  return v6;
}

uint64_t sub_23826DFC0@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_23826DFFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_23826E03C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23826E070(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_23826E0B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23826E0E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_238278B10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23826E140(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v26 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v25 = *(v9 + 32);
  v25(v16 + v14, v12, v8);
  v30 = a3;
  *(v16 + v15) = a3;
  aBlock[4] = sub_238271D6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v31)
  {
    v33 = v31;
    v26(v12, v29, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v25(v20 + v14, v12, v8);
    *(v20 + v15) = v30;
    v21 = v18;
    v28(&v33, sub_238271EE0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    sub_238241158();
    v22 = swift_allocError();
    *v23 = v30;
    v32[0] = v22;
    sub_238279170();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23826E484(int a1, id a2, uint64_t a3, char a4)
{
  [a2 invalidate];
  sub_238241158();
  swift_allocError();
  *v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  return sub_238279170();
}

uint64_t sub_23826E504(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ElectricityGuidance(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  [a3 invalidate];
  if (a2)
  {
    v24 = a2;
    v19 = a2;
  }

  else
  {
    sub_238271F90(a1, v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_23825BC4C(v11, v18);
      sub_23825BBE8(v18, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
      sub_238279180();
      return sub_23825BCB0(v18);
    }

    sub_23824C65C(v11, &qword_27DEF7CB8, &qword_23827F748);
    sub_238241158();
    v20 = swift_allocError();
    *v21 = a5;
    v24 = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  return sub_238279170();
}

uint64_t sub_23826E734()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23826E788(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F18, &qword_23827FF70);
  *(v6 + 64) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F20, &qword_23827FF78);
  *(v6 + 72) = v8;
  *(v6 + 80) = *(v8 - 8);
  *(v6 + 88) = swift_task_alloc();
  v9 = sub_238278BC0();
  *(v6 + 96) = v9;
  v10 = *(v9 - 8);
  *(v6 + 104) = v10;
  *(v6 + 112) = *(v10 + 64);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = type metadata accessor for ElectricityGuidance(0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 208) = *a1;
  *(v6 + 209) = a1[1];

  return MEMORY[0x2822009F8](sub_23826E94C, 0, 0);
}

uint64_t sub_23826E94C()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](sub_23826E970, v1, 0);
}

uint64_t sub_23826E970()
{
  if (*(v0 + 209))
  {
    sub_238241158();
    v1 = swift_allocError();
    *v2 = 0;
    swift_willThrow();
    *(v0 + 200) = v1;
    v3 = sub_23826F10C;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_238278FF0();
    v6 = [v4 initWithServiceName_];
    *(v0 + 160) = v6;

    v7 = [objc_opt_self() interfaceWithProtocol_];
    [v6 setRemoteObjectInterface_];

    [v6 resume];
    v3 = sub_23826EAC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23826EAC8()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v19 = *(v0 + 160);
  v18 = *(v0 + 208);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  (*(v4 + 16))(v1, *(v0 + 16), v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = v7 + v2;
  v9 = (v7 + v2 + 9) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  (*(v4 + 32))(v10 + v7, v1, v3);
  v11 = (v10 + v8);
  *v11 = v18;
  v11[1] = 0;
  v12 = (v10 + v9);
  *v12 = v6;
  v12[1] = v5;

  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *(v13 + 16) = v19;
  *(v13 + 24) = 0;
  *(v13 + 32) = sub_238271C84;
  *(v13 + 40) = v10;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_23826ED14;
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);

  return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_238271D58, v13, v16);
}

uint64_t sub_23826ED14()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_23826EFE8;
    v4 = 0;
  }

  else
  {
    v7 = v2 + 152;
    v5 = *(v2 + 152);
    v6 = *(v7 + 8);

    v3 = sub_23826EE50;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_23826EE50()
{
  sub_23825BC4C(*(v0 + 136), *(v0 + 144));

  return MEMORY[0x2822009F8](sub_23826EEB8, 0, 0);
}

uint64_t sub_23826EEB8()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  sub_23825BBE8(v1, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279250();
  sub_23824C65C(v5, &qword_27DEF7F18, &qword_23827FF70);
  (*(v3 + 8))(v2, v4);
  sub_23825BCB0(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23826EFE8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_23826F068, v1, 0);
}

uint64_t sub_23826F068()
{
  v1 = *(v0 + 192);
  sub_238241158();
  v2 = swift_allocError();
  *v3 = 0;
  swift_willThrow();

  *(v0 + 200) = v2;

  return MEMORY[0x2822009F8](sub_23826F10C, 0, 0);
}

uint64_t sub_23826F10C()
{
  v1 = v0[25];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  sub_238241158();
  v6 = swift_allocError();
  *v7 = 0;
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279250();

  sub_23824C65C(v5, &qword_27DEF7F18, &qword_23827FF70);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23826F254(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v36 = a2;
  v38 = a1;
  v37 = sub_238278BC0();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  if (sub_238278D20())
  {
    sub_238241158();
    v17 = swift_allocError();
    *v18 = 0;
    v39 = v17;
    return sub_238279260();
  }

  else
  {
    _s10TaskHolderCMa();
    v20 = swift_allocObject();
    v34 = a3;
    v21 = v20;
    v22 = sub_2382791A0();
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = 0;
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    v23 = swift_allocObject();
    v35 = a4;
    v33 = v23;
    swift_weakInit();
    v24 = *(v10 + 16);
    v36 = v16;
    v24(v13, v38, v9);
    (*(v6 + 16))(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v37);
    v25 = *(v10 + 80);
    v34 = v9;
    v26 = (v25 + 40) & ~v25;
    v27 = (v11 + *(v6 + 80) + v26) & ~*(v6 + 80);
    v28 = v27 + v7;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v33;
    (*(v10 + 32))(&v29[v26], v13, v34);
    (*(v6 + 32))(&v29[v27], v8, v37);
    v30 = &v29[v28];
    v31 = BYTE1(v35);
    *v30 = v35 & 1;
    v30[1] = v31 & 1;
    *&v29[(v28 + 9) & 0xFFFFFFFFFFFFFFF8] = v21;

    v21[4] = sub_2382505A8(0, 0, v36, &unk_23827FF40, v29);

    return sub_238279240();
  }
}

uint64_t sub_23826F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 272) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = a8;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v9 = sub_238278BC0();
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 + 64);
  *(v8 + 184) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  *(v8 + 192) = v11;
  v12 = *(v11 - 8);
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 + 64);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23826F758, 0, 0);
}

uint64_t sub_23826F758()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
    sub_238241158();
    v2 = swift_allocError();
    *v3 = 0;
    v0[11] = v2;
    sub_238279260();
    goto LABEL_5;
  }

  if (sub_238279230())
  {
    v0[15] = 0;
    sub_238279260();

LABEL_5:

    v4 = v0[1];

    return v4();
  }

  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_23826F8DC;
  v7 = v0[18];

  return sub_2382725C4(v7);
}

uint64_t sub_23826F8DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_23826FF6C;
  }

  else
  {
    v5 = sub_23826F9F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23826F9F4()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 272);
    *(v0 + 274) = v2 & 1;
    *(v0 + 275) = HIBYTE(v2) & 1;
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_23826FB4C;
    v4 = *(v0 + 240);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);

    return sub_23826E788((v0 + 274), v5, v4, v1, v6);
  }

  else
  {
    sub_238241158();
    v8 = swift_allocError();
    *v9 = 0;
    *(v0 + 104) = v8;
    sub_238279260();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_23826FB4C()
{

  return MEMORY[0x2822009F8](sub_23826FC64, 0, 0);
}

uint64_t sub_23826FC64()
{
  if (sub_238279230())
  {
    *(v0 + 112) = 0;
    sub_238279260();
  }

  else
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 184);
    v20 = v1;
    v21 = v4;
    v23 = *(v0 + 176);
    v24 = *(v0 + 208);
    v5 = *(v0 + 168);
    v22 = *(v0 + 160);
    v6 = *(v0 + 144);
    v25 = *(v0 + 152);
    v7 = *(v0 + 272);
    v8 = *(v0 + 136);
    v26 = v7 & 1;
    v27 = (v7 >> 8) & 1;
    v29 = [objc_opt_self() defaultCenter];
    sub_238278D30();
    v28 = sub_238278FF0();

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = v1;
    v11 = v2;
    (*(v3 + 16))(v10, v8, v2);
    (*(v5 + 16))(v4, v6, v22);
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = (v24 + *(v5 + 80) + v12) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v25;
    (*(v3 + 32))(v14 + v12, v20, v11);
    (*(v5 + 32))(v14 + v13, v21, v22);
    v15 = (v14 + v13 + v23);
    *v15 = v26;
    v15[1] = v27;
    *(v0 + 48) = sub_2382716C8;
    *(v0 + 56) = v14;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_238270C50;
    *(v0 + 40) = &block_descriptor_9;
    v16 = _Block_copy((v0 + 16));

    v17 = [v29 addObserverForName:v28 object:0 queue:0 usingBlock:v16];

    _Block_release(v16);

    *(v25 + 24) = v17;
    swift_unknownObjectRelease();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23826FF6C()
{
  v0[12] = v0[32];
  sub_238279260();

  v1 = v0[1];

  return v1();
}

uint64_t sub_23826FFFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v35 = a6;
  v32 = a4;
  v33 = a5;
  v36 = a3;
  v6 = sub_238278BC0();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = sub_238278AC0();
  if (!v18)
  {

    v40 = 0u;
    v41 = 0u;
    return sub_23824C65C(&v40, &qword_27DEF7F08, &qword_23827FF50);
  }

  v19 = v18;
  v37 = 7562345;
  v38 = 0xE300000000000000;
  sub_238279360();
  if (!*(v19 + 16) || (v20 = sub_238271454(v39), (v21 & 1) == 0))
  {

    sub_2382717FC(v39);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_11;
  }

  sub_23824FBCC(*(v19 + 56) + 32 * v20, &v40);
  sub_2382717FC(v39);

  if (!*(&v41 + 1))
  {
LABEL_11:

    return sub_23824C65C(&v40, &qword_27DEF7F08, &qword_23827FF50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F10, &qword_23827FF58);
  if (swift_dynamicCast())
  {
    v31 = v39[0];
    if (*(v36 + 16))
    {

      sub_238279220();
    }

    v22 = sub_2382791A0();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    v30 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v13, v32, v9);
    v23 = v34;
    (*(v34 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v6);
    v24 = (v11 + *(v23 + 80) + ((*(v10 + 80) + 40) & ~*(v10 + 80))) & ~*(v23 + 80);
    v32 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v33 = v24;
    v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v30;
    (*(v10 + 32))(&v26[v32], v13, v9);
    (*(v23 + 32))(&v26[v33], v8, v6);
    v27 = &v26[v25];
    *v27 = v31;
    v28 = BYTE1(v35);
    v27[8] = v35 & 1;
    v27[9] = v28 & 1;
    v29 = sub_2382505A8(0, 0, v16, &unk_23827FF68, v26);

    *(v36 + 16) = v29;
  }
}

uint64_t sub_2382704A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v8 + 160) = a8;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  return MEMORY[0x2822009F8](sub_2382704CC, 0, 0);
}

uint64_t sub_2382704CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v0[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();
    goto LABEL_5;
  }

  if (sub_238279230())
  {
    v0[9] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();

LABEL_5:
    v2 = v0[1];

    return v2();
  }

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_238270640;
  v5 = v0[12];

  return sub_2382725C4(v5);
}

uint64_t sub_238270640(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v5 = sub_2382708FC;
  }

  else
  {
    v5 = sub_238270758;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_238270758()
{
  v1 = *(v0 + 136);
  if (!v1)
  {
    sub_238241158();
    v8 = swift_allocError();
    *v9 = 0;
    *(v0 + 56) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
LABEL_9:
    sub_238279260();
    goto LABEL_10;
  }

  if (sub_238270B58(*(v0 + 128), *(v0 + 136), *(v0 + 104)))
  {
    v2 = *(v0 + 160);
    *(v0 + 162) = v2 & 1;
    *(v0 + 163) = HIBYTE(v2) & 1;
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_238270998;
    v4 = *(v0 + 128);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);

    return sub_23826E788((v0 + 162), v5, v4, v1, v6);
  }

  if (sub_238279230())
  {
    *(v0 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    goto LABEL_9;
  }

LABEL_10:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2382708FC()
{
  v0[6] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279260();

  v1 = v0[1];

  return v1();
}

uint64_t sub_238270998()
{

  return MEMORY[0x2822009F8](sub_238270AB0, 0, 0);
}

uint64_t sub_238270AB0(uint64_t a1)
{
  if (sub_238279230())
  {
    *(v1 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_238270B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_238279600();
  sub_238279020();
  v6 = sub_238279620();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_238279590() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_238270C50(uint64_t a1, uint64_t a2)
{
  v3 = sub_238278AD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_238278AB0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_238270D44()
{
  v1 = v0;
  v2 = sub_238278CB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238278F70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D076A8], v2);
  sub_238278CA0();
  (*(v3 + 8))(v5, v2);
  v10 = sub_238278F60();
  v11 = sub_2382792A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238215000, v10, v11, "Cancelling guidance tasks", v12, 2u);
    MEMORY[0x2383EDB00](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (v1[2])
  {

    sub_238279220();
  }

  v13 = v1[3];
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];
    swift_unknownObjectRelease();
  }

  if (v1[4])
  {

    sub_238279220();
  }
}

uint64_t sub_238271000()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23827106C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2382710E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238271118()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_238271290(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_238278BC0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1 + v9;
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2382470D0;

  return sub_23826F618(a1, v11, v12, v13, v1 + v5, v1 + v8, v16 | v15, v17);
}

unint64_t sub_238271454(uint64_t a1)
{
  v2 = sub_238279340();

  return sub_238271498(a1, v2);
}

unint64_t sub_238271498(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_238271B88(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383ED240](v9, a1);
      sub_2382717FC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_238271560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_2382716C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238278BC0() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  v10 = (v9 + *(v6 + 64));
  v11 = *v10;
  if (v10[1])
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return sub_23826FFFC(a1, v7, v8, v1 + v4, v9, v12 | v11);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238271850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 10, v10 | 7);
}

uint64_t sub_2382719C8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_238278BC0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  if (v12[9])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_238247660;

  return sub_2382704A4(a1, v9, v10, v11, v1 + v5, v1 + v8, v13, v15 | v14);
}

uint64_t sub_238271BE4()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_238271C84(void **a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v3 + v9);
  v12 = *v11;
  if (v11[1])
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v3 + v10);
  v15 = *v14;
  v16 = v14[1];

  sub_23825B65C(a1, a2, a3, v3 + v8, v13 | v12, v15, v16);
}

uint64_t sub_238271D6C(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_23826E484(a1, v4, v5, v6);
}

uint64_t objectdestroy_37Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_238271EE0(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_23826E504(a1, a2, v8, v6, v7);
}

uint64_t sub_238271F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GridProviderService.gridID(venueID:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2382720B4;

  return sub_2382725C4(a1);
}

uint64_t sub_2382720B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_2382721E4()
{
  v1 = sub_238278D00();
  v0[5] = v1;
  v2 = sub_238272A10();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_238278FF0();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_238272440;
    v13 = v0[12];

    return sub_23825A954(v13, v10);
  }

  else
  {
    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_238272440(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_238272AA4, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_2382725E4()
{
  v1 = sub_238278D00();
  v0[5] = v1;
  v2 = sub_238272A10();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_238278FF0();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_238272840;
    v13 = v0[12];

    return sub_238259E08(v13, v10);
  }

  else
  {
    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_238272840(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2382729AC, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_2382729AC()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_238272A10()
{
  result = qword_27DEF7880;
  if (!qword_27DEF7880)
  {
    sub_238278D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7880);
  }

  return result;
}

uint64_t sub_238272AC8()
{
  if (*v0)
  {
    return 0x646574726F707865;
  }

  else
  {
    return 0x646574726F706D69;
  }
}

uint64_t sub_238272AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x646574726F706D69 && a2 == 0xE800000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646574726F707865 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_238272BC4(uint64_t a1)
{
  v2 = sub_238272FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272C00(uint64_t a1)
{
  v2 = sub_238272FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238272C3C(uint64_t a1)
{
  v2 = sub_238273030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272C78(uint64_t a1)
{
  v2 = sub_238273030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238272CB4(uint64_t a1)
{
  v2 = sub_238273084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272CF0(uint64_t a1)
{
  v2 = sub_238273084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityFlowDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F30, &qword_23827FFF0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F38, &qword_23827FFF8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F40, &qword_238280000);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238272FDC();
  sub_238279640();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_238273030();
    v14 = v18;
    sub_2382794E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_238273084();
    sub_2382794E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_238272FDC()
{
  result = qword_27DEF7F48;
  if (!qword_27DEF7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F48);
  }

  return result;
}

unint64_t sub_238273030()
{
  result = qword_27DEF7F50;
  if (!qword_27DEF7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F50);
  }

  return result;
}

unint64_t sub_238273084()
{
  result = qword_27DEF7F58;
  if (!qword_27DEF7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F58);
  }

  return result;
}

uint64_t ElectricityFlowDirection.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityFlowDirection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F60, &qword_238280008);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F68, &qword_238280010);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F70, &unk_238280018);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238272FDC();
  v12 = v31;
  sub_238279630();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2382794D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23822842C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2382793F0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v22 = &type metadata for ElectricityFlowDirection;
      sub_238279450();
      sub_2382793E0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_238273030();
        sub_238279440();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_238273084();
        sub_238279440();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_23827360C()
{
  result = qword_27DEF7F78;
  if (!qword_27DEF7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F78);
  }

  return result;
}

unint64_t sub_2382736D4()
{
  result = qword_27DEF7F80;
  if (!qword_27DEF7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F80);
  }

  return result;
}

unint64_t sub_23827372C()
{
  result = qword_27DEF7F88;
  if (!qword_27DEF7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F88);
  }

  return result;
}

unint64_t sub_238273784()
{
  result = qword_27DEF7F90;
  if (!qword_27DEF7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F90);
  }

  return result;
}

unint64_t sub_2382737DC()
{
  result = qword_27DEF7F98;
  if (!qword_27DEF7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F98);
  }

  return result;
}

unint64_t sub_238273834()
{
  result = qword_27DEF7FA0;
  if (!qword_27DEF7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FA0);
  }

  return result;
}

unint64_t sub_23827388C()
{
  result = qword_27DEF7FA8;
  if (!qword_27DEF7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FA8);
  }

  return result;
}

unint64_t sub_2382738E4()
{
  result = qword_27DEF7FB0;
  if (!qword_27DEF7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FB0);
  }

  return result;
}

void sub_238273938(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FC0, "\n*");
  if (swift_dynamicCast())
  {
    v4 = v13;
  }

  else
  {
    v5 = sub_238278AE0();
    v6 = [v5 domain];
    v7 = sub_238279000();
    v9 = v8;

    if (v7 == 0xD000000000000018 && 0x8000000238281EA0 == v9)
    {
    }

    else
    {
      v11 = sub_238279590();

      if ((v11 & 1) == 0)
      {

        v4 = 9;
        goto LABEL_12;
      }
    }

    v12 = [v5 code];

    v4 = 9;
    if (v12 < 9)
    {
      v4 = v12;
    }
  }

LABEL_12:
  *a2 = v4;
}

unint64_t EnergyKitError.errorDescription.getter()
{
  sub_238273AC8(&v2);
  v0 = v2;

  sub_238273D38(&v2);
  return v0;
}

void sub_238273AC8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = *v1;
  if (v3 <= 3)
  {
    if (*v1 > 1u)
    {
      v5 = 0xD00000000000001DLL;
      if (v3 == 2)
      {
        v6 = "n System Services settings.";
      }

      else
      {
        v5 = 0xD000000000000029;
        v6 = " in your app's settings.";
      }

      if (v3 == 2)
      {
        v2 = 0;
      }

      else
      {
        v2 = 0xD000000000000033;
      }

      if (v3 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x8000000238282160;
      }

      if (v3 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xD0000000000000FBLL;
      }

      if (v3 == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x80000002382821A0;
      }

LABEL_41:
      v11 = 0;
      v12 = 0;
      goto LABEL_49;
    }

    v6 = " request completes";
    v5 = 0xD000000000000036;
    v4 = 0x80000002382822F0;
    if (*v1)
    {
      v5 = 0xD000000000000020;
      v6 = "Load Event Payload is invalid";
      v8 = 0;
    }

    else
    {
      v4 = 0x8000000238282390;
      v8 = 0x656E206B63656843;
    }

    v10 = v3 == 0;
    if (*v1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0xED00006B726F7774;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0xD000000000000022;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0x8000000238282320;
    }

    v2 = 0xD000000000000028;
  }

  else
  {
    if (*v1 > 5u)
    {
      if (v3 == 6)
      {
        v8 = 0;
        v9 = 0;
        v11 = 0;
        v12 = 0;
        v4 = 0x8000000238281FD0;
        v6 = "lable in this region";
        v5 = 0xD000000000000021;
        goto LABEL_49;
      }

      v4 = 0x8000000238281F60;
      v5 = 0xD000000000000015;
      v6 = "restricted by the user";
      v7 = v3 == 7;
      if (v3 != 7)
      {
        v5 = 0xD000000000000029;
      }

      v8 = 0;
      v9 = 0;
      v2 = 0xD000000000000046;
      if (v7)
      {
        v2 = 0xD000000000000034;
      }

      else
      {
        v6 = "EnergyKit.EnergyKitError";
      }

      if (!v7)
      {
        v4 = 0x8000000238281EF0;
      }

      goto LABEL_41;
    }

    v12 = 0x80000002382820A0;
    v5 = 0xD00000000000003FLL;
    v6 = "xceeded, retry later";
    v11 = 0xD000000000000088;
    v4 = 0x8000000238282010;
    if (v3 == 4)
    {
      v4 = 0x8000000238282080;
    }

    else
    {
      v5 = 0xD000000000000013;
      v6 = "Connection to service failed";
      v2 = 0xD000000000000024;
    }

    if (v3 != 4)
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = 0;
    v9 = 0;
  }

LABEL_49:
  *a1 = v5;
  a1[1] = v6 | 0x8000000000000000;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v12;
}

unint64_t EnergyKitError.failureReason.getter()
{
  sub_238273AC8(v2);
  v0 = v2[2];

  sub_238273D38(v2);
  return v0;
}

unint64_t EnergyKitError.helpAnchor.getter()
{
  sub_238273AC8(v2);
  v0 = v2[4];

  sub_238273D38(v2);
  return v0;
}

unint64_t EnergyKitError.recoverySuggestion.getter()
{
  sub_238273AC8(v2);
  v0 = v2[6];

  sub_238273D38(v2);
  return v0;
}

uint64_t EnergyKitError.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

unint64_t sub_238273EF0()
{
  result = qword_27DEF7FB8;
  if (!qword_27DEF7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FB8);
  }

  return result;
}

unint64_t sub_238273F48()
{
  sub_238273AC8(&v2);
  v0 = v2;

  sub_238273D38(&v2);
  return v0;
}

unint64_t sub_238273F9C()
{
  sub_238273AC8(v2);
  v0 = v2[2];

  sub_238273D38(v2);
  return v0;
}

unint64_t sub_238273FF0()
{
  sub_238273AC8(v2);
  v0 = v2[6];

  sub_238273D38(v2);
  return v0;
}

unint64_t sub_238274044()
{
  sub_238273AC8(v2);
  v0 = v2[4];

  sub_238273D38(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for EnergyKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2382741FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238274244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2382742A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_238278D00();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238274368, 0, 0);
}

uint64_t sub_238274368()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x277D07398], v3);
  v4 = sub_238278CF0();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_23827452C;

    return sub_238257EA4();
  }

  else
  {
    v9 = (v0[3] + *v0[3]);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_23827480C;
    v8 = v0[2];

    return v9(v8);
  }
}

uint64_t sub_23827452C(char a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_23827462C, 0, 0);
}

uint64_t sub_23827462C()
{
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      sub_238241158();
      swift_allocError();
      *v1 = 4;
      swift_willThrow();

      v2 = *(v0 + 8);

      return v2();
    }

    else
    {
      v6 = swift_task_alloc();
      *(v0 + 88) = v6;
      *v6 = v0;
      v6[1] = sub_238274A3C;

      return sub_238257F74();
    }
  }

  else
  {
    v7 = (*(v0 + 24) + **(v0 + 24));
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_238274924;
    v5 = *(v0 + 16);

    return v7(v5);
  }
}

uint64_t sub_23827480C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238274924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238274A3C(char a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 121) = a1;

  v4 = swift_task_alloc();
  *(v3 + 96) = v4;
  *v4 = v6;
  v4[1] = sub_238274B70;

  return sub_2382582A8(a1);
}

uint64_t sub_238274B70(char a1)
{
  *(*v1 + 122) = a1;

  return MEMORY[0x2822009F8](sub_238274C70, 0, 0);
}

uint64_t sub_238274C70()
{
  if (*(v0 + 122) == 1)
  {
    if (*(v0 + 121))
    {
      v7 = (*(v0 + 24) + **(v0 + 24));
      v1 = swift_task_alloc();
      *(v0 + 112) = v1;
      *v1 = v0;
      v1[1] = sub_23827502C;
      v2 = *(v0 + 16);

      return v7(v2);
    }

    else
    {
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_238274E54;

      return sub_238258644();
    }
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_238274E54()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[3] + *v2[3]);
    v6 = swift_task_alloc();
    v2[14] = v6;
    *v6 = v3;
    v6[1] = sub_23827502C;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_23827502C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t EnergyVenue.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EnergyVenue.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyVenue(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnergyVenue(uint64_t a1)
{
  result = qword_27DEF7FE0;
  if (!qword_27DEF7FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyVenue.init(name:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EnergyVenue(0) + 20);
  v7 = sub_238278BC0();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static EnergyVenue.venues()()
{
  v1 = sub_238278D00();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23827537C, 0, 0);
}

uint64_t sub_23827537C(uint64_t a1)
{
  if (sub_238278D20())
  {
    sub_238241158();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[2];
    (*(v6 + 104))(v5, *MEMORY[0x277D07398], v7);
    v8 = sub_238278CF0();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
      v9 = swift_task_alloc();
      v1[5] = v9;
      *v9 = v1;
      v9[1] = sub_238275614;

      return sub_238257EA4();
    }

    else
    {
      v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
      v11 = sub_238278FF0();
      v12 = [v10 initWithServiceName_];
      v1[6] = v12;

      v13 = [objc_opt_self() interfaceWithProtocol_];
      [v12 setRemoteObjectInterface_];

      [v12 resume];
      v14 = swift_task_alloc();
      v1[7] = v14;
      *v14 = v1;
      v14[1] = sub_23827594C;

      return sub_2382655F8(v12);
    }
  }
}

uint64_t sub_238275614(char a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_238275714, 0, 0);
}

uint64_t sub_238275714()
{
  if (*(v0 + 144))
  {
    if (*(v0 + 144) == 1)
    {
      sub_238241158();
      swift_allocError();
      *v1 = 4;
      swift_willThrow();

      v2 = *(v0 + 8);

      return v2();
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 96) = v9;
      *v9 = v0;
      v9[1] = sub_238275CE4;

      return sub_238257F74();
    }
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_238278FF0();
    v6 = [v4 initWithServiceName_];
    *(v0 + 72) = v6;

    v7 = [objc_opt_self() interfaceWithProtocol_];
    [v6 setRemoteObjectInterface_];

    [v6 resume];
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_238275B18;

    return sub_2382655F8(v6);
  }
}

uint64_t sub_23827594C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238275AAC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_238275AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238275B18(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238275C78, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_238275C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238275CE4(char a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 145) = a1;

  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v6;
  v4[1] = sub_238275E18;

  return sub_2382582A8(a1);
}

uint64_t sub_238275E18(char a1)
{
  *(*v1 + 146) = a1;

  return MEMORY[0x2822009F8](sub_238275F18, 0, 0);
}

uint64_t sub_238275F18()
{
  if (*(v0 + 146) == 1)
  {
    if (*(v0 + 145))
    {

      return MEMORY[0x2822009F8](sub_2382761B4, 0, 0);
    }

    else
    {
      v3 = swift_task_alloc();
      *(v0 + 112) = v3;
      *v3 = v0;
      v3[1] = sub_238276068;

      return sub_238258644();
    }
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v1 = 4;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_238276068()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2382761B4, 0, 0);
  }
}

uint64_t sub_2382761B4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 120) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_238276304;

  return sub_2382655F8(v3);
}

uint64_t sub_238276304(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238276464, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_238276464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2382764F0(uint64_t a1)
{
  if (sub_238278D20())
  {
    v2 = v1[1];

    return v2(0);
  }

  else
  {
    v4 = v1[2];
    v5 = *(type metadata accessor for EnergyVenue(0) + 20);
    v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v7 = sub_238278FF0();
    v8 = [v6 initWithServiceName_];
    v1[3] = v8;

    v9 = [objc_opt_self() interfaceWithProtocol_];
    [v8 setRemoteObjectInterface_];

    [v8 resume];
    v10 = swift_task_alloc();
    v1[4] = v10;
    *v10 = v1;
    v10[1] = sub_2382766A8;

    return sub_238265BC0(v4 + v5, v8);
  }
}

uint64_t sub_2382766A8(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238276800, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_238276800()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t EnergyVenue.configureGuidanceToIncludeCost(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_23827688C, 0, 0);
}

uint64_t sub_23827688C(uint64_t a1)
{
  if (sub_238278D20())
  {
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(type metadata accessor for EnergyVenue(0) + 20);
    v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v7 = sub_238278FF0();
    v8 = [v6 initWithServiceName_];
    *(v1 + 24) = v8;

    v9 = [objc_opt_self() interfaceWithProtocol_];
    [v8 setRemoteObjectInterface_];

    [v8 resume];
    v10 = swift_task_alloc();
    *(v1 + 32) = v10;
    *v10 = v1;
    v10[1] = sub_238276A44;
    v11 = *(v1 + 48);

    return sub_2382662F4(v11, v4 + v5, v8);
  }
}

uint64_t sub_238276A44()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238276B80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238276B80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EnergyVenue.submitEvents<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238276C08, 0, 0);
}

uint64_t sub_238276C08(uint64_t a1)
{
  if (sub_238278D20())
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[5];
    type metadata accessor for LoadEventOperations();
    v5 = *(type metadata accessor for EnergyVenue(0) + 20);
    v6 = swift_task_alloc();
    v1[6] = v6;
    *v6 = v1;
    v6[1] = sub_238276D08;
    v7 = v1[3];
    v8 = v1[4];
    v9 = v1[2];

    return sub_23825BD0C(v9, v4 + v5, v7, v8);
  }
}

uint64_t sub_238276D08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static EnergyVenue.venue(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238276E1C, 0, 0);
}

uint64_t sub_238276E1C(uint64_t a1)
{
  if (sub_238278D20())
  {
    sub_238241158();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();
    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[3];
    v6 = swift_task_alloc();
    v1[4] = v6;
    *(v6 + 16) = v5;
    v7 = swift_task_alloc();
    v1[5] = v7;
    *v7 = v1;
    v7[1] = sub_238276F68;
    v8 = v1[2];

    return sub_2382742A4(v8, &unk_238280560, v6);
  }
}

uint64_t sub_238276F68()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2382770A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2382770A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238277108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382771A4, 0, 0);
}

uint64_t sub_2382771A4()
{
  type metadata accessor for VenueOperations();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[5] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2382772F8;
  v7 = v0[3];
  v6 = v0[4];

  return sub_2382603E4(v6, v7, v3);
}

uint64_t sub_2382772F8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2382789A8;
  }

  else
  {

    v3 = sub_2382789AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t static EnergyVenue.venue(matchingHomeUniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238277434, 0, 0);
}

uint64_t sub_238277434()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_238277510;
  v4 = v0[2];

  return sub_2382742A4(v4, &unk_238280580, v2);
}

uint64_t sub_238277510()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23827764C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23827764C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2382776B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23827774C, 0, 0);
}

uint64_t sub_23827774C()
{
  type metadata accessor for VenueOperations();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[5] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2382778A0;
  v7 = v0[3];
  v6 = v0[4];

  return sub_238260E28(v6, v7, v3);
}

uint64_t sub_2382778A0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_238277AC8;
  }

  else
  {

    v3 = sub_2382779BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2382779BC()
{
  v1 = v0[4];
  v2 = type metadata accessor for EnergyVenue(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_238278940(v1);
    sub_238241158();
    swift_allocError();
    *v3 = 8;
    swift_willThrow();
  }

  else
  {
    sub_23826469C(v1, v0[2]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_238277AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238277B34()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_238277B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_238277C30(uint64_t a1)
{
  v2 = sub_238278568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238277C6C(uint64_t a1)
{
  v2 = sub_238278568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyVenue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FC8, &qword_238280588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238278568();
  sub_238279640();
  v8[15] = 0;
  sub_238279500();
  if (!v1)
  {
    type metadata accessor for EnergyVenue(0);
    v8[14] = 1;
    sub_238278BC0();
    sub_2382785F0(&qword_27DEF6AA8, MEMORY[0x277CC95F8]);
    sub_238279550();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t EnergyVenue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_238278BC0();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FD8, &qword_238280590);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for EnergyVenue(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238278568();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_238279470();
  v10[1] = v13;
  v21 = 1;
  sub_2382785F0(&qword_27DEF6AC8, MEMORY[0x277CC9618]);
  sub_2382794C0();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_238264700(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238264764(v10);
}

uint64_t sub_23827818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_238278BC0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyVenue.submitEventsWithCount<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238278224, 0, 0);
}

uint64_t sub_238278224(uint64_t a1)
{
  if (sub_238278D20())
  {
    v2 = v1[1];

    return v2(0);
  }

  else
  {
    v4 = v1[5];
    type metadata accessor for LoadEventOperations();
    v5 = *(type metadata accessor for EnergyVenue(0) + 20);
    v6 = swift_task_alloc();
    v1[6] = v6;
    *v6 = v1;
    v6[1] = sub_238278328;
    v7 = v1[3];
    v8 = v1[4];
    v9 = v1[2];

    return sub_23825BD0C(v9, v4 + v5, v7, v8);
  }
}

uint64_t sub_238278328(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_238278428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238247660;

  return sub_238277108(a1, v4);
}

uint64_t sub_2382784C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2382470D0;

  return sub_2382776B0(a1, v4);
}

unint64_t sub_238278568()
{
  result = qword_27DEF7FD0;
  if (!qword_27DEF7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FD0);
  }

  return result;
}

uint64_t sub_2382785F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_238278BC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238278648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238278708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2382787AC(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23827883C()
{
  result = qword_27DEF7FF0;
  if (!qword_27DEF7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FF0);
  }

  return result;
}

unint64_t sub_238278894()
{
  result = qword_27DEF7FF8;
  if (!qword_27DEF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FF8);
  }

  return result;
}

unint64_t sub_2382788EC()
{
  result = qword_27DEF8000;
  if (!qword_27DEF8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF8000);
  }

  return result;
}

uint64_t sub_238278940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}