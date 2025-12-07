uint64_t sub_26BE8FE98()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8FFAC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8FFAC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_26BE90308;
  }

  else
  {

    v2 = sub_26BE900C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE900C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_26BE00608(v5, v4);
  *v3 = v5;
  v3[1] = v4;
  v0[13] = *(v2 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_26BE9018C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9018C()
{

  return MEMORY[0x2822009F8](sub_26BE902A4, 0, 0);
}

uint64_t sub_26BE902A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE90308()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9055C()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE90670;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE90670()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BE9099C;
  }

  else
  {

    v2 = sub_26BE9078C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9078C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000004ELL;
  *(v2 + 8) = 0x800000026C02BE90;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE90884()
{

  return MEMORY[0x2822009F8](sub_26BEAFAE4, 0, 0);
}

uint64_t sub_26BE9099C()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 80);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE90BC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BE90BE4, 0, 0);
}

uint64_t sub_26BE90BE4()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BE90CF4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE90CF4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8DD5C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 96) = v3;
    *v3 = v2;
    v3[1] = sub_26BE90E68;

    return sub_26BE225D4();
  }
}

uint64_t sub_26BE90E68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_26BE9114C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_26BE90F90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE90F90()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE91034;

  return sub_26BEAB784();
}

uint64_t sub_26BE91034()
{

  return MEMORY[0x2822009F8](sub_26BEAFAFC, 0, 0);
}

uint64_t sub_26BE9114C()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE911F0;

  return sub_26BEAB784();
}

uint64_t sub_26BE911F0()
{

  return MEMORY[0x2822009F8](sub_26BEAFAB4, 0, 0);
}

uint64_t sub_26BE91308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x2822009F8](sub_26BE91330, 0, 0);
}

uint64_t sub_26BE91330()
{
  v1 = v0[18];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[22] = v2;
  v0[23] = v3;
  v0[24] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_26BE91440;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE91440()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE916D4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[27] = v3;
    *v3 = v2;
    v3[1] = sub_26BE915C0;
    v4 = v2[20];
    v5 = v2[21];
    v6 = v2[19];

    return sub_26BE23CE0((v2 + 2), v6, v4, v5);
  }
}

uint64_t sub_26BE915C0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_26BE91B5C;
  }

  else
  {
    v2 = sub_26BE91914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE916D4()
{
  v16 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[26];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[20];
  v11 = v0[21];

  sub_26BE00258(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BE91914()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 64);
  v2[4] = *(v0 + 80);
  v2[5] = v3;
  v2[2] = v5;
  v2[3] = v4;
  v6 = *(v0 + 32);
  *v2 = *(v0 + 16);
  v2[1] = v6;
  *(v0 + 232) = *(v1 + 16);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_26BE919D0;

  return sub_26BEAB784();
}

uint64_t sub_26BE919D0()
{

  return MEMORY[0x2822009F8](sub_26BE91AE8, 0, 0);
}

uint64_t sub_26BE91AE8()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_26BE00258(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE91B5C()
{
  v0[31] = *(v0[18] + 16);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_26BE91C00;

  return sub_26BEAB784();
}

uint64_t sub_26BE91C00()
{

  return MEMORY[0x2822009F8](sub_26BE91D18, 0, 0);
}

uint64_t sub_26BE91D18(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[20];
  v2 = v1[21];

  sub_26BE00258(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BE91D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26BE91DBC, 0, 0);
}

uint64_t sub_26BE91DBC()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE91ECC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE91ECC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9215C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_26BE92048;
    v4 = v2[7];

    return sub_26BE2636C((v2 + 5), v4);
  }
}

uint64_t sub_26BE92048()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BE925B4;
  }

  else
  {
    v2 = sub_26BE9238C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9215C()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9238C()
{
  v1 = v0[6];
  v0[15] = v0[5];
  v0[16] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_26BE92434;

  return sub_26BEAB784();
}

uint64_t sub_26BE92434()
{

  return MEMORY[0x2822009F8](sub_26BE9254C, 0, 0);
}

uint64_t sub_26BE9254C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_26BE925B4()
{
  v0[18] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE92658;

  return sub_26BEAB784();
}

uint64_t sub_26BE92658()
{

  return MEMORY[0x2822009F8](sub_26BE92770, 0, 0);
}

uint64_t sub_26BE92770(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE927E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BE92808, 0, 0);
}

uint64_t sub_26BE92808()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9291C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9291C()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE92BAC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_26BE92A98;
    v4 = v2[17];
    v5 = v2[18];

    return sub_26BF570AC((v2 + 2), v4, v5);
  }
}

uint64_t sub_26BE92A98()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26BE93034;
  }

  else
  {
    v2 = sub_26BE92DF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE92BAC()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 184);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE92DF4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BE92EB0;

  return sub_26BEAB784();
}

uint64_t sub_26BE92EB0()
{

  return MEMORY[0x2822009F8](sub_26BE92FC8, 0, 0);
}

uint64_t sub_26BE92FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE93034()
{
  v0[28] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BE930D8;

  return sub_26BEAB784();
}

uint64_t sub_26BE930D8()
{

  return MEMORY[0x2822009F8](sub_26BE931F0, 0, 0);
}

uint64_t sub_26BE931F0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 136) = a3;
  *(v5 + 144) = a4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  return MEMORY[0x2822009F8](sub_26BE93294, 0, 0);
}

uint64_t sub_26BE93294()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_26BE933A8;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE933A8()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 192) = v3;
    *v3 = v2;
    v3[1] = sub_26BE93528;
    v4 = *(v2 + 240);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);

    return sub_26BF58C3C(v2 + 16, v5, v6, v4);
  }
}

uint64_t sub_26BE93528()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26BE93810;
  }

  else
  {
    v2 = sub_26BE9363C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9363C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BE936F8;

  return sub_26BEAB784();
}

uint64_t sub_26BE936F8()
{

  return MEMORY[0x2822009F8](sub_26BEAFAEC, 0, 0);
}

uint64_t sub_26BE93810()
{
  v0[28] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BE938B4;

  return sub_26BEAB784();
}

uint64_t sub_26BE938B4()
{

  return MEMORY[0x2822009F8](sub_26BEAFAF8, 0, 0);
}

uint64_t sub_26BE939CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BE939F0, 0, 0);
}

uint64_t sub_26BE939F0()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_26BE93B04;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE93B04()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE93D94, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[23] = v3;
    *v3 = v2;
    v3[1] = sub_26BE93C80;
    v4 = v2[17];

    return sub_26BF5C96C((v2 + 2), v4);
  }
}

uint64_t sub_26BE93C80()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26BE9420C;
  }

  else
  {
    v2 = sub_26BE93FD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE93D94()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 176);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE93FD4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE94090;

  return sub_26BEAB784();
}

uint64_t sub_26BE94090()
{

  return MEMORY[0x2822009F8](sub_26BE941A8, 0, 0);
}

uint64_t sub_26BE941A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE9420C()
{
  v0[27] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE942B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE942B0()
{

  return MEMORY[0x2822009F8](sub_26BE943C8, 0, 0);
}

uint64_t sub_26BE943C8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BE94460, 0, 0);
}

uint64_t sub_26BE94460()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_26BE94574;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE94574()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAC8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[23] = v3;
    *v3 = v2;
    v3[1] = sub_26BE946F0;
    v4 = v2[17];

    return sub_26BF5AC5C((v2 + 2), v4);
  }
}

uint64_t sub_26BE946F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26BE949D8;
  }

  else
  {
    v2 = sub_26BE94804;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE94804()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE948C0;

  return sub_26BEAB784();
}

uint64_t sub_26BE948C0()
{

  return MEMORY[0x2822009F8](sub_26BEAFAD8, 0, 0);
}

uint64_t sub_26BE949D8()
{
  v0[27] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE94A7C;

  return sub_26BEAB784();
}

uint64_t sub_26BE94A7C()
{

  return MEMORY[0x2822009F8](sub_26BEAFAB8, 0, 0);
}

uint64_t sub_26BE94BB4()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE94CC8;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE94CC8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE94DE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE94DE4()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000027;
  *(v2 + 8) = 0x800000026C02C150;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE94EFC()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE95010;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE95010()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE9512C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9512C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000002ALL;
  *(v2 + 8) = 0x800000026C02C120;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE95244()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE95358;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE95358()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE95474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE95474()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000031;
  *(v2 + 8) = 0x800000026C02C0A0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE9558C()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE956A0;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE956A0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE957BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE957BC()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000023;
  *(v2 + 8) = 0x800000026C02C030;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE958B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE958D8, 0, 0);
}

uint64_t sub_26BE958D8()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE959EC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE959EC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE960D8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_26BE95B64;
    v4 = v2[7];

    return sub_26BE30F1C(v4);
  }
}

uint64_t sub_26BE95B64()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BE95EA0;
  }

  else
  {
    v2 = sub_26BE95C78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE95C78()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE95D1C;

  return sub_26BEAB784();
}

uint64_t sub_26BE95D1C()
{

  return MEMORY[0x2822009F8](sub_26BE95E34, 0, 0);
}

uint64_t sub_26BE95E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE95EA0()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE95F44;

  return sub_26BEAB784();
}

uint64_t sub_26BE95F44()
{

  return MEMORY[0x2822009F8](sub_26BE9605C, 0, 0);
}

uint64_t sub_26BE9605C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE960D8()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247534352, 0xE800000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE96314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BE96338, 0, 0);
}

uint64_t sub_26BE96338()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9644C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9644C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_26BEAFB14;
  }

  else
  {

    v2 = sub_26BE96568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE96568()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  sub_26BE04890(v5, v4);
  *v3 = v5;
  v3[1] = v4;
  v0[13] = *(v2 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_26BE9662C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9662C()
{

  return MEMORY[0x2822009F8](sub_26BEAFB08, 0, 0);
}

uint64_t sub_26BE96744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE96768, 0, 0);
}

uint64_t sub_26BE96768()
{
  v1 = v0[14];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[16] = v2;
  v0[17] = v3;
  v0[18] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9687C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9687C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_26BE96CA8;
  }

  else
  {

    v2 = sub_26BE96998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE96998()
{
  v1 = v0[15];
  v10 = v0[14];
  v2 = v0[13];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v0[21] = *(v10 + 16);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_26BE96B2C;

  return sub_26BEAB784();
}

uint64_t sub_26BE96B2C()
{

  return MEMORY[0x2822009F8](sub_26BE96C44, 0, 0);
}

uint64_t sub_26BE96C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE96CA8()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 160);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE96EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE96F00, 0, 0);
}

uint64_t sub_26BE96F00()
{
  v1 = v0[14];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[16] = v2;
  v0[17] = v3;
  v0[18] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_26BE97014;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97014()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_26BEAFB18;
  }

  else
  {

    v2 = sub_26BE97130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE97130()
{
  v1 = v0[15];
  v10 = v0[14];
  v2 = v0[13];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v0[21] = *(v10 + 16);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_26BE972C4;

  return sub_26BEAB784();
}

uint64_t sub_26BE972C4()
{

  return MEMORY[0x2822009F8](sub_26BEAFB0C, 0, 0);
}

uint64_t sub_26BE973FC()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE97510;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97510()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BE9099C;
  }

  else
  {

    v2 = sub_26BE9762C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9762C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000001ALL;
  *(v2 + 8) = 0x800000026C02C260;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE97724;

  return sub_26BEAB784();
}

uint64_t sub_26BE97724()
{

  return MEMORY[0x2822009F8](sub_26BE9783C, 0, 0);
}

uint64_t sub_26BE9783C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE978C8()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE979DC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE979DC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE97AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE97AF8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000005ALL;
  *(v2 + 8) = 0x800000026C02C200;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE97C10()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE97D24;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97D24()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE97E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE97E40()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003ALL;
  *(v2 + 8) = 0x800000026C02BDF0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE97F58()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9806C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9806C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE98188;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE98188()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003CLL;
  *(v2 + 8) = 0x800000026C02C1C0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE982A0()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE983B4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE983B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE984D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE984D0()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003ELL;
  *(v2 + 8) = 0x800000026C02C180;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE985E8()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE986FC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE986FC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE98818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE98818()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000033;
  *(v2 + 8) = 0x800000026C02C0E0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98930()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE98A44;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE98A44()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE98B60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE98B60()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000036;
  *(v2 + 8) = 0x800000026C02C060;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98C78()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE98D8C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE98D8C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE98EA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE98EA8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000037;
  *(v2 + 8) = 0x800000026C02BF80;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98FC0()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE990D4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE990D4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE991F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE991F0()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000047;
  *(v2 + 8) = 0x800000026C02BF30;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99308()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9941C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9941C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE99538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE99538()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000004ELL;
  *(v2 + 8) = 0x800000026C02BEE0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99650()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE99764;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99764()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE99880;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE99880()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000002ELL;
  *(v2 + 8) = 0x800000026C02C000;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99998()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE99AAC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99AAC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE99BC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE99BC8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000038;
  *(v2 + 8) = 0x800000026C02BFC0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99CE0()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE99DF4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99DF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA0;
  }

  else
  {

    v2 = sub_26BE99F10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE99F10()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000050;
  *(v2 + 8) = 0x800000026C02BE30;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE9A030, 0, 0);
}

uint64_t sub_26BE9A030()
{
  v1 = v0[14];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9A140;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9A140()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9A3D4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[23] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9A2C0;
    v4 = v2[16];
    v5 = v2[17];
    v6 = v2[15];

    return sub_26BE35CF8((v2 + 2), v6, v4, v5);
  }
}

uint64_t sub_26BE9A2C0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26BE9A84C;
  }

  else
  {
    v2 = sub_26BE9A614;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9A3D4()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 176);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9A614()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 64);
  v2[2] = *(v0 + 48);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE9A6C8;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A6C8()
{

  return MEMORY[0x2822009F8](sub_26BE9A7E0, 0, 0);
}

uint64_t sub_26BE9A7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE9A84C()
{
  v0[27] = *(v0[14] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9A8F0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A8F0()
{

  return MEMORY[0x2822009F8](sub_26BE9AA08, 0, 0);
}

uint64_t sub_26BE9AA08(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE9AAAC, 0, 0);
}

uint64_t sub_26BE9AAAC()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9ABBC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9ABBC()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9AE4C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[16] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9AD38;
    v4 = v2[9];
    v5 = v2[10];
    v6 = v2[7];
    v7 = v2[8];
    v8 = v2[6];

    return sub_26BE36EE8(v3, v8, v6, v7, v4, v5);
  }
}

uint64_t sub_26BE9AD38()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26BE9B2DC;
  }

  else
  {
    v2 = sub_26BE9B09C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9AE4C()
{
  v16 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[9];
  v11 = v0[10];

  sub_26BE0489C(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BE9B09C()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9B140;

  return sub_26BEAB784();
}

uint64_t sub_26BE9B140()
{

  return MEMORY[0x2822009F8](sub_26BE9B258, 0, 0);
}

uint64_t sub_26BE9B258()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_26BE0489C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9B2DC()
{
  v0[20] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9B380;

  return sub_26BEAB784();
}

uint64_t sub_26BE9B380()
{

  return MEMORY[0x2822009F8](sub_26BE9B498, 0, 0);
}

uint64_t sub_26BE9B498(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[9];
  v2 = v1[10];

  sub_26BE0489C(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BE9B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_26BE9B558, 0, 0);
}

uint64_t sub_26BE9B558()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9B668;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9B668()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9B900, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9B7EC;
    v4 = v2[13];
    v5 = v2[11];
    v6 = v2[12];
    v7 = v2[9];
    v8 = v2[10];

    return sub_26BE38A70((v2 + 5), v7, v8, v5, v6, v4);
  }
}

uint64_t sub_26BE9B7EC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_26BE9BDA0;
  }

  else
  {
    v2 = sub_26BE9BB54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9B900()
{
  v16 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[19];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[10];
  v11 = v0[11];

  sub_26BE00258(v12, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BE9BB54()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 176) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9BC00;

  return sub_26BEAB784();
}

uint64_t sub_26BE9BC00()
{

  return MEMORY[0x2822009F8](sub_26BE9BD18, 0, 0);
}

uint64_t sub_26BE9BD18()
{
  v2 = v0[10];
  v1 = v0[11];

  sub_26BE00258(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9BDA0()
{
  v0[24] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9BE44;

  return sub_26BEAB784();
}

uint64_t sub_26BE9BE44()
{

  return MEMORY[0x2822009F8](sub_26BE9BF5C, 0, 0);
}

uint64_t sub_26BE9BF5C(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[10];
  v2 = v1[11];

  sub_26BE00258(v3, v2);

  v4 = v1[1];

  return v4();
}

uint64_t sub_26BE9BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE9C018, 0, 0);
}

uint64_t sub_26BE9C018()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[9] = v2;
  v0[10] = v3;
  v0[11] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9C128;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9C128()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9C3B4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[14] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9C2A0;
    v4 = v2[7];
    v5 = v2[6];

    return sub_26BE3967C(v3, v5, v4);
  }
}

uint64_t sub_26BE9C2A0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26BE9C81C;
  }

  else
  {
    v2 = sub_26BE9C5F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9C3B4()
{
  v15 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v14);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v14);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[13];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = v0[7];

  sub_26BE3C0C4(v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_26BE9C5F4()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9C698;

  return sub_26BEAB784();
}

uint64_t sub_26BE9C698()
{

  return MEMORY[0x2822009F8](sub_26BE9C7B0, 0, 0);
}

uint64_t sub_26BE9C7B0()
{
  v1 = *(v0 + 56);

  sub_26BE3C0C4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE9C81C()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9C8C0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9C8C0()
{

  return MEMORY[0x2822009F8](sub_26BE9C9D8, 0, 0);
}

uint64_t sub_26BE9C9D8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 56);

  sub_26BE3C0C4(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26BE9CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return MEMORY[0x2822009F8](sub_26BE9CA7C, 0, 0);
}

uint64_t sub_26BE9CA7C()
{
  v1 = v0[24];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[28] = v2;
  v0[29] = v3;
  v0[30] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9CB8C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9CB8C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_26BE9D240;
  }

  else
  {

    v2 = sub_26BE9CCA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9CCA8()
{
  v1 = *(v0 + 256);
  sub_26BE38060(*(v0 + 208), *(v0 + 216));
  if (v1)
  {
    goto LABEL_2;
  }

  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v4 + v5, v0 + 96, &qword_28045E468, &qword_26C00ECA0);
  if (!*(v0 + 120))
  {
    sub_26BE2E258(v0 + 96, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE01654();
    v12 = swift_allocError();
    *v13 = 12;
    v13[112] = 9;
    swift_willThrow();
    v1 = v12;
LABEL_2:
    *(v0 + 280) = v1;
    *(v0 + 288) = *(*(v0 + 192) + 16);

    v2 = swift_task_alloc();
    *(v0 + 296) = v2;
    *v2 = v0;
    v3 = sub_26BE9D0A8;
    goto LABEL_5;
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  sub_26BE03890((v0 + 96), v0 + 56);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
  v10 = *(v9 + 40);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v10(v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_26BE03890((v0 + 16), v6);
  *(v0 + 264) = *(v7 + 16);

  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v3 = sub_26BE9CF20;
LABEL_5:
  v2[1] = v3;

  return sub_26BEAB784();
}

uint64_t sub_26BE9CF20()
{

  return MEMORY[0x2822009F8](sub_26BE9D038, 0, 0);
}

uint64_t sub_26BE9D038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE9D0A8()
{

  return MEMORY[0x2822009F8](sub_26BE9D1C0, 0, 0);
}

uint64_t sub_26BE9D1C0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9D240()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 256);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9D4AC, 0, 0);
}

uint64_t sub_26BE9D4AC()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[12] = v2;
  v0[13] = v3;
  v0[14] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9D5BC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9D5BC()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9D850, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9D73C;
    v4 = v2[10];
    v5 = v2[11];
    v6 = v2[9];

    return sub_26BE3A0B4((v2 + 5), v6, v4, v5);
  }
}

uint64_t sub_26BE9D73C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26BE9DCC8;
  }

  else
  {
    v2 = sub_26BE9DA94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9D850()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 128);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9DA94()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 152) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9DB40;

  return sub_26BEAB784();
}

uint64_t sub_26BE9DB40()
{

  return MEMORY[0x2822009F8](sub_26BE9DC58, 0, 0);
}

uint64_t sub_26BE9DC58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE9DCC8()
{
  v0[21] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9DD6C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9DD6C()
{

  return MEMORY[0x2822009F8](sub_26BE9DE84, 0, 0);
}

uint64_t sub_26BE9DE84(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x2822009F8](sub_26BE9DF30, 0, 0);
}

uint64_t sub_26BE9DF30()
{
  v1 = v0[21];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[27] = v2;
  v0[28] = v3;
  v0[29] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9E044;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9E044()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9E2DC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[32] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9E1C8;
    v4 = v2[25];
    v5 = v2[26];
    v6 = v2[23];
    v7 = v2[24];
    v8 = v2[22];

    return sub_26BF427D0((v2 + 2), v8, v6, v7, v4, v5);
  }
}

uint64_t sub_26BE9E1C8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_26BE9E7AC;
  }

  else
  {
    v2 = sub_26BE9E53C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9E2DC()
{
  v18 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v17);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[31];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];

  sub_26BE00258(v14, v13);
  sub_26BE136AC(v12, v11);
  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE9E53C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 96);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  *(v2 + 112) = *(v0 + 128);
  *(v2 + 80) = v4;
  *(v2 + 96) = v3;
  *(v2 + 64) = v5;
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 64);
  *(v2 + 32) = *(v0 + 48);
  *(v2 + 48) = v8;
  *v2 = v6;
  *(v2 + 16) = v7;
  *(v0 + 272) = *(v1 + 16);

  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_26BE9E608;

  return sub_26BEAB784();
}

uint64_t sub_26BE9E608()
{

  return MEMORY[0x2822009F8](sub_26BE9E720, 0, 0);
}

uint64_t sub_26BE9E720()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];

  sub_26BE00258(v4, v3);
  sub_26BE136AC(v1, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9E7AC()
{
  v0[36] = *(v0[21] + 16);

  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9E850;

  return sub_26BEAB784();
}

uint64_t sub_26BE9E850()
{

  return MEMORY[0x2822009F8](sub_26BE9E968, 0, 0);
}

uint64_t sub_26BE9E968(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[25];
  v2 = v1[26];
  v5 = v1[23];
  v4 = v1[24];

  sub_26BE00258(v5, v4);
  sub_26BE136AC(v3, v2);
  v6 = v1[1];

  return v6();
}

uint64_t sub_26BE9EA24()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9EB38;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9EB38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEAFAA4;
  }

  else
  {

    v2 = sub_26BE97E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9EC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9EC78, 0, 0);
}

uint64_t sub_26BE9EC78()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9ED8C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9ED8C()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9F1C8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9EF08;
    v4 = v2[9];

    return sub_26BF35D28((v2 + 5), v4);
  }
}

uint64_t sub_26BE9EF08()
{

  return MEMORY[0x2822009F8](sub_26BE9F004, 0, 0);
}

uint64_t sub_26BE9F004()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 128) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9F0B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9F0B0()
{

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BE9F1C8()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 112);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9F430, 0, 0);
}

uint64_t sub_26BE9F430()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9F544;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9F544()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9F7D4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BE9F6C0;
    v4 = v2[9];

    return sub_26BF3651C((v2 + 5), v4);
  }
}

uint64_t sub_26BE9F6C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BE9FC3C;
  }

  else
  {
    v2 = sub_26BE9FA14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE9F7D4()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 112);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE9FA14()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9FAC0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9FAC0()
{

  return MEMORY[0x2822009F8](sub_26BE9FBD8, 0, 0);
}

uint64_t sub_26BE9FBD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE9FC3C()
{
  v0[19] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9FCE0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9FCE0()
{

  return MEMORY[0x2822009F8](sub_26BE9FDF8, 0, 0);
}

uint64_t sub_26BE9FDF8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE9FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9FE94, 0, 0);
}

uint64_t sub_26BE9FE94()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[12] = v2;
  v0[13] = v3;
  v0[14] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26BE9FFA8;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9FFA8()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA023C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA0128;
    v4 = v2[10];
    v5 = v2[11];
    v6 = v2[9];

    return sub_26BF5B8F0((v2 + 5), v6, v4, v5);
  }
}

uint64_t sub_26BEA0128()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26BEA06C4;
  }

  else
  {
    v2 = sub_26BEA048C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA023C()
{
  v16 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[10];
  v11 = v0[11];

  sub_26BE00258(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BEA048C()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 152) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA0538;

  return sub_26BEAB784();
}

uint64_t sub_26BEA0538()
{

  return MEMORY[0x2822009F8](sub_26BEA0650, 0, 0);
}

uint64_t sub_26BEA0650()
{
  v1 = v0[10];
  v2 = v0[11];

  sub_26BE00258(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA06C4()
{
  v0[21] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA0768;

  return sub_26BEAB784();
}

uint64_t sub_26BEA0768()
{

  return MEMORY[0x2822009F8](sub_26BEA0880, 0, 0);
}

uint64_t sub_26BEA0880(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[10];
  v2 = v1[11];

  sub_26BE00258(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BEA0904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BEA0928, 0, 0);
}

uint64_t sub_26BEA0928()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA0A3C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA0A3C()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFACC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BE8E5B4;
    v4 = v2[9];

    return sub_26BF59A5C((v2 + 5), v4);
  }
}

uint64_t sub_26BEA0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BEA0BDC, 0, 0);
}

uint64_t sub_26BEA0BDC()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA0CF0;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA0CF0()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA0F80, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[16] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA0E6C;
    v4 = v2[9];
    v5 = v2[10];

    return sub_26BF5F974((v2 + 5), v4, v5);
  }
}

uint64_t sub_26BEA0E6C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26BEA13F8;
  }

  else
  {
    v2 = sub_26BEA11C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA0F80()
{
  v15 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v14);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v14);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = v0[10];

  sub_26BEAF9F8(v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_26BEA11C8()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA1274;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1274()
{

  return MEMORY[0x2822009F8](sub_26BEA138C, 0, 0);
}

uint64_t sub_26BEA138C()
{
  v1 = *(v0 + 80);

  sub_26BEAF9F8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BEA13F8()
{
  v0[20] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA149C;

  return sub_26BEAB784();
}

uint64_t sub_26BEA149C()
{

  return MEMORY[0x2822009F8](sub_26BEA15B4, 0, 0);
}

uint64_t sub_26BEA15B4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 80);

  sub_26BEAF9F8(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26BEA1630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BEA1654, 0, 0);
}

uint64_t sub_26BEA1654()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA1768;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA1768()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA19F8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[16] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA18E4;
    v4 = v2[9];
    v5 = v2[10];

    return sub_26BF5D3E8((v2 + 5), v4, v5);
  }
}

uint64_t sub_26BEA18E4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26BEA1DFC;
  }

  else
  {
    v2 = sub_26BEA1C38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA19F8()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 120);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEA1C38()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA1CE4;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1CE4()
{

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BEA1DFC()
{
  v0[20] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA1EA0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1EA0()
{

  return MEMORY[0x2822009F8](sub_26BEA1FB8, 0, 0);
}

uint64_t sub_26BEA1FB8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEA202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_26BEA2050, 0, 0);
}

uint64_t sub_26BEA2050()
{
  v1 = v0[9];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[12] = v2;
  v0[13] = v3;
  v0[14] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA2160;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA2160()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA23F0, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA22DC;
    v4 = v2[10];
    v5 = v2[11];

    return sub_26BFC2014((v2 + 5), v4, v5);
  }
}

uint64_t sub_26BEA22DC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26BEA2860;
  }

  else
  {
    v2 = sub_26BEA2628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA23F0()
{
  v15 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v14);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v14);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = v0[11];

  sub_26BEAFA4C(v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_26BEA2628()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  *v2 = *(v0 + 40);
  *(v2 + 16) = v3;
  *(v0 + 152) = *(v1 + 16);

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_26BEA26DC;

  return sub_26BEAB784();
}

uint64_t sub_26BEA26DC()
{

  return MEMORY[0x2822009F8](sub_26BEA27F4, 0, 0);
}

uint64_t sub_26BEA27F4()
{
  v1 = *(v0 + 88);

  sub_26BEAFA4C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BEA2860()
{
  v0[21] = *(v0[9] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA2904;

  return sub_26BEAB784();
}

uint64_t sub_26BEA2904()
{

  return MEMORY[0x2822009F8](sub_26BEA2A1C, 0, 0);
}

uint64_t sub_26BEA2A1C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 88);

  sub_26BEAFA4C(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26BEA2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA2AC0, 0, 0);
}

uint64_t sub_26BEA2AC0()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[21] = v2;
  v0[22] = v3;
  v0[23] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA2BD4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA2BD4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA2E68, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA2D54;
    v4 = v2[19];
    v5 = v2[20];
    v6 = v2[17];
    v7 = v2[18];

    return sub_26BF662B0((v2 + 2), v6, v7, v4, v5);
  }
}

uint64_t sub_26BEA2D54()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_26BEA32F8;
  }

  else
  {
    v2 = sub_26BEA30B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA2E68()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 200);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEA30B4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 224) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_26BEA3170;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3170()
{

  return MEMORY[0x2822009F8](sub_26BEA3288, 0, 0);
}

uint64_t sub_26BEA3288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEA32F8()
{
  v0[30] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA339C;

  return sub_26BEAB784();
}

uint64_t sub_26BEA339C()
{

  return MEMORY[0x2822009F8](sub_26BEA34B4, 0, 0);
}

uint64_t sub_26BEA34B4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEA3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x2822009F8](sub_26BEA355C, 0, 0);
}

uint64_t sub_26BEA355C()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA3670;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA3670()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA3904, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA37F0;
    v4 = v2[17];
    v5 = v2[18];
    v6 = v2[16];

    return sub_26BF6E324((v2 + 2), v6, v4, v5);
  }
}

uint64_t sub_26BEA37F0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26BEA3DA4;
  }

  else
  {
    v2 = sub_26BEA3B54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA3904()
{
  v16 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[23];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[17];
  v11 = v0[18];

  sub_26BE00258(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BEA3B54()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 48);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  *(v2 + 64) = *(v0 + 80);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 16) = v5;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BEA3C18;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3C18()
{

  return MEMORY[0x2822009F8](sub_26BEA3D30, 0, 0);
}

uint64_t sub_26BEA3D30()
{
  v1 = v0[17];
  v2 = v0[18];

  sub_26BE00258(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA3DA4()
{
  v0[28] = *(v0[15] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA3E48;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3E48()
{

  return MEMORY[0x2822009F8](sub_26BEA3F60, 0, 0);
}

uint64_t sub_26BEA3F60(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[17];
  v2 = v1[18];

  sub_26BE00258(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BEA3FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 176) = a3;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA4010, 0, 0);
}

uint64_t sub_26BEA4010()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA4124;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4124()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA43BC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 128) = v3;
    *v3 = v2;
    v3[1] = sub_26BEA42A8;
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = *(v2 + 56);
    v7 = *(v2 + 64);
    v8 = *(v2 + 176);

    return sub_26BF72DA8(v2 + 180, v8, v6, v7, v4, v5);
  }
}

uint64_t sub_26BEA42A8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26BEA4834;
  }

  else
  {
    v2 = sub_26BEA4604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA43BC()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 120);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEA4604()
{
  v1 = *(v0 + 48);
  **(v0 + 40) = *(v0 + 180);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA46B0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA46B0()
{

  return MEMORY[0x2822009F8](sub_26BEA47C8, 0, 0);
}

uint64_t sub_26BEA47C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEA4834()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA48D8;

  return sub_26BEAB784();
}

uint64_t sub_26BEA48D8()
{

  return MEMORY[0x2822009F8](sub_26BEA49F0, 0, 0);
}

uint64_t sub_26BEA49F0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEA4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA4A90, 0, 0);
}

uint64_t sub_26BEA4A90()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA4BA4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4BA4()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_26BE93528;
    v4 = v2[17];
    v5 = v2[18];

    return sub_26BF6F614((v2 + 2), v4, v5);
  }
}

uint64_t sub_26BEA4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA4D44, 0, 0);
}

uint64_t sub_26BEA4D44()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[19] = v2;
  v0[20] = v3;
  v0[21] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA4E58;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4E58()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_26BE93528;
    v4 = v2[17];
    v5 = v2[18];

    return sub_26BF63A24((v2 + 2), v4, v5);
  }
}

uint64_t sub_26BEA4FD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA4FF4, 0, 0);
}

uint64_t sub_26BEA4FF4()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA5108;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA5108()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA5398, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA5284;
    v4 = v2[6];

    return sub_26BF37550((v2 + 18), v4);
  }
}

uint64_t sub_26BEA5284()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26BEA5808;
  }

  else
  {
    v2 = sub_26BEA55DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA5398()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 88);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_26BEA55DC()
{
  v1 = *(v0 + 40);
  *(v0 + 145) = *(v0 + 144);
  *(v0 + 112) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA5688;

  return sub_26BEAB784();
}

uint64_t sub_26BEA5688()
{

  return MEMORY[0x2822009F8](sub_26BEA57A0, 0, 0);
}

uint64_t sub_26BEA57A0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 145);

  return v1(v2);
}

uint64_t sub_26BEA5808()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA58AC;

  return sub_26BEAB784();
}

uint64_t sub_26BEA58AC()
{

  return MEMORY[0x2822009F8](sub_26BEA59C4, 0, 0);
}

uint64_t sub_26BEA59C4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_26BEA5A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA5A5C, 0, 0);
}

uint64_t sub_26BEA5A5C()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA5B70;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA5B70()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_26BEA60C4;
  }

  else
  {

    v2 = sub_26BEA5C8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA5C8C()
{
  v1 = *(v0 + 88);
  *(v0 + 136) = sub_26BE30198() & 1;
  *(v0 + 96) = v1;
  v2 = *(*(v0 + 40) + 16);
  if (v1)
  {
    *(v0 + 120) = v2;

    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v4 = sub_26BEA5F30;
  }

  else
  {
    *(v0 + 104) = v2;

    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v4 = sub_26BEA5DB0;
  }

  v3[1] = v4;

  return sub_26BEAB784();
}

uint64_t sub_26BEA5DB0()
{

  return MEMORY[0x2822009F8](sub_26BEA5EC8, 0, 0);
}

uint64_t sub_26BEA5EC8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_26BEA5F30()
{

  return MEMORY[0x2822009F8](sub_26BEA6048, 0, 0);
}

uint64_t sub_26BEA6048(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_26BEA60C4()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 88);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_26BEA630C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA632C, 0, 0);
}

uint64_t sub_26BEA632C()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA6440;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA6440()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAD0, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 96) = v3;
    *v3 = v2;
    v3[1] = sub_26BEA65B4;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BEA65B4(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_26BEA6904;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_26BEA66E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BEA66E0()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA6784;

  return sub_26BEAB784();
}

uint64_t sub_26BEA6784()
{

  return MEMORY[0x2822009F8](sub_26BEA689C, 0, 0);
}

uint64_t sub_26BEA689C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_26BEA6904()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA69A8;

  return sub_26BEAB784();
}

uint64_t sub_26BEA69A8()
{

  return MEMORY[0x2822009F8](sub_26BEAFAC0, 0, 0);
}

uint64_t sub_26BEA6AE0()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA6BF4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA6BF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BEA6E08;
  }

  else
  {

    v2 = sub_26BEA6D10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA6D10()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000068;
  *(v2 + 8) = 0x800000026C02BD80;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE97724;

  return sub_26BEAB784();
}

uint64_t sub_26BEA6E08()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 80);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEA7040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BEA7064, 0, 0);
}

uint64_t sub_26BEA7064()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA7178;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7178()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAC8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[23] = v3;
    *v3 = v2;
    v3[1] = sub_26BE946F0;
    v4 = v2[17];

    return sub_26BF64494((v2 + 2), v4);
  }
}

uint64_t sub_26BEA72F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26BEA731C, 0, 0);
}

uint64_t sub_26BEA731C()
{
  v1 = v0[7];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA7430;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7430()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA76C4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 120) = v3;
    *v3 = v2;
    v3[1] = sub_26BEA75B0;
    v4 = *(v2 + 168);
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);

    return sub_26BF72428(v2 + 40, v5, v4, v6);
  }
}

uint64_t sub_26BEA75B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BEA7B2C;
  }

  else
  {
    v2 = sub_26BEA7904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA76C4()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 112);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEA7904()
{
  v1 = *(v0 + 56);
  **(v0 + 48) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA79B0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA79B0()
{

  return MEMORY[0x2822009F8](sub_26BEA7AC8, 0, 0);
}

uint64_t sub_26BEA7AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEA7B2C()
{
  v0[19] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA7BD0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA7BD0()
{

  return MEMORY[0x2822009F8](sub_26BEA7CE8, 0, 0);
}

uint64_t sub_26BEA7CE8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEA7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEA7D84, 0, 0);
}

uint64_t sub_26BEA7D84()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BEA7E98;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7E98()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA812C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BEA8018;
    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[7];

    return sub_26BF73548((v2 + 21), v6, v4, v5);
  }
}

uint64_t sub_26BEA8018()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BEA85B4;
  }

  else
  {
    v2 = sub_26BEA837C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA812C()
{
  v16 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[8];
  v11 = v0[9];

  sub_26BE00258(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BEA837C()
{
  v1 = *(v0 + 48);
  **(v0 + 40) = *(v0 + 168);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA8428;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8428()
{

  return MEMORY[0x2822009F8](sub_26BEA8540, 0, 0);
}

uint64_t sub_26BEA8540()
{
  v1 = v0[8];
  v2 = v0[9];

  sub_26BE00258(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA85B4()
{
  v0[19] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA8658;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8658()
{

  return MEMORY[0x2822009F8](sub_26BEA8770, 0, 0);
}

uint64_t sub_26BEA8770(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[8];
  v2 = v1[9];

  sub_26BE00258(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BEA87F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = sub_26C009A5C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = *(a5 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEA8914, 0, 0);
}

uint64_t sub_26BEA8914()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v1 + 16);
  v3(v2, v1);
  sub_26C00B11C();
  v3(v2, v1);
  sub_26C00B11C();
  v4 = sub_26C00B13C();
  v6 = v5;
  v0[14] = v4;
  v0[15] = v5;
  v7 = *(v1 + 8);
  v0[16] = v7;
  v0[17] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
  v0[18] = v7(v2, v1);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_26BEA8A5C;

  return sub_26BEAA3E4(v4, v6, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA8A5C()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA8F78, 0, 0);
  }

  else
  {
    v3 = v2[3];

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[21] = v4;
    *v4 = v2;
    v4[1] = sub_26BEA8C3C;
    v5 = v2[13];

    return v7(v5);
  }
}

uint64_t sub_26BEA8C3C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26BEA91FC;
  }

  else
  {
    v2 = sub_26BEA8D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEA8D50()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[12] + 32))(v0[2], v0[13], v0[6]);
  v0[23] = v1(v3, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_26BEA8E24;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8E24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BEA8F78()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[5];

  (*(v1 + 24))(v2, v1);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v21 = v0[9];
    v22 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136315394;
    v8 = sub_26C00B18C();
    v10 = sub_26BE29740(v8, v9, v23);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_26C00B12C();
    v13 = sub_26BE29740(v11, v12, v23);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);

    (*(v5 + 8))(v22, v21);
  }

  else
  {
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[20];
  sub_26BE01654();
  swift_allocError();
  *v18 = 21;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0;
  *(v18 + 112) = 23;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_26BEA91FC()
{
  *(v0 + 200) = (*(v0 + 128))(*(v0 + 40), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_26BEA92A0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA92A0()
{

  return MEMORY[0x2822009F8](sub_26BEA93B8, 0, 0);
}

uint64_t sub_26BEA93B8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEA9438()
{
  v0 = sub_26C00AA3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C00AA2C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26C009A7C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26BEAC6AC();
  sub_26C009A6C();
  v7[1] = MEMORY[0x277D84F90];
  sub_26BEACA58(&qword_28045ECD0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECD8, &qword_26C015C78);
  sub_26BEAC6F8();
  sub_26C00AB3C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_26C00AA4C();
  qword_280478F18 = result;
  return result;
}

uint64_t sub_26BEA9674(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  if (qword_28045DF90 != -1)
  {
    swift_once();
  }

  v7 = qword_280478F18;
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26BEACB74;
  *(v10 + 24) = v9;
  aBlock[4] = sub_26BEAFAE8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEA9B08;
  aBlock[3] = &block_descriptor_62;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BEA98D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v9 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v9 <= 1)
  {
    if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
      result = sub_26C00A80C();
      v13 = 5;
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
      v11 = *(v10 - 8);
      (*(v11 + 16))(v7, a2, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v12 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
      swift_beginAccess();
      sub_26BEAC63C(v7, a1 + v12);
      result = swift_endAccess();
      v13 = 2;
    }

    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state) <= 3u)
  {
    if (v9 == 2)
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (v9 == 4)
  {
    sub_26C00A81C();
    sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v14 = swift_allocError();
    sub_26C00A36C();
    v15[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
    result = sub_26C00A7FC();
    v13 = 3;
LABEL_8:
    *(a1 + v8) = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEA9B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v7);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v14 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v14 > 2)
  {
    if (v14 - 3 < 2)
    {
      return result;
    }

    __break(1u);
  }

  else if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state))
  {
    if (v14 != 2)
    {
      __break(1u);
      return result;
    }

    v15 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
    swift_beginAccess();
    sub_26BE2E1F0(a1 + v15, v12, &qword_28045ECC0, &qword_26C015C70);
    if ((*(v3 + 48))(v12, 1, v2))
    {
      sub_26BE2E258(v12, &qword_28045ECC0, &qword_26C015C70);
    }

    else
    {
      (*(v3 + 16))(v5, v12, v2);
      sub_26BE2E258(v12, &qword_28045ECC0, &qword_26C015C70);
      sub_26C00A80C();
      (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 56))(v9, 1, 1, v2);
    swift_beginAccess();
    sub_26BEAC63C(v9, a1 + v15);
    result = swift_endAccess();
    v16 = 5;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:
  *(a1 + v13) = v16;
  return result;
}

uint64_t sub_26BEA9DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = v18 - v11;
  v13 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v14 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v16 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
      swift_beginAccess();
      sub_26BE2E1F0(a1 + v16, v12, &qword_28045ECC0, &qword_26C015C70);
      if ((*(v3 + 48))(v12, 1, v2))
      {
        sub_26BE2E258(v12, &qword_28045ECC0, &qword_26C015C70);
      }

      else
      {
        (*(v3 + 16))(v5, v12, v2);
        sub_26BE2E258(v12, &qword_28045ECC0, &qword_26C015C70);
        sub_26C00A81C();
        sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        v17 = swift_allocError();
        sub_26C00A36C();
        v18[0] = v17;
        sub_26C00A7FC();
        (*(v3 + 8))(v5, v2);
      }

      (*(v3 + 56))(v9, 1, 1, v2);
      swift_beginAccess();
      sub_26BEAC63C(v9, a1 + v16);
      result = swift_endAccess();
      v15 = 3;
      goto LABEL_11;
    }

    if (v14 == 5)
    {
      return result;
    }

    __break(1u);
  }

  if (v14)
  {
    return result;
  }

  v15 = 4;
LABEL_11:
  *(a1 + v13) = v15;
  return result;
}

uint64_t sub_26BEAA0B4()
{
  sub_26BE2E258(v0 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation, &qword_28045ECC0, &qword_26C015C70);
  v1 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_id;
  v2 = sub_26C00928C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinuationStore(uint64_t a1)
{
  result = qword_28045EC88;
  if (!qword_28045EC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BEAA1C4(uint64_t a1)
{
  sub_26BEAA298(319);
  if (v1 <= 0x3F)
  {
    sub_26C00928C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BEAA298(uint64_t a1)
{
  if (!qword_28045EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045ECA0, &qword_26C015B08);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045EC98);
    }
  }
}

uint64_t sub_26BEAA2FC()
{
  sub_26C00B05C();
  sub_26C00924C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEAA37C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00924C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEAA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEAA40C, v4, 0);
}

uint64_t sub_26BEAA40C()
{
  v15 = v0;
  v1 = v0[9];
  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    type metadata accessor for ContinuationStore(0);
    v8 = swift_allocObject();
    v0[10] = v8;
    v9 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    sub_26C00927C();
    *(v8 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state) = 0;
    swift_beginAccess();

    sub_26BF74E48(&v14, v8);
    swift_endAccess();

    sub_26BEACA58(&qword_28045ECE8, v11, type metadata accessor for SMSemaphore, &unk_26C015BDC);
    v12 = swift_task_alloc();
    v0[11] = v12;
    v12[2] = v5;
    v12[3] = v4;
    v12[4] = v8;
    v12[5] = v7;
    v12[6] = v6;
    v12[7] = v1;
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_26BEAA670;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_26BEAA670()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_26BEAA7FC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_26BEAA798;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26BEAA798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEAA7FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEAA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF0, &qword_26C015C98);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEAA914, a8, 0);
}

uint64_t sub_26BEAA914()
{
  v1 = v0[12];
  v15 = v0[10];
  v16 = v0[11];
  v14 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_26C00A83C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;

  sub_26BEAB030(v1, &unk_26C015CA8, v7);
  sub_26BE2E258(v1, &qword_28045ECF0, &qword_26C015C98);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v14;
  v8[5] = v15;
  v8[6] = v2;

  sub_26BEAB030(v1, &unk_26C015CB8, v8);
  sub_26BE2E258(v1, &qword_28045ECF0, &qword_26C015C98);
  v10 = sub_26BEACA58(&qword_28045ECE8, v9, type metadata accessor for SMSemaphore, &unk_26C015BDC);
  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF8, &unk_26C015CC0);
  *v11 = v0;
  v11[1] = sub_26BEAAB74;

  return MEMORY[0x2822004D0](v0 + 15, v16, v10, v12);
}

uint64_t sub_26BEAAB74()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_26BEAAD44;
  }

  else
  {
    v4 = sub_26BEAACA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26BEAACA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  sub_26C00A85C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEAAD44()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  sub_26BE2AFA4(v1);
  swift_endAccess();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BEAADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_26BEAAE20, 0, 0);
}

uint64_t sub_26BEAAE20()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAAEE4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, v5, v2, sub_26BEACAA0, v3, v6);
}

uint64_t sub_26BEAAEE4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAB018, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BEAB030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF0, &qword_26C015C98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_26BE2E1F0(a1, v18 - v8, &qword_28045ECF0, &qword_26C015C98);
  v10 = sub_26C00A83C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26BE2E258(v9, &qword_28045ECF0, &qword_26C015C98);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_26C00A7EC();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_26C00A82C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_26BEAB220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_26C00AD2C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEAB2E4, 0, 0);
}

uint64_t sub_26BEAB2E4()
{
  sub_26C00AFBC();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAB3A4;
  v3 = v0[8];
  v2 = v0[9];

  return sub_26BEABE14(v3, v2, 0, 0, 1);
}

uint64_t sub_26BEAB3A4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_26BEAB720;
  }

  else
  {
    v3 = sub_26BEAB50C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEAB50C()
{
  if (qword_28045DF90 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = qword_280478F18;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26BEACA50;
  *(v3 + 24) = v1;
  v0[6] = sub_26BEAFAE8;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26BEA9B08;
  v0[5] = &block_descriptor_48;
  v4 = _Block_copy(v0 + 2);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_26C00A81C();
    sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_26C00A36C();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_26BEAB720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BEAB7A4()
{
  v1 = v0[17];
  if (*(v1 + 112))
  {
    goto LABEL_25;
  }

  v27 = v0 + 2;
  *(v1 + 112) = 1;
  swift_beginAccess();
  v25 = v1;
  v2 = *(v1 + 120);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_26C00AB7C();
    type metadata accessor for ContinuationStore(0);
    sub_26BEACA58(&qword_28045ECB8, 255, type metadata accessor for ContinuationStore, &unk_26C015C2C);
    sub_26C00A87C();
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[12];
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    v3 = *(v1 + 120);
    swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v26 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (qword_28045DF90 != -1)
    {
      swift_once();
    }

    v18 = qword_280478F18;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26BEAC5E4;
    *(v19 + 24) = v16;
    v0[6] = sub_26BEAC5FC;
    v0[7] = v19;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26BEA9B08;
    v0[5] = &block_descriptor_2;
    v20 = _Block_copy(v27);

    dispatch_sync(v18, v20);

    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    v6 = v14;
    v7 = v15;
    v3 = v26;
    if (v20)
    {
      goto LABEL_29;
    }
  }

  v17 = sub_26C00ABAC();
  if (v17)
  {
    v0[16] = v17;
    type metadata accessor for ContinuationStore(0);
    swift_dynamicCast();
    v16 = *v27;
    v14 = v6;
    v15 = v7;
    if (*v27)
    {
      goto LABEL_18;
    }
  }

LABEL_22:
  sub_26BE2DA4C();

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v21 = MEMORY[0x277D84FA0];
    v22 = v25;
    goto LABEL_24;
  }

LABEL_30:
  v22 = v25;
  if (sub_26C00AB8C())
  {
    v21 = sub_26BEAC2D4(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

LABEL_24:
  *(v22 + 120) = v21;

LABEL_25:
  v23 = v0[1];

  return v23();
}

uint64_t sub_26BEABBB8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for ContinuationStore.ContinuationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinuationStore.ContinuationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BEABD68()
{
  result = qword_28045ECA8;
  if (!qword_28045ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045ECA8);
  }

  return result;
}

uint64_t sub_26BEABE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26C00AD1C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26BEABF14, 0, 0);
}

uint64_t sub_26BEABF14()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26C00AD2C();
  v5 = sub_26BEACA58(&qword_28045ED10, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26C00AF9C();
  sub_26BEACA58(&qword_28045ED18, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26C00AD3C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26BEAC0AC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26BEAC0AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAC268, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26BEAC268()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26BEAC2D4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26C00AB8C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
      result = sub_26C00ABFC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_26C00AB8C();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v32 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v30 = v1;
    while (1)
    {
      result = MEMORY[0x26D6996F0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_26C00B05C();
      sub_26C00924C();
      result = sub_26C00B0CC();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v6 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v15 = ~v10;
        while (1)
        {

          v16 = sub_26C00923C();

          if (v16)
          {
            break;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v6 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            v1 = v30;
            v5 = v32;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v30;
        v5 = v32;
        if (v7 == v32)
        {
          return v3;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v12) = v14 | v13;
        *(*(v3 + 48) + 8 * v11) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v31)
    {
      v20 = *(v1 + 32 + 8 * v19);
      sub_26C00B05C();

      sub_26C00924C();
      result = sub_26C00B0CC();
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      v24 = *(v6 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) != 0)
      {
        v26 = ~v21;
        do
        {

          v27 = sub_26C00923C();

          if (v27)
          {

            v5 = v32;
            goto LABEL_23;
          }

          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = *(v6 + 8 * (v22 >> 6));
          v25 = 1 << v22;
        }

        while (((1 << v22) & v24) != 0);
        v5 = v32;
      }

      *(v6 + 8 * v23) = v25 | v24;
      *(*(v3 + 48) + 8 * v22) = v20;
      v28 = *(v3 + 16);
      v8 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v8)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v29;
LABEL_23:
      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BEAC63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BEAC6AC()
{
  result = qword_28045ECC8;
  if (!qword_28045ECC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045ECC8);
  }

  return result;
}

unint64_t sub_26BEAC6F8()
{
  result = qword_28045ECE0;
  if (!qword_28045ECE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045ECD8, &qword_26C015C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045ECE0);
  }

  return result;
}

uint64_t sub_26BEAC75C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BE28F58;

  return sub_26BEAA868(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_26BEAC838()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BEAC880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26BE2E3F4;

  return sub_26BEAADFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26BEAC948()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BEAC988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26BE2E3F4;

  return sub_26BEAB220(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26BEACA58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26BEACAA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BEACB74()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26BEA98D0(v2, v3);
}

uint64_t sub_26BEACBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEACC08, 0, 0);
}

uint64_t sub_26BEACC08()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BEACD18;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEACD18()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAD4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BEACE98;
    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[7];

    return sub_26BE1D0E4((v2 + 5), v6, v4, v5);
  }
}

uint64_t sub_26BEACE98()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BEAD16C;
  }

  else
  {
    v2 = sub_26BEACFAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEACFAC()
{
  v1 = v0[6];
  v0[17] = v0[5];
  v0[18] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAD054;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD054()
{

  return MEMORY[0x2822009F8](sub_26BEAFB00, 0, 0);
}

uint64_t sub_26BEAD16C()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAD210;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD210()
{

  return MEMORY[0x2822009F8](sub_26BEAFAC4, 0, 0);
}

uint64_t sub_26BEAD328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEAD350, 0, 0);
}

uint64_t sub_26BEAD350()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[12] = v2;
  v0[13] = v3;
  v0[14] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26BEAD460;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAD460()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAD6F8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_26BEAD5E4;
    v4 = v2[10];
    v5 = v2[11];
    v6 = v2[8];
    v7 = v2[9];
    v8 = v2[7];

    return sub_26BE1E5B8((v2 + 5), v8, v6, v7, v4, v5);
  }
}

uint64_t sub_26BEAD5E4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26BEADB50;
  }

  else
  {
    v2 = sub_26BEAD928;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEAD6F8()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 128);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEAD928()
{
  v1 = v0[6];
  v0[19] = v0[5];
  v0[20] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAD9D0;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD9D0()
{

  return MEMORY[0x2822009F8](sub_26BEADAE8, 0, 0);
}

uint64_t sub_26BEADAE8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_26BEADB50()
{
  v0[22] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_26BEADBF4;

  return sub_26BEAB784();
}

uint64_t sub_26BEADBF4()
{

  return MEMORY[0x2822009F8](sub_26BEADD0C, 0, 0);
}

uint64_t sub_26BEADD0C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEADD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEADDA4, 0, 0);
}

uint64_t sub_26BEADDA4()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BEADEB4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEADEB4()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAE148, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BEAE034;
    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[7];

    return sub_26BE22F1C((v2 + 5), v6, v4, v5);
  }
}

uint64_t sub_26BEAE034()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BEAE5A0;
  }

  else
  {
    v2 = sub_26BEAE378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BEAE148()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 112);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEAE378()
{
  v1 = v0[6];
  v0[17] = v0[5];
  v0[18] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAE420;

  return sub_26BEAB784();
}

uint64_t sub_26BEAE420()
{

  return MEMORY[0x2822009F8](sub_26BEAE538, 0, 0);
}

uint64_t sub_26BEAE538()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_26BEAE5A0()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAE644;

  return sub_26BEAB784();
}

uint64_t sub_26BEAE644()
{

  return MEMORY[0x2822009F8](sub_26BEAE75C, 0, 0);
}

uint64_t sub_26BEAE75C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BEAE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_26BEAE7F4, 0, 0);
}

uint64_t sub_26BEAE7F4()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[9] = v2;
  v0[10] = v3;
  v0[11] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26BEAE908;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAE908()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAEDDC, 0, 0);
  }

  else
  {
    v3 = v2[7];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[14] = v4;
    *v4 = v2;
    v4[1] = sub_26BEAEAE8;

    return v6(v2 + 5);
  }
}

uint64_t sub_26BEAEAE8()
{
  v1 = *v0;

  *(v1 + 120) = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26BEAEC04, 0, 0);
}

uint64_t sub_26BEAEC04()
{
  v0[16] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAECA8;

  return sub_26BEAB784();
}

uint64_t sub_26BEAECA8()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 120);

  return v2(v3);
}

uint64_t sub_26BEAEDDC()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 104);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEAF004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEAF028, 0, 0);
}

uint64_t sub_26BEAF028()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BEAF13C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAF13C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAF5DC, 0, 0);
  }

  else
  {
    v3 = v2[6];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[13] = v4;
    *v4 = v2;
    v4[1] = sub_26BEAF31C;

    return v6(v2 + 16);
  }
}

uint64_t sub_26BEAF31C()
{
  v1 = *v0;

  *(v1 + 132) = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26BEAF420, 0, 0);
}

uint64_t sub_26BEAF420()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAF4C4;

  return sub_26BEAB784();
}

uint64_t sub_26BEAF4C4()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 132);

  return v2(v3);
}

uint64_t sub_26BEAF5DC()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BEAF804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED20, &qword_26C015CD8);
    v3 = sub_26C00ABFC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_26C00A48C();
      sub_26C00B05C();
      v27 = v7;
      sub_26C00A58C();
      v8 = sub_26C00B0CC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_26C00A48C();
        v18 = v17;
        if (v16 == sub_26C00A48C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_26C00AF2C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t MLS.KeySchedule.receiveExternalInit(kemOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.KeySchedule(0);
  sub_26BE2E1F0(v3 + *(v12 + 64), &v17, &qword_28045E6A8, &qword_26C0112B0);
  if (v18)
  {
    v22 = a3;
    sub_26BE2E410(&v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v14 + 40))(0xD000000000000014, 0x800000026C02C280, *(v3 + 8), a1, a2, v13, v14);
    if (!v4)
    {
      (*(v9 + 32))(v22, v11, v8);
    }

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_26BE2E258(&v17, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE01654();
    swift_allocError();
    *v16 = 31;
    v16[112] = 0;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for MLS.KeySchedule(uint64_t a1)
{
  result = qword_28045ED28;
  if (!qword_28045ED28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEAFD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v22 = a1;
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *v3;
  v23 = *(v3 + 8);
  v15 = *(v3 + 3);
  v16 = *(v3 + 4);
  v17 = type metadata accessor for MLS.KeySchedule(0);
  (*(v8 + 16))(v11, &v3[*(v17 + 48)], v7);
  sub_26BE82314();
  sub_26C009C5C();
  v26 = v14;
  v27 = v23;
  v28 = v15;
  v29 = v16;
  v18 = v30;
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v13, v24, v25);
  if (!v18)
  {
    if ((MEMORY[0x26D698700](v6, v22) & 1) == 0)
    {
      sub_26BE01654();
      swift_allocError();
      *v19 = 4;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 104) = 0;
      *(v19 + 112) = 23;
      swift_willThrow();
    }

    sub_26BEB658C(v6);
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_26BEAFF90(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  v78 = a1;
  v75 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v66 - v8;
  v9 = sub_26C009C8C();
  v81 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v66 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v66 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v66 - v28;
  v30 = *(a3 + 48);
  v83 = *(a3 + 32);
  v84 = v30;
  v85 = *(a3 + 64);
  v31 = *(a3 + 16);
  v82[0] = *a3;
  v82[1] = v31;
  v86 = xmmword_26C00BBD0;
  v87 = 0;
  v32 = v88;
  sub_26BFAF494(v82);
  v33 = v86;
  if (v32)
  {
    sub_26BE00258(v86, *(&v86 + 1));
    return;
  }

  v34 = v79;
  v35 = v80;
  v67 = v12;
  v88 = 0;
  v70 = v15;
  v73 = v18;
  v71 = v21;
  v36 = *(&v86 + 1) >> 62;
  if ((*(&v86 + 1) >> 62) > 1)
  {
    v37 = v81;
    v38 = v9;
    if (v36 != 2)
    {
LABEL_11:
      v40 = v34;
      goto LABEL_12;
    }

    v39 = *(v86 + 24);
  }

  else
  {
    v37 = v81;
    v38 = v9;
    if (!v36)
    {
      goto LABEL_11;
    }

    v39 = v86 >> 32;
  }

  v40 = v79;
  if (v39 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v79 = v24;
  v76 = v27;
  v68 = sub_26C00909C();
  v69 = v41;
  sub_26BE00258(v33, *(&v33 + 1));
  v42 = v35;
  *&v82[0] = sub_26BE125AC(*(v35 + 1));
  *(&v82[0] + 1) = v43;
  v72 = v29;
  sub_26C009C5C();
  v44 = v77;
  sub_26BE2E1F0(v40, v77, &qword_28045E708, &unk_26C011370);
  v45 = *(v37 + 48);
  if (v45(v44, 1, v38) == 1)
  {
    v46 = type metadata accessor for MLS.KeySchedule(0);
    v47 = *(v37 + 16);
    v47(v76, &v42[*(v46 + 60)], v38);
    if (v45(v44, 1, v38) != 1)
    {
      sub_26BE2E258(v44, &qword_28045E708, &unk_26C011370);
    }

    v48 = v72;
    v49 = v76;
  }

  else
  {
    v49 = v76;
    (*(v37 + 32))(v76, v44, v38);
    v47 = *(v37 + 16);
    v48 = v72;
  }

  v50 = v71;
  v51 = *v42;
  v52 = v78;
  v53 = v79;
  v47(v79, v49, v38);
  v47(v50, v52, v38);
  v47(v73, v48, v38);
  LODWORD(v80) = v51;
  LOBYTE(v86) = v51;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v54 = v83;
  v55 = v70;
  v56 = v68;
  v57 = v69;
  v58 = v88;
  sub_26BEB1F1C(v82, v68, v69, v50, v70);
  v88 = v58;
  if (v58)
  {
    sub_26BE00258(v56, v57);
    v59 = *(v81 + 8);
    v59(v73, v38);
    v59(v50, v38);
    v59(v53, v38);
    v59(v76, v38);
    v59(v72, v38);
  }

  else
  {
    v78 = v54;
    if (v80)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    LOWORD(v82[0]) = v60;
    v61 = v67;
    v47(v67, v55, v38);
    v62 = v74;
    v63 = v73;
    v47(v74, v73, v38);
    v64 = v81;
    (*(v81 + 56))(v62, 0, 1, v38);
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(v82, v61, v62, v56, v57, v75);

    v65 = *(v64 + 8);
    v65(v55, v38);
    v65(v63, v38);
    v65(v71, v38);
    v65(v79, v38);
    v65(v76, v38);
    v65(v72, v38);
  }
}

void *MLS.KeySchedule.encryptionKeys(size:)@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*v2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v15 = v10;
  v14 = v9;
  v11 = type metadata accessor for MLS.KeySchedule(0);
  (*(v6 + 16))(v8, &v2[*(v11 + 32)], v5);
  return MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v15, &v14, v8, a2);
}

uint64_t MLS.KeySchedule.computeConfirmationTag(confirmedTranscriptHash:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v16[8] = *v2;
  v17 = *(v2 + 8);
  v18 = v12;
  v19 = v13;
  v14 = type metadata accessor for MLS.KeySchedule(0);
  (*(v6 + 16))(v9, v2 + *(v14 + 48), v5);
  sub_26BE82314();

  sub_26C009C5C();
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v11, a1, a2);
  (*(v6 + 8))(v11, v5);
}

double MLS.KeySchedule.externalPublicKey.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.KeySchedule(0);
  sub_26BE2E1F0(v1 + *(v3 + 64), v9, &qword_28045E6A8, &qword_26C0112B0);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = *(v5 + 8);
    v7 = *(v6 + 32);
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1);
    v7(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_26BE2E258(v9, &qword_28045E6A8, &qword_26C0112B0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t MLS.KeySchedule.joinerSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.joinerSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.epochSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 24);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.epochSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 24);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.senderDataSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 28);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.senderDataSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 28);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.encryptionSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.encryptionSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.exporterSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 36);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.exporterSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 36);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.epochAuthenticator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 40);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.epochAuthenticator.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 40);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.externalSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 44);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.externalSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 44);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.confirmationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 48);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.confirmationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 48);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.membershipKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 52);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.membershipKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 52);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.resumptionPSK.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 56);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.resumptionPSK.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 56);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.initSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 60);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.initSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule(0) + 60);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void sub_26BEB17D4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a4;
  v51 = a3;
  v61 = a2;
  v49[1] = a5;
  v71 = *MEMORY[0x277D85DE8];
  v7 = sub_26C00A4EC();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26C009EDC();
  v60 = *(v63 - 8);
  v9 = MEMORY[0x28223BE20](v63);
  v50 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = v49 - v11;
  v12 = sub_26C009EAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26C009C8C();
  v54 = *(v59 - 8);
  v16 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v16);
  v18 = v49 - v17;
  v62 = *(a1 + 8);
  v19 = *(a1 + 32);
  sub_26C009C3C();
  v53 = v5;
  v20 = v65;
  v21 = v66;
  v22 = *(v13 + 16);
  v49[3] = v19;
  v49[2] = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v22(v15, v19 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v12);
  v23 = v58;
  sub_26C009E6C();
  (*(v13 + 8))(v15, v12);
  v24 = v18;
  *&v69 = v20;
  *(&v69 + 1) = v21;
  sub_26BE016A8();
  sub_26C009ECC();
  v25 = *(v60 + 8);
  v25(v23, v63);
  v26 = v20;
  v27 = v62;
  sub_26BE00258(v26, v21);
  sub_26BE82314();
  v28 = v59;
  sub_26C009C5C();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v27 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v55;
  sub_26C00A4DC();
  v30 = sub_26C00A49C();
  v32 = v31;
  (*(v56 + 8))(v29, v57);
  if (v32 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v33 = 5;
    v33[112] = 1;
    swift_willThrow();
    (*(v54 + 8))(v24, v28);
    return;
  }

  v69 = xmmword_26C00BBD0;
  v70 = 0;
  v64 = bswap32(v27) >> 16;
  v67 = MEMORY[0x277D838B0];
  v68 = MEMORY[0x277CC9C18];
  v65 = &v64;
  v66 = &v65;
  __swift_project_boxed_opaque_existential_1(&v65, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v34 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v32);
      goto LABEL_14;
    }

LABEL_12:
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v35 = HIDWORD(v30) - v30;
      goto LABEL_14;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = 0;
  if (v34 == 2)
  {
    v37 = *(v30 + 16);
    v36 = *(v30 + 24);
    v35 = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_14:
  v38 = v53;
  sub_26BF30414(v35);
  if (!v38)
  {
    sub_26BE11228(v30, v32);
    v39 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v39 != 2)
      {
        v40 = 0;
        goto LABEL_26;
      }

      v42 = *(v51 + 16);
      v41 = *(v51 + 24);
      v40 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v39)
    {
      v40 = BYTE6(v52);
LABEL_26:
      sub_26BF30414(v40);
      sub_26BE11228(v51, v52);
      sub_26C009E6C();
      v43 = *(&v69 + 1) >> 62;
      v44 = v24;
      if ((*(&v69 + 1) >> 62) > 1)
      {
        if (v43 != 2 || (*(v69 + 24) & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (!v43 || ((v69 >> 32) & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_36:
      v45 = sub_26C00909C();
      v47 = v46;
      v49[0] = v44;
      v48 = v50;
      sub_26C009EBC();
      sub_26BE00258(v45, v47);
      sub_26BE136AC(v30, v32);
      v25(v48, v63);
      (*(v54 + 8))(v49[0], v28);
      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(v51), v51))
    {
      v40 = HIDWORD(v51) - v51;
      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
  }

  sub_26BE136AC(v30, v32);
  (*(v54 + 8))(v24, v28);
LABEL_27:
  sub_26BE00258(v69, *(&v69 + 1));
}