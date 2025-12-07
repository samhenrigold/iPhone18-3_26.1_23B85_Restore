uint64_t sub_24A3FDBDC()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_24A3FDD58, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24A3FDD58()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24A3FDE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24A3A11D8(*(a1 + 16), 0);
  v4 = sub_24A40BDB8(&v6, v3 + 4, v2, a1);
  sub_24A3A13C0(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24A3FDE90(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *(type metadata accessor for FMFFriend(0) - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_24A4AAD40();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FDFD0, v2, 0);
}

uint64_t sub_24A3FDFD0()
{
  v44 = v0;
  v1 = *(v0[5] + 16);
  v0[16] = v1;
  if (v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v2 = v0;
    v3 = v0[15];
    v4 = v0[12];
    v5 = v2[11];
    v6 = v2[6];
    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);
    v8 = *(v4 + 16);
    v2[17] = v8;
    v2[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6, v5);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v2[15];
    v40 = v2;
    v15 = v2 + 11;
    v14 = v2[11];
    v13 = v15[1];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v16 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
      v17 = sub_24A4AC240();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v12, v14);
      v21 = sub_24A37BD58(v17, v19, &v43);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_24A376000, v9, v10, "FMFSecureLocationCtrl: stopLocating called, with priority: %s", v16, 0xCu);
      sub_24A37EEE0(v41);
      MEMORY[0x24C219130](v41, -1, -1);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    else
    {

      v20 = *(v13 + 8);
      v20(v12, v14);
    }

    v40[19] = v20;
    v24 = v40[10];
    v25 = v40[8];
    v26 = v40[5];
    v43 = MEMORY[0x277D84F90];
    sub_24A3DBDC8(0, v1, 0);
    v27 = v40;
    v28 = v43;
    v29 = *(v25 + 80);
    *(v40 + 50) = v29;
    v30 = v26 + ((v29 + 32) & ~v29);
    v42 = *(v25 + 72);
    v40[20] = v42;
    do
    {
      v31 = v27[10];
      sub_24A3A0ADC(v30, v31);
      v32 = *v31;
      v33 = *(v24 + 8);
      v34 = *(v24 + 32);

      sub_24A39A638(v31, type metadata accessor for FMFFriend);
      v43 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_24A3DBDC8((v35 > 1), v36 + 1, 1);
        v27 = v40;
        v28 = v43;
      }

      v27[21] = v28;
      *(v28 + 16) = v36 + 1;
      v37 = v28 + 32 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 48) = v34;
      *(v37 + 56) = 0;
      v30 += v42;
      *(v37 + 58) = 0;
      --v1;
    }

    while (v1);
    v38 = swift_task_alloc();
    v27[22] = v38;
    *v38 = v27;
    v38[1] = sub_24A3FE3F4;
    v39 = v27[6];

    return sub_24A4032F0(v28, v39);
  }

  else
  {

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_24A3FE3F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 56);

    return MEMORY[0x2822009F8](sub_24A3FE588, v6, 0);
  }
}

uint64_t sub_24A3FE588()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v0 + 136))(v1, *(v0 + 48), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x277D08FE0];
  if (v4 != v5)
  {
    if (v4 == *MEMORY[0x277D08FD8])
    {
      v6 = 0;
      v7 = *(v0 + 72);
      v8 = *(v0 + 56);
      do
      {
        v11 = *(v0 + 72);
        sub_24A3A0ADC(*(v0 + 40) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 160) * v6, v11);
        v12 = *v11;
        v13 = *(v7 + 8);

        sub_24A39A638(v11, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v14 = sub_24A39B2C8(v12, v13);
        LOBYTE(v11) = v15;

        if (v11)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(v8 + 120);
          *(v8 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
          }

          sub_24A4A7078(v14, v17, v9);
          *(v8 + 120) = v17;
        }

        ++v6;
        v10 = *(v0 + 128);
        swift_endAccess();
      }

      while (v6 != v10);
      (*(*(v0 + 96) + 104))(*(v0 + 104), v5, *(v0 + 88));
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_24A3FE864;
      v21 = *(v0 + 104);
      v22 = *(v0 + 40);

      return sub_24A3FD324(v22, v21);
    }

    (*(v0 + 152))(*(v0 + 112), *(v0 + 88));
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24A3FE864()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = v0;

  v3(v4, v5);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24A3FEA9C;
  }

  else
  {
    v7 = sub_24A3FEA08;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24A3FEA08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3FEA9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3FEB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_24A4AAD40();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v2 + 128);
  if (!*(v13 + 16))
  {
LABEL_13:
    v26 = 0;
    v27 = 0;
    v18 = 0;
    v25 = 0;
    if (!*(v3 + 144))
    {
      goto LABEL_15;
    }

LABEL_14:

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();

    goto LABEL_15;
  }

  v14 = sub_24A39B2C8(a1, a2);
  if ((v15 & 1) == 0)
  {

    goto LABEL_13;
  }

  v44 = v10;
  v45 = a1;
  v16 = *(v13 + 56) + 32 * v14;
  v17 = *v16;
  v42 = *(v16 + 8);
  v43 = v17;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 25);
  v21 = *(v16 + 26);

  if (v20)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 | v19;
  if (v21)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 | v24;
  if (v19 & 1) != 0 || (v20)
  {
    v39 = *MEMORY[0x277D08FD8];
    v32 = v44;
    v33 = *(v44 + 104);
    v40 = v44 + 104;
    v41 = v33;
    v33(v12);

    sub_24A3FFB54(v45, a2, v18, 0x10000, v12);

    v34 = *(v32 + 8);
    v44 = v32 + 8;
    v38 = v34;
    v34(v12, v9);
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    *(inited + 32) = v45;
    v36 = inited + 32;
    *(inited + 40) = a2;
    v41(v12, v39, v9);

    sub_24A3FF864(0, inited, v12);
    a1 = v45;
    swift_setDeallocating();
    sub_24A406964(v36);
    v38(v12, v9);
  }

  else
  {
    a1 = v45;
  }

  v27 = v42;
  v26 = v43;
  if (*(v3 + 144))
  {
    goto LABEL_14;
  }

LABEL_15:
  v28 = sub_24A4ABB70();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v29;
  *(v30 + 40) = a1;
  *(v30 + 48) = a2;
  *(v30 + 56) = v26;
  *(v30 + 64) = v27;
  *(v30 + 72) = v18;
  *(v30 + 82) = BYTE2(v25);
  *(v30 + 80) = v25;

  *(v3 + 144) = sub_24A432D64(0, 0, v8, &unk_24A4B7298, v30);
}

uint64_t sub_24A3FEF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_24A4AAD40();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_24A4AC010();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FF094, 0, 0);
}

uint64_t sub_24A3FF094()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v0[12] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v2 + 16) = 3;
    *(v2 + 24) = v0 + 12;
    sub_24A4ABD70();

    v3 = sub_24A4AC3E0();
    v5 = v4;
    sub_24A4AC2E0();
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_24A3FF280;

    return sub_24A405F7C(v3, v5, 0, 0, 1);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24A3FF280()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v3 = sub_24A3FF518;
  }

  else
  {
    v3 = sub_24A3FF3E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A3FF3E8(uint64_t a1)
{
  v2 = *(v1 + 208);
  sub_24A4ABBB0();
  if (v2)
  {

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    if (*(v1 + 128))
    {
    }

    else
    {
      v5 = MEMORY[0x277D84FA0];
    }

    *(v1 + 216) = v5;
    v6 = *(v1 + 192);
    v8 = *(v1 + 152);
    v7 = *(v1 + 160);
    *(v1 + 264) = *MEMORY[0x277D08FD8];
    v9 = *(v8 + 104);
    *(v1 + 224) = v9;
    *(v1 + 232) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v7);

    return MEMORY[0x2822009F8](sub_24A3FF590, v6, 0);
  }
}

uint64_t sub_24A3FF518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3FF590(__n128 a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_24A3FFB54(v1[14], v1[15], v1[27], 65792, v2);

  v5 = *(v3 + 8);
  v1[30] = v5;
  v1[31] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_24A3FF660, 0, 0);
}

uint64_t sub_24A3FF660()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 264);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  v1(v4, v2, v5);

  return MEMORY[0x2822009F8](sub_24A3FF73C, v3, 0);
}

uint64_t sub_24A3FF73C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[20];
  v4 = v0[18];
  sub_24A3FF864(2, v1, v3);
  swift_setDeallocating();
  sub_24A406964(v1 + 32);
  v2(v3, v4);

  return MEMORY[0x2822009F8](sub_24A3FF7EC, 0, 0);
}

uint64_t sub_24A3FF7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24A3FF864(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AAD40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = a3;
      v26 = v9;
      v27 = v7;
      v28 = v6;
      v29 = Strong;
      v30 = MEMORY[0x277D84F90];
      sub_24A3DBD70(0, v10, 0);
      v12 = v30;
      v13 = (a2 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v30 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_24A3DBD70((v16 > 1), v17 + 1, 1);
          v12 = v30;
        }

        *(v12 + 16) = v17 + 1;
        v18 = v12 + 24 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        *(v18 + 48) = a1;
        v13 += 2;
        --v10;
      }

      while (v10);
      v20 = v26;
      v19 = v27;
      v21 = v28;
      (*(v27 + 16))(v26, v25, v28);
      v22 = (*(v19 + 88))(v20, v21);
      if (v22 == *MEMORY[0x277D08FE0] || v22 == *MEMORY[0x277D08FD8])
      {
        v23 = *(v29 + 88);
        MEMORY[0x28223BE20](v22);
        *(&v24 - 2) = v12;
        *(&v24 - 1) = v23;

        sub_24A4ABD70();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v19 + 8))(v20, v21);
      }
    }
  }
}

uint64_t sub_24A3FFB54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24A4AAD40();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a5, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D08FE0])
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + 120);
    *(v6 + 120) = 0x8000000000000000;
    sub_24A430468(a1, a2, a3, a4 & 0x10101, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 120) = v21;
    return swift_endAccess();
  }

  if (v17 == *MEMORY[0x277D08FD8])
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + 128);
    *(v6 + 128) = 0x8000000000000000;
    sub_24A430468(a1, a2, a3, a4 & 0x10101, a1, a2, v19);

    *(v6 + 128) = v21;
    return swift_endAccess();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24A3FFDAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AB3F0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_24A4AB400();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v3[17] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v3[18] = swift_task_alloc();
  v6 = sub_24A4AAD40();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FFFBC, v2, 0);
}

uint64_t sub_24A3FFFBC()
{
  v306 = v0;
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    v2 = *(v1 + 192);
    v3 = *(v1 + 152);
    v4 = *(v1 + 160);
    v5 = *(v1 + 72);
    v6 = sub_24A4AB630();
    *(v1 + 200) = sub_24A378E18(v6, qword_27EF4E260);
    v7 = *(v4 + 16);
    *(v1 + 208) = v7;
    *(v1 + 216) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v2, v5, v3);
    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCB0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 192);
    v12 = *(v1 + 152);
    v13 = *(v1 + 160);
    v283 = v1;
    if (v10)
    {
      v293 = v9;
      v14 = swift_slowAlloc();
      v298 = v7;
      v305[0] = swift_slowAlloc();
      v15 = v305[0];
      *v14 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
      v16 = sub_24A4AC240();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v12);
      v20 = v16;
      v1 = v283;
      v21 = sub_24A37BD58(v20, v18, v305);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_24A376000, v8, v293, "FMFSecureLocationCtrl: updateLocating called mode: %s, determining whether we should add friends to the stream", v14, 0xCu);
      sub_24A37EEE0(v15);
      v22 = v15;
      v7 = v298;
      MEMORY[0x24C219130](v22, -1, -1);
      v23 = v14;
      v24 = v19;
      MEMORY[0x24C219130](v23, -1, -1);
    }

    else
    {

      v24 = *(v13 + 8);
      v24(v11, v12);
    }

    *(v1 + 224) = v24;
    v25 = *(v1 + 184);
    v26 = *(v1 + 152);
    v27 = *(v1 + 160);
    v7(v25, *(v1 + 72), v26);
    v28 = (*(v27 + 88))(v25, v26);
    v29 = v28;
    v30 = *MEMORY[0x277D08FE0];
    *(v1 + 296) = *MEMORY[0x277D08FE0];
    if (v28 != v30)
    {
      if (v28 == *MEMORY[0x277D08FD8])
      {
        v42 = *(v1 + 64);
        v43 = *(v42 + 16);
        v44 = MEMORY[0x277D84F90];
        v254 = v43;
        v276 = v28;
        if (v43)
        {
          v45 = v24;
          v305[0] = MEMORY[0x277D84F90];
          sub_24A3DBDA8(0, v43, 0);
          v44 = v305[0];
          v46 = *(v305[0] + 16);
          v47 = 16 * v46;
          v48 = (v42 + 40);
          do
          {
            v50 = *(v48 - 1);
            v49 = *v48;
            v305[0] = v44;
            v51 = *(v44 + 24);

            if (v46 >= v51 >> 1)
            {
              sub_24A3DBDA8((v51 > 1), v46 + 1, 1);
              v44 = v305[0];
            }

            *(v44 + 16) = v46 + 1;
            v52 = v44 + v47;
            *(v52 + 32) = v50;
            *(v52 + 40) = v49;
            v47 += 16;
            v48 += 4;
            ++v46;
            --v43;
          }

          while (v43);
          v1 = v283;
          v24 = v45;
          v29 = v276;
        }

        v111 = *(v1 + 80);
        v112 = sub_24A3999E0(v44);

        swift_beginAccess();
        v253 = v111;
        v113 = *(v111 + 128);
        v114 = *(v113 + 16);
        v281 = v24;
        v250 = v113;
        if (v114)
        {
          v115 = sub_24A3A11D8(v114, 0);
          v301 = sub_24A40BDB8(v305, v115 + 4, v114, v113);
          v116 = v305[0];
          swift_bridgeObjectRetain_n();
          v117 = sub_24A3A13C0(v116);
          if (v301 != v114)
          {
            __break(1u);
            return MEMORY[0x28215FB30](v117, v118, v119, v120);
          }

          v29 = v276;
        }

        else
        {

          v115 = MEMORY[0x277D84F90];
        }

        v121 = v254;
        v122 = sub_24A3999E0(v115);

        if (*(v122 + 16) <= *(v112 + 16) >> 3)
        {
          v305[0] = v112;

          sub_24A472DCC(v122);
          v123 = v305[0];
        }

        else
        {

          v123 = sub_24A472EF8(v122, v112);
        }

        if (*(v112 + 16) <= *(v122 + 16) >> 3)
        {
          v305[0] = v122;
          sub_24A472DCC(v112);

          v260 = v305[0];
        }

        else
        {
          v260 = sub_24A472EF8(v112, v122);
        }

        v124 = 0;
        v125 = v123 + 56;
        v126 = -1;
        v127 = -1 << *(v123 + 32);
        v265 = *(v1 + 80);
        if (-v127 < 64)
        {
          v126 = ~(-1 << -v127);
        }

        v128 = v126 & *(v123 + 56);
        v129 = *(v1 + 64);
        v130 = (63 - v127) >> 6;
        v263 = (*(v1 + 160) + 104);
        v255 = (v129 + 58);
        v251 = (v129 + 40);
        v93 = MEMORY[0x277D84F90];
        v256 = v130;
        v257 = v123 + 56;
        v252 = v123;
LABEL_89:
        v131 = v124;
        v285 = v93;
        if (!v128)
        {
          goto LABEL_91;
        }

        do
        {
          v132 = v131;
LABEL_94:
          logb = ((v128 - 1) & v128);
          v271 = v132;
          v133 = (*(v123 + 48) + ((v132 << 10) | (16 * __clz(__rbit64(v128)))));
          v135 = *v133;
          v134 = v133[1];
          v136 = -1;
          v137 = v255;
          while (1)
          {
            v138 = v137 + 32;
            if (v121 == ++v136)
            {
              break;
            }

            v139 = *(v137 - 26);
            v140 = *(v137 - 18);
            v302 = *(v137 - 10);
            v288 = *(v137 - 2);
            v296 = *(v137 - 1);
            v291 = *v137;
            if (v139 == v135 && v140 == v134)
            {
              v139 = v135;
LABEL_105:
              v273 = v139;
              swift_bridgeObjectRetain_n();

              v143 = sub_24A4AB600();
              v144 = sub_24A4ABCE0();

              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                v305[0] = swift_slowAlloc();
                v146 = v305[0];
                *v145 = 136315138;
                v147 = sub_24A37BD58(v135, v134, v305);

                *(v145 + 4) = v147;
                _os_log_impl(&dword_24A376000, v143, v144, "FMFSecureLocationCtrl: Insertion detected, will start live locating %s", v145, 0xCu);
                sub_24A37EEE0(v146);
                v148 = v146;
                v29 = v276;
                MEMORY[0x24C219130](v148, -1, -1);
                MEMORY[0x24C219130](v145, -1, -1);
              }

              else
              {
              }

              v149 = *(v1 + 176);
              v150 = *(v1 + 144);
              v151 = *(v1 + 152);
              v258 = *v263;
              (*v263)(v149, v29, v151);

              sub_24A3FFB54(v273, v140, v302, 1, v149);

              v281(v149, v151);
              v152 = sub_24A4AAAD0();
              (*(*(v152 - 8) + 56))(v150, 1, 1, v152);
              v153 = *(v253 + 128);

              sub_24A424CB4(v273, v140, v150, v153);

              sub_24A37EF2C(v150, &qword_27EF3F460, &unk_24A4B53B0);
              v305[0] = MEMORY[0x277D84F90];
              sub_24A3DBDA8(0, v121, 0);
              v154 = v305[0];
              v155 = *(v305[0] + 16);
              v156 = 16 * v155;
              v157 = v251;
              v158 = v121;
              do
              {
                v160 = *(v157 - 1);
                v159 = *v157;
                v305[0] = v154;
                v161 = v155 + 1;
                v162 = *(v154 + 24);

                if (v155 >= v162 >> 1)
                {
                  sub_24A3DBDA8((v162 > 1), v161, 1);
                  v154 = v305[0];
                }

                *(v154 + 16) = v161;
                v163 = v154 + v156;
                *(v163 + 32) = v160;
                *(v163 + 40) = v159;
                v156 += 16;
                v157 += 4;
                ++v155;
                --v158;
              }

              while (v158);
              v1 = v283;
              v164 = *(v283 + 176);
              v165 = *(v283 + 152);
              v29 = v276;
              v258(v164, v276, v165);
              sub_24A3FF864(1, v154, v164);

              v281(v164, v165);
              if (*(v265 + 144))
              {

                sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
                sub_24A4ABBA0();
              }

              v166 = *(v283 + 136);
              v167 = sub_24A4ABB70();
              (*(*(v167 - 8) + 56))(v166, 1, 1, v167);
              v168 = swift_allocObject();
              swift_weakInit();
              v169 = swift_allocObject();
              *(v169 + 16) = 0;
              *(v169 + 24) = 0;
              *(v169 + 32) = v168;
              *(v169 + 40) = v273;
              *(v169 + 48) = v140;
              *(v169 + 56) = v302;
              *(v169 + 64) = v288;
              *(v169 + 65) = v296;
              *(v169 + 66) = v291;

              *(v265 + 144) = sub_24A432D64(0, 0, v166, &unk_24A4B7278, v169);

              v123 = v252;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v285 = sub_24A3EDB8C(0, *(v285 + 2) + 1, 1, v285);
              }

              v171 = *(v285 + 2);
              v170 = *(v285 + 3);
              v121 = v254;
              v172 = v273;
              if (v171 >= v170 >> 1)
              {
                v285 = sub_24A3EDB8C((v170 > 1), v171 + 1, 1, v285);
                v172 = v273;
              }

              *(v285 + 2) = v171 + 1;
              v173 = &v285[32 * v171];
              *(v173 + 4) = v172;
              *(v173 + 5) = v140;
              v93 = v285;
              *(v173 + 6) = v302;
              v173[56] = v288;
              v173[57] = v296;
              v173[58] = v291;
              v130 = v256;
              v125 = v257;
              v128 = logb;
              v124 = v271;
              goto LABEL_89;
            }

            v142 = sub_24A4AC270();
            v137 = v138;
            if (v142)
            {
              goto LABEL_105;
            }
          }

          v128 = logb;
          v131 = v271;
          v93 = v285;
          v130 = v256;
          v125 = v257;
        }

        while (logb);
LABEL_91:
        while (1)
        {
          v132 = v131 + 1;
          if (__OFADD__(v131, 1))
          {
            goto LABEL_184;
          }

          if (v132 >= v130)
          {

            v174 = 0;
            v175 = -1;
            v176 = -1 << *(v260 + 32);
            if (-v176 < 64)
            {
              v175 = ~(-1 << -v176);
            }

            v177 = v175 & *(v260 + 56);
            v178 = (63 - v176) >> 6;
            v91 = MEMORY[0x277D84F90];
            v179 = v250;
            while (v177)
            {
              v180 = v177;
LABEL_128:
              v177 = (v180 - 1) & v180;
              if (*(v179 + 16))
              {
                v182 = (*(v260 + 48) + ((v174 << 10) | (16 * __clz(__rbit64(v180)))));
                v183 = *v182;
                v184 = v182[1];

                v185 = sub_24A39B2C8(v183, v184);
                if (v186)
                {
                  v187 = *(v179 + 56) + 32 * v185;
                  v188 = *(v187 + 8);
                  v289 = *v187;
                  v297 = *(v187 + 16);
                  v278 = *(v187 + 25);
                  v282 = *(v187 + 24);
                  v274 = *(v187 + 26);

                  v292 = v188;

                  v303 = sub_24A4AB600();
                  v189 = sub_24A4ABCE0();

                  if (os_log_type_enabled(v303, v189))
                  {
                    v190 = swift_slowAlloc();
                    v191 = swift_slowAlloc();
                    v305[0] = v191;
                    *v190 = 136315138;
                    v192 = sub_24A37BD58(v183, v184, v305);

                    *(v190 + 4) = v192;
                    _os_log_impl(&dword_24A376000, v303, v189, "FMFSecureLocationCtrl: Removal detected, will stop live locating %s", v190, 0xCu);
                    sub_24A37EEE0(v191);
                    v193 = v191;
                    v179 = v250;
                    MEMORY[0x24C219130](v193, -1, -1);
                    MEMORY[0x24C219130](v190, -1, -1);
                  }

                  else
                  {
                  }

                  v1 = v283;
                  v93 = v285;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v91 = sub_24A3EDB8C(0, *(v91 + 2) + 1, 1, v91);
                  }

                  v195 = *(v91 + 2);
                  v194 = *(v91 + 3);
                  if (v195 >= v194 >> 1)
                  {
                    v91 = sub_24A3EDB8C((v194 > 1), v195 + 1, 1, v91);
                  }

                  *(v91 + 2) = v195 + 1;
                  v196 = &v91[32 * v195];
                  *(v196 + 4) = v289;
                  *(v196 + 5) = v292;
                  *(v196 + 6) = v297;
                  v196[56] = v282;
                  v196[57] = v278;
                  v196[58] = v274;
                }

                else
                {

                  v1 = v283;
                  v93 = v285;
                }
              }
            }

            while (1)
            {
              v181 = v174 + 1;
              if (__OFADD__(v174, 1))
              {
                goto LABEL_185;
              }

              if (v181 >= v178)
              {

                goto LABEL_142;
              }

              v180 = *(v260 + 56 + 8 * v181);
              ++v174;
              if (v180)
              {
                v174 = v181;
                goto LABEL_128;
              }
            }
          }

          v128 = *(v125 + 8 * v132);
          ++v131;
          if (v128)
          {
            goto LABEL_94;
          }
        }
      }

      v24(*(v1 + 184), *(v1 + 152));
      goto LABEL_141;
    }

    v275 = v28;
    v279 = v24;
    v31 = *(v1 + 64);
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v305[0] = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v32, 0);
      v33 = v305[0];
      v34 = *(v305[0] + 16);
      v35 = 16 * v34;
      v36 = (v31 + 40);
      v37 = v32;
      do
      {
        v39 = *(v36 - 1);
        v38 = *v36;
        v305[0] = v33;
        v40 = *(v33 + 24);

        if (v34 >= v40 >> 1)
        {
          sub_24A3DBDA8((v40 > 1), v34 + 1, 1);
          v33 = v305[0];
        }

        *(v33 + 16) = v34 + 1;
        v41 = v33 + v35;
        *(v41 + 32) = v39;
        *(v41 + 40) = v38;
        v35 += 16;
        v36 += 4;
        ++v34;
        --v37;
      }

      while (v37);
      v1 = v283;
    }

    v53 = *(v1 + 80);
    v54 = sub_24A3999E0(v33);

    swift_beginAccess();
    v55 = *(v53 + 120);
    swift_bridgeObjectRetain_n();
    v56 = sub_24A3FDE00(v55);
    v57 = sub_24A3999E0(v56);

    if (*(v57 + 16) <= *(v54 + 16) >> 3)
    {
      v305[0] = v54;

      sub_24A472DCC(v57);
      v58 = v305[0];
    }

    else
    {

      v58 = sub_24A472EF8(v57, v54);
    }

    if (*(v54 + 16) <= *(v57 + 16) >> 3)
    {
      v305[0] = v57;
      sub_24A472DCC(v54);

      v290 = v305[0];
      if (*(v58 + 16))
      {
        goto LABEL_28;
      }

LABEL_27:
      if (*(v290 + 16))
      {
        goto LABEL_28;
      }

LABEL_141:
      v91 = MEMORY[0x277D84F90];
      v93 = MEMORY[0x277D84F90];
      goto LABEL_142;
    }

    v290 = sub_24A472EF8(v54, v57);

    if (!*(v58 + 16))
    {
      goto LABEL_27;
    }

LABEL_28:
    v59 = 0;
    v60 = (v58 + 56);
    v61 = -1;
    v62 = -1 << *(v58 + 32);
    if (-v62 < 64)
    {
      v61 = ~(-1 << -v62);
    }

    isa = v61 & *(v58 + 56);
    v64 = (63 - v62) >> 6;
    v259 = (*(v1 + 160) + 104);
    v261 = v32 + 1;
    v262 = *(v1 + 64) + 58;
    v65 = MEMORY[0x277D84F90];
    v269 = v58;
    v272 = v55;
    v264 = v64;
    log = (v58 + 56);
LABEL_31:
    v284 = v65;
    v66 = v59;
    if (!isa)
    {
      goto LABEL_33;
    }

    do
    {
      v67 = v66;
LABEL_36:
      v68 = (*(v58 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(isa)))));
      v69 = *v68;
      v70 = v68[1];

      v71 = sub_24A4AB600();
      v72 = sub_24A4ABCE0();
      v299 = v67;
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v305[0] = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_24A37BD58(v69, v70, v305);
        _os_log_impl(&dword_24A376000, v71, v72, "FMFSecureLocationCtrl: Insertion detected, will start shallow locating %s", v73, 0xCu);
        sub_24A37EEE0(v74);
        MEMORY[0x24C219130](v74, -1, -1);
        MEMORY[0x24C219130](v73, -1, -1);
      }

      v294 = (isa - 1) & isa;
      v75 = v261;
      v76 = v262;
      while (--v75)
      {
        v1 = *(v76 - 26);
        v77 = *(v76 - 18);
        v78 = *(v76 - 10);
        v79 = *(v76 - 2);
        v80 = *(v76 - 1);
        v81 = *v76;
        if (v1 == v69 && v77 == v70)
        {
          v1 = v69;
LABEL_49:
          v83 = *(v283 + 176);
          v286 = *(v283 + 152);
          (*v259)(v83, v275);
          swift_bridgeObjectRetain_n();

          sub_24A3FFB54(v69, v70, v78, 0, v83);

          v279(v83, v286);
          v65 = v284;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_24A3EDB8C(0, *(v284 + 2) + 1, 1, v284);
          }

          v85 = *(v65 + 2);
          v84 = *(v65 + 3);
          if (v85 >= v84 >> 1)
          {
            v65 = sub_24A3EDB8C((v84 > 1), v85 + 1, 1, v65);
          }

          *(v65 + 2) = v85 + 1;
          v86 = &v65[32 * v85];
          *(v86 + 4) = v1;
          *(v86 + 5) = v77;
          *(v86 + 6) = v78;
          v86[56] = v79;
          v86[57] = v80;
          v86[58] = v81;
          v58 = v269;
          v55 = v272;
          v64 = v264;
          v60 = log;
          isa = v294;
          v59 = v299;
          goto LABEL_31;
        }

        v76 += 32;
        if (sub_24A4AC270())
        {
          goto LABEL_49;
        }
      }

      isa = v294;
      v66 = v299;
      v58 = v269;
      v55 = v272;
      v64 = v264;
      v60 = log;
    }

    while (v294);
LABEL_33:
    v67 = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
      break;
    }

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
    swift_once();
  }

  if (v67 < v64)
  {
    isa = v60[v67].isa;
    ++v66;
    if (isa)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v87 = 0;
  v88 = -1;
  v89 = -1 << *(v290 + 32);
  if (-v89 < 64)
  {
    v88 = ~(-1 << -v89);
  }

  v90 = v88 & *(v290 + 56);
  v1 = (63 - v89) >> 6;
  v91 = MEMORY[0x277D84F90];
  while (v90)
  {
    v92 = v90;
LABEL_64:
    v90 = (v92 - 1) & v92;
    if (*(v55 + 16))
    {
      v95 = (*(v290 + 48) + ((v87 << 10) | (16 * __clz(__rbit64(v92)))));
      v97 = *v95;
      v96 = v95[1];

      v98 = sub_24A39B2C8(v97, v96);
      if (v99)
      {
        v100 = *(v55 + 56) + 32 * v98;
        v101 = *(v100 + 8);
        v287 = *v100;
        v102 = *(v100 + 16);
        v277 = *(v100 + 25);
        v280 = *(v100 + 24);
        v270 = *(v100 + 26);

        v300 = v101;

        v103 = sub_24A4AB600();
        v104 = sub_24A4ABCE0();

        loga = v103;
        v295 = v102;
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v305[0] = v106;
          *v105 = 136315138;
          v107 = sub_24A37BD58(v97, v96, v305);

          *(v105 + 4) = v107;
          _os_log_impl(&dword_24A376000, loga, v104, "FMFSecureLocationCtrl: Removal detected, will stop shallow locating %s", v105, 0xCu);
          sub_24A37EEE0(v106);
          MEMORY[0x24C219130](v106, -1, -1);
          MEMORY[0x24C219130](v105, -1, -1);
        }

        else
        {
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_24A3EDB8C(0, *(v91 + 2) + 1, 1, v91);
        }

        v109 = *(v91 + 2);
        v108 = *(v91 + 3);
        if (v109 >= v108 >> 1)
        {
          v91 = sub_24A3EDB8C((v108 > 1), v109 + 1, 1, v91);
        }

        *(v91 + 2) = v109 + 1;
        v110 = &v91[32 * v109];
        *(v110 + 4) = v287;
        *(v110 + 5) = v300;
        *(v110 + 6) = v295;
        v110[56] = v280;
        v110[57] = v277;
        v110[58] = v270;
        v55 = v272;
      }

      else
      {
      }
    }
  }

  v93 = v284;
  while (1)
  {
    v94 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_183;
    }

    if (v94 >= v1)
    {
      break;
    }

    v92 = *(v290 + 56 + 8 * v94);
    ++v87;
    if (v92)
    {
      v87 = v94;
      goto LABEL_64;
    }
  }

  v1 = v283;
LABEL_142:
  *(v1 + 232) = v91;
  *(v1 + 240) = v93;
  if (*(v91 + 2))
  {
    v197 = swift_task_alloc();
    *(v1 + 248) = v197;
    *v197 = v1;
    v197[1] = sub_24A401C10;
    v198 = *(v1 + 72);

    return sub_24A4032F0(v91, v198);
  }

  v200 = *(v93 + 2);
  if (!v200)
  {

    goto LABEL_176;
  }

  v305[0] = MEMORY[0x277D84F90];
  sub_24A3DBDA8(0, v200, 0);
  v201 = v305[0];
  v202 = *(v305[0] + 16);
  v203 = 16 * v202;
  v204 = (v93 + 40);
  do
  {
    v206 = *(v204 - 1);
    v205 = *v204;
    v305[0] = v201;
    v207 = v202 + 1;
    v208 = *(v201 + 24);

    if (v202 >= v208 >> 1)
    {
      sub_24A3DBDA8((v208 > 1), v207, 1);
      v201 = v305[0];
    }

    *(v201 + 16) = v207;
    v209 = v201 + v203;
    *(v209 + 32) = v206;
    *(v209 + 40) = v205;
    v203 += 16;
    v204 += 4;
    ++v202;
    --v200;
  }

  while (v200);
  v210 = *(v283 + 224);
  v211 = *(v283 + 208);
  v213 = *(v283 + 168);
  v212 = *(v283 + 176);
  v214 = *(v283 + 152);
  v215 = *(v283 + 72);
  (*(*(v283 + 160) + 104))(v212, *(v283 + 296), v214);
  sub_24A3FF864(1, v201, v212);

  v210(v212, v214);
  v211(v213, v215, v214);

  v216 = sub_24A4AB600();
  v217 = sub_24A4ABCE0();
  v218 = os_log_type_enabled(v216, v217);
  v219 = *(v283 + 224);
  v220 = *(v283 + 168);
  v221 = *(v283 + 152);
  if (!v218)
  {

    v219(v220, v221);
    v229 = *(v93 + 2);
    if (!v229)
    {
      goto LABEL_172;
    }

LABEL_153:
    v1 = 0;
    v230 = v93 + 48;
    v231 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 >= *(v93 + 2))
      {
        goto LABEL_186;
      }

      v233 = sub_24A3F5BAC(v232);

      v234 = *(v233 + 16);
      v235 = v231[2];
      v236 = v235 + v234;
      if (__OFADD__(v235, v234))
      {
        goto LABEL_187;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v236 <= v231[3] >> 1)
      {
        if (!*(v233 + 16))
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (v235 <= v236)
        {
          v238 = v235 + v234;
        }

        else
        {
          v238 = v235;
        }

        v231 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v238, 1, v231);
        if (!*(v233 + 16))
        {
LABEL_154:

          if (v234)
          {
            goto LABEL_188;
          }

          goto LABEL_155;
        }
      }

      v239 = (v231[3] >> 1) - v231[2];
      sub_24A4AB220();
      if (v239 < v234)
      {
        goto LABEL_189;
      }

      swift_arrayInitWithCopy();

      if (v234)
      {
        v240 = v231[2];
        v241 = __OFADD__(v240, v234);
        v242 = v240 + v234;
        if (v241)
        {
          goto LABEL_190;
        }

        v231[2] = v242;
      }

LABEL_155:
      ++v1;
      v230 += 32;
      if (v229 == v1)
      {
        goto LABEL_173;
      }
    }
  }

  v222 = swift_slowAlloc();
  v304 = swift_slowAlloc();
  v305[0] = v304;
  *v222 = 134218242;
  *(v222 + 4) = *(v93 + 2);

  *(v222 + 12) = 2080;
  sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
  v223 = sub_24A4AC240();
  v224 = v219;
  v225 = v223;
  v227 = v226;
  v224(v220, v221);
  v228 = sub_24A37BD58(v225, v227, v305);

  *(v222 + 14) = v228;
  _os_log_impl(&dword_24A376000, v216, v217, "FMFSecureLocationCtrl: add handles to location stream: %ld friends, mode: %s", v222, 0x16u);
  sub_24A37EEE0(v304);
  MEMORY[0x24C219130](v304, -1, -1);
  MEMORY[0x24C219130](v222, -1, -1);

  v229 = *(v93 + 2);
  if (v229)
  {
    goto LABEL_153;
  }

LABEL_172:
  v231 = MEMORY[0x277D84F90];
LABEL_173:
  v1 = v283;
  *(v283 + 264) = v231;
  v243 = *(v283 + 80);

  v244 = *(v243 + 112);
  *(v283 + 272) = v244;
  if (v244)
  {
    v245 = objc_opt_self();

    v246 = [v245 mainBundle];
    v247 = [v246 bundleIdentifier];

    if (v247)
    {
      sub_24A4AB850();
    }

    (*(*(v283 + 96) + 104))(*(v283 + 104), *MEMORY[0x277D094A8], *(v283 + 88));
    sub_24A4AB3E0();
    v249 = swift_task_alloc();
    *(v283 + 280) = v249;
    *v249 = v283;
    v249[1] = sub_24A40243C;
    v120 = *(v283 + 128);
    v118 = *(v283 + 72);
    v117 = v231;
    v119 = 1;

    return MEMORY[0x28215FB30](v117, v118, v119, v120);
  }

LABEL_176:

  v248 = *(v1 + 8);

  return v248();
}

uint64_t sub_24A401C10()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[10];

    return MEMORY[0x2822009F8](sub_24A401DC8, v5, 0);
  }
}

uint64_t sub_24A401DC8()
{
  v62 = v0;
  v1 = *(v0 + 240);
  v2 = *(v1 + 16);
  if (!v2)
  {

LABEL_31:

    v53 = *(v0 + 8);

    return v53();
  }

  v61 = MEMORY[0x277D84F90];
  sub_24A3DBDA8(0, v2, 0);
  v3 = v61;
  v4 = v61[2];
  v5 = 16 * v4;
  v60 = v1;
  v6 = (v1 + 40);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v61 = v3;
    v9 = v4 + 1;
    v10 = *(v3 + 24);

    if (v4 >= v10 >> 1)
    {
      sub_24A3DBDA8((v10 > 1), v9, 1);
      v3 = v61;
    }

    *(v3 + 16) = v9;
    v11 = v3 + v5;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v5 += 16;
    v6 += 4;
    ++v4;
    --v2;
  }

  while (v2);
  v12 = *(v59 + 224);
  v56 = *(v59 + 208);
  v14 = *(v59 + 168);
  v13 = *(v59 + 176);
  v15 = *(v59 + 152);
  v16 = *(v59 + 72);
  (*(*(v59 + 160) + 104))(v13, *(v59 + 296), v15);
  sub_24A3FF864(1, v3, v13);

  v12(v13, v15);
  v56(v14, v16, v15);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v59 + 224);
  v21 = *(v59 + 168);
  v22 = *(v59 + 152);
  if (!v19)
  {

    v29 = v20(v21, v22);
    v24 = v60;
    v33 = *(v60 + 16);
    if (v33)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v23 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v61 = v58;
  *v23 = 134218242;
  v57 = v20;
  v24 = v60;
  *(v23 + 4) = *(v60 + 16);

  *(v23 + 12) = 2080;
  sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
  v25 = sub_24A4AC240();
  v27 = v26;
  v57(v21, v22);
  v28 = sub_24A37BD58(v25, v27, &v61);

  *(v23 + 14) = v28;
  _os_log_impl(&dword_24A376000, v17, v18, "FMFSecureLocationCtrl: add handles to location stream: %ld friends, mode: %s", v23, 0x16u);
  sub_24A37EEE0(v58);
  MEMORY[0x24C219130](v58, -1, -1);
  MEMORY[0x24C219130](v23, -1, -1);

  v33 = *(v60 + 16);
  if (!v33)
  {
LABEL_27:
    v36 = MEMORY[0x277D84F90];
LABEL_28:
    v0 = v59;
    *(v59 + 264) = v36;
    v48 = *(v59 + 80);

    v49 = *(v48 + 112);
    *(v59 + 272) = v49;
    if (v49)
    {
      v50 = objc_opt_self();

      v51 = [v50 mainBundle];
      v52 = [v51 bundleIdentifier];

      if (v52)
      {
        sub_24A4AB850();
      }

      (*(*(v59 + 96) + 104))(*(v59 + 104), *MEMORY[0x277D094A8], *(v59 + 88));
      sub_24A4AB3E0();
      v55 = swift_task_alloc();
      *(v59 + 280) = v55;
      *v55 = v59;
      v55[1] = sub_24A40243C;
      v32 = *(v59 + 128);
      v30 = *(v59 + 72);
      v29 = v36;
      v31 = 1;

      return MEMORY[0x28215FB30](v29, v30, v31, v32);
    }

    goto LABEL_31;
  }

LABEL_8:
  v34 = 0;
  v35 = v24 + 48;
  v36 = MEMORY[0x277D84F90];
  while (v34 < *(v24 + 16))
  {

    v38 = sub_24A3F5BAC(v37);

    v39 = *(v38 + 16);
    v40 = v36[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v41 <= v36[3] >> 1)
    {
      if (*(v38 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      v36 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v43, 1, v36);
      if (*(v38 + 16))
      {
LABEL_21:
        v44 = (v36[3] >> 1) - v36[2];
        v29 = sub_24A4AB220();
        if (v44 < v39)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        v24 = v60;
        if (v39)
        {
          v45 = v36[2];
          v46 = __OFADD__(v45, v39);
          v47 = v45 + v39;
          if (v46)
          {
            goto LABEL_41;
          }

          v36[2] = v47;
        }

        goto LABEL_10;
      }
    }

    if (v39)
    {
      goto LABEL_39;
    }

LABEL_10:
    ++v34;
    v35 += 32;
    if (v33 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return MEMORY[0x28215FB30](v29, v30, v31, v32);
}

uint64_t sub_24A40243C()
{
  v2 = *v1;
  v3 = *v1;
  v2[36] = v0;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {
    v7 = v2[10];
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_24A402694, v7, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_24A402694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A402758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_24A4AAD40();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = sub_24A4AC010();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A402878, 0, 0);
}

uint64_t sub_24A402878()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v0[12] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v2 + 16) = 3;
    *(v2 + 24) = v0 + 12;
    sub_24A4ABD70();

    v3 = sub_24A4AC3E0();
    v5 = v4;
    sub_24A4AC2E0();
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_24A402A64;

    return sub_24A405F7C(v3, v5, 0, 0, 1);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24A402A64()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v3 = sub_24A402DB0;
  }

  else
  {
    v3 = sub_24A402BCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A402BCC(uint64_t a1)
{
  v2 = *(v1 + 200);
  sub_24A4ABBB0();
  if (v2)
  {

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = sub_24A4AB600();
    v7 = sub_24A4ABCE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A376000, v6, v7, "FMFSecureLocationCtrl: Stop initial live locating spinners", v8, 2u);
      MEMORY[0x24C219130](v8, -1, -1);
    }

    v9 = *(v1 + 184);
    v11 = *(v1 + 144);
    v10 = *(v1 + 152);

    *(v1 + 248) = *MEMORY[0x277D08FD8];
    v12 = *(v11 + 104);
    *(v1 + 208) = v12;
    *(v1 + 216) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v10);

    return MEMORY[0x2822009F8](sub_24A403050, v9, 0);
  }
}

uint64_t sub_24A402DB0()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: Live loading task cancelled", v6, 2u);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  sub_24A4ABBB0();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  sub_24A378E18(v1, qword_27EF4E260);
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFSecureLocationCtrl: Stop initial live locating spinners", v9, 2u);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v10 = *(v0 + 184);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);

  *(v0 + 248) = *MEMORY[0x277D08FD8];
  v13 = *(v12 + 104);
  *(v0 + 208) = v13;
  *(v0 + 216) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v11);

  return MEMORY[0x2822009F8](sub_24A403050, v10, 0);
}

uint64_t sub_24A403050()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_24A3FFB54(v0[14], v0[15], v0[16], 0, v1);
  v4 = *(v2 + 8);
  v0[28] = v4;
  v0[29] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);

  return MEMORY[0x2822009F8](sub_24A4030F8, 0, 0);
}

uint64_t sub_24A4030F8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 248);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  v1(v4, v2, v5);

  return MEMORY[0x2822009F8](sub_24A4031C8, v3, 0);
}

uint64_t sub_24A4031C8()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[19];
  v4 = v0[17];
  sub_24A3FF864(0, v1, v3);
  swift_setDeallocating();
  sub_24A406964(v1 + 32);
  v2(v3, v4);

  return MEMORY[0x2822009F8](sub_24A403278, 0, 0);
}

uint64_t sub_24A403278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A4032F0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AB3F0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_24A4AB400();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_24A4AAD40();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A403490, v2, 0);
}

uint64_t sub_24A403490()
{
  v105 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v1 = v0[22];
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[9];
    v5 = sub_24A4AB630();
    v0[23] = sub_24A378E18(v5, qword_27EF4E260);
    v6 = *(v3 + 16);
    v0[24] = v6;
    v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);

    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[22];
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[8];
    if (v9)
    {
      v14 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104 = v101;
      *v14 = 134218242;
      *(v14 + 4) = *(v13 + 16);

      *(v14 + 12) = 2080;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
      v15 = sub_24A4AC240();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v10, v11);
      v19 = sub_24A37BD58(v15, v17, &v104);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_24A376000, v7, v8, "FMFSecureLocationCtrl: stop refreshing location: %ld friends, mode: %s", v14, 0x16u);
      sub_24A37EEE0(v101);
      MEMORY[0x24C219130](v101, -1, -1);
      MEMORY[0x24C219130](v14, -1, -1);
    }

    else
    {

      v18 = *(v12 + 8);
      v18(v10, v11);
    }

    v0[26] = v18;
    v20 = v0[8];
    v21 = *(v20 + 16);
    v0[27] = v21;
    if (!v21)
    {
      break;
    }

    v22 = v20 + 48;
    v23 = MEMORY[0x277D84F90];
    while (1)
    {

      v25 = sub_24A3F5BAC(v24);

      v26 = *(v25 + 16);
      v27 = v23[2];
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= v23[3] >> 1)
      {
        if (*(v25 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v30 = v27 + v26;
        }

        else
        {
          v30 = v27;
        }

        v23 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v30, 1, v23);
        if (*(v25 + 16))
        {
LABEL_18:
          v31 = (v23[3] >> 1) - v23[2];
          sub_24A4AB220();
          if (v31 < v26)
          {
            goto LABEL_66;
          }

          swift_arrayInitWithCopy();

          if (v26)
          {
            v32 = v23[2];
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_67;
            }

            v23[2] = v34;
          }

          goto LABEL_8;
        }
      }

      if (v26)
      {
        goto LABEL_65;
      }

LABEL_8:
      v22 += 32;
      if (!--v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:
  v0[28] = v23;
  v35 = *(v0[10] + 112);
  v0[29] = v35;
  if (v35)
  {
    v36 = objc_opt_self();

    v37 = [v36 mainBundle];
    v38 = [v37 bundleIdentifier];

    if (v38)
    {
      sub_24A4AB850();
    }

    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D094A8], v0[11]);
    sub_24A4AB3E0();
    v57 = swift_task_alloc();
    v0[30] = v57;
    *v57 = v0;
    v57[1] = sub_24A403E7C;
    v58 = v0[16];
    v59 = v0[9];

    return MEMORY[0x28215FB00](v23, v59, v58);
  }

  v39 = v0[21];
  v40 = v0[17];
  v41 = v0[18];
  (v0[24])(v39, v0[9], v40);
  v42 = (*(v41 + 88))(v39, v40);
  v43 = v42;
  if (v42 == *MEMORY[0x277D08FE0])
  {
    v44 = MEMORY[0x277D84F90];
    if (v0[27])
    {
      v102 = v42;
      v45 = 0;
      v46 = v0[10];
      v100 = v0[8];
      v47 = v100 + 48;
      do
      {
        v51 = *(v47 - 16);
        v50 = *(v47 - 8);
        swift_beginAccess();

        v52 = sub_24A39B2C8(v51, v50);
        if (v53)
        {
          v54 = v52;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = *(v46 + 120);
          v104 = v56;
          *(v46 + 120) = 0x8000000000000000;
          if (!v55)
          {
            sub_24A4A863C();
            v56 = v104;
          }

          sub_24A4A7078(v54, v56, v48);
          *(v46 + 120) = v56;
        }

        ++v45;
        v49 = v0[27];
        swift_endAccess();

        v47 += 32;
      }

      while (v45 != v49);
      v72 = v0[27];
      v104 = v44;
      sub_24A3DBDA8(0, v72, 0);
      v73 = 0;
      v44 = v104;
      v74 = v104[2];
      v75 = 16 * v74;
      v76 = (v100 + 40);
      do
      {
        v78 = *(v76 - 1);
        v77 = *v76;
        v104 = v44;
        v79 = v74 + 1;
        v80 = *(v44 + 24);

        if (v74 >= v80 >> 1)
        {
          sub_24A3DBDA8((v80 > 1), v79, 1);
          v44 = v104;
        }

        v81 = v0[27];
        ++v73;
        *(v44 + 16) = v79;
        v82 = v44 + v75;
        *(v82 + 32) = v78;
        *(v82 + 40) = v77;
        v75 += 16;
        v76 += 4;
        ++v74;
      }

      while (v73 != v81);
      v43 = v102;
    }

    v83 = v0[26];
    v84 = v0[20];
    v85 = v0[17];
    (*(v0[18] + 104))(v84, v43, v85);
    goto LABEL_60;
  }

  if (v42 == *MEMORY[0x277D08FD8])
  {
    v103 = v42;
    if (v0[27])
    {
      v60 = 0;
      v61 = v0[10];
      v62 = v0[8] + 48;
      do
      {
        v66 = *(v62 - 16);
        v65 = *(v62 - 8);
        swift_beginAccess();

        v67 = sub_24A39B2C8(v66, v65);
        if (v68)
        {
          v69 = v67;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v71 = *(v61 + 128);
          v104 = v71;
          *(v61 + 128) = 0x8000000000000000;
          if (!v70)
          {
            sub_24A4A863C();
            v71 = v104;
          }

          sub_24A4A7078(v69, v71, v63);
          *(v61 + 128) = v71;
        }

        ++v60;
        v64 = v0[27];
        swift_endAccess();

        v62 += 32;
      }

      while (v60 != v64);
    }

    if (*(v0[10] + 144))
    {

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v86 = v0[27];
    v44 = MEMORY[0x277D84F90];
    if (v86)
    {
      v87 = v0[8];
      v104 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v86, 0);
      v88 = 0;
      v44 = v104;
      v89 = v104[2];
      v90 = 16 * v89;
      v91 = (v87 + 40);
      do
      {
        v93 = *(v91 - 1);
        v92 = *v91;
        v104 = v44;
        v94 = v89 + 1;
        v95 = *(v44 + 24);

        if (v89 >= v95 >> 1)
        {
          sub_24A3DBDA8((v95 > 1), v94, 1);
          v44 = v104;
        }

        v96 = v0[27];
        ++v88;
        *(v44 + 16) = v94;
        v97 = v44 + v90;
        *(v97 + 32) = v93;
        *(v97 + 40) = v92;
        v90 += 16;
        v91 += 4;
        ++v89;
      }

      while (v88 != v96);
    }

    v83 = v0[26];
    v84 = v0[20];
    v85 = v0[17];
    (*(v0[18] + 104))(v84, v103, v85);
LABEL_60:
    sub_24A3FF864(0, v44, v84);

    v83(v84, v85);
  }

  else
  {
    (v0[26])(v0[21], v0[17]);
  }

  v98 = v0[1];

  return v98();
}

uint64_t sub_24A403E7C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[10];
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = sub_24A404574;
  }

  else
  {
    v7 = sub_24A404038;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24A404038()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  (*(v0 + 192))(v1, *(v0 + 72), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = v4;
  if (v4 == *MEMORY[0x277D08FE0])
  {
    v6 = MEMORY[0x277D84F90];
    if (*(v0 + 216))
    {
      v59 = v4;
      v7 = 0;
      v8 = *(v0 + 80);
      v58 = *(v0 + 64);
      v9 = v58 + 48;
      do
      {
        v13 = *(v9 - 16);
        v12 = *(v9 - 8);
        swift_beginAccess();

        v14 = sub_24A39B2C8(v13, v12);
        if (v15)
        {
          v16 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = *(v8 + 120);
          *(v8 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
          }

          sub_24A4A7078(v16, v18, v10);
          *(v8 + 120) = v18;
        }

        ++v7;
        v11 = *(v0 + 216);
        swift_endAccess();

        v9 += 32;
      }

      while (v7 != v11);
      sub_24A3DBDA8(0, *(v0 + 216), 0);
      v31 = 0;
      v32 = *(v6 + 16);
      v33 = 16 * v32;
      v34 = (v58 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        v37 = v32 + 1;
        v38 = *(v6 + 24);

        if (v32 >= v38 >> 1)
        {
          sub_24A3DBDA8((v38 > 1), v37, 1);
        }

        v39 = *(v0 + 216);
        ++v31;
        *(v6 + 16) = v37;
        v40 = v6 + v33;
        *(v40 + 32) = v36;
        *(v40 + 40) = v35;
        v33 += 16;
        v34 += 4;
        ++v32;
      }

      while (v31 != v39);
      v5 = v59;
    }

    v41 = *(v0 + 208);
    v42 = *(v0 + 160);
    v43 = *(v0 + 136);
    (*(*(v0 + 144) + 104))(v42, v5, v43);
  }

  else
  {
    if (v4 != *MEMORY[0x277D08FD8])
    {
      (*(v0 + 208))(*(v0 + 168), *(v0 + 136));
      goto LABEL_33;
    }

    v60 = v4;
    if (*(v0 + 216))
    {
      v19 = 0;
      v20 = *(v0 + 80);
      v21 = *(v0 + 64) + 48;
      do
      {
        v25 = *(v21 - 16);
        v24 = *(v21 - 8);
        swift_beginAccess();

        v26 = sub_24A39B2C8(v25, v24);
        if (v27)
        {
          v28 = v26;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v20 + 128);
          *(v20 + 128) = 0x8000000000000000;
          if (!v29)
          {
            sub_24A4A863C();
          }

          sub_24A4A7078(v28, v30, v22);
          *(v20 + 128) = v30;
        }

        ++v19;
        v23 = *(v0 + 216);
        swift_endAccess();

        v21 += 32;
      }

      while (v19 != v23);
    }

    if (*(*(v0 + 80) + 144))
    {

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v44 = *(v0 + 216);
    v6 = MEMORY[0x277D84F90];
    if (v44)
    {
      v45 = *(v0 + 64);
      v61 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v44, 0);
      v46 = 0;
      v6 = v61;
      v47 = *(v61 + 16);
      v48 = 16 * v47;
      v49 = (v45 + 40);
      do
      {
        v51 = *(v49 - 1);
        v50 = *v49;
        v52 = v47 + 1;
        v53 = *(v61 + 24);

        if (v47 >= v53 >> 1)
        {
          sub_24A3DBDA8((v53 > 1), v52, 1);
        }

        v54 = *(v0 + 216);
        ++v46;
        *(v61 + 16) = v52;
        v55 = v61 + v48;
        *(v55 + 32) = v51;
        *(v55 + 40) = v50;
        v48 += 16;
        v49 += 4;
        ++v47;
      }

      while (v46 != v54);
    }

    v41 = *(v0 + 208);
    v42 = *(v0 + 160);
    v43 = *(v0 + 136);
    (*(*(v0 + 144) + 104))(v42, v60, v43);
  }

  sub_24A3FF864(0, v6, v42);

  v41(v42, v43);
LABEL_33:

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_24A404574()
{
  v82 = v0;
  v1 = *(v0 + 248);
  (*(v0 + 192))(*(v0 + 152), *(v0 + 72), *(v0 + 136));
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  v7 = *(v0 + 208);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  if (v5)
  {
    v76 = *(v0 + 208);
    v10 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v81 = v78;
    *v10 = 138412546;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v75 = v12;
    *(v10 + 12) = 2080;
    sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
    v13 = sub_24A4AC240();
    v15 = v14;
    v76(v8, v9);
    v16 = sub_24A37BD58(v13, v15, &v81);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFSecureLocationCtrl: Error when trying to stop refreshing locations: %@ mode: %s", v10, 0x16u);
    sub_24A37EF2C(v75, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v75, -1, -1);
    sub_24A37EEE0(v78);
    MEMORY[0x24C219130](v78, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  else
  {

    v7(v8, v9);
  }

  v17 = *(v0 + 168);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  (*(v0 + 192))(v17, *(v0 + 72), v18);
  v20 = (*(v19 + 88))(v17, v18);
  v21 = v20;
  if (v20 == *MEMORY[0x277D08FE0])
  {
    v22 = MEMORY[0x277D84F90];
    if (*(v0 + 216))
    {
      v79 = v20;
      v23 = 0;
      v24 = *(v0 + 80);
      v77 = *(v0 + 64);
      v25 = v77 + 48;
      do
      {
        v29 = *(v25 - 16);
        v28 = *(v25 - 8);
        swift_beginAccess();

        v30 = sub_24A39B2C8(v29, v28);
        if (v31)
        {
          v32 = v30;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = *(v24 + 120);
          v81 = v34;
          *(v24 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
            v34 = v81;
          }

          sub_24A4A7078(v32, v34, v26);
          *(v24 + 120) = v34;
        }

        ++v23;
        v27 = *(v0 + 216);
        swift_endAccess();

        v25 += 32;
      }

      while (v23 != v27);
      v47 = *(v0 + 216);
      v81 = v22;
      sub_24A3DBDA8(0, v47, 0);
      v48 = 0;
      v22 = v81;
      v49 = v81[2];
      v50 = 16 * v49;
      v51 = (v77 + 40);
      do
      {
        v53 = *(v51 - 1);
        v52 = *v51;
        v81 = v22;
        v54 = v49 + 1;
        v55 = *(v22 + 24);

        if (v49 >= v55 >> 1)
        {
          sub_24A3DBDA8((v55 > 1), v54, 1);
          v22 = v81;
        }

        v56 = *(v0 + 216);
        ++v48;
        *(v22 + 16) = v54;
        v57 = v22 + v50;
        *(v57 + 32) = v53;
        *(v57 + 40) = v52;
        v50 += 16;
        v51 += 4;
        ++v49;
      }

      while (v48 != v56);
      v21 = v79;
    }

    v58 = *(v0 + 208);
    v59 = *(v0 + 160);
    v60 = *(v0 + 136);
    (*(*(v0 + 144) + 104))(v59, v21, v60);
  }

  else
  {
    if (v20 != *MEMORY[0x277D08FD8])
    {
      (*(v0 + 208))(*(v0 + 168), *(v0 + 136));
      goto LABEL_36;
    }

    v80 = v20;
    if (*(v0 + 216))
    {
      v35 = 0;
      v36 = *(v0 + 80);
      v37 = *(v0 + 64) + 48;
      do
      {
        v41 = *(v37 - 16);
        v40 = *(v37 - 8);
        swift_beginAccess();

        v42 = sub_24A39B2C8(v41, v40);
        if (v43)
        {
          v44 = v42;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v36 + 128);
          v81 = v46;
          *(v36 + 128) = 0x8000000000000000;
          if (!v45)
          {
            sub_24A4A863C();
            v46 = v81;
          }

          sub_24A4A7078(v44, v46, v38);
          *(v36 + 128) = v46;
        }

        ++v35;
        v39 = *(v0 + 216);
        swift_endAccess();

        v37 += 32;
      }

      while (v35 != v39);
    }

    if (*(*(v0 + 80) + 144))
    {

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v61 = *(v0 + 216);
    v22 = MEMORY[0x277D84F90];
    if (v61)
    {
      v62 = *(v0 + 64);
      v81 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v61, 0);
      v63 = 0;
      v22 = v81;
      v64 = v81[2];
      v65 = 16 * v64;
      v66 = (v62 + 40);
      do
      {
        v68 = *(v66 - 1);
        v67 = *v66;
        v81 = v22;
        v69 = v64 + 1;
        v70 = *(v22 + 24);

        if (v64 >= v70 >> 1)
        {
          sub_24A3DBDA8((v70 > 1), v69, 1);
          v22 = v81;
        }

        v71 = *(v0 + 216);
        ++v63;
        *(v22 + 16) = v69;
        v72 = v22 + v65;
        *(v72 + 32) = v68;
        *(v72 + 40) = v67;
        v65 += 16;
        v66 += 4;
        ++v64;
      }

      while (v63 != v71);
    }

    v58 = *(v0 + 208);
    v59 = *(v0 + 160);
    v60 = *(v0 + 136);
    (*(*(v0 + 144) + 104))(v59, v80, v60);
  }

  sub_24A3FF864(0, v22, v59);

  v58(v59, v60);
LABEL_36:

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_24A404CA4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AAD40();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A404D74, v2, 0);
}

uint64_t sub_24A404D74()
{
  v50 = v0;
  if (*(v0[8] + 16))
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v1 = v0[14];
    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[9];
    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = *(v3 + 16);
    v6(v1, v4, v2);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    if (v9)
    {
      buf = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *buf = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
      v46 = v8;
      v13 = v6;
      v14 = sub_24A4AC240();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = v14;
      v6 = v13;
      v19 = sub_24A37BD58(v18, v16, &v49);

      *(buf + 4) = v19;
      _os_log_impl(&dword_24A376000, v7, v46, "FMFSecureLocationCtrl: startLocating secure friends called, with priority: %s", buf, 0xCu);
      sub_24A37EEE0(v48);
      MEMORY[0x24C219130](v48, -1, -1);
      MEMORY[0x24C219130](buf, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    v6(v22, v0[9], v24);
    v25 = (*(v23 + 88))(v22, v24);
    if (v25 == *MEMORY[0x277D08FE0])
    {
      v26 = v0[10];
      swift_beginAccess();
      v27 = *(v26 + 120);
      v28 = *(v27 + 16);
      if (!v28)
      {
LABEL_18:
        v29 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      v29 = sub_24A40B3F8(*(v27 + 16), 0);
      v30 = sub_24A40C0A8(&v49, (v29 + 4), v28, v27);
      v17 = v49;

      v25 = sub_24A3A13C0(v17);
      if (v30 == v28)
      {
LABEL_19:
        v36 = sub_24A489CD4(v29);

        goto LABEL_21;
      }

      __break(1u);
    }

    if (v25 != *MEMORY[0x277D08FD8])
    {
      v17(v0[13], v0[11]);
      v36 = MEMORY[0x277D84FA0];
LABEL_21:

      v38 = sub_24A489CD4(v37);

      v39 = sub_24A475F30(v38, v36);
      v40 = v39;
      v41 = *(v39 + 16);
      if (v41)
      {
        v42 = sub_24A40B3F8(*(v39 + 16), 0);
        v43 = sub_24A40BF10(&v49, (v42 + 4), v41, v40);
        sub_24A3A13C0(v49);
        if (v43 == v41)
        {
LABEL_25:
          v0[15] = v42;
          v44 = swift_task_alloc();
          v0[16] = v44;
          *v44 = v0;
          v44[1] = sub_24A405290;
          v45 = v0[9];

          return sub_24A3FFDAC(v42, v45);
        }

        __break(1u);
      }

      v42 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    v31 = v0[10];
    swift_beginAccess();
    v32 = *(v31 + 128);
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_18;
    }

    v29 = sub_24A40B3F8(*(v32 + 16), 0);
    v34 = sub_24A40C0A8(&v49, (v29 + 4), v33, v32);
    v35 = v49;

    sub_24A3A13C0(v35);
    if (v34 != v33)
    {
      __break(1u);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_24A405290()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_24A4053E0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24A4053E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24A405458()
{

  sub_24A37EF2C(v0 + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A3C8470(v0 + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24A4054E0()
{
  sub_24A405458();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24A405518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  sub_24A3C9CEC(&qword_27EF3F9B8, qword_24A4B7008);
  v6[4] = swift_task_alloc();
  v7 = sub_24A4AAE80();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[7] = v8;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_24A405650;

  return MEMORY[0x28215FB68](v8);
}

uint64_t sub_24A405650()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24A4058C8;
  }

  else
  {
    v2 = sub_24A405764;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A405764()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_24A4067E4();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5 = SPSecureLocationsStewiePublishResult.init(_:)(v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  if (v5)
  {
    v10 = v5;
    v9(v5, 0);
  }

  else
  {
    sub_24A4066C8();
    v10 = swift_allocError();
    *v11 = 1;
    v9(0, v10);
  }

  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A4058C8()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

id SPSecureLocationsStewiePublishResult.init(_:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_24A3C9CEC(&qword_27EF3F9B8, qword_24A4B7008);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_24A4AAE80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A37B740(a1, v7, &qword_27EF3F9B8, qword_24A4B7008);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3F9B8, qword_24A4B7008);
    sub_24A37EF2C(v7, &qword_27EF3F9B8, qword_24A4B7008);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_24A4AAE70();
    v13 = sub_24A4AAAD0();
    v14 = *(v13 - 8);
    v15 = 0;
    if ((*(v14 + 48))(v4, 1, v13) != 1)
    {
      v15 = sub_24A4AAA60();
      (*(v14 + 8))(v4, v13);
    }

    [v12 setLastPublished_];

    sub_24A4AAE60();
    [v12 setNextAllowedPublish_];

    sub_24A37EF2C(a1, &qword_27EF3F9B8, qword_24A4B7008);
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t sub_24A405CF0(uint64_t a1)
{
  result = sub_24A4AAAD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24A405DBC(uint64_t a1)
{
  sub_24A37E944(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_24A405E44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_24A405E58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_24A405EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A405EFC()
{
  result = qword_27EF3F9F0;
  if (!qword_27EF3F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F9F0);
  }

  return result;
}

uint64_t sub_24A405F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24A4AC000();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24A40607C, 0, 0);
}

uint64_t sub_24A40607C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24A4AC010();
  v5 = sub_24A4069B8(&qword_27EF3FA18, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24A4AC2C0();
  sub_24A4069B8(&qword_27EF3FA20, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24A4AC020();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24A40620C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24A40620C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A4063C8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24A4063C8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24A406434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF3FA10, &qword_24A4B7268);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_24A406538(void (*a1)(void, void *), uint64_t a2)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + 112);
  if (v8)
  {
    v9 = sub_24A4ABB70();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = a2;

    sub_24A432370(0, 0, v7, &unk_24A4B7260, v10);
  }

  else
  {
    sub_24A4066C8();
    v11 = swift_allocError();
    *v12 = 0;
    a1(0, v11);
  }
}

unint64_t sub_24A4066C8()
{
  result = qword_27EF3F9F8;
  if (!qword_27EF3F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F9F8);
  }

  return result;
}

uint64_t sub_24A40671C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A405518(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_24A4067E4()
{
  result = qword_27EF3FA00;
  if (!qword_27EF3FA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3FA00);
  }

  return result;
}

uint64_t sub_24A406830(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24A40683C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A402758(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24A4069B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A406A38(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A3FEF68(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24A406B38(uint64_t a1)
{
  v4 = *(sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A3FB240(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24A406C64(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(sub_24A3C9CEC(a1, a2) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  swift_unknownObjectRelease();
  v11 = sub_24A3C9CEC(a3, a4);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v9, 1, v11))
  {
    (*(v12 + 8))(v4 + v9, v11);
  }

  return MEMORY[0x2821FE8E8](v4, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v8 | 7);
}

uint64_t sub_24A406D94(uint64_t a1)
{
  v4 = *(sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A3F8B4C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24A406EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A357C;

  return sub_24A3F6808(a1, v4, v5, v7, v6);
}

unint64_t sub_24A406F94()
{
  result = qword_27EF3FAB8;
  if (!qword_27EF3FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAB8);
  }

  return result;
}

uint64_t sub_24A407004(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  if (*(*a1 + 24) == *a2 && v2 == *(*a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

uint64_t FMFContact.storeUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMFContact.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMFContact.shortName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24A40712C()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A407208(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A4072D0(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A4073A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A407E94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A4073D8(uint64_t *a1@<X8>)
{
  v2 = 0x49555565726F7473;
  v3 = 0xED00006567616D49;
  v4 = 0x73614865726F7473;
  if (*v1 != 2)
  {
    v4 = 0x6D614E74726F6873;
    v3 = 0xE900000000000065;
  }

  v5 = 0xEB00000000656D61;
  if (*v1)
  {
    v2 = 0x4E79616C70736964;
  }

  else
  {
    v5 = 0xE900000000000044;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_24A407470()
{
  v1 = 0x49555565726F7473;
  v2 = 0x73614865726F7473;
  if (*v0 != 2)
  {
    v2 = 0x6D614E74726F6873;
  }

  if (*v0)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A407504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A407E94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A40752C(uint64_t a1)
{
  v2 = sub_24A407858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A407568(uint64_t a1)
{
  v2 = sub_24A407858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFContact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FAC0, &qword_24A4B7418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A407858();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v27 = 0;
  v9 = sub_24A4AC120();
  v22 = v10;
  v26 = 1;
  v20 = sub_24A4AC120();
  v21 = v11;
  v25 = 2;
  v23 = sub_24A4AC130();
  v24 = 3;
  v12 = sub_24A4AC120();
  v15 = v14;
  v23 &= 1u;
  v16 = v12;
  (*(v6 + 8))(v8, v5);
  v18 = v21;
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v23;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;

  sub_24A37EEE0(a1);
}

unint64_t sub_24A407858()
{
  result = qword_27EF3FAC8;
  if (!qword_27EF3FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAC8);
  }

  return result;
}

uint64_t FMFContact.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FAD0, &qword_24A4B7420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[3] = *(v1 + 24);
  v11[4] = v7;
  v12 = *(v1 + 32);
  v8 = *(v1 + 40);
  v11[1] = *(v1 + 48);
  v11[2] = v8;
  sub_24A37EACC(a1, a1[3]);
  sub_24A407858();
  sub_24A4AC3D0();
  v16 = 0;
  v9 = v11[5];
  sub_24A4AC1B0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24A4AC1B0();
  v14 = 2;
  sub_24A4AC1C0();
  v13 = 3;
  sub_24A4AC1B0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t static FMFContact.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A4AC270();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_24A4AC270();
}

uint64_t sub_24A407BF0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A4AC270();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_24A4AC270();
}

__n128 sub_24A407D14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A407D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A407D90()
{
  result = qword_27EF3FAD8;
  if (!qword_27EF3FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAD8);
  }

  return result;
}

unint64_t sub_24A407DE8()
{
  result = qword_27EF3FAE0;
  if (!qword_27EF3FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAE0);
  }

  return result;
}

unint64_t sub_24A407E40()
{
  result = qword_27EF3FAE8;
  if (!qword_27EF3FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAE8);
  }

  return result;
}

unint64_t sub_24A407E94(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A407EE0(uint64_t a1)
{
  v51 = sub_24A4AA7F0();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v45[1] = v1;
    v60 = MEMORY[0x277D84F90];
    sub_24A4ABFD0();
    v7 = a1 + 56;
    result = sub_24A4ABEA0();
    v8 = result;
    v9 = 0;
    v10 = *MEMORY[0x277CBECE8];
    v49 = (v3 + 8);
    v50 = v10;
    v46 = a1;
    v47 = a1 + 64;
    v52 = v5;
    v53 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_40;
      }

      v14 = *(a1 + 36);
      v55 = v9;
      v56 = v14;
      v15 = (*(a1 + 48) + 16 * v8);
      v17 = *v15;
      v16 = v15[1];
      v18 = qword_27EF3EBC0;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_27EF4E198;
      v20 = sub_24A4AB820();
      LODWORD(v19) = [v19 evaluateWithObject_];

      v57 = 1 << v8;
      if (v19)
      {
        v21 = sub_24A4AB820();
        result = CMFItemCreateWithEmailAddress();
        if (!result)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_24A4AA7B0();
        sub_24A4AA7C0();
        v58 = v17;
        v59 = v16;
        sub_24A3A1434();
        sub_24A4ABE20();
        if (v22)
        {

          v23 = v17;
          v24 = v16;
        }

        else
        {
          v58 = v17;
          v59 = v16;
          v25 = sub_24A4AB900();
          result = sub_24A4AB910();
          v26 = result - v25;
          if (__OFSUB__(result, v25))
          {
            goto LABEL_44;
          }

          v27 = sub_24A4AB820();
          v28 = [v27 substringWithRange_];

          v23 = sub_24A4AB850();
          v24 = v29;
        }

        v30 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v30 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v48 = v23;
          sub_24A45D034();
          v31 = sub_24A4AB820();
          v32 = sub_24A4AB820();

          v33 = CFPhoneNumberCreate();

          if (v33)
          {
            v34 = v33;
            String = CFPhoneNumberCreateString();
            a1 = v46;
            if (String)
            {
              v36 = String;

              sub_24A4AB850();

              (*v49)(v54, v51);
            }

            else
            {
              (*v49)(v54, v51);
            }
          }

          else
          {
            (*v49)(v54, v51);
            a1 = v46;
          }
        }

        else
        {
          (*v49)(v54, v51);
        }

        v21 = sub_24A4AB820();

        v37 = CFPhoneNumberCreate();
        result = CMFItemCreateWithPhoneNumber();
        if (!result)
        {
          goto LABEL_46;
        }
      }

      sub_24A4ABFB0();
      sub_24A4ABFE0();
      sub_24A4ABFF0();
      result = sub_24A4ABFC0();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_41;
      }

      v7 = v53;
      v38 = *(v53 + 8 * v13);
      if ((v38 & v57) == 0)
      {
        goto LABEL_42;
      }

      if (v56 != *(a1 + 36))
      {
        goto LABEL_43;
      }

      v39 = v38 & (-2 << (v8 & 0x3F));
      if (v39)
      {
        v11 = __clz(__rbit64(v39)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v12 = v52;
      }

      else
      {
        v40 = v13 << 6;
        v41 = v13 + 1;
        v42 = (v47 + 8 * v13);
        v12 = v52;
        while (v41 < (v11 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_24A406830(v8, v56, 0);
            v11 = __clz(__rbit64(v43)) + v40;
            goto LABEL_4;
          }
        }

        result = sub_24A406830(v8, v56, 0);
      }

LABEL_4:
      v9 = v55 + 1;
      v8 = v11;
      if (v55 + 1 == v12)
      {
        return v60;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t FMFFriend.personIdHash.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMFFriend.fallbackToLegacy.setter(char a1)
{
  result = type metadata accessor for FMFFriend(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t FMFFriend.fallbackToLegacyAllowed.setter(char a1)
{
  result = type metadata accessor for FMFFriend(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

double FMFFriend.locationAlertsOnMe.getter()
{
  type metadata accessor for FMFFriend(0);

  return result;
}

uint64_t FMFFriend.isWaitingForShallowLocation.setter(char a1)
{
  result = type metadata accessor for FMFFriend(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t FMFFriend.properName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend(0) + 76));
  if (!v1[1])
  {
    return 0;
  }

  v2 = v1[2];
  v3 = v1[3];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  return v2;
}

uint64_t FMFFriend.pendingUpdateReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFFriend(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t FMFFriend.pendingUpdateReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMFFriend(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

unint64_t sub_24A408818(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x64496E6F73726570;
      break;
    case 2:
      result = 0x48746361746E6F63;
      break;
    case 3:
      result = 0x7078456572616873;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x746F4E646574706FLL;
      break;
    case 6:
      v3 = 10;
      goto LABEL_19;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      v3 = 11;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x657469726F766166;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0x746361746E6F63;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x6E65644968737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A408A44(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A408818(*a1);
  v5 = v4;
  if (v3 == sub_24A408818(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A408ACC()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A408818(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A408B30(uint64_t a1)
{
  sub_24A408818(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A408B84(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A408818(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A408BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A40DA14(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A408C14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A408818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A408C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A40DA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A408C90(uint64_t a1)
{
  v2 = sub_24A40D490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A408CCC(uint64_t a1)
{
  v2 = sub_24A40D490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFFriend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3FAF0, &qword_24A4B7640);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + *(v15 + 84)) = 7;
  v16 = a1[3];
  v41 = a1;
  sub_24A37EACC(a1, v16);
  sub_24A40D490();
  v17 = v40;
  sub_24A4AC3C0();
  if (v17)
  {
    return sub_24A37EEE0(v41);
  }

  v18 = v39;
  LOBYTE(v42) = 0;
  *v14 = sub_24A4AC120();
  v14[1] = v19;
  LOBYTE(v42) = 1;
  v20 = sub_24A4AC120();
  v37 = v12;
  v21 = v8;
  v14[2] = v20;
  v14[3] = v22;
  sub_24A3C9CEC(&qword_27EF3FB00, &qword_24A4B7648);
  v49 = 2;
  sub_24A40D534();
  sub_24A4AC160();
  v14[4] = v42;
  sub_24A4AAAD0();
  LOBYTE(v42) = 3;
  sub_24A40DA68(&qword_27EF3F900, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_24A4AC160();
  (*(MEMORY[0xFFFFFFFFFFFFFFF8] + 56))(v8, 0, 1, 0);
  v23 = v37;
  sub_24A37BE24(v21, v14 + v37[8], &qword_27EF3F460, &unk_24A4B53B0);
  LOBYTE(v42) = 5;
  *(v14 + v23[10]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 6;
  *(v14 + v23[11]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 7;
  *(v14 + v23[12]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 8;
  *(v14 + v23[18]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 9;
  *(v14 + v23[13]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 10;
  *(v14 + v23[14]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 11;
  v24 = sub_24A4AC150();
  v40 = 0;
  *(v14 + v23[15]) = v24;
  v25 = v23;
  v26 = type metadata accessor for FMFLocation(0);
  LOBYTE(v42) = 12;
  sub_24A40DA68(&qword_27EF3F178, type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
  sub_24A4AC160();
  (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
  sub_24A37BE24(v5, v14 + v25[20], &qword_27EF3F480, &unk_24A4B8C20);
  v49 = 13;
  sub_24A3870AC();
  sub_24A4AC160();
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = (v14 + v25[19]);
  *v33 = v42;
  v33[1] = v27;
  v33[2] = v28;
  v33[3] = v29;
  v33[4] = v30;
  v33[5] = v31;
  v33[6] = v32;
  LOBYTE(v42) = 4;
  *(v14 + v25[9]) = sub_24A4AC150();
  sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
  v49 = 14;
  sub_24A40D79C(&qword_27EF3F1B8, &qword_27EF3F1C0, &protocol conformance descriptor for FMFLocationAlert, MEMORY[0x277D83978]);
  v40 = v11;
  sub_24A4AC160();
  *(v14 + v37[17]) = v42;
  v49 = 15;
  sub_24A4AC160();
  *(v14 + v37[16]) = v42;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v49 = 16;
  sub_24A3B1A24();
  sub_24A4AC160();
  v34 = v42;
  v35 = v38;
  (*(v18 + 8))(v40, v9);
  v14[5] = v34;
  sub_24A39921C(v14, v35, type metadata accessor for FMFFriend);
  sub_24A37EEE0(v41);
  return sub_24A39A698(v14, type metadata accessor for FMFFriend);
}

uint64_t FMFFriend.init(friend:updatedLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v98 = a2;
  v5 = type metadata accessor for FMFFriend(0);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - v10;
  v12 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v88 = a1;
  sub_24A39921C(a1, &v66 - v22, type metadata accessor for FMFFriend);
  (*(v6 + 56))(v23, 0, 1, v5);
  v89 = v17;
  v24 = v14;
  sub_24A37B740(v98, v17, &qword_27EF3F480, &unk_24A4B8C20);
  v25 = v5[21];
  *(a3 + v25) = 7;
  v26 = sub_24A4AAAD0();
  v27 = *(*(v26 - 8) + 56);
  v97 = v11;
  v27(v11, 1, 1, v26);
  v28 = type metadata accessor for FMFLocation(0);
  v82 = *(v28 - 8);
  v29 = *(v82 + 56);
  v93 = v28;
  v72 = v82 + 56;
  v71 = v29;
  (v29)(v24, 1, 1);
  v87 = v23;
  sub_24A37B740(v23, v20, &qword_27EF3F2D0, &qword_24A4B4F50);
  v30 = (*(v6 + 48))(v20, 1, v5);
  v90 = v24;
  if (v30 == 1)
  {
    sub_24A37EF2C(v20, &qword_27EF3F2D0, &qword_24A4B4F50);
    v31 = 0;
    v77 = 0;
    v78 = 0;
    v32 = 0;
    v86 = 0;
    v94 = 0;
    v91 = 0;
    v33 = 0;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v84 = 0;
    v85 = 0;
    v96 = 0;
    v83 = 0;
    v92 = 0xE000000000000000;
    v95 = MEMORY[0x277D84FA0];
    v73 = 2;
    v81 = 0x7FFFFFFFFFFFFFFFLL;
    v79 = 2;
    v80 = 2;
    v34 = 2;
    v35 = 2;
  }

  else
  {
    sub_24A37EF2C(v24, &qword_27EF3F480, &unk_24A4B8C20);
    v36 = v97;
    sub_24A37EF2C(v97, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A39CAB8(v20, v8, type metadata accessor for FMFFriend);
    v37 = *v8;
    v92 = v8[1];
    v38 = v8[2];
    v39 = v8[3];
    v84 = v37;
    v85 = v38;
    v95 = v8[4];
    v96 = v39;
    sub_24A37B740(v8 + v5[8], v36, &qword_27EF3F460, &unk_24A4B53B0);
    v40 = v5[10];
    v83 = *(v8 + v5[9]);
    v79 = *(v8 + v40);
    v41 = v5[12];
    v70 = *(v8 + v5[11]);
    v68 = *(v8 + v41);
    v73 = *(v8 + v5[18]);
    v42 = v5[14];
    v69 = *(v8 + v5[13]);
    v80 = *(v8 + v42);
    v81 = *(v8 + v5[15]);
    sub_24A37B740(v8 + v5[20], v24, &qword_27EF3F480, &unk_24A4B8C20);
    v43 = (v8 + v5[19]);
    v44 = v43[1];
    v94 = *v43;
    v91 = v44;
    v45 = v43[2];
    v33 = v43[3];
    v46 = v25;
    v47 = v43[4];
    v48 = v43[5];
    v49 = v43[6];
    v50 = *(v8 + v5[16]);
    v67 = *(v8 + v5[17]);
    *(a3 + v46) = *(v8 + v5[21]);
    v51 = v8[5];

    v78 = v45;
    v52 = v45;
    v34 = v68;
    v76 = v47;
    v75 = v48;
    v74 = v49;
    sub_24A39AED0(v94, v91, v52, v33, v47, v48, v49);
    v77 = v51;
    v35 = v70;

    v86 = v50;
    v31 = v69;

    v53 = v67;

    v54 = v8;
    v32 = v53;
    sub_24A39A698(v54, type metadata accessor for FMFFriend);
  }

  v55 = v5[14];
  sub_24A37EF2C(v98, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A39A698(v88, type metadata accessor for FMFFriend);
  sub_24A37EF2C(v87, &qword_27EF3F2D0, &qword_24A4B4F50);
  v56 = v92;
  *a3 = v84;
  a3[1] = v56;
  v57 = v95;
  v58 = v96;
  a3[2] = v85;
  a3[3] = v58;
  a3[4] = v57;
  sub_24A37BE24(v97, a3 + v5[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(a3 + v5[9]) = v83;
  *(a3 + v5[10]) = v79;
  *(a3 + v5[11]) = v35;
  *(a3 + v5[12]) = v34;
  v59 = (a3 + v5[19]);
  v60 = v91;
  *v59 = v94;
  v59[1] = v60;
  v59[2] = v78;
  v59[3] = v33;
  v61 = v75;
  v59[4] = v76;
  v59[5] = v61;
  v59[6] = v74;
  *(a3 + v55) = v80;
  *(a3 + v5[18]) = (v73 == 2) | v73 & 1;
  *(a3 + v5[13]) = v31;
  a3[5] = v77;
  v62 = v82;
  *(a3 + v5[15]) = v81;
  v63 = v89;
  if ((*(v62 + 48))(v89, 1, v93) == 1)
  {
    sub_24A37EF2C(v63, &qword_27EF3F480, &unk_24A4B8C20);
    result = sub_24A37BE24(v90, a3 + v5[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v90, &qword_27EF3F480, &unk_24A4B8C20);
    v65 = v5[20];
    sub_24A39CAB8(v63, a3 + v65, type metadata accessor for FMFLocation);
    result = v71(a3 + v65, 0, 1, v93);
  }

  *(a3 + v5[16]) = v86;
  *(a3 + v5[17]) = v32;
  return result;
}

Swift::Bool __swiftcall FMFFriend.isBlocked()()
{
  v1 = sub_24A407EE0(*(v0 + 32));
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_24A4AC060();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C218380](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();
    v5 = v6 + 1;
  }

  while (!IsItemBlocked);

  return v4 != v6;
}

uint64_t FMFFriend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3FB18, &qword_24A4B7650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A40D490();
  sub_24A4AC3D0();
  LOBYTE(v11) = 0;
  sub_24A4AC1B0();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = 1;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    *&v11 = *(v3 + 32);
    v12 = 2;
    sub_24A3C9CEC(&qword_27EF3FB00, &qword_24A4B7648);
    sub_24A40D5B0();
    sub_24A4AC1F0();
    v9 = type metadata accessor for FMFFriend(0);
    LOBYTE(v11) = 3;
    sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    sub_24A38CB94();
    sub_24A4AC1F0();
    LOBYTE(v11) = *(v3 + v9[10]);
    v12 = 5;
    sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
    sub_24A3D89D8();
    sub_24A4AC1F0();
    LOBYTE(v11) = *(v3 + v9[11]);
    v12 = 6;
    sub_24A4AC1F0();
    LOBYTE(v11) = *(v3 + v9[12]);
    v12 = 7;
    sub_24A4AC1F0();
    LOBYTE(v11) = 8;
    sub_24A4AC1C0();
    LOBYTE(v11) = 9;
    sub_24A4AC1C0();
    LOBYTE(v11) = *(v3 + v9[14]);
    v12 = 10;
    sub_24A4AC1F0();
    LOBYTE(v11) = 11;
    sub_24A4AC1E0();
    LOBYTE(v11) = 4;
    sub_24A4AC1E0();
    LOBYTE(v11) = 12;
    sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
    sub_24A40D62C();
    sub_24A4AC1F0();
    *&v11 = *(v3 + v9[17]);
    v12 = 14;
    sub_24A3C9CEC(&qword_27EF3FB38, &qword_24A4B7658);
    sub_24A40D6E0();
    sub_24A4AC1F0();
    *&v11 = *(v3 + v9[16]);
    v12 = 15;
    sub_24A4AC1F0();
    *&v11 = *(v3 + 40);
    v12 = 16;
    sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
    sub_24A38CA78();
    sub_24A4AC1F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMFFriend.debugDescription.getter()
{
  v1 = v0;
  v110 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v110);
  v109 = &v102 - v2;
  v107 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v107);
  v106 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v102 - v5;
  v7 = type metadata accessor for FMFFriend(0);
  v105 = *(v7 + 80);
  sub_24A37B740(v1 + v105, v6, &qword_27EF3F480, &unk_24A4B8C20);
  v8 = type metadata accessor for FMFLocation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_24A37EF2C(v6, &qword_27EF3F480, &unk_24A4B8C20);
LABEL_9:
    v103 = 0;
    v104 = 0xE000000000000000;
    goto LABEL_10;
  }

  memcpy(v112, &v6[*(v8 + 44)], 0x161uLL);
  if (sub_24A3B9C24(v112) == 1)
  {
    sub_24A39A698(v6, type metadata accessor for FMFLocation);
    goto LABEL_9;
  }

  v10 = v112[40];
  v9 = v112[41];

  sub_24A39A698(v6, type metadata accessor for FMFLocation);
  if (!v9)
  {
    goto LABEL_9;
  }

  v11._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v11);
  if (v113 != 5)
  {
    v10 = FMFDefaultLabel.localizedLabel.getter();
    v13 = v12;

    v9 = v13;
  }

  v103 = v10;
  v104 = v9;
LABEL_10:
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v108 = 0xD000000000000018;
  v112[0] = 0xD000000000000018;
  v112[1] = 0x800000024A4B02D0;
  MEMORY[0x24C217D50](*v1, v1[1]);
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v14 = v112[0];
  v15 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v112, "personIdHash: ");
  HIBYTE(v112[1]) = -18;
  v16 = v1[3];
  v113 = v1[2];
  v114 = v16;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v18 = v112[0];
  v19 = v112[1];
  v112[0] = v14;
  v112[1] = v15;

  MEMORY[0x24C217D50](v18, v19);

  v20 = v112[0];
  v21 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD00000000000001CLL;
  v112[1] = 0x800000024A4B02F0;
  LOBYTE(v113) = *(v1 + *(v7 + 44));
  v111 = sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  v22 = sub_24A4AB870();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v23 = v7;
  v25 = v112[0];
  v24 = v112[1];
  v112[0] = v20;
  v112[1] = v21;

  MEMORY[0x24C217D50](v25, v24);

  v26 = v112[0];
  v27 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000020;
  v112[1] = 0x800000024A4B0310;
  LOBYTE(v113) = *(v1 + v23[12]);
  v28 = sub_24A4AB870();
  MEMORY[0x24C217D50](v28);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v29 = v112[0];
  v30 = v112[1];
  v112[0] = v26;
  v112[1] = v27;

  MEMORY[0x24C217D50](v29, v30);

  v31 = v1;
  v32 = v112[0];
  v33 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD00000000000001DLL;
  v112[1] = 0x800000024A4B0340;
  if (*(v31 + v23[18]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v31 + v23[18]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v34, v35);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v36 = v112[0];
  v37 = v112[1];
  v112[0] = v32;
  v112[1] = v33;

  MEMORY[0x24C217D50](v36, v37);

  v38 = v112[0];
  v39 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v102 = 0xD000000000000012;
  v112[0] = 0xD000000000000012;
  v112[1] = 0x800000024A4B0360;
  v40 = v23;
  if (*(v31 + v23[13]))
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (*(v31 + v23[13]))
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v41, v42);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v43 = v112[0];
  v44 = v112[1];
  v112[0] = v38;
  v112[1] = v39;

  MEMORY[0x24C217D50](v43, v44);

  v45 = v112[0];
  v46 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000019;
  v112[1] = 0x800000024A4B0380;
  v47 = v31;
  LOBYTE(v113) = *(v31 + v40[14]);
  v48 = sub_24A4AB870();
  MEMORY[0x24C217D50](v48);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v49 = v112[0];
  v50 = v112[1];
  v112[0] = v45;
  v112[1] = v46;

  MEMORY[0x24C217D50](v49, v50);

  v51 = v112[0];
  v52 = v112[1];
  strcpy(v112, "label: '");
  BYTE1(v112[1]) = 0;
  WORD1(v112[1]) = 0;
  HIDWORD(v112[1]) = -402653184;
  MEMORY[0x24C217D50](v103, v104);

  MEMORY[0x24C217D50](8231, 0xE200000000000000);
  v53 = v112[0];
  v54 = v112[1];
  v112[0] = v51;
  v112[1] = v52;

  MEMORY[0x24C217D50](v53, v54);

  v55 = v112[0];
  v56 = v112[1];
  strcpy(v112, "location: ");
  BYTE3(v112[1]) = 0;
  HIDWORD(v112[1]) = -369098752;
  sub_24A37B740(v31 + v105, v106, &qword_27EF3F480, &unk_24A4B8C20);
  v57 = sub_24A4AB870();
  MEMORY[0x24C217D50](v57);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v58 = v112[0];
  v59 = v112[1];
  v112[0] = v55;
  v112[1] = v56;

  MEMORY[0x24C217D50](v58, v59);

  v60 = v112[0];
  v61 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000010;
  v112[1] = 0x800000024A4B03A0;
  v62 = sub_24A4ABBF0();
  MEMORY[0x24C217D50](v62);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v63 = v112[0];
  v64 = v112[1];
  v112[0] = v60;
  v112[1] = v61;

  MEMORY[0x24C217D50](v63, v64);

  v65 = v112[0];
  v66 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0x657469726F766166;
  v112[1] = 0xEF203A726564724FLL;
  v113 = *(v47 + v40[15]);
  v67 = sub_24A4AC240();
  MEMORY[0x24C217D50](v67);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v68 = v112[0];
  v69 = v112[1];
  v112[0] = v65;
  v112[1] = v66;

  MEMORY[0x24C217D50](v68, v69);

  v70 = v112[0];
  v71 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v112, "shareExpires: ");
  HIBYTE(v112[1]) = -18;
  sub_24A37B740(v47 + v40[8], v109, &qword_27EF3F460, &unk_24A4B53B0);
  v72 = sub_24A4AB870();
  MEMORY[0x24C217D50](v72);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v73 = v112[0];
  v74 = v112[1];
  v112[0] = v70;
  v112[1] = v71;

  MEMORY[0x24C217D50](v73, v74);

  v75 = v112[0];
  v76 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](v102, 0x800000024A4B03C0);
  v113 = *(v47 + v40[9]);
  sub_24A4AC030();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v77 = v112[0];
  v78 = v112[1];
  v112[0] = v75;
  v112[1] = v76;

  MEMORY[0x24C217D50](v77, v78);

  v79 = v112[0];
  v80 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000011;
  v112[1] = 0x800000024A4B03E0;
  v81 = v47;
  LOBYTE(v113) = *(v47 + v40[10]);
  v82 = sub_24A4AB870();
  MEMORY[0x24C217D50](v82);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v83 = v112[0];
  v84 = v112[1];
  v112[0] = v79;
  v112[1] = v80;

  MEMORY[0x24C217D50](v83, v84);

  v85 = v112[0];
  v86 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = v108;
  v112[1] = 0x800000024A4B0400;
  v87 = v81;
  v113 = *(v81 + v40[16]);

  sub_24A3C9CEC(&qword_27EF3FB38, &qword_24A4B7658);
  v88 = sub_24A4AB870();
  MEMORY[0x24C217D50](v88);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v89 = v112[0];
  v90 = v112[1];
  v112[0] = v85;
  v112[1] = v86;

  MEMORY[0x24C217D50](v89, v90);

  v92 = v112[0];
  v91 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000014;
  v112[1] = 0x800000024A4B0420;
  v113 = *(v87 + v40[17]);

  v93 = sub_24A4AB870();
  MEMORY[0x24C217D50](v93);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v94 = v112[0];
  v95 = v112[1];
  v112[0] = v92;
  v112[1] = v91;

  MEMORY[0x24C217D50](v94, v95);

  v97 = v112[0];
  v96 = v112[1];
  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v112[0] = 0xD000000000000011;
  v112[1] = 0x800000024A4B0440;
  v113 = v87[5];

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v98 = sub_24A4AB870();
  MEMORY[0x24C217D50](v98);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v99 = v112[0];
  v100 = v112[1];
  v112[0] = v97;
  v112[1] = v96;

  MEMORY[0x24C217D50](v99, v100);

  return v112[0];
}

uint64_t FMFFriend.hashValue.getter()
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A40B348()
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A40B38C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

void *sub_24A40B3F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_24A40B4A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A40B5B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_24A41EC2C(v8);
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
        sub_24A40BB90((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_24A4AC270();
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
            result = sub_24A4AC270();
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
      result = sub_24A3EDCB4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24A3EDCB4((v39 > 1), v40 + 1, 1, v8);
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
        sub_24A40BB90((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A41EC2C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24A41EBA0(v44);
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
    if (v37 || (result = sub_24A4AC270(), (result & 1) == 0))
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

uint64_t sub_24A40BB90(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_24A4AC270() & 1) != 0)
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
      if (!v21 && (sub_24A4AC270() & 1) != 0)
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

void *sub_24A40BDB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24A40BF10(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 25);
      LOBYTE(v17) = *(v17 + 26);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 25) = v22;
      *(v11 + 26) = v17;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24A40C0A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 25);
      LOBYTE(v17) = *(v17 + 26);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 25) = v22;
      *(v11 + 26) = v17;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24A40C270(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      LOBYTE(v18) = *(v18 + 18);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 17) = v22;
      *(v11 + 18) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24A40C3E0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_24A40C53C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24A4AB220();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t _s7FMFCore9FMFFriendV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMFLocation(0);
  v137 = *(v4 - 8);
  v138 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v123 - v8;
  v136 = sub_24A3C9CEC(&qword_27EF3FBA8, &qword_24A4B7928);
  MEMORY[0x28223BE20](v136);
  v10 = &v123 - v9;
  v11 = sub_24A4AAAD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v123 - v16;
  v18 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  MEMORY[0x28223BE20](v18);
  v20 = &v123 - v19;
  if (*a1 != *a2 && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_36;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (v21)
  {
    if (!v22 || (a1[2] != a2[2] || v21 != v22) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_36;
  }

  if ((sub_24A462C1C(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_36;
  }

  v131 = v6;
  v132 = v10;
  v133 = type metadata accessor for FMFFriend(0);
  v134 = a2;
  v23 = v133[8];
  v24 = *(v18 + 48);
  sub_24A37B740(a1 + v23, v20, &qword_27EF3F460, &unk_24A4B53B0);
  v25 = v134 + v23;
  v26 = v134;
  sub_24A37B740(v25, &v20[v24], &qword_27EF3F460, &unk_24A4B53B0);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v24], 1, v11) == 1)
    {
      sub_24A37EF2C(v20, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_18;
    }

LABEL_16:
    sub_24A37EF2C(v20, &qword_27EF3F3B8, &qword_24A4B5480);
    goto LABEL_36;
  }

  sub_24A37B740(v20, v17, &qword_27EF3F460, &unk_24A4B53B0);
  if (v27(&v20[v24], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_16;
  }

  (*(v12 + 32))(v14, &v20[v24], v11);
  sub_24A40DA68(&qword_27EF3F3C0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v28 = sub_24A4AB810();
  v29 = *(v12 + 8);
  v29(v14, v11);
  v29(v17, v11);
  v26 = v134;
  sub_24A37EF2C(v20, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if (*(a1 + v133[9]) != *(v26 + v133[9]))
  {
    goto LABEL_36;
  }

  v30 = v133[10];
  v31 = *(a1 + v30);
  v32 = *(v26 + v30);
  if (v31 == 2)
  {
    v33 = v132;
    if (v32 != 2)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = 0;
    v33 = v132;
    if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
    {
      return v34 & 1;
    }
  }

  v35 = v133[11];
  v36 = *(a1 + v35);
  v37 = *(v26 + v35);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = 0;
    if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
    {
      return v34 & 1;
    }
  }

  v38 = v133[12];
  v39 = *(a1 + v38);
  v40 = *(v26 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return v34 & 1;
    }
  }

  if (*(a1 + v133[18]) != *(v26 + v133[18]) || *(a1 + v133[13]) != *(v26 + v133[13]))
  {
    goto LABEL_36;
  }

  v42 = v133[14];
  v43 = *(a1 + v42);
  v44 = *(v26 + v42);
  if (v43 == 2)
  {
    if (v44 == 2)
    {
      goto LABEL_43;
    }

LABEL_36:
    v34 = 0;
    return v34 & 1;
  }

  v34 = 0;
  if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
  {
    return v34 & 1;
  }

LABEL_43:
  if (*(a1 + v133[15]) != *(v26 + v133[15]))
  {
    goto LABEL_36;
  }

  v45 = v133[20];
  v46 = *(v136 + 48);
  sub_24A37B740(a1 + v45, v33, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A37B740(v134 + v45, v33 + v46, &qword_27EF3F480, &unk_24A4B8C20);
  v47 = v138;
  v48 = *(v137 + 48);
  if (v48(v33, 1, v138) == 1)
  {
    if (v48(v33 + v46, 1, v47) == 1)
    {
      sub_24A37EF2C(v33, &qword_27EF3F480, &unk_24A4B8C20);
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v49 = v135;
  sub_24A37B740(v33, v135, &qword_27EF3F480, &unk_24A4B8C20);
  if (v48(v33 + v46, 1, v47) == 1)
  {
    sub_24A39A698(v49, type metadata accessor for FMFLocation);
LABEL_49:
    sub_24A37EF2C(v33, &qword_27EF3FBA8, &qword_24A4B7928);
    goto LABEL_36;
  }

  v50 = v131;
  sub_24A39CAB8(v33 + v46, v131, type metadata accessor for FMFLocation);
  v51 = static FMFLocation.== infix(_:_:)();
  sub_24A39A698(v50, type metadata accessor for FMFLocation);
  sub_24A39A698(v49, type metadata accessor for FMFLocation);
  sub_24A37EF2C(v33, &qword_27EF3F480, &unk_24A4B8C20);
  if ((v51 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_51:
  v52 = v133[19];
  v53 = *(a1 + v52 + 8);
  v137 = *(a1 + v52);
  v54 = *(a1 + v52 + 24);
  v138 = *(a1 + v52 + 16);
  v55 = *(a1 + v52 + 32);
  v56 = *(a1 + v52 + 40);
  v57 = *(a1 + v52 + 48);
  v58 = (v134 + v52);
  v60 = *v58;
  v59 = v58[1];
  v61 = v58[2];
  v131 = v58[3];
  v132 = v61;
  v63 = v58[4];
  v62 = v58[5];
  v129 = v56;
  v130 = v63;
  v126 = v58[6];
  v127 = v62;
  v64 = v53;
  v135 = v54;
  v136 = v55;
  v128 = v57;
  if (!v53)
  {
    sub_24A39AED0(v137, 0, v138, v54, v55, v56, v57);
    if (!v59)
    {
      sub_24A39AED0(v60, 0, v132, v131, v130, v127, v126);
      v64 = 0;
      goto LABEL_70;
    }

    v65 = v59;
    sub_24A39AED0(v60, v59, v132, v131, v130, v127, v126);
LABEL_64:
    sub_24A40D4E4(v137, v64, v138, v135, v136, v129, v128);
    v82 = v60;
    v84 = v65;
    v85 = v131;
    v83 = v132;
    v86 = v130;
    v88 = v126;
    v87 = v127;
    goto LABEL_65;
  }

  v65 = v59;
  if (!v59)
  {
    v90 = v137;
    v89 = v138;
    v91 = v135;
    v92 = v136;
    v94 = v128;
    v93 = v129;
    sub_24A39AED0(v137, v53, v138, v135, v136, v129, v128);
    sub_24A39AED0(v60, 0, v132, v131, v130, v127, v126);
    sub_24A39AED0(v90, v64, v89, v91, v92, v93, v94);

    goto LABEL_64;
  }

  if (v137 != v60 || v53 != v59) && (sub_24A4AC270() & 1) == 0 || (v138 != v132 || v135 != v131) && (sub_24A4AC270() & 1) == 0 || ((v136 ^ v130))
  {
    v66 = v137;
    v67 = v64;
    v68 = v129;
    sub_24A39AED0(v137, v64, v138, v135, v136, v129, v128);
    v69 = v60;
    v70 = v60;
    v71 = v65;
    v72 = v65;
    v73 = v131;
    v74 = v132;
    v75 = v130;
    v76 = v126;
    v77 = v127;
    sub_24A39AED0(v70, v72, v132, v131, v130, v127, v126);
    v78 = v66;
    v79 = v135;
    v80 = v68;
    v81 = v128;
    sub_24A39AED0(v78, v67, v138, v135, v136, v80, v128);
    sub_24A40D4E4(v69, v71, v74, v73, v75, v77, v76);

    v82 = v137;
    v83 = v138;
    v84 = v67;
    v85 = v79;
    v86 = v136;
    v87 = v129;
    v88 = v81;
LABEL_65:
    sub_24A40D4E4(v82, v84, v83, v85, v86, v87, v88);
    goto LABEL_36;
  }

  if (v129 != v127 || v128 != v126)
  {
    v111 = v128;
    v110 = v129;
    v125 = sub_24A4AC270();
    v112 = v138;
    v113 = v64;
    sub_24A39AED0(v137, v64, v138, v135, v136, v110, v111);
    v114 = v65;
    v115 = v65;
    v116 = v131;
    v117 = v132;
    v118 = v130;
    sub_24A39AED0(v60, v115, v132, v131, v130, v127, v126);
    v119 = v112;
    v120 = v135;
    sub_24A39AED0(v137, v113, v119, v135, v136, v110, v111);
    sub_24A40D4E4(v60, v114, v117, v116, v118, v127, v126);

    sub_24A40D4E4(v137, v113, v138, v120, v136, v110, v111);
    if ((v125 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

  v95 = v138;
  v96 = v128;
  v97 = v129;
  sub_24A39AED0(v137, v64, v138, v135, v136, v129, v128);
  v124 = v65;
  v98 = v65;
  v99 = v131;
  v100 = v132;
  v101 = v130;
  sub_24A39AED0(v60, v98, v132, v131, v130, v97, v96);
  sub_24A39AED0(v137, v64, v95, v135, v136, v97, v96);
  sub_24A40D4E4(v60, v124, v100, v99, v101, v97, v96);

LABEL_70:
  sub_24A40D4E4(v137, v64, v138, v135, v136, v129, v128);
LABEL_71:
  v102 = v133[16];
  v103 = *(a1 + v102);
  v104 = *(v134 + v102);
  if (v103)
  {
    if (!v104)
    {
      goto LABEL_36;
    }

    v105 = sub_24A3A04EC(v103, v104);

    if ((v105 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v104)
  {
    goto LABEL_36;
  }

  v106 = v133[17];
  v107 = *(a1 + v106);
  v108 = *(v134 + v106);
  if (v107)
  {
    if (!v108)
    {
      goto LABEL_36;
    }

    v109 = sub_24A3A04EC(v107, v108);

    if ((v109 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v108)
  {
    goto LABEL_36;
  }

  v121 = a1[5];
  v122 = v134[5];
  v34 = (v121 | v122) == 0;
  if (v121 && v122)
  {
    v34 = sub_24A38B37C(a1[5], v122);
  }

  return v34 & 1;
}

unint64_t sub_24A40D490()
{
  result = qword_27EF3FAF8;
  if (!qword_27EF3FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAF8);
  }

  return result;
}

void sub_24A40D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

unint64_t sub_24A40D534()
{
  result = qword_27EF3FB08;
  if (!qword_27EF3FB08)
  {
    sub_24A3CBC9C(&qword_27EF3FB00, &qword_24A4B7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB08);
  }

  return result;
}

unint64_t sub_24A40D5B0()
{
  result = qword_27EF3FB20;
  if (!qword_27EF3FB20)
  {
    sub_24A3CBC9C(&qword_27EF3FB00, &qword_24A4B7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB20);
  }

  return result;
}

unint64_t sub_24A40D62C()
{
  result = qword_27EF3FB28;
  if (!qword_27EF3FB28)
  {
    sub_24A3CBC9C(&qword_27EF3F480, &unk_24A4B8C20);
    sub_24A40DA68(&qword_27EF3FB30, type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB28);
  }

  return result;
}

unint64_t sub_24A40D6E0()
{
  result = qword_27EF3FB40;
  if (!qword_27EF3FB40)
  {
    sub_24A3CBC9C(&qword_27EF3FB38, &qword_24A4B7658);
    sub_24A40D79C(&qword_27EF3FB48, &qword_27EF3FB50, &protocol conformance descriptor for FMFLocationAlert, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB40);
  }

  return result;
}

uint64_t sub_24A40D79C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A40DA68(a2, type metadata accessor for FMFLocationAlert, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A40D838()
{
  result = qword_27EF3F3F0;
  if (!qword_27EF3F3F0)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3F0);
  }

  return result;
}

unint64_t sub_24A40D910()
{
  result = qword_27EF3FB90;
  if (!qword_27EF3FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB90);
  }

  return result;
}

unint64_t sub_24A40D968()
{
  result = qword_27EF3FB98;
  if (!qword_27EF3FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB98);
  }

  return result;
}

unint64_t sub_24A40D9C0()
{
  result = qword_27EF3FBA0;
  if (!qword_27EF3FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBA0);
  }

  return result;
}

unint64_t sub_24A40DA14(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A40DA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t FMFRelationshipType.debugDescription.getter()
{
  sub_24A4ABF50();

  v0 = sub_24A4AC240();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000020;
}

unint64_t sub_24A40DB74()
{
  result = qword_27EF3FBB8;
  if (!qword_27EF3FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBB8);
  }

  return result;
}

unint64_t sub_24A40DBCC()
{
  result = qword_27EF3FBC0;
  if (!qword_27EF3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBC0);
  }

  return result;
}

uint64_t FMFDemoError.hashValue.getter()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

unint64_t sub_24A40DC9C()
{
  result = qword_27EF3FBD8;
  if (!qword_27EF3FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBD8);
  }

  return result;
}

void *sub_24A40DD00(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v13 = sub_24A4ABD50();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v8 - 8);
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v9 = sub_24A3785D4();
  v12[1] = "request handler ";
  v12[2] = v9;
  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v13);
  v3[6] = sub_24A4ABD90();
  v10 = v14;
  v3[12] = v15;
  v3[13] = v10;
  sub_24A37B3F8(v16, (v3 + 7));
  return v3;
}

uint64_t sub_24A40DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A4AB690();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AB6E0();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 48);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v15;
  aBlock[4] = sub_24A40F160;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D86F48;
  v17 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void sub_24A40E2A4(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a3;
  v9 = sub_24A4AAAD0();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  v12 = sub_24A378E18(v11, qword_27EF4E260);

  v46 = v12;
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = a4;
    v17 = a2;
    v18 = v16;
    v51[0] = v16;
    *v15 = 136315138;
    v19 = sub_24A4AC420();
    v21 = sub_24A37BD58(v19, v20, v51);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_24A376000, v13, v14, "FMFDemoInteractionController: Handling %s.", v15, 0xCu);
    sub_24A37EEE0(v18);
    v22 = v18;
    a2 = v17;
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a2;
  v23[4] = v47;
  v51[0] = a1;
  v51[1] = sub_24A40F170;
  v51[2] = v23;
  type metadata accessor for FMFBaseRequest(255);
  sub_24A4ABDF0();
  swift_retain_n();
  swift_retain_n();
  sub_24A3CBC9C(&qword_27EF3F2D8, &qword_24A4B7C60);
  swift_getFunctionTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24A3C9CEC(&qword_27EF3FBE0, &qword_24A4B7C68);
  if (swift_dynamicCast())
  {
    v24 = v50;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = v44;
      v27 = Strong;
      sub_24A4AAAC0();
      sub_24A3E4FC0(v26);
      (*(v45 + 8))(v26, v9);
      v28 = *(v27 + 104);
      v29 = v28[4];
      v30 = v28[5];
      v31 = v28[6];
      v32 = v28[7];

      v33 = sub_24A40F1F4(v29, v30, v31, v32);
      v48 = 0;
      v49 = v33;

      v24(&v49, &v48);

      sub_24A3BB2D8(v34);
    }
  }

  else
  {

    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCE0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315138;
      v39 = sub_24A4AC420();
      v41 = sub_24A37BD58(v39, v40, v51);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_24A376000, v35, v36, "FMFDemoInteractionController: Received %s, which is unsupported in demo mode.", v37, 0xCu);
      sub_24A37EEE0(v38);
      MEMORY[0x24C219130](v38, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24A40ECA4();
    }

    sub_24A40F1A0();
    v42 = swift_allocError();
    a2(0, v42);
  }
}

uint64_t sub_24A40E88C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = sub_24A4AC420();
    v15 = sub_24A37BD58(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFDemoInteractionController: Forwarding %s to real server interaction controller.", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = v4[10];
  v17 = v4[11];
  sub_24A37EACC(v4 + 7, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(v17 + 72);

  v19(a1, sub_24A40F158, v18, v16, v17);
}

uint64_t sub_24A40EAA8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = a2;
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_24A37BD58(0xD00000000000001FLL, 0x800000024A4B05A0, &v17);
    *(v10 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v12 = sub_24A4AC310();
      v14 = v13;
    }

    else
    {
      v14 = 0xE400000000000000;
      v12 = 1701736302;
    }

    v15 = sub_24A37BD58(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_24A376000, v8, v9, "FMFDemoInteractionController: Received %s, (error: %s) from real server interaction controller.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  return a3(a1, a2);
}

uint64_t sub_24A40ECA4()
{
  v0 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v22 = 0x800000024A4B0530;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_24A4AA800();
  v11 = v10;

  v12 = [v7 bundleForClass_];
  v13 = sub_24A4AA800();
  v15 = v14;

  v16 = sub_24A4AA9D0();
  v17 = *(*(v16 - 8) + 56);
  v17(v5, 1, 1, v16);
  v17(v2, 1, 1, v16);
  type metadata accessor for FMFAlert(0);
  v18 = swift_allocObject();
  v18[3] = 0;
  swift_unknownObjectWeakInit();
  v19 = v22;
  v18[4] = 0xD00000000000001CLL;
  v18[5] = v19;
  v18[6] = v9;
  v18[7] = v11;
  v18[8] = 0;
  v18[9] = 0;
  v18[10] = v13;
  v18[11] = v15;
  v18[12] = 0;
  v18[13] = 0;
  sub_24A37BE24(v5, v18 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, &qword_27EF3F440, &qword_24A4B5BF0);
  sub_24A37BE24(v2, v18 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, &qword_27EF3F440, &qword_24A4B5BF0);
  *(v18 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = 5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  sub_24A45A9DC(v18, Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40EFA4()
{
  sub_24A3C8470(v0 + 16);
  sub_24A3C8470(v0 + 32);

  sub_24A37EEE0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_24A40F028(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40F070(uint64_t a1, uint64_t a2)
{
  *(*v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40F0B8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_24A37EACC((*v0 + 56), v1);
  return (*(v2 + 56))(v1, v2);
}

unint64_t sub_24A40F1A0()
{
  result = qword_27EF3FBE8;
  if (!qword_27EF3FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBE8);
  }

  return result;
}

uint64_t sub_24A40F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = MEMORY[0x277D84F90];
  v12 = sub_24A431298(MEMORY[0x277D84F90]);
  v13 = sub_24A431298(v11);
  v14 = type metadata accessor for FMFCommandResponseFragment(0);
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_24A37F0C8(v29);
  type metadata accessor for FMFInitRefreshClientResponse(0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels) = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations) = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices) = 0;
  v16 = (v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *(v18 + 41) = 0u;
  v19 = (v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
  v20 = v29[13];
  v19[12] = v29[12];
  v19[13] = v20;
  v19[14] = v29[14];
  v21 = v29[9];
  v19[8] = v29[8];
  v19[9] = v21;
  v22 = v29[11];
  v19[10] = v29[10];
  v19[11] = v22;
  v23 = v29[5];
  v19[4] = v29[4];
  v19[5] = v23;
  v24 = v29[7];
  v19[6] = v29[6];
  v19[7] = v24;
  v25 = v29[1];
  *v19 = v29[0];
  v19[1] = v25;
  v26 = v29[3];
  v19[2] = v29[2];
  v19[3] = v26;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations) = a3;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress) = a4;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following) = a2;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers) = a1;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe) = v11;
  *(v15 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  sub_24A37BE24(v10, v15 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &qword_27EF3F1C8, &unk_24A4B7C70);
  *(v15 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert) = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_fetchStatus) = 200;
  return v15;
}

unint64_t sub_24A40F54C(char a1)
{
  result = 0x54746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x656D614E707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x54746375646F7270;
      break;
    case 4:
      result = 0x6F6973726556736FLL;
      break;
    case 5:
      result = 0x646C697542736FLL;
      break;
    case 6:
      result = 0x6C43656369766564;
      break;
    case 7:
      result = 0x4455656369766564;
      break;
    case 8:
      result = 0x7365527070417369;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E656B6F54737061;
      break;
    case 12:
      result = 0x65646F4D68737570;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x6956776F646E6977;
      break;
    case 15:
      result = 0x736F4D746E6F7266;
      break;
    case 16:
      result = 0x4B53656369766564;
      break;
    case 17:
      result = 0x437972746E756F63;
      break;
    case 18:
      result = 0x6F436E6F69676572;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A40F7D4()
{

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A40F88C()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24A40F998(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_27EF3FC08;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t FMFAddUpdateLabelAction.__allocating_init(locationToLabel:label:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_24A3B4B10(a1, v6 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  if (a3)
  {

    v7._countAndFlagsBits = a2;
    v7._object = a3;
    FMFDefaultLabel.init(rawValue:)(v7);
    sub_24A3B4B74(a1);
    if (v11 == 5)
    {
      v8 = 259;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    sub_24A3B4B74(a1);
    a2 = 0;
    v8 = 0;
  }

  v9 = v6 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = v8;
  *(v6 + 16) = 1;
  return v6;
}

uint64_t FMFAddUpdateLabelAction.init(locationToLabel:label:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_24A3B4B10(a1, v3 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  if (a3)
  {

    v7._countAndFlagsBits = a2;
    v7._object = a3;
    FMFDefaultLabel.init(rawValue:)(v7);
    sub_24A3B4B74(a1);
    if (v11 == 5)
    {
      v8 = 259;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    sub_24A3B4B74(a1);
    a2 = 0;
    v8 = 0;
  }

  v9 = v3 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = v8;
  *(v3 + 16) = 1;
  return v3;
}

uint64_t sub_24A40FBDC()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x203A6C6562616CLL, 0xE700000000000000);

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v2 = sub_24A4AB870();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x203A6570797420, 0xE700000000000000);
  sub_24A3C9CEC(&qword_27EF3FC38, qword_24A4B7D08);
  v3 = sub_24A4AB870();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4B08C0);
  type metadata accessor for FMFLocation(0);
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t sub_24A40FE6C()
{
  sub_24A3B4B74(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
}

uint64_t FMFAddUpdateLabelAction.deinit()
{
  sub_24A3B4B74(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);

  return v0;
}

uint64_t FMFAddUpdateLabelAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel;

  sub_24A3B4B74(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAddUpdateLabelAction(uint64_t a1)
{
  result = qword_27EF3FC40;
  if (!qword_27EF3FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A40FFD4(uint64_t a1)
{
  result = type metadata accessor for FMFLocation(319);
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

void sub_24A4100DC(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  v10 = sub_24A39B2C8(v5, v4);
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

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24A4A4B74(v15, v3 & 1);
    v10 = sub_24A39B2C8(v5, v4);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24A4AC2B0();
    __break(1u);
  }

  if (v3)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24A4A8628();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v5;
  v22[1] = v4;
  v23 = v21[7] + 24 * v10;
  *v23 = v6;
  *(v23 + 8) = v7;
  *(v23 + 16) = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24A4ABF50();
    MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B0A10);
    sub_24A4AC030();
    MEMORY[0x24C217D50](39, 0xE100000000000000);
    sub_24A4AC050();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v3 = (a1 + 104);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v5 = *(v3 - 4);
      v4 = *(v3 - 3);
      v26 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v27 = *a3;

      v28 = sub_24A39B2C8(v5, v4);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_24A4A4B74(v32, 1);
        v28 = sub_24A39B2C8(v5, v4);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v5;
      v35[1] = v4;
      v36 = v34[7] + 24 * v28;
      *v36 = v26;
      *(v36 + 8) = v7;
      *(v36 + 16) = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v6;
      v34[2] = v38;
      v3 += 40;
      if (v39 == v6)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_24A4104A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v85 = a1;
  v86 = a2;
  v83 = sub_24A4AAAD0();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFLocation(0);
  v94 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = &v79 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = *(a4 + 16);
  v91 = &v79 - v14;
  v96 = v17;
  if (v16)
  {
    v95 = v7;
    v97 = a3;
    v103[0] = MEMORY[0x277D84F90];
    sub_24A3DBD0C(0, v16, 0);
    v18 = v103[0];
    v19 = (a4 + 48);
    do
    {
      v21 = *(v19 - 2);
      v20 = *(v19 - 1);
      v22 = *v19;
      v103[0] = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      swift_bridgeObjectRetain_n();
      if (v24 >= v23 >> 1)
      {
        sub_24A3DBD0C((v23 > 1), v24 + 1, 1);
        v18 = v103[0];
      }

      v19 += 24;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 40 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20;
      *(v25 + 48) = v21;
      *(v25 + 56) = v20;
      *(v25 + 64) = v22;
      --v16;
    }

    while (v16);
    v15 = v91;
    a3 = v97;
    v7 = v95;
    goto LABEL_8;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_8:
    sub_24A3C9CEC(&qword_27EF3FC50, "nh");
    v26 = sub_24A4AC090();
    goto LABEL_9;
  }

  v26 = MEMORY[0x277D84F98];
LABEL_9:
  v103[0] = v26;

  sub_24A4100DC(v27, 1, v103);

  v28 = v103[0];
  v29 = *(a3 + 16);
  if (v29)
  {
    v30 = 0;
    v80 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v31 = a3 + v80;
    v32 = v94[9];
    v79 = (v7 + 8);
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v95 = v29;
    v97 = a3 + v80;
    do
    {
      sub_24A3B4B10(v31 + v32 * v30, v15);
      v33 = *(v15 + 1);
      if (v33 && *(v28 + 16))
      {
        v34 = *v15;

        v35 = sub_24A39B2C8(v34, v33);
        if (v36)
        {
          v37 = *(v28 + 56) + 24 * v35;
          v38 = *(v37 + 8);
          v94 = *v37;
          v39 = *(v37 + 16);
          v40 = v96[11];
          memcpy(v103, &v15[v40], 0x161uLL);
          if (sub_24A3B9C24(v103) != 1)
          {
            v87 = v39;
            v41 = v103[38];

            [v41 coordinate];
            v43 = v42;
            v45 = v44;
            memcpy(v102, &v15[v40], 0x161uLL);
            if (sub_24A3B9C24(v102) != 1)
            {
              v90 = v38;
              v46 = v15[16];
              if (v15[16])
              {
                v47 = 10.0;
              }

              else
              {
                v47 = 120.0;
              }

              v81 = v102[38];
              v48 = [v81 timestamp];
              v49 = v82;
              sub_24A4AAAA0();

              sub_24A4AAA50();
              v51 = v50;
              (*v79)(v49, v83);
              v101[0] = 0;
              MEMORY[0x24C219150](v101, 8);
              for (i = v101[0]; (0x20000000000001 * v101[0]) < 0x1FFFFFFFFFF801; i = v101[0])
              {
                v101[0] = 0;
                MEMORY[0x24C219150](v101, 8);
              }

              v53 = v91;
              if (vcvtd_n_f64_u64((i * 0x20000000000001uLL) >> 64, 0x35uLL) <= pow(v51 / v47, 10.0))
              {
                v54 = v46;
                if (v46)
                {
                  goto LABEL_34;
                }

LABEL_31:
                if ((v54 & 1) == 0)
                {

                  memcpy(v101, (v53 + v40), 0x161uLL);
                  v55 = v88;
                  *(v88 + 24) = 0;
                  *(v55 + 32) = 1;
                  v56 = v96;
                  v57 = v96[8];
                  v58 = sub_24A4AAB20();
                  v59 = v55 + v57;
                  v60 = 1;
                  (*(*(v58 - 8) + 56))(v59, 1, 1, v58);
                  *v55 = v34;
                  *(v55 + 8) = v33;
                  *(v55 + 16) = 1;
                  memcpy((v55 + v56[11]), v101, 0x161uLL);
                  *(v55 + 33) = 0;
                  *(v55 + v56[9]) = 0;
                  *(v55 + v56[10]) = 0;

                  sub_24A37B740(v101, v99, &qword_27EF3F840, &qword_24A4B6598);
                  goto LABEL_43;
                }
              }

              else
              {
                v54 = v46 ^ 1;
                if ((v46 & 1) == 0)
                {
                  goto LABEL_31;
                }

LABEL_34:
                if (v54)
                {

                  v94 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v43 longitude:v45];
                  memcpy(v101, (v53 + v40), 0x161uLL);
                  if (sub_24A3B9C24(v101) == 1)
                  {
                    sub_24A3BAFB0(v100);
                  }

                  else
                  {
                    sub_24A37B740(v101, v99, &unk_27EF404E0, &unk_24A4B5230);
                    memcpy(v100, v101, sizeof(v100));
                  }

                  memcpy(v99, (v53 + v40), 0x161uLL);
                  if (sub_24A3B9C24(v99) == 1)
                  {
                    v61 = 0;
                    v62 = 0;
                    v63 = 0;
                  }

                  else
                  {
                    v61 = v99[40];
                    v62 = v99[41];
                    v63 = v99[42];
                  }

                  memcpy(v98, v100, 0x130uLL);
                  v98[38] = v94;
                  LOBYTE(v98[39]) = 0;
                  v98[40] = v61;
                  v98[41] = v62;
                  LOWORD(v98[42]) = v63;
                  v98[43] = 0;
                  LOBYTE(v98[44]) = 0;
                  nullsub_1();
                  v55 = v88;
                  *(v88 + 24) = 0;
                  *(v55 + 32) = 1;
                  v64 = v96;
                  v65 = v96[8];
                  v66 = sub_24A4AAB20();
                  (*(*(v66 - 8) + 56))(v55 + v65, 1, 1, v66);
                  *v55 = v34;
                  *(v55 + 8) = v33;
                  *(v55 + 16) = 0;
                  memcpy((v55 + v64[11]), v98, 0x161uLL);
                  *(v55 + 33) = 0;
                  *(v55 + v64[9]) = 0;
                  *(v55 + v64[10]) = 0;

                  v60 = 0;
LABEL_43:
                  v90 = v33;
                  v29 = v95;
LABEL_44:
                  sub_24A3B4B10(v55, v89);
                  v67 = v60;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v68 = v92;
                  }

                  else
                  {
                    v68 = sub_24A3B5C2C(0, v92[2] + 1, 1, v92);
                  }

                  v70 = v68[2];
                  v69 = v68[3];
                  if (v70 >= v69 >> 1)
                  {
                    v68 = sub_24A3B5C2C((v69 > 1), v70 + 1, 1, v68);
                  }

                  v68[2] = v70 + 1;
                  v92 = v68;
                  sub_24A410DD8(v89, v68 + v80 + v70 * v32);
                  v71 = v93;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v71 = sub_24A3BEA68(0, *(v71 + 2) + 1, 1, v71);
                  }

                  v73 = *(v71 + 2);
                  v72 = *(v71 + 3);
                  v93 = v71;
                  if (v73 >= v72 >> 1)
                  {
                    v93 = sub_24A3BEA68((v72 > 1), v73 + 1, 1, v93);
                  }

                  sub_24A3B4B74(v88);
                  v74 = v93;
                  *(v93 + 2) = v73 + 1;
                  v75 = &v74[24 * v73];
                  v76 = v90;
                  v15 = v91;
                  *(v75 + 4) = v34;
                  *(v75 + 5) = v76;
                  v75[48] = v67;
                  sub_24A3B4B74(v15);
                  v31 = v97;
                  goto LABEL_22;
                }
              }

              v55 = v88;
              sub_24A3B4B10(v53, v88);
              v34 = v94;
              v29 = v95;
              v60 = v87;
              goto LABEL_44;
            }
          }

          v29 = v95;
        }

        else
        {
        }

        v31 = v97;
      }

      sub_24A3B4B74(v15);
LABEL_22:
      ++v30;
    }

    while (v30 != v29);
  }

  v77 = v85;

  return v77;
}

uint64_t sub_24A410DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall FMFShallowLocationEvent.init(firstLocationLatency:locationFound:longestAgeDisplayedIncludingCache:longestAgeDisplayedExcludingCache:timeSpentInApp:)(FMFCore::FMFShallowLocationEvent *__return_ptr retstr, Swift::Double firstLocationLatency, Swift::Bool locationFound, Swift::Double longestAgeDisplayedIncludingCache, Swift::Double longestAgeDisplayedExcludingCache, Swift::Double timeSpentInApp)
{
  retstr->firstLocationLatency = firstLocationLatency;
  retstr->locationFound = locationFound;
  retstr->longestAgeDisplayedIncludingCache = longestAgeDisplayedIncludingCache;
  retstr->longestAgeDisplayedExcludingCache = longestAgeDisplayedExcludingCache;
  retstr->timeSpentInApp = timeSpentInApp;
}

Swift::Void __swiftcall FMFManager.enqueue(event:)(FMFCore::FMFShallowLocationEvent *event)
{
  v2 = sub_24A4AB820();
  v3 = swift_allocObject();
  v4 = *&event->longestAgeDisplayedIncludingCache;
  *(v3 + 16) = *&event->firstLocationLatency;
  *(v3 + 32) = v4;
  *(v3 + 48) = event->timeSpentInApp;
  v6[4] = sub_24A411334;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D86FC0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

void static FMFAnalytics.sendShallowLocationEventAnalytics(event:)(uint64_t a1)
{
  v2 = sub_24A4AB820();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  v6[4] = sub_24A4118AC;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D87010;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_24A411120(uint64_t a1)
{
  v2 = sub_24A4313C8(MEMORY[0x277D84F90]);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v3, 0xD000000000000014, 0x800000024A4B0AF0, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v5, 0x6E6F697461636F6CLL, 0xED0000646E756F46, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v7, 0xD000000000000021, 0x800000024A4B0B10, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v9, 0xD000000000000021, 0x800000024A4B0B40, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v11, 0x6E657053656D6974, 0xEE007070416E4974, v12);
  return v2;
}

id sub_24A41133C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_24A3D7810();
    v4 = sub_24A4AB760();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

Swift::Void __swiftcall FMFManager.enqueue(event:)(FMFCore::FMFLiveLocationEvent event)
{
  v1 = **&event.liveSessionSuccessful;
  v2 = *(*&event.liveSessionSuccessful + 8);
  v3 = sub_24A4AB820();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6[4] = sub_24A411714;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D87060;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

void static FMFAnalytics.sendLiveLocationEventAnalytics(event:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_24A4AB820();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6[4] = sub_24A4118B0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D870B0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_24A411610(char a1, double a2)
{
  v4 = sub_24A4313C8(MEMORY[0x277D84F90]);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v5, 0xD000000000000018, 0x800000024A4B0AB0, isUniquelyReferenced_nonNull_native);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v7, 0xD000000000000015, 0x800000024A4B0AD0, v8);
  return v4;
}

__n128 sub_24A411720(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A411734(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A411788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFLiveLocationEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFLiveLocationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFLiveLocationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24A4118C0(unsigned __int8 a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t FMFFavoriteFriend.friendIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24A411A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726564726FLL;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726564726FLL;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A411AB4()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A411B28(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A411B88(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A411C04(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x726564726FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A411C34()
{
  if (*v0)
  {
    return 0x726564726FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24A411C60@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

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

uint64_t sub_24A411CC4(uint64_t a1)
{
  v2 = sub_24A411F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A411D00(uint64_t a1)
{
  v2 = sub_24A411F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFFavoriteFriend.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FC58, &qword_24A4B7E30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A411F08();
  sub_24A4AC3C0();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_24A4AC120();
    v11 = v10;
    v12 = v9;
    v16 = 1;
    v13 = sub_24A4AC150();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A411F08()
{
  result = qword_27EF3FC60;
  if (!qword_27EF3FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC60);
  }

  return result;
}

uint64_t FMFFavoriteFriend.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FC68, &qword_24A4B7E38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  sub_24A37EACC(a1, a1[3]);
  sub_24A411F08();
  sub_24A4AC3D0();
  v11 = 0;
  v7 = v9[1];
  sub_24A4AC1B0();
  if (!v7)
  {
    v10 = 1;
    sub_24A4AC1E0();
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL static FMFFavoriteFriend.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t FMFFavoriteFriend.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A4ABF50();

  MEMORY[0x24C217D50](v1, v2);
  MEMORY[0x24C217D50](0x3A726564726F20, 0xE700000000000000);
  v3 = sub_24A4AC240();
  MEMORY[0x24C217D50](v3);

  return 0xD000000000000026;
}

BOOL sub_24A412248(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

FMFCore::FMFGeofenceAlertsFrom_optional __swiftcall FMFGeofenceAlertsFrom.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

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

  *v2 = v5;
  return result;
}

uint64_t FMFGeofenceAlertsFrom.rawValue.getter()
{
  if (*v0)
  {
    return 0x454E4F5952455645;
  }

  else
  {
    return 0x53444E45495246;
  }
}

uint64_t sub_24A412348(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x454E4F5952455645;
  }

  else
  {
    v3 = 0x53444E45495246;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x454E4F5952455645;
  }

  else
  {
    v5 = 0x53444E45495246;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A4123F0()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A412474(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A4124E4(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A412570@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

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