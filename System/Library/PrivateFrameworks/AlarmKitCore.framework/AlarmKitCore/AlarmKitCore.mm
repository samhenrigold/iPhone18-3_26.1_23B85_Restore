void sub_22D6B5E40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22D6B5EC0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22D72E380();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + 16);
    *v7 = v10;
    v11 = *MEMORY[0x277D85200];
    v12 = *(v5 + 104);
    v12(v7, v11, v4);
    v13 = v10;
    LOBYTE(v10) = sub_22D72E390();
    v14 = *(v5 + 8);
    result = v14(v7, v4);
    if (v10)
    {
      if (a1)
      {
      }

      v15 = *(v9 + 16);
      *v7 = v15;
      v12(v7, v11, v4);
      v16 = v15;
      LOBYTE(v15) = sub_22D72E390();
      result = v14(v7, v4);
      if (v15)
      {
        *(v9 + 40) = 1;
        v17[7] = 1;
        sub_22D72DC30();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6B607C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B60B4()
{
  v1 = sub_22D72D850();
  v2 = *(v1 - 8);
  v26 = *(v2 + 80);
  v3 = (v26 + 16) & ~v26;
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Alarm(0);
  v25 = *(*(v5 - 1) + 80);
  v6 = (v25 + v4 + 8) & ~v25;
  v24 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;
  v8 = sub_22D72D7A0();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v6, v8);
  v9(v0 + v6 + v5[5], v8);

  v10 = v5[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v5[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = v5[11];
  v17 = sub_22D72DD20();
  (*(*(v17 - 8) + 8))(v7 + v16, v17);
  v18 = v5[12];
  v19 = sub_22D72DBA0();
  (*(*(v19 - 8) + 8))(v7 + v18, v19);
  v20 = v5[13];
  v21 = sub_22D72D730();
  v22 = *(*(v21 - 8) + 8);
  v22(v7 + v20, v21);
  v22(v7 + v5[14], v21);

  return MEMORY[0x2821FE8E8](v0, ((((v24 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v26 | v25 | 7);
}

uint64_t sub_22D6B64A4()
{
  v1 = type metadata accessor for Alarm(0);
  v36 = *(*(v1 - 1) + 80);
  v2 = (v36 + 24) & ~v36;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22D72D890();
  v32 = *(v4 - 8);
  v34 = v4;
  v35 = *(v32 + 80);
  v5 = (v3 + v35 + 16) & ~v35;
  v6 = *(v32 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178) - 8);
  v8 = *(v7 + 80);
  v30 = v5;
  v9 = v5 + v6 + v8;
  v31 = *(v7 + 64);

  v10 = v0 + v2;
  v11 = sub_22D72D7A0();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v12(v10 + v1[5], v11);

  v13 = v1[8];
  v14 = sub_22D72DDB0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v10 + v13, 1, v14))
  {
    (*(v15 + 8))(v10 + v13, v14);
  }

  v33 = v8;
  v29 = v9 & ~v8;
  v16 = v1[9];
  v17 = sub_22D72DCF0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v10 + v16, 1, v17))
  {
    (*(v18 + 8))(v10 + v16, v17);
  }

  v19 = v1[11];
  v20 = sub_22D72DD20();
  (*(*(v20 - 8) + 8))(v10 + v19, v20);
  v21 = v1[12];
  v22 = sub_22D72DBA0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  v24(v10 + v21, v22);
  v25 = v1[13];
  v26 = sub_22D72D730();
  v27 = *(*(v26 - 8) + 8);
  v27(v10 + v25, v26);
  v27(v10 + v1[14], v26);

  (*(v32 + 8))(v0 + v30, v34);
  if (!(*(v23 + 48))(v0 + v29, 1, v22))
  {
    v24(v0 + v29, v22);
  }

  return MEMORY[0x2821FE8E8](v0, ((v31 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v36 | v35 | v33 | 7);
}

uint64_t sub_22D6B6938()
{
  v1 = sub_22D72D910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B69FC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);

  v8 = v1[8];
  v9 = sub_22D72DDB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[9];
  v12 = sub_22D72DCF0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_22D72DD20();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = sub_22D72DBA0();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[13];
  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[14], v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D6B6CF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22D6B6D08()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);

  v8 = v1[8];
  v9 = sub_22D72DDB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[9];
  v12 = sub_22D72DCF0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v1[11];
  v16 = sub_22D72DD20();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v1[12];
  v18 = sub_22D72DBA0();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = v1[13];
  v20 = sub_22D72D730();
  v21 = *(*(v20 - 8) + 8);
  v21(v5 + v19, v20);
  v21(v5 + v1[14], v20);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v2 | 7);
}

uint64_t sub_22D6B7018()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_22D72D850();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 80);
  v26 = *(v28 + 64);

  v7 = v0 + v3;
  v8 = sub_22D72D7A0();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3, v8);
  v9(v0 + v3 + v1[5], v8);

  v10 = v1[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v1[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
  v17 = (v26 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v2 | v6;
  v18 = v1[11];
  v19 = sub_22D72DD20();
  (*(*(v19 - 8) + 8))(v7 + v18, v19);
  v20 = v1[12];
  v21 = sub_22D72DBA0();
  (*(*(v21 - 8) + 8))(v7 + v20, v21);
  v22 = v1[13];
  v23 = sub_22D72D730();
  v24 = *(*(v23 - 8) + 8);
  v24(v7 + v22, v23);
  v24(v7 + v1[14], v23);

  (*(v28 + 8))(v0 + v16, v29);

  return MEMORY[0x2821FE8E8](v0, v17 + 16, v27 | 7);
}

uint64_t sub_22D6B73CC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v25 = *(*(v1 - 1) + 64);
  v4 = sub_22D72D850();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 80);
  v6 = *(v27 + 64);

  v7 = v0 + v3;
  v8 = sub_22D72D7A0();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3, v8);
  v9(v0 + v3 + v1[5], v8);

  v10 = v1[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v1[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = (v3 + v25 + v5) & ~v5;
  v26 = v2 | v5;
  v17 = v1[11];
  v18 = sub_22D72DD20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);
  v19 = v1[12];
  v20 = sub_22D72DBA0();
  (*(*(v20 - 8) + 8))(v7 + v19, v20);
  v21 = v1[13];
  v22 = sub_22D72D730();
  v23 = *(*(v22 - 8) + 8);
  v23(v7 + v21, v22);
  v23(v7 + v1[14], v22);
  (*(v27 + 8))(v0 + v16, v28);

  return MEMORY[0x2821FE8E8](v0, ((((((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v26 | 7);
}

uint64_t sub_22D6B77A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6B77E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B7818()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7858()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);

  v8 = v1[8];
  v9 = sub_22D72DDB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[9];
  v12 = sub_22D72DCF0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_22D72DD20();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = sub_22D72DBA0();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[13];
  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[14], v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D6B7B44()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B7C3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B7C74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7CB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7CEC()
{
  v1 = sub_22D72DDD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22D6B7E4C()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B7ED8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7F20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B7F60()
{
  v1 = sub_22D72DDC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B8024()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Alarm(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v26 = *(*(v6 - 1) + 64);
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v10 = v0 + v8;
  v9(v0 + v8, v1);
  v9(v0 + v8 + v6[5], v1);

  v11 = v6[8];
  v12 = sub_22D72DDB0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  v14 = v6[9];
  v15 = sub_22D72DCF0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v10 + v14, 1, v15))
  {
    (*(v16 + 8))(v10 + v14, v15);
  }

  v17 = v3 | v7;
  v18 = v6[11];
  v19 = sub_22D72DD20();
  (*(*(v19 - 8) + 8))(v10 + v18, v19);
  v20 = v6[12];
  v21 = sub_22D72DBA0();
  (*(*(v21 - 8) + 8))(v10 + v20, v21);
  v22 = v6[13];
  v23 = sub_22D72D730();
  v24 = *(*(v23 - 8) + 8);
  v24(v10 + v22, v23);
  v24(v10 + v6[14], v23);

  return MEMORY[0x2821FE8E8](v0, v8 + v26, v17 | 7);
}

uint64_t sub_22D6B8388()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B83CC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);

  v8 = v1[8];
  v9 = sub_22D72DDB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[9];
  v12 = sub_22D72DCF0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v1[11];
  v16 = sub_22D72DD20();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v1[12];
  v18 = sub_22D72DBA0();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = v1[13];
  v20 = sub_22D72D730();
  v21 = *(*(v20 - 8) + 8);
  v21(v5 + v19, v20);
  v21(v5 + v1[14], v20);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v2 | 7);
}

uint64_t sub_22D6B86F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B8738()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22D6B8780()
{
  v1 = sub_22D72E100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B884C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8884(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22D72E100();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22D6B8930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22D72E100();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22D6B89D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8A10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8A4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8A9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8AD4()
{
  v1 = sub_22D72D730();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B8B98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8BD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8C1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D6B8C54()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22D6B8C9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8CD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8D5C()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8D98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8DD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8E0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8E44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8E94()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8ED0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8F0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_15;
  }

  v17 = sub_22D72DD20();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_15;
  }

  v18 = sub_22D72DBA0();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[12];
    goto LABEL_15;
  }

  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[13];

  return v20(v21, a2, v19);
}

uint64_t sub_22D6B9174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22D72D7A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v17 = sub_22D72DD20();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v18 = sub_22D72DBA0();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[12];
    goto LABEL_13;
  }

  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[13];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_22D6B93E8()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B9420()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B9460()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B94A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B94DC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_22D6B9594()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B9678()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B96B4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22D6B9704()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6B9774()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6BA68C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D6BA6AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281457198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281457198);
    }
  }
}

uint64_t sub_22D6BA774()
{
  v1 = *v0;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}

uint64_t sub_22D6BA7BC(uint64_t a1)
{
  v2 = *v1;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v2);
  return sub_22D72EA40();
}

uint64_t sub_22D6BA810()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C0, &qword_22D730270);
    sub_22D6D58D4(&unk_281457220, &qword_27D9FF3C0, &qword_22D730270, MEMORY[0x277CBCE20]);
    v1 = sub_22D72DC70();
    *(v0 + 200) = v1;
  }

  return v1;
}

uint64_t sub_22D6BA8D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_22D72DAB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3F8, &qword_22D7302B8);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF400, &qword_22D7302C0);
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_22D72DA80();
  sub_22D72DA70();
  sub_22D72DAA0();
  v13 = sub_22D72DA50();
  (*(v4 + 8))(v6, v3);

  v24 = v13;
  v25 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF408, &qword_22D7302C8);
  sub_22D6D58D4(&unk_281457240, &qword_27D9FF408, &qword_22D7302C8, MEMORY[0x277CBCD90]);
  sub_22D72DC80();

  v24 = *(v23 + 216);
  v14 = v24;
  v15 = sub_22D72E5E0();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_2814572A8, &qword_27D9FF3F8, &qword_22D7302B8, MEMORY[0x277CBCB78]);
  sub_22D6D5884(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
  v16 = v14;
  sub_22D72DCA0();
  sub_22D6D5984(v2, &qword_27D9FF9B0, &qword_22D7302B0);

  (*(v20 + 8))(v9, v7);
  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457270, &qword_27D9FF400, &qword_22D7302C0, MEMORY[0x277CBCD60]);
  v17 = v22;
  sub_22D72DCB0();

  (*(v21 + 8))(v12, v17);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6BAEF8()
{
  v0 = sub_22D72DAB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C8, &qword_22D730278);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  sub_22D72DA80();
  sub_22D72DA70();
  sub_22D72DAA0();
  v8 = sub_22D72DA60();
  (*(v1 + 8))(v3, v0);

  v10[2] = v8;
  v10[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3D0, &qword_22D730280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3D8, &qword_22D730288);
  sub_22D6D58D4(&qword_281457238, &qword_27D9FF3D0, &qword_22D730280, MEMORY[0x277CBCD90]);
  sub_22D6D58D4(&unk_2814571F0, &qword_27D9FF3D8, &qword_22D730288, MEMORY[0x277CBCE80]);
  sub_22D72DC90();

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_2814572A0, &qword_27D9FF3C8, &qword_22D730278, MEMORY[0x277CBCC40]);
  sub_22D72DCB0();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6BB384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Alarm(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v3 + 216);
  sub_22D6D56D8(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alarm);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  sub_22D6D3C4C(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22D6D52CC;
  *(v14 + 24) = v12;
  aBlock[4] = sub_22D6D5CDC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6BEF78;
  aBlock[3] = &block_descriptor_103;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v10, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D6BB5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_22D72D7A0();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2);
  sub_22D6D56D8(a2, v10, type metadata accessor for Alarm);
  v15 = type metadata accessor for Alarm(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  sub_22D6BB998(v10, v13);
  swift_endAccess();
  swift_beginAccess();
  if (*(*(a1 + 232) + 16) && (, sub_22D6CC49C(a2), v17 = v16, , (v17 & 1) != 0))
  {
    return sub_22D6BDD7C(a2, a3, a4);
  }

  else
  {
    return sub_22D6BBE4C(a2, a3, a4);
  }
}

uint64_t sub_22D6BB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22D6CEC5C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_22D72D7A0();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_22D6CC49C(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_22D6CF9EC();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_22D72D7A0();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_22D6CE0EC(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_22D72D7A0();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_22D6BB998(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_22D6D5984(a1, &qword_27D9FF550, &qword_22D730130);
    sub_22D6CC078(a2, v7);
    v12 = sub_22D72D7A0();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22D6D5984(v7, &qword_27D9FF550, &qword_22D730130);
  }

  else
  {
    sub_22D6D3C4C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D6CEE38(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_22D72D7A0();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_22D6BBBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22D6D5254(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22D6CF19C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22D6D5984(a1, &qword_27D9FF9F0, &unk_22D730240);
    sub_22D6CC200(a2, a3, v9);

    return sub_22D6D5984(v9, &qword_27D9FF9F0, &unk_22D730240);
  }

  return result;
}

uint64_t sub_22D6BBC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_22D72E100();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22D6D5984(a1, &qword_27D9FF398, qword_22D730B40);
    sub_22D6CC2A4(a2, a3, v9);

    return sub_22D6D5984(v9, &qword_27D9FF398, qword_22D730B40);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22D6CF2EC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22D6BBE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v216 = a2;
  v217 = a3;
  v221 = a1;
  v4 = sub_22D72E300();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v213 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v214 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v212 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_22D72D850();
  v195 = *(v200 - 8);
  v9 = MEMORY[0x28223BE20](v200);
  v193 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v199 = &v180 - v12;
  v191 = v13;
  MEMORY[0x28223BE20](v11);
  v194 = &v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v15 - 8);
  v197 = &v180 - v16;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2A0, &qword_22D730148);
  v201 = *(v202 - 8);
  v17 = MEMORY[0x28223BE20](v202);
  v198 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v219 = &v180 - v19;
  v220 = sub_22D72DF80();
  v204 = *(v220 - 8);
  v20 = MEMORY[0x28223BE20](v220);
  v196 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v180 - v23;
  MEMORY[0x28223BE20](v22);
  v203 = &v180 - v24;
  v208 = sub_22D72DD20();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v206 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Alarm(0);
  v189 = *(v210 - 8);
  v26 = MEMORY[0x28223BE20](v210);
  v209 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v192 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v180 - v31;
  v190 = v33;
  MEMORY[0x28223BE20](v30);
  v35 = &v180 - v34;
  v36 = sub_22D72E380();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = (&v180 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v3[27];
  *v39 = v40;
  (*(v37 + 104))(v39, *MEMORY[0x277D85200], v36);
  v41 = v40;
  LOBYTE(v40) = sub_22D72E390();
  (*(v37 + 8))(v39, v36);
  if (v40)
  {
    v218 = v3;
    v211 = v7;
    if (qword_2814572B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v42 = sub_22D72DBE0();
  v43 = __swift_project_value_buffer(v42, qword_2814580B8);
  v44 = v221;
  sub_22D6D56D8(v221, v35, type metadata accessor for Alarm);
  sub_22D6D56D8(v44, v32, type metadata accessor for Alarm);
  v205 = v43;
  v45 = sub_22D72DBB0();
  v46 = sub_22D72E5A0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    aBlock = v188;
    *v47 = 136446466;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v48 = sub_22D72E960();
    v50 = v49;
    sub_22D6D5740(v35, type metadata accessor for Alarm);
    v51 = sub_22D72891C(v48, v50, &aBlock);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2082;
    (*(v207 + 16))(v206, &v32[*(v210 + 44)], v208);
    v52 = sub_22D72E4C0();
    v54 = v53;
    v44 = v221;
    sub_22D6D5740(v32, type metadata accessor for Alarm);
    v55 = sub_22D72891C(v52, v54, &aBlock);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_22D6B4000, v45, v46, "%{public}s: Creating activity for alarm with state %{public}s", v47, 0x16u);
    v56 = v188;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v56, -1, -1);
    MEMORY[0x2318D0420](v47, -1, -1);
  }

  else
  {

    sub_22D6D5740(v32, type metadata accessor for Alarm);
    sub_22D6D5740(v35, type metadata accessor for Alarm);
  }

  v57 = v220;
  v58 = v218;
  v59 = sub_22D6C038C(v44);
  v60 = v215;
  if (v59)
  {
    v61 = v44;
    sub_22D6C101C(v44, v215);
    v205 = 0;
    v181 = v5;
    v182 = v4;
    v77 = v204;
    v78 = v203;
    (*(v204 + 32))(v203, v60, v57);
    sub_22D6BFFD0(v61);
    (*(v77 + 16))(v196, v78, v57);
    v79 = sub_22D72D730();
    (*(*(v79 - 8) + 56))(v197, 1, 1, v79);
    v80 = MEMORY[0x277CB9A20];
    v81 = sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20], MEMORY[0x277CB9A38]);
    v82 = sub_22D6D5884(&qword_27D9FF2A8, v80, MEMORY[0x277CB9A28]);
    v83 = sub_22D6D5884(&qword_27D9FF2B0, v80, MEMORY[0x277CB9A30]);
    v197 = v81;
    v196 = v82;
    v188 = v83;
    sub_22D72DA90();
    v215 = 0x800000022D731F50;
    v84 = (v61 + *(v210 + 24));
    v85 = *v84;
    v86 = v84[1];
    v87 = v58[34];
    v88 = v58[35];
    __swift_project_boxed_opaque_existential_1(v58 + 31, v87);
    v89 = *(v88 + 16);

    v90 = v89(v87, v88);
    if ((v90 & 1) != 0 && (sub_22D6CAF64(0xD000000000000015, 0x800000022D731F70, v85, v86) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
      v185 = v106;
      v107 = *(*(v106 - 8) + 72);
      v108 = (*(*(v106 - 8) + 80) + 32) & ~*(*(v106 - 8) + 80);
      v206 = (4 * v107);
      v109 = swift_allocObject();
      v186 = v85;
      v110 = v109;
      *(v109 + 16) = xmmword_22D730020;
      v111 = v109 + v108;
      v112 = v109 + v108 + *(v106 + 48);
      v113 = *MEMORY[0x277CB94F8];
      v114 = sub_22D72D9B0();
      v115 = *(*(v114 - 8) + 104);
      v187 = (v114 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      LODWORD(v210) = v113;
      (v115)(v111, v113, v114);
      *v112 = v186;
      *(v112 + 8) = v86;
      *(v112 + 16) = 0;
      v116 = v185;
      v117 = v111 + v107 + *(v185 + 48);
      LODWORD(v209) = *MEMORY[0x277CB94F0];
      v115();
      v100 = v215;
      *v117 = 0xD000000000000014;
      *(v117 + 8) = v100;
      *(v117 + 16) = 1;
      v118 = v111 + 2 * v107 + *(v116 + 48);
      LODWORD(v208) = *MEMORY[0x277CB94D8];
      v115();
      *v118 = 0xD000000000000014;
      *(v118 + 8) = v100;
      *(v118 + 16) = 1;
      v119 = v111 + 3 * v107;
      v120 = v185;
      v121 = v119 + *(v185 + 48);
      LODWORD(v207) = *MEMORY[0x277CB94E0];
      v115();
      v122 = v186;
      *v121 = v186;
      *(v121 + 8) = v86;
      *(v121 + 16) = 0;
      v123 = &v206[v111 + *(v120 + 48)];
      LODWORD(v206) = *MEMORY[0x277CB94E8];
      v183 = v114;
      v115();
      *v123 = v122;
      *(v123 + 1) = v86;
      v123[16] = 0;
      swift_bridgeObjectRetain_n();
      v186 = sub_22D6D3A48(v110);
      swift_setDeallocating();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
      v92 = *(*(v91 - 8) + 72);
      v93 = (*(*(v91 - 8) + 80) + 32) & ~*(*(v91 - 8) + 80);
      v206 = (4 * v92);
      v94 = swift_allocObject();
      v185 = v94;
      *(v94 + 16) = xmmword_22D730020;
      v95 = v94 + v93;
      v96 = v94 + v93 + *(v91 + 48);
      v97 = *MEMORY[0x277CB94F8];
      v98 = sub_22D72D9B0();
      v99 = *(*(v98 - 8) + 104);
      v187 = (v98 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      LODWORD(v210) = v97;
      (v99)(v95, v97, v98);
      v100 = v215;
      *v96 = 0xD000000000000014;
      *(v96 + 8) = v100;
      *(v96 + 16) = 1;
      v101 = v95 + v92 + *(v91 + 48);
      LODWORD(v209) = *MEMORY[0x277CB94F0];
      v99();
      *v101 = 0xD000000000000014;
      *(v101 + 8) = v100;
      *(v101 + 16) = 1;
      v102 = v95 + 2 * v92 + *(v91 + 48);
      LODWORD(v208) = *MEMORY[0x277CB94D8];
      v99();
      *v102 = 0xD000000000000014;
      *(v102 + 8) = v100;
      *(v102 + 16) = 1;
      v103 = v185;
      v104 = v95 + 3 * v92 + *(v91 + 48);
      LODWORD(v207) = *MEMORY[0x277CB94E0];
      v99();
      *v104 = 0xD000000000000014;
      *(v104 + 8) = v100;
      *(v104 + 16) = 1;
      v105 = &v206[v95 + *(v91 + 48)];
      LODWORD(v206) = *MEMORY[0x277CB94E8];
      v183 = v98;
      v99();
      *v105 = 0xD000000000000014;
      *(v105 + 1) = v100;
      v105[16] = 1;
      v186 = sub_22D6D3A48(v103);
      swift_setDeallocating();
    }

    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
    v125 = *(*(v124 - 8) + 72);
    v126 = (*(*(v124 - 8) + 80) + 32) & ~*(*(v124 - 8) + 80);
    v185 = 4 * v125;
    v127 = swift_allocObject();
    v184 = xmmword_22D730020;
    *(v127 + 16) = xmmword_22D730020;
    v128 = v127 + v126;
    v129 = v127 + v126 + *(v124 + 48);
    sub_22D72D9B0();
    v130 = v183;
    v131 = *(v183 - 8);
    v132 = *(v131 + 104);
    v133 = v131 + 104;
    (v132)(v128, v210, v183);
    *v129 = 0xD000000000000014;
    *(v129 + 8) = v100;
    v134 = v100;
    *(v129 + 16) = 1;
    v135 = v128 + v125 + *(v124 + 48);
    v132();
    *v135 = 0xD000000000000014;
    *(v135 + 8) = v100;
    *(v135 + 16) = 1;
    v136 = v128 + 2 * v125 + *(v124 + 48);
    v132();
    *v136 = 0xD000000000000014;
    *(v136 + 8) = v134;
    *(v136 + 16) = 1;
    v137 = v128 + 3 * v125 + *(v124 + 48);
    v132();
    *v137 = 0xD000000000000014;
    *(v137 + 8) = v134;
    *(v137 + 16) = 1;
    v138 = v128 + v185 + *(v124 + 48);
    v132();
    *v138 = 0xD000000000000014;
    *(v138 + 8) = v134;
    *(v138 + 16) = 1;
    v185 = sub_22D6D3A48(v127);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22D72D9E0();
    v187 = swift_allocBox();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C8, &qword_22D730168);
    v139 = *(v133 - 32);
    v140 = (*(v133 - 24) + 32) & ~*(v133 - 24);
    v141 = swift_allocObject();
    *(v141 + 16) = v184;
    v142 = v141 + v140;
    (v132)(v141 + v140, v210, v130);
    (v132)(v142 + v139, v209, v130);
    (v132)(v142 + 2 * v139, v208, v130);
    (v132)(v142 + 3 * v139, v207, v130);
    (v132)(v142 + 4 * v139, v206, v130);
    sub_22D72D9C0();
    sub_22D72D9D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D0, &qword_22D730170);
    v143 = sub_22D72D920();
    v144 = *(v143 - 8);
    v145 = *(v144 + 72);
    v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_22D730030;
    v148 = (v147 + v146);
    *v148 = 0;
    v148[1] = 0;
    v149 = *(v144 + 104);
    (v149)(v148, *MEMORY[0x277CB9338], v143);
    v150 = (v148 + v145);
    *v150 = 0xD000000000000014;
    v150[1] = v215;
    v149();
    v151 = v201;
    v152 = v202;
    (*(v201 + 16))(v198, v219, v202);
    v153 = v199;
    v154 = v205;
    sub_22D72D840();
    if (v154)
    {

      v155 = swift_allocObject();
      v156 = v217;
      v155[2] = v216;
      v155[3] = v156;
      v155[4] = v154;
      v227 = sub_22D6D5CB8;
      v228 = v155;
      aBlock = MEMORY[0x277D85DD0];
      v224 = 1107296256;
      v225 = sub_22D6C0FD8;
      v226 = &block_descriptor_41;
      v157 = _Block_copy(&aBlock);

      v158 = v154;
      v159 = v212;
      sub_22D72E330();
      v222 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
      v160 = v213;
      v161 = v154;
      v162 = v182;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v159, v160, v157);
      _Block_release(v157);

      (*(v181 + 8))(v160, v162);
      (v214[1])(v159, v211);
      (*(v151 + 8))(v219, v152);
      (*(v204 + 8))(v203, v220);
    }

    else
    {
      v163 = v195;
      v213 = *(v195 + 32);
      v164 = v194;
      v165 = v200;
      (v213)(v194, v153, v200);
      v214 = __swift_project_boxed_opaque_existential_1(v218 + 12, v218[15]);
      (*(v163 + 16))(v193, v164, v165);
      sub_22D6D56D8(v221, v192, type metadata accessor for Alarm);
      v166 = (*(v163 + 80) + 16) & ~*(v163 + 80);
      v212 = ((v191 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
      v167 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
      v169 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
      v170 = (*(v189 + 80) + v169 + 8) & ~*(v189 + 80);
      v171 = (v190 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      v215 = 0;
      v172 = swift_allocObject();
      (v213)(v172 + v166, v193, v200);
      *&v212[v172] = v186;
      *(v172 + v167) = v185;
      *(v172 + v168) = v187;
      *(v172 + v169) = v147;
      v173 = sub_22D6D3C4C(v192, v172 + v170);
      *(v172 + v171) = v218;
      v174 = (v172 + ((v171 + 15) & 0xFFFFFFFFFFFFFFF8));
      v175 = v217;
      *v174 = v216;
      v174[1] = v175;
      v176 = *(*v214 + 56);
      v177 = MEMORY[0x28223BE20](v173);
      *(&v180 - 4) = v178;
      *(&v180 - 3) = v221;
      *(&v180 - 2) = sub_22D6D3D94;
      *(&v180 - 1) = v172;
      MEMORY[0x28223BE20](v177);
      *(&v180 - 2) = sub_22D6D3EF4;
      *(&v180 - 1) = v179;

      os_unfair_lock_lock(v176 + 4);
      sub_22D6D3F14();
      os_unfair_lock_unlock(v176 + 4);

      (*(v195 + 8))(v194, v200);
      (*(v201 + 8))(v219, v202);
      (*(v204 + 8))(v203, v220);
    }
  }

  else
  {
    v62 = v209;
    sub_22D6D56D8(v44, v209, type metadata accessor for Alarm);
    v63 = sub_22D72DBB0();
    v64 = sub_22D72E5A0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v67 = sub_22D72E960();
      v69 = v68;
      sub_22D6D5740(v62, type metadata accessor for Alarm);
      v70 = sub_22D72891C(v67, v69, &aBlock);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_22D6B4000, v63, v64, "%{public}s: Cannot create activity; all slots are taken", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x2318D0420](v66, -1, -1);
      MEMORY[0x2318D0420](v65, -1, -1);
    }

    else
    {

      sub_22D6D5740(v62, type metadata accessor for Alarm);
    }

    v71 = swift_allocObject();
    v72 = v217;
    *(v71 + 16) = v216;
    *(v71 + 24) = v72;
    v227 = sub_22D6D5CD4;
    v228 = v71;
    aBlock = MEMORY[0x277D85DD0];
    v224 = 1107296256;
    v225 = sub_22D6C0FD8;
    v226 = &block_descriptor;
    v73 = _Block_copy(&aBlock);

    v74 = v212;
    sub_22D72E330();
    v222 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v75 = v213;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v74, v75, v73);
    _Block_release(v73);
    (*(v5 + 8))(v75, v4);
    (v214[1])(v74, v211);
  }
}

uint64_t sub_22D6BDD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a2;
  v128 = a3;
  v122 = sub_22D72E300();
  v5 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v124 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7);
  v123 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22D72D850();
  v107 = *(v109 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x28223BE20](v109);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v112 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v108 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v14 - 8);
  v111 = &v98 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2A0, &qword_22D730148);
  v121 = *(v116 - 8);
  v16 = MEMORY[0x28223BE20](v116);
  v110 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v98 - v18;
  v118 = sub_22D72DF80();
  v120 = *(v118 - 8);
  v19 = MEMORY[0x28223BE20](v118);
  v114 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v119 = &v98 - v24;
  v25 = sub_22D72DD20();
  v113 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Alarm(0);
  v104 = *(v28 - 8);
  v29 = *(v104 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v105 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v98 - v31;
  swift_beginAccess();
  v129 = v3;
  v33 = *(v3 + 232);
  if (!*(v33 + 16))
  {
    goto LABEL_8;
  }

  v117 = a1;
  v34 = sub_22D6CC49C(a1);
  if ((v35 & 1) == 0)
  {

LABEL_8:
    v50 = swift_allocObject();
    v51 = v128;
    *(v50 + 16) = v127;
    *(v50 + 24) = v51;
    v135 = sub_22D6D5CE0;
    v136 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v132 = 1107296256;
    v133 = sub_22D6C0FD8;
    v134 = &block_descriptor_109;
    v52 = _Block_copy(&aBlock);

    v53 = v123;
    sub_22D72E330();
    v130 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v54 = v124;
    v55 = v122;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v53, v54, v52);
    _Block_release(v52);
    (*(v5 + 8))(v54, v55);
    (v125[1])(v53, v126);
  }

  v103 = v23;
  v36 = (*(v33 + 56) + 16 * v34);
  v37 = v36[1];
  v101 = *v36;

  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v38 = sub_22D72DBE0();
  __swift_project_value_buffer(v38, qword_2814580B8);
  sub_22D6D56D8(v117, v32, type metadata accessor for Alarm);

  v39 = sub_22D72DBB0();
  v40 = sub_22D72E5A0();

  v100 = v40;
  v41 = os_log_type_enabled(v39, v40);
  v102 = v5;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    aBlock = v98;
    *v42 = 136446722;
    v99 = v39;
    v43 = v101;
    *(v42 + 4) = sub_22D72891C(v101, v37, &aBlock);
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_22D72891C(v43, v37, &aBlock);
    *(v42 + 22) = 2082;
    (*(v113 + 16))(v27, &v32[*(v28 + 44)], v25);
    v44 = sub_22D72E4C0();
    v46 = v45;
    sub_22D6D5740(v32, type metadata accessor for Alarm);
    v47 = sub_22D72891C(v44, v46, &aBlock);

    *(v42 + 24) = v47;
    v48 = v99;
    _os_log_impl(&dword_22D6B4000, v99, v100, "Updating activity %{public}s for alarm %{public}s with state %{public}s", v42, 0x20u);
    v49 = v98;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v49, -1, -1);
    MEMORY[0x2318D0420](v42, -1, -1);
  }

  else
  {

    sub_22D6D5740(v32, type metadata accessor for Alarm);
  }

  v56 = v121;
  v57 = v120;
  v58 = v103;
  v59 = v117;
  sub_22D6BFFD0(v117);
  sub_22D6C101C(v59, v58);
  v60 = v118;
  v61 = v119;
  v113 = v37;
  (*(v57 + 32))(v119, v58, v118);
  (*(v57 + 16))(v114, v61, v60);
  v63 = sub_22D72D730();
  (*(*(v63 - 8) + 56))(v111, 1, 1, v63);
  v64 = MEMORY[0x277CB9A20];
  sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20], MEMORY[0x277CB9A38]);
  sub_22D6D5884(&qword_27D9FF2A8, v64, MEMORY[0x277CB9A28]);
  sub_22D6D5884(&qword_27D9FF2B0, v64, MEMORY[0x277CB9A30]);
  v65 = v56;
  v66 = v115;
  v114 = 0;
  sub_22D72DA90();
  (*(v65 + 16))(v110, v66, v116);
  v67 = v112;
  v68 = v114;
  sub_22D72D840();
  v114 = v68;
  if (v68)
  {
    v69 = v60;

    v70 = swift_allocObject();
    v71 = v128;
    v70[2] = v127;
    v70[3] = v71;
    v72 = v114;
    v70[4] = v114;
    v135 = sub_22D6D5CB8;
    v136 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v132 = 1107296256;
    v133 = sub_22D6C0FD8;
    v134 = &block_descriptor_121;
    v73 = _Block_copy(&aBlock);

    v74 = v72;
    v75 = v123;
    sub_22D72E330();
    v130 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v76 = v124;
    v77 = v122;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v75, v76, v73);
    _Block_release(v73);

    (*(v102 + 8))(v76, v77);
    (v125[1])(v75, v126);
    (*(v121 + 8))(v115, v116);
    (*(v120 + 8))(v119, v69);
  }

  v78 = v107;
  v126 = *(v107 + 32);
  v79 = v108;
  v80 = v109;
  v126(v108, v67, v109);
  v81 = v129;
  v125 = __swift_project_boxed_opaque_existential_1((v129 + 96), *(v129 + 120));
  v82 = v105;
  sub_22D6D56D8(v117, v105, type metadata accessor for Alarm);
  v83 = v106;
  (*(v78 + 16))(v106, v79, v80);
  v84 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v85 = (v29 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (*(v78 + 80) + v85 + 16) & ~*(v78 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v81;
  sub_22D6D3C4C(v82, v87 + v84);
  v88 = (v87 + v85);
  v89 = v128;
  *v88 = v127;
  v88[1] = v89;
  v90 = v109;
  v91 = (v126)(v87 + v86, v83, v109);
  v92 = (v87 + ((v9 + v86 + 7) & 0xFFFFFFFFFFFFFFF8));
  v93 = v113;
  *v92 = v101;
  v92[1] = v93;
  v94 = *(*v125 + 56);
  v95 = MEMORY[0x28223BE20](v91);
  *(&v98 - 4) = v96;
  *(&v98 - 3) = v117;
  *(&v98 - 2) = sub_22D6D53A0;
  *(&v98 - 1) = v87;
  MEMORY[0x28223BE20](v95);
  *(&v98 - 2) = sub_22D6D5CBC;
  *(&v98 - 1) = v97;

  os_unfair_lock_lock(v94 + 4);
  sub_22D6D5D38();
  os_unfair_lock_unlock(v94 + 4);

  (*(v78 + 8))(v108, v90);
  (*(v121 + 8))(v115, v116);
  return (*(v120 + 8))(v119, v118);
}

uint64_t sub_22D6BEFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D72D9A0();
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v65[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v65[-v9];
  v10 = type metadata accessor for Alarm(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v65[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65[-v17];
  v19 = sub_22D72D7A0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v23;
  v75 = *(v20 + 16);
  v75(v22, a2);
  v25 = *(v11 + 56);
  v76 = v10;
  v74 = v25;
  v25(v18, 1, 1, v10);
  swift_beginAccess();
  sub_22D6BB998(v18, v22);
  swift_endAccess();
  swift_beginAccess();
  v73 = a1;
  v26 = *(a1 + 232);
  if (!*(v26 + 16))
  {
    goto LABEL_8;
  }

  v72 = a2;
  v27 = sub_22D6CC49C(a2);
  if ((v28 & 1) == 0)
  {

LABEL_8:
    sub_22D6CC570();
    swift_allocError();
    *v45 = 2;
    return swift_willThrow();
  }

  v29 = (*(v26 + 56) + 16 * v27);
  v30 = v29[1];
  v71 = *v29;

  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v31 = sub_22D72DBE0();
  v32 = __swift_project_value_buffer(v31, qword_2814580B8);
  sub_22D6D56D8(v72, v15, type metadata accessor for Alarm);

  v69 = v32;
  v33 = sub_22D72DBB0();
  v34 = sub_22D72E5A0();

  v35 = os_log_type_enabled(v33, v34);
  v70 = v30;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v67 = v33;
    v37 = v36;
    v68 = swift_slowAlloc();
    v81[0] = v68;
    *v37 = 136446466;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = v34;
    v38 = v24;
    v39 = sub_22D72E960();
    v41 = v40;
    sub_22D6D5740(v15, type metadata accessor for Alarm);
    v42 = sub_22D72891C(v39, v41, v81);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_22D72891C(v71, v70, v81);
    v43 = v67;
    _os_log_impl(&dword_22D6B4000, v67, v66, "%{public}s:%{public}s: Cancelling activity", v37, 0x16u);
    v44 = v68;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v44, -1, -1);
    MEMORY[0x2318D0420](v37, -1, -1);
  }

  else
  {

    sub_22D6D5740(v15, type metadata accessor for Alarm);
    v38 = v24;
  }

  v47 = v72;
  v48 = v75;
  (v75)(v22, v72, v38);
  v49 = v73;
  swift_beginAccess();
  sub_22D6BB7CC(0, 0, v22);
  swift_endAccess();
  v48(v22, v47, v38);
  v74(v18, 1, 1, v76);
  swift_beginAccess();
  sub_22D6BB998(v18, v22);
  swift_endAccess();
  swift_beginAccess();
  sub_22D6D5A4C(v49 + 16, v81, &unk_27D9FFEA0, &qword_22D730138);
  if (v81[3])
  {
    sub_22D6D42A8(v81, v80);
    sub_22D6D5984(v81, &unk_27D9FFEA0, &qword_22D730138);
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    sub_22D722AEC(v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    sub_22D6D5984(v81, &unk_27D9FFEA0, &qword_22D730138);
  }

  v50 = v70;
  __swift_project_boxed_opaque_existential_1((v49 + 136), *(v49 + 160));
  v51 = sub_22D72D8E0();
  v52 = v77;
  (*(*(v51 - 8) + 56))(v77, 1, 1, v51);
  sub_22D72D990();
  v53 = v79;
  sub_22D72D930();
  v54 = sub_22D72D940();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  sub_22D72D860();
  sub_22D6D5984(v53, &qword_27D9FF280, &qword_22D730120);
  sub_22D6D5984(v52, &qword_27D9FF288, &qword_22D730128);
  sub_22D6D56D8(v47, v82, type metadata accessor for Alarm);

  v55 = sub_22D72DBB0();
  v56 = sub_22D72E5A0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81[0] = v58;
    *v57 = 136446466;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v59 = v82;
    v60 = sub_22D72E960();
    v62 = v61;
    sub_22D6D5740(v59, type metadata accessor for Alarm);
    v63 = sub_22D72891C(v60, v62, v81);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2082;
    v64 = sub_22D72891C(v71, v50, v81);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_22D6B4000, v55, v56, "%{public}s:%{public}s: Cancelled activity", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v58, -1, -1);
    MEMORY[0x2318D0420](v57, -1, -1);
  }

  else
  {

    sub_22D6D5740(v82, type metadata accessor for Alarm);
  }

  return sub_22D6BF9DC();
}

uint64_t sub_22D6BF9DC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_22D72E380();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v0[27];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_22D72E390();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = swift_beginAccess();
  if (*(v0[29] + 16) >= v0[22])
  {
    return result;
  }

  v30 = v2;
  swift_beginAccess();

  v10 = 0;
  v19 = sub_22D6D5084(v18, v0, sub_22D6D4B98, sub_22D6D4B98);

  v20 = v19[2];
  if (v20)
  {
    v26 = 0;
    v27 = v9;
    v28 = v1;
    v29 = v4;
    v21 = sub_22D6CBF7C(v20, 0);
    v10 = sub_22D6D37C0(&v32, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v20, v19);
    v22 = v32;

    sub_22D6D3C44(v22);
    if (v10 == v20)
    {
      v1 = v28;
      v4 = v29;
      v10 = v26;
      v9 = v27;
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_7:
  v32 = v21;
  sub_22D6D07F0(&v32);
  v23 = v30;
  if (v10)
  {
LABEL_18:

    __break(1u);
    return result;
  }

  if (v32[2])
  {
    sub_22D6D56D8(v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v9, type metadata accessor for Alarm);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v23 + 56))(v9, v24, 1, v1);
  v25 = v31;
  sub_22D6D5A4C(v9, v31, &qword_27D9FF550, &qword_22D730130);
  if ((*(v23 + 48))(v25, 1, v1) == 1)
  {
    sub_22D6D5984(v9, &qword_27D9FF550, &qword_22D730130);
    v9 = v25;
  }

  else
  {
    sub_22D6D3C4C(v25, v4);
    sub_22D6BBE4C(v4, nullsub_1, 0);
    sub_22D6D5740(v4, type metadata accessor for Alarm);
  }

  return sub_22D6D5984(v9, &qword_27D9FF550, &qword_22D730130);
}

uint64_t sub_22D6BFE78()
{
  sub_22D6D5984(v0 + 16, &unk_27D9FFEA0, &qword_22D730138);
  sub_22D6D5984(v0 + 56, &qword_27D9FF500, &qword_22D730530);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));

  return v0;
}

uint64_t sub_22D6BFF20()
{
  sub_22D6BFE78();

  return swift_deallocClassInstance();
}

uint64_t sub_22D6BFFD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_22D72D730();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_22D72DD20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Alarm(0);
  (*(v14 + 16))(v16, a1 + *(v17 + 44), v13);
  result = (*(v14 + 88))(v16, v13);
  if (result != *MEMORY[0x277CB9920])
  {
    if (result == *MEMORY[0x277CB9918])
    {
      sub_22D6D5A4C(v1 + 56, &v23, &qword_27D9FF500, &qword_22D730530);
      if (!v24)
      {
        v19 = &qword_27D9FF500;
        v20 = &qword_22D730530;
        v21 = &v23;
        return sub_22D6D5984(v21, v19, v20);
      }

      sub_22D6B6CF0(&v23, v25);
      sub_22D72D710();
      sub_22D6D42A8(v25, &v23);
      sub_22D713738(&v23, v12, v5);
      sub_22D6D5984(&v23, &qword_27D9FF500, &qword_22D730530);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        (*(v7 + 8))(v12, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v19 = &qword_27D9FFDD0;
        v20 = &qword_22D730140;
        v21 = v5;
        return sub_22D6D5984(v21, v19, v20);
      }

      (*(v7 + 32))(v10, v5, v6);
      sub_22D72D6E0();
      v22 = *(v7 + 8);
      v22(v10, v6);
      v22(v12, v6);
      return __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else if (result != *MEMORY[0x277CB9908] && result != *MEMORY[0x277CB9910])
    {
      result = sub_22D72E970();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22D6C038C(uint64_t a1)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_22D72D9A0();
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v74 - v8;
  v9 = sub_22D72D7A0();
  v79 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Alarm(0);
  v88 = *(v86 - 8);
  v11 = MEMORY[0x28223BE20](v86);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v84 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = sub_22D72E380();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v2[27];
  *v26 = v27;
  (*(v24 + 104))(v26, *MEMORY[0x277D85200], v23);
  v28 = v27;
  v29 = sub_22D72E390();
  (*(v24 + 8))(v26, v23);
  if (v29)
  {
    swift_beginAccess();
    v30 = *(v2[29] + 16);
    if (v30 < v2[22])
    {
      return 1;
    }

    if (v30)
    {

      sub_22D6CC49C(v87);
      v32 = v31;

      if (v32)
      {
        return 1;
      }
    }

    v74 = v13;
    swift_beginAccess();

    v35 = 0;
    v36 = sub_22D6D5084(v34, v2, sub_22D6D46AC, sub_22D6D46AC);

    v29 = v36[2];
    if (!v29)
    {
      v37 = MEMORY[0x277D84F90];
LABEL_10:
      v90[0] = v37;
      sub_22D6D07F0(v90);
      if (v35)
      {

        __break(1u);
        return result;
      }

      v40 = *(v90[0] + 16);
      v41 = v88;
      if (v40)
      {
        sub_22D6D56D8(v90[0] + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * (v40 - 1), v22, type metadata accessor for Alarm);
        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = v86;
      (*(v41 + 56))(v22, v42, 1, v86);
      v44 = v85;
      sub_22D6D5A4C(v22, v85, &qword_27D9FF550, &qword_22D730130);
      if ((*(v41 + 48))(v44, 1, v43) == 1)
      {
        sub_22D6D5984(v22, &qword_27D9FF550, &qword_22D730130);
        v45 = v44;
LABEL_23:
        sub_22D6D5984(v45, &qword_27D9FF550, &qword_22D730130);
        return 0;
      }

      sub_22D6D3C4C(v44, v17);
      if (sub_22D717E28(v87, v17))
      {
        v46 = v2[29];
        if (*(v46 + 16))
        {

          v47 = sub_22D6CC49C(v17);
          if (v48)
          {
            v49 = (*(v46 + 56) + 16 * v47);
            v29 = v49[1];
            v88 = *v49;

            v50 = v80;
            (*(v79 + 16))(v80, v17, v9);
            swift_beginAccess();
            sub_22D6BB7CC(0, 0, v50);
            swift_endAccess();
            swift_beginAccess();
            sub_22D6D5A4C((v2 + 2), v90, &unk_27D9FFEA0, &qword_22D730138);
            if (v90[3])
            {
              sub_22D6D42A8(v90, v89);
              sub_22D6D5984(v90, &unk_27D9FFEA0, &qword_22D730138);
              __swift_project_boxed_opaque_existential_1(v89, v89[3]);
              sub_22D722AEC(v17);
              __swift_destroy_boxed_opaque_existential_1Tm(v89);
            }

            else
            {
              sub_22D6D5984(v90, &unk_27D9FFEA0, &qword_22D730138);
            }

            v51 = v83;
            __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
            v52 = sub_22D72D8E0();
            v53 = v81;
            (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
            sub_22D72D990();
            sub_22D72D930();
            v54 = sub_22D72D940();
            (*(*(v54 - 8) + 56))(v51, 0, 1, v54);
            sub_22D72D860();
            sub_22D6D5984(v51, &qword_27D9FF280, &qword_22D730120);
            sub_22D6D5984(v53, &qword_27D9FF288, &qword_22D730128);
            if (qword_2814572B0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_32;
          }
        }
      }

      sub_22D6D5740(v17, type metadata accessor for Alarm);
      v45 = v22;
      goto LABEL_23;
    }

    v75 = 0;
    v76 = v9;
    v77 = v17;
    v78 = v22;
    v37 = sub_22D6CBF7C(v29, 0);
    v38 = sub_22D6D37C0(v90, v37 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v29, v36);
    v39 = v90[0];
    v17 = v90[2];
    v22 = v90[4];

    sub_22D6D3C44(v39);
    if (v38 == v29)
    {
      v22 = v78;
      v17 = v77;
      v9 = v76;
      v35 = v75;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_26:
  v55 = sub_22D72DBE0();
  __swift_project_value_buffer(v55, qword_2814580B8);
  v56 = v84;
  sub_22D6D56D8(v87, v84, type metadata accessor for Alarm);
  v57 = v74;
  sub_22D6D56D8(v17, v74, type metadata accessor for Alarm);

  v58 = sub_22D72DBB0();
  v59 = sub_22D72E5A0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78 = v22;
    v87 = v61;
    v90[0] = v61;
    *v60 = 136446722;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    LODWORD(v86) = v59;
    v62 = sub_22D72E960();
    v63 = v29;
    v65 = v64;
    v77 = v17;
    sub_22D6D5740(v56, type metadata accessor for Alarm);
    v66 = sub_22D72891C(v62, v65, v90);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2082;
    v67 = sub_22D72E960();
    v69 = v68;
    sub_22D6D5740(v57, type metadata accessor for Alarm);
    v70 = sub_22D72891C(v67, v69, v90);

    *(v60 + 14) = v70;
    *(v60 + 22) = 2082;
    v71 = sub_22D72891C(v88, v63, v90);

    *(v60 + 24) = v71;
    _os_log_impl(&dword_22D6B4000, v58, v86, "%{public}s: Cancelled activity for alarm to make way for new alarm: %{public}s:%{public}s", v60, 0x20u);
    v72 = v87;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v72, -1, -1);
    MEMORY[0x2318D0420](v60, -1, -1);

    sub_22D6D5740(v77, type metadata accessor for Alarm);
    v73 = v78;
  }

  else
  {

    sub_22D6D5740(v57, type metadata accessor for Alarm);
    sub_22D6D5740(v56, type metadata accessor for Alarm);
    sub_22D6D5740(v17, type metadata accessor for Alarm);
    v73 = v22;
  }

  sub_22D6D5984(v73, &qword_27D9FF550, &qword_22D730130);
  return 1;
}

uint64_t sub_22D6C0FD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22D6C101C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_22D72D7A0();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22D72DF10();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72DF30();
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_22D72DDA0();
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72DD70();
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22D72D7F0();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22D72D810();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72D730();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v95 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v75 - v17;
  v19 = sub_22D72DDB0();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = &v75 - v24;
  v25 = sub_22D72DEF0();
  v92 = *(v25 - 8);
  v93 = v25;
  MEMORY[0x28223BE20](v25);
  v91 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D72DD20();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D72DF40();
  v104 = *(v98 - 8);
  v31 = MEMORY[0x28223BE20](v98);
  v106 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v107 = &v75 - v33;
  v105 = type metadata accessor for Alarm(0);
  (*(v28 + 16))(v30, a1 + v105[11], v27);
  v34 = (*(v28 + 88))(v30, v27);
  if (v34 == *MEMORY[0x277CB9920])
  {
    goto LABEL_2;
  }

  if (v34 != *MEMORY[0x277CB9918])
  {
    if (v34 == *MEMORY[0x277CB9908])
    {
      sub_22D714000();
      if ((v42 & 1) == 0)
      {
        v38 = v105;
        v43 = v77;
        sub_22D72DF00();
        v40 = v107;
        (*(v78 + 32))(v107, v43, v79);
        v41 = MEMORY[0x277CB9A08];
        goto LABEL_9;
      }

LABEL_2:
      sub_22D6CC570();
      swift_allocError();
      *v35 = 0;
      return swift_willThrow();
    }

    v38 = v105;
    if (v34 == *MEMORY[0x277CB9910])
    {
      v45 = a1;
      sub_22D6D5A4C(a1 + v105[8], v18, &qword_27D9FF4B0, &unk_22D7301A0);
      v48 = v20;
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_22D6D5984(v18, &qword_27D9FF4B0, &unk_22D7301A0);
        v49 = v81;
        sub_22D72D7E0();
        v50 = v83;
        v51 = *(v83 + 104);
        v52 = v82;
        v53 = v84;
        v51(v82, *MEMORY[0x277CC9980], v84);
        v97 = sub_22D72D800();
        v54 = *(v50 + 8);
        v54(v52, v53);
        v51(v52, *MEMORY[0x277CC99A0], v53);
        v38 = v105;
        sub_22D72D800();
        v54(v52, v53);
        v45 = a1;
        sub_22D72DD40();
        v55 = v91;
        sub_22D72DEE0();
        (*(v85 + 8))(v49, v86);
LABEL_15:
        v47 = v104;
LABEL_18:
        v40 = v107;
        (*(v92 + 32))(v107, v55, v93);
        v41 = MEMORY[0x277CB9A00];
        v44 = v102;
        v46 = v98;
        goto LABEL_19;
      }

      v56 = *(v20 + 32);
      v57 = v87;
      v56(v87, v18, v19);
      (*(v48 + 16))(v23, v57, v19);
      v58 = (*(v48 + 88))(v23, v19);
      if (v58 == *MEMORY[0x277CB9948])
      {
        (*(v48 + 96))(v23, v19);
        (*(v96 + 32))(v95, v23, v97);
        v59 = v81;
        sub_22D72D7E0();
        v60 = *MEMORY[0x277CC9980];
        v61 = v83;
        v90 = v48;
        v88 = *(v83 + 104);
        v62 = v82;
        v63 = v84;
        v88(v82, v60, v84);
        v89 = sub_22D72D800();
        v64 = *(v61 + 8);
        v64(v62, v63);
        v88(v62, *MEMORY[0x277CC99A0], v63);
        sub_22D72D800();
        v64(v62, v63);
        v38 = v105;
        sub_22D72DD40();
        v55 = v91;
        sub_22D72DEE0();
        (*(v85 + 8))(v59, v86);
        (*(v96 + 8))(v95, v97);
        (*(v90 + 8))(v87, v19);
        goto LABEL_15;
      }

      v47 = v104;
      if (v58 == *MEMORY[0x277CB9960])
      {
        (*(v48 + 96))(v23, v19);
        v65 = v76;
        v66 = v75;
        (*(v76 + 32))(v75, v23, v80);
        sub_22D72DD80();
        v55 = v91;
        sub_22D72DEE0();
        (*(v65 + 8))(v66, v80);
        (*(v48 + 8))(v87, v19);
        goto LABEL_18;
      }
    }

    else
    {
      sub_22D72E970();
      __break(1u);
    }

    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  sub_22D714000();
  if (v37)
  {
    goto LABEL_2;
  }

  v38 = v105;
  (*(v96 + 16))(v95, a1 + v105[14], v97);
  sub_22D72D6A0();
  v39 = v88;
  sub_22D72DF20();
  v40 = v107;
  (*(v89 + 32))(v107, v39, v90);
  v41 = MEMORY[0x277CB9A10];
LABEL_9:
  v44 = v102;
  v45 = a1;
  v46 = v98;
  v47 = v104;
LABEL_19:
  (*(v47 + 104))(v40, *v41, v46);
  (*(v99 + 16))(v44, v45 + v38[5], v100);
  (*(v47 + 16))(v106, v40, v46);
  v67 = (v45 + v38[6]);
  v68 = *v67;
  v69 = v67[1];
  v70 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v71 = v101;
  v72 = sub_22D72868C(v68, v69, 0);
  if (v71)
  {
  }

  else
  {
    v73 = v72;
    v74 = [v72 localizedName];
    sub_22D72E490();

    v47 = v104;
  }

  sub_22D72DF60();
  return (*(v47 + 8))(v107, v46);
}

uint64_t sub_22D6C1EB8(objc_class *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_class *a9, uint64_t a10, uint64_t a11)
{
  v115 = a8;
  v107 = a7;
  v97 = a6;
  v106 = a5;
  v102 = a4;
  v99 = a3;
  LODWORD(v114) = a2;
  v118 = a11;
  v119 = a1;
  v117 = a10;
  v120 = a9;
  v11 = sub_22D72E300();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v109 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22D72E370();
  v13 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Alarm(0);
  v103 = *(v98 - 8);
  v15 = MEMORY[0x28223BE20](v98);
  v17 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = v16;
  MEMORY[0x28223BE20](v15);
  v113 = &v91 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178);
  v100 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v105 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v21;
  MEMORY[0x28223BE20](v20);
  v116 = &v91 - v22;
  v23 = sub_22D72D730();
  MEMORY[0x28223BE20](v23 - 8);
  v96 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22D72D9E0();
  v25 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v95 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D72D850();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22D72D950();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22D72D890();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v38 = MEMORY[0x28223BE20](v37);
  if ((v114 & 1) == 0)
  {
    v92 = v38;
    v111 = v40;
    v93 = &v91 - v39;
    v112 = v41;
    v58 = swift_projectBox();
    v59 = v119;
    (*(v32 + 16))(v34, v119 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v31);
    v60 = v59 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData;
    v61 = *(v59 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    v62 = *(v60 + 1);
    v114 = v61;
    v110 = v62;
    v63 = *(v28 + 16);
    v91 = v30;
    v63(v30, v99, v27);
    swift_beginAccess();
    (*(v25 + 16))(v95, v58, v94);
    sub_22D6D3F68(v61, v62);

    sub_22D72D710();
    v64 = v115;

    v65 = v93;
    sub_22D72D880();
    v66 = v116;
    v67 = v120;
    sub_22D6C2C38(v64, 1, v116);
    v114 = *(v67 + 27);
    sub_22D6D56D8(v64, v113, type metadata accessor for Alarm);
    v69 = v111;
    v68 = v112;
    v70 = v92;
    (*(v111 + 16))(v112, v65, v92);
    v71 = v66;
    v72 = v105;
    sub_22D6D5A4C(v71, v105, &qword_27D9FF2D8, &qword_22D730178);
    v73 = (*(v103 + 80) + 24) & ~*(v103 + 80);
    v74 = (v104 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (*(v69 + 80) + v74 + 16) & ~*(v69 + 80);
    v76 = (v36 + *(v100 + 80) + v75) & ~*(v100 + 80);
    v77 = (v101 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v46[2].isa = v120;
    sub_22D6D3C4C(v113, v46 + v73);
    v78 = (v46 + v74);
    v79 = v118;
    *v78 = v117;
    v78[1] = v79;
    (*(v69 + 32))(v46 + v75, v68, v70);
    sub_22D6D591C(v72, v46 + v76, &qword_27D9FF2D8, &qword_22D730178);
    v17 = v119;
    *(&v46->isa + v77) = v119;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_22D6D3FBC;
    *(v80 + 24) = v46;
    v126 = sub_22D6D413C;
    v127 = v80;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_22D6BEF78;
    v125 = &block_descriptor_59;
    v81 = _Block_copy(&aBlock);

    sub_22D6D4164(v17, 0);

    dispatch_sync(v114, v81);
    _Block_release(v81);
    sub_22D6D5984(v116, &qword_27D9FF2D8, &qword_22D730178);
    v82 = *(v69 + 8);
    v13 = v69 + 8;
    v82(v93, v92);
    LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

    if ((v68 & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  v42 = v115;
  v43 = v119;
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v44 = sub_22D72DBE0();
  __swift_project_value_buffer(v44, qword_2814580B8);
  sub_22D6D56D8(v42, v17, type metadata accessor for Alarm);
  v45 = v43;
  v46 = sub_22D72DBB0();
  v47 = sub_22D72E580();
  sub_22D6D3F3C(v43, 1);
  if (!os_log_type_enabled(v46, v47))
  {
LABEL_8:

    sub_22D6D5740(v17, type metadata accessor for Alarm);
    goto LABEL_9;
  }

  v48 = v17;
  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  aBlock = v51;
  *v49 = 136446466;
  sub_22D72D7A0();
  sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v52 = sub_22D72E960();
  v54 = v53;
  sub_22D6D5740(v48, type metadata accessor for Alarm);
  v55 = sub_22D72891C(v52, v54, &aBlock);

  *(v49 + 4) = v55;
  *(v49 + 12) = 2114;
  v56 = v43;
  v57 = _swift_stdlib_bridgeErrorToNSError();
  *(v49 + 14) = v57;
  *v50 = v57;
  _os_log_impl(&dword_22D6B4000, v46, v47, "%{public}s: Cannot create activity; could not retrieve activity data: %{public}@", v49, 0x16u);
  sub_22D6D5984(v50, &unk_27D9FF4D0, &qword_22D730180);
  MEMORY[0x2318D0420](v50, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  MEMORY[0x2318D0420](v51, -1, -1);
  MEMORY[0x2318D0420](v49, -1, -1);

LABEL_9:
  v85 = v117;
  v84 = v118;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v84;
  v126 = sub_22D6D3F48;
  v127 = v86;
  aBlock = MEMORY[0x277D85DD0];
  v123 = 1107296256;
  v124 = sub_22D6C0FD8;
  v125 = &block_descriptor_50;
  v87 = _Block_copy(&aBlock);

  v88 = v108;
  sub_22D72E330();
  v121 = MEMORY[0x277D84F90];
  sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v89 = v109;
  v90 = v112;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v88, v89, v87);
  _Block_release(v87);
  (*(v111 + 8))(v89, v90);
  (*(v13 + 8))(v88, v110);
}

uint64_t sub_22D6C2C38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v4 = sub_22D72DB40();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72DB20();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = sub_22D72DBA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72DD20();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Alarm(0);
  (*(v17 + 16))(v19, a1 + *(v20 + 44), v16);
  if ((*(v17 + 88))(v19, v16) != *MEMORY[0x277CB9910])
  {
    (*(v13 + 56))(v35, 1, 1, v12);
    return (*(v17 + 8))(v19, v16);
  }

  v21 = v35;
  (*(v13 + 16))(v15, a1 + *(v20 + 48), v12);
  if ((v31 & 1) == 0)
  {
    sub_22D72DB00();
    v25 = v21;
    goto LABEL_7;
  }

  sub_22D72DB70();
  sub_22D72DB10();
  v22 = MEMORY[0x2318CEC80](v11, v9);
  v23 = v30;
  v24 = *(v29 + 8);
  v24(v9, v30);
  v24(v11, v23);
  v25 = v21;
  if (v22)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277D71F58]) initWithType_];
    sub_22D72DAE0();

LABEL_7:
    sub_22D72DB80();
  }

  (*(v33 + 104))(v32, *MEMORY[0x277CB9838], v34);
  sub_22D72DB50();
  sub_22D72DB30();
  (*(v13 + 32))(v25, v15, v12);
  return (*(v13 + 56))(v25, 0, 1, v12);
}

uint64_t sub_22D6C3064(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a7;
  v110 = a6;
  v113 = a4;
  v112 = a3;
  v120 = a2;
  v118 = sub_22D72E300();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22D72E370();
  v116 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v114 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Alarm(0);
  v107 = *(v10 - 8);
  v11 = *(v107 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v106 = &v100 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  v108 = sub_22D72D910();
  v109 = *(v108 - 8);
  v22 = *(v109 + 64);
  v23 = MEMORY[0x28223BE20](v108);
  v105 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v100 - v25;
  MEMORY[0x28223BE20](v24);
  v111 = &v100 - v27;
  swift_beginAccess();
  v28 = *(a1[29] + 16);
  if (v28 >= a1[22])
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v40 = sub_22D72DBE0();
    __swift_project_value_buffer(v40, qword_2814580B8);
    sub_22D6D56D8(v120, v13, type metadata accessor for Alarm);
    v41 = sub_22D72DBB0();
    v42 = sub_22D72E580();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = sub_22D72E960();
      v47 = v46;
      sub_22D6D5740(v13, type metadata accessor for Alarm);
      v48 = sub_22D72891C(v45, v47, &aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_22D6B4000, v41, v42, "%{public}s: Cannot create activity; space no longer available after fetching activity data", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318D0420](v44, -1, -1);
      MEMORY[0x2318D0420](v43, -1, -1);
    }

    else
    {

      sub_22D6D5740(v13, type metadata accessor for Alarm);
    }

    v50 = swift_allocObject();
    v51 = v113;
    *(v50 + 16) = v112;
    *(v50 + 24) = v51;
    v127 = sub_22D6D4170;
    v128 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v52 = &block_descriptor_65;
    goto LABEL_21;
  }

  if (v28)
  {

    sub_22D6CC49C(v120);
    v30 = v29;

    if (v30)
    {
      if (qword_2814572B0 != -1)
      {
        swift_once();
      }

      v31 = sub_22D72DBE0();
      __swift_project_value_buffer(v31, qword_2814580B8);
      sub_22D6D56D8(v120, v16, type metadata accessor for Alarm);
      v32 = sub_22D72DBB0();
      v33 = sub_22D72E580();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136446210;
        sub_22D72D7A0();
        sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v36 = sub_22D72E960();
        v38 = v37;
        sub_22D6D5740(v16, type metadata accessor for Alarm);
        v39 = sub_22D72891C(v36, v38, &aBlock);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_22D6B4000, v32, v33, "%{public}s: Cannot create activity; activity already exists after fetching activity data", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x2318D0420](v35, -1, -1);
        MEMORY[0x2318D0420](v34, -1, -1);
      }

      else
      {

        sub_22D6D5740(v16, type metadata accessor for Alarm);
      }

      v76 = swift_allocObject();
      v77 = v113;
      *(v76 + 16) = v112;
      *(v76 + 24) = v77;
      v127 = sub_22D6D4288;
      v128 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v124 = 1107296256;
      v52 = &block_descriptor_89;
LABEL_21:
      v125 = sub_22D6C0FD8;
      v126 = v52;
      v78 = _Block_copy(&aBlock);

      v79 = v114;
      sub_22D72E330();
      *&v121 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
      v80 = v115;
      v81 = v118;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v79, v80, v78);
      _Block_release(v78);
      (*(v117 + 8))(v80, v81);
      (*(v116 + 8))(v79, v119);
    }
  }

  __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  v49 = v111;
  sub_22D72D8A0();
  v53 = sub_22D72D900();
  v55 = v54;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v121 = a1[29];
  a1[29] = 0x8000000000000000;
  v57 = v53;
  v58 = v120;
  sub_22D6CEC5C(v57, v55, v120, isUniquelyReferenced_nonNull_native);
  a1[29] = v121;
  swift_endAccess();
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v59 = sub_22D72DBE0();
  __swift_project_value_buffer(v59, qword_2814580B8);
  sub_22D6D56D8(v58, v21, type metadata accessor for Alarm);
  v60 = v109;
  v61 = *(v109 + 16);
  v62 = v108;
  v103 = v109 + 16;
  v102 = v61;
  v61(v26, v49, v108);
  v63 = sub_22D72DBB0();
  v64 = sub_22D72E5A0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock = v101;
    *v65 = 136446466;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = sub_22D72E960();
    v68 = v67;
    sub_22D6D5740(v21, type metadata accessor for Alarm);
    v69 = sub_22D72891C(v66, v68, &aBlock);
    v62 = v108;

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v70 = sub_22D72D900();
    v72 = v71;
    (*(v109 + 8))(v26, v62);
    v73 = sub_22D72891C(v70, v72, &aBlock);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_22D6B4000, v63, v64, "%{public}s: Created activity %{public}s", v65, 0x16u);
    v74 = v101;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v74, -1, -1);
    v75 = v65;
    v60 = v109;
    MEMORY[0x2318D0420](v75, -1, -1);
  }

  else
  {

    (*(v60 + 8))(v26, v62);
    sub_22D6D5740(v21, type metadata accessor for Alarm);
  }

  v83 = sub_22D72DBA0();
  v84 = (*(*(v83 - 8) + 48))(v110, 1, v83);
  v85 = v111;
  if (v84 != 1)
  {
    swift_beginAccess();
    sub_22D6D5A4C((a1 + 2), &v121, &unk_27D9FFEA0, &qword_22D730138);
    v86 = v120;
    if (v122)
    {
      sub_22D6B6CF0(&v121, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v126);
      sub_22D72056C(v86, v104, nullsub_1, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    }

    else
    {
      sub_22D6D5984(&v121, &unk_27D9FFEA0, &qword_22D730138);
    }
  }

  v110 = a1[28];
  v87 = v105;
  v102(v105, v85, v62);
  v88 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v89 = swift_allocObject();
  v90 = v60;
  v91 = v113;
  *(v89 + 16) = v112;
  *(v89 + 24) = v91;
  (*(v90 + 32))(v89 + v88, v87, v62);
  v127 = sub_22D6D4190;
  v128 = v89;
  aBlock = MEMORY[0x277D85DD0];
  v124 = 1107296256;
  v112 = &v125;
  v125 = sub_22D6C0FD8;
  v126 = &block_descriptor_77;
  v92 = _Block_copy(&aBlock);

  v93 = v114;
  sub_22D72E330();
  *&v121 = MEMORY[0x277D84F90];
  v113 = sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  v104 = sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v94 = v115;
  v95 = v118;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v93, v94, v92);
  _Block_release(v92);
  v117 = *(v117 + 8);
  (v117)(v94, v95);
  v116 = *(v116 + 8);
  (v116)(v93, v119);

  v96 = v106;
  sub_22D6D56D8(v120, v106, type metadata accessor for Alarm);
  v97 = (*(v107 + 80) + 24) & ~*(v107 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = a1;
  sub_22D6D3C4C(v96, v98 + v97);
  v127 = sub_22D6D4220;
  v128 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v124 = 1107296256;
  v125 = sub_22D6C0FD8;
  v126 = &block_descriptor_83;
  v99 = _Block_copy(&aBlock);

  sub_22D72E330();
  *&v121 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v93, v94, v99);
  _Block_release(v99);
  (v117)(v94, v95);
  (v116)(v93, v119);
  (*(v109 + 8))(v111, v108);
}

uint64_t sub_22D6C45E4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_class *a9)
{
  v77 = a8;
  v76 = a7;
  v86 = a5;
  v87 = a6;
  v78 = a2;
  v79 = a1;
  v11 = sub_22D72E300();
  isa = v11[-1].isa;
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E370();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72D850();
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Alarm(0);
  v74 = *(v18 - 8);
  v19 = *(v74 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  swift_beginAccess();
  v88 = a3;
  if (!*(*(a3 + 232) + 16) || (, sub_22D6CC49C(a4), v28 = v27, , (v28 & 1) == 0))
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v43 = sub_22D72DBE0();
    __swift_project_value_buffer(v43, qword_2814580B8);
    sub_22D6D56D8(a4, v21, type metadata accessor for Alarm);
    v44 = sub_22D72DBB0();
    v45 = sub_22D72E580();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = sub_22D72E960();
      v50 = v49;
      sub_22D6D5740(v21, type metadata accessor for Alarm);
      v51 = sub_22D72891C(v48, v50, &aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_22D6B4000, v44, v45, "%{public}s: Cannot update activity; activity no longer exists after fetching activity data", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2318D0420](v47, -1, -1);
      MEMORY[0x2318D0420](v46, -1, -1);
    }

    else
    {

      sub_22D6D5740(v21, type metadata accessor for Alarm);
    }

    v52 = swift_allocObject();
    v53 = v87;
    *(v52 + 16) = v86;
    *(v52 + 24) = v53;
    v94 = sub_22D6D5CD8;
    v95 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v54 = &block_descriptor_132;
    goto LABEL_14;
  }

  if (v78)
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v29 = sub_22D72DBE0();
    __swift_project_value_buffer(v29, qword_2814580B8);
    sub_22D6D56D8(a4, v24, type metadata accessor for Alarm);
    v30 = v79;
    v31 = v79;
    v32 = sub_22D72DBB0();
    v33 = sub_22D72E580();
    sub_22D6D3F3C(v30, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136446466;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_22D72E960();
      v39 = v38;
      sub_22D6D5740(v24, type metadata accessor for Alarm);
      v40 = sub_22D72891C(v37, v39, &aBlock);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2114;
      v41 = v30;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v42;
      *v35 = v42;
      _os_log_impl(&dword_22D6B4000, v32, v33, "%{public}s: Cannot update activity; could not retrieve activity data: %{public}@", v34, 0x16u);
      sub_22D6D5984(v35, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318D0420](v36, -1, -1);
      MEMORY[0x2318D0420](v34, -1, -1);

LABEL_19:
      v72 = swift_allocObject();
      v73 = v87;
      *(v72 + 16) = v86;
      *(v72 + 24) = v73;
      v94 = sub_22D6D5CE0;
      v95 = v72;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v54 = &block_descriptor_138;
LABEL_14:
      v92 = sub_22D6C0FD8;
      v93 = v54;
      v55 = _Block_copy(&aBlock);

      v56 = v80;
      sub_22D72E330();
      v89 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
      v57 = v81;
      v58 = v85;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v56, v57, v55);
      _Block_release(v55);
      (*(isa + 1))(v57, v58);
      (*(v82 + 8))(v56, v83);
    }

LABEL_18:

    sub_22D6D5740(v24, type metadata accessor for Alarm);
    goto LABEL_19;
  }

  v60 = *(v88 + 216);
  isa = a9;
  v85 = v60;
  sub_22D6D56D8(a4, v26, type metadata accessor for Alarm);
  v61 = v75;
  (*(v75 + 16))(&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v15);
  v62 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v63 = (v19 + *(v61 + 80) + v62) & ~*(v61 + 80);
  v64 = (v16 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v88;
  sub_22D6D3C4C(v26, &v24[v62]);
  (*(v61 + 32))(&v24[v63], v17, v15);
  v66 = &v24[v64];
  v67 = isa;
  *v66 = v77;
  v66[1] = v67;
  v68 = v79;
  *&v24[v65] = v79;
  v69 = &v24[(v65 + 15) & 0xFFFFFFFFFFFFFFF8];
  v70 = v87;
  *v69 = v86;
  v69[1] = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_22D6D54CC;
  *(v71 + 24) = v24;
  v94 = sub_22D6D5CDC;
  v95 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_22D6BEF78;
  v93 = &block_descriptor_148;
  v32 = _Block_copy(&aBlock);

  sub_22D6D4164(v68, 0);

  dispatch_sync(v85, v32);
  _Block_release(v32);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if (v67)
  {
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_22D6C50F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v51 = a7;
  v44 = a6;
  v46 = a5;
  v45 = a4;
  v50 = a3;
  v10 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E300();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v54 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D72E370();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72D850();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D72D730();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_22D72D8E0();
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v43 - v28;
  v49 = a2;
  sub_22D6C2C38(a2, 1, &v43 - v28);
  sub_22D72D710();
  (*(v17 + 16))(v19, v50, v16);
  sub_22D6D5A4C(v29, v27, &qword_27D9FF2D8, &qword_22D730178);
  sub_22D72D8D0();
  v30 = v44;
  v50 = v21;
  __swift_project_boxed_opaque_existential_1((a1 + 136), *(a1 + 160));
  v31 = v45;
  v32 = v46;
  sub_22D72D870();
  swift_beginAccess();
  sub_22D6D5A4C(a1 + 16, &v59, &unk_27D9FFEA0, &qword_22D730138);
  v43 = v23;
  if (v60)
  {
    sub_22D6B6CF0(&v59, aBlock);
    v33 = sub_22D72DBA0();
    v34 = v29;
    v35 = (*(*(v33 - 8) + 48))(v29, 1, v33);
    __swift_project_boxed_opaque_existential_1(aBlock, v62);
    if (v35 == 1)
    {
      sub_22D722AEC(v49);
    }

    else
    {
      sub_22D72056C(v49, v30, nullsub_1, 0);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_22D6D5984(&v59, &unk_27D9FFEA0, &qword_22D730138);
    v34 = v29;
  }

  v36 = swift_allocObject();
  v37 = v52;
  v36[2] = v51;
  v36[3] = v37;
  v36[4] = v31;
  v36[5] = v32;
  v63 = sub_22D6D55E8;
  v64 = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  v62 = &block_descriptor_160;
  v38 = _Block_copy(aBlock);

  v39 = v53;
  sub_22D72E330();
  *&v59 = MEMORY[0x277D84F90];
  sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v40 = v54;
  v41 = v58;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v39, v40, v38);
  _Block_release(v38);
  (*(v57 + 8))(v40, v41);
  (*(v55 + 8))(v39, v56);
  (*(v47 + 8))(v43, v50);
  sub_22D6D5984(v34, &qword_27D9FF2D8, &qword_22D730178);
}

void sub_22D6C5C20(void (*a1)(void *, void, uint64_t), uint64_t a2, char a3)
{
  sub_22D6CC570();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 0, 1);
}

void sub_22D6C5C98(uint64_t *a1, uint64_t a2)
{
  v123 = sub_22D72E300();
  v156 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22D72E370();
  v4 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v110 - v7;
  v8 = sub_22D72D7A0();
  v157 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v132 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v110 - v12;
  v118 = v14;
  MEMORY[0x28223BE20](v11);
  v139 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF410, &qword_22D7302D0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v161 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v155 = &v110 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF418, &qword_22D7302D8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v110 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v154 = &v110 - v28;
  v134 = sub_22D72D910();
  v159 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22D72DA40();
  v30 = *(v150 - 8);
  v31 = MEMORY[0x28223BE20](v150);
  v149 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v148 = &v110 - v33;
  v135 = sub_22D72D980();
  v152 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v140 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v136 = v4;
    v158 = v16;
    v117 = v13;
    v151 = v35;
    v36 = v135;
    v147 = *(v35 + 16);
    if (v147)
    {
      v37 = v152;
      v146 = v151 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v38 = 0;
      v116 = v23 + 8;
      v145 = v37 + 16;
      v144 = *MEMORY[0x277CB9610];
      v143 = (v30 + 104);
      v142 = (v30 + 8);
      v141 = (v37 + 8);
      v39 = v140;
      v131 = (v159 + 1);
      v159 = (v157 + 16);
      v129 = (v17 + 56);
      v128 = (v17 + 48);
      v137 = (v157 + 32);
      v127 = (v157 + 56);
      v126 = (v157 + 48);
      v125 = (v157 + 8);
      v115 = &v164;
      v114 = (v156 + 8);
      v113 = (v136 + 8);
      *&v40 = 136446466;
      v110 = v40;
      v160 = v8;
      v130 = v23;
      v138 = v27;
      while (v38 < *(v151 + 16))
      {
        v41 = v8;
        v42 = *(v152 + 72);
        v156 = v38;
        (*(v152 + 16))(v39, v146 + v42 * v38, v36);
        v43 = v148;
        v44 = v39;
        sub_22D72D970();
        v45 = v149;
        v46 = v36;
        v47 = v150;
        (*v143)(v149, v144, v150);
        v48 = sub_22D72DA30();
        v49 = *v142;
        (*v142)(v45, v47);
        v49(v43, v47);
        if (v48)
        {
          v50 = v133;
          sub_22D72D960();
          v51 = sub_22D72D900();
          v53 = v52;
          (*v131)(v50, v134);
          v54 = *(Strong + 232);
          v55 = 1 << *(v54 + 32);
          if (v55 < 64)
          {
            v56 = ~(-1 << v55);
          }

          else
          {
            v56 = -1;
          }

          v57 = v56 & *(v54 + 64);
          v58 = (v55 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v59 = 0;
          v136 = v51;
          if (!v57)
          {
LABEL_13:
            v61 = v154;
            while (1)
            {
              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                break;
              }

              if (v60 >= v58)
              {

                v73 = v130;
                v74 = v158;
                (*v129)(v130, 1, 1, v158);
                goto LABEL_26;
              }

              v57 = *(v54 + 64 + 8 * v60);
              ++v59;
              if (v57)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

          while (1)
          {
            v60 = v59;
LABEL_17:
            v62 = __clz(__rbit64(v57)) | (v60 << 6);
            v63 = v155;
            (*(v157 + 16))(v155, *(v54 + 48) + *(v157 + 72) * v62, v160);
            v64 = (*(v54 + 56) + 16 * v62);
            v65 = *v64;
            v66 = v64[1];
            v67 = v158;
            v68 = &v63[*(v158 + 48)];
            *v68 = v65;
            *(v68 + 1) = v66;
            v69 = v63;
            v70 = v161;
            sub_22D6D591C(v69, v161, &qword_27D9FF410, &qword_22D7302D0);
            v71 = (v70 + *(v67 + 48));
            v72 = *v71 == v51 && v71[1] == v53;
            if (v72 || (sub_22D72E980() & 1) != 0)
            {
              break;
            }

            v57 &= v57 - 1;

            sub_22D6D5984(v161, &qword_27D9FF410, &qword_22D7302D0);
            v59 = v60;
            if (!v57)
            {
              goto LABEL_13;
            }
          }

          v73 = v130;
          sub_22D6D591C(v161, v130, &qword_27D9FF410, &qword_22D7302D0);
          v74 = v158;
          (*v129)(v73, 0, 1, v158);
          v61 = v154;
LABEL_26:

          v75 = (*v128)(v73, 1, v74);
          v8 = v160;
          v76 = v138;
          v77 = v139;
          if (v75 == 1)
          {
            sub_22D6D5984(v73, &qword_27D9FF418, &qword_22D7302D8);
            v78 = 1;
          }

          else
          {

            (*v137)(v61, v73, v8);
            v78 = 0;
          }

          v39 = v140;
          (*v127)(v61, v78, 1, v8);
          sub_22D6D5A4C(v61, v76, &qword_27D9FF420, &qword_22D7302E0);
          if ((*v126)(v76, 1, v8) == 1)
          {

            sub_22D6D5984(v61, &qword_27D9FF420, &qword_22D7302E0);
            v36 = v135;
            (*v141)(v39, v135);
            sub_22D6D5984(v76, &qword_27D9FF420, &qword_22D7302E0);
          }

          else
          {
            v79 = *v137;
            (*v137)(v77, v76, v8);
            if (qword_2814572B0 != -1)
            {
              swift_once();
            }

            v80 = sub_22D72DBE0();
            __swift_project_value_buffer(v80, qword_2814580B8);
            v81 = *v159;
            v82 = v117;
            (*v159)(v117, v77, v8);

            v83 = sub_22D72DBB0();
            v84 = sub_22D72E5A0();

            v85 = os_log_type_enabled(v83, v84);
            v86 = v136;
            if (v85)
            {
              v87 = swift_slowAlloc();
              v112 = v79;
              v88 = v87;
              v111 = swift_slowAlloc();
              aBlock[0] = v111;
              *v88 = v110;
              sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v89 = sub_22D72E960();
              v91 = v90;
              v124 = *v125;
              v124(v82, v8);
              v92 = sub_22D72891C(v89, v91, aBlock);

              *(v88 + 4) = v92;
              *(v88 + 12) = 2082;
              v93 = sub_22D72891C(v86, v53, aBlock);

              *(v88 + 14) = v93;
              _os_log_impl(&dword_22D6B4000, v83, v84, "%{public}s:%{public}s: Activity was cancelled by the server", v88, 0x16u);
              v94 = v111;
              swift_arrayDestroy();
              MEMORY[0x2318D0420](v94, -1, -1);
              v95 = v88;
              v79 = v112;
              MEMORY[0x2318D0420](v95, -1, -1);
            }

            else
            {

              v124 = *v125;
              v124(v82, v8);
            }

            v96 = v132;
            v97 = v139;
            v81(v132, v139, v8);
            v98 = Strong;
            swift_beginAccess();
            sub_22D6BB7CC(0, 0, v96);
            swift_endAccess();
            v81(v96, v97, v8);
            v99 = type metadata accessor for Alarm(0);
            v100 = v119;
            (*(*(v99 - 8) + 56))(v119, 1, 1, v99);
            swift_beginAccess();
            sub_22D6BB998(v100, v96);
            swift_endAccess();
            sub_22D6D5A4C(v98 + 16, aBlock, &unk_27D9FFEA0, &qword_22D730138);
            v36 = v135;
            if (v165)
            {
              sub_22D6D42A8(aBlock, v162);
              sub_22D6D5984(aBlock, &unk_27D9FFEA0, &qword_22D730138);
              __swift_project_boxed_opaque_existential_1(v162, v162[3]);
              sub_22D722AEC(v97);
              __swift_destroy_boxed_opaque_existential_1Tm(v162);
            }

            else
            {
              sub_22D6D5984(aBlock, &unk_27D9FFEA0, &qword_22D730138);
            }

            v101 = Strong;
            sub_22D6BF9DC();
            v102 = v132;
            v81(v132, v97, v8);
            v103 = (*(v157 + 80) + 24) & ~*(v157 + 80);
            v104 = swift_allocObject();
            *(v104 + 16) = v101;
            v79(v104 + v103, v102, v160);
            v166 = sub_22D6D59E4;
            v167 = v104;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v164 = sub_22D6C0FD8;
            v165 = &block_descriptor_179;
            v105 = _Block_copy(aBlock);

            v106 = v120;
            sub_22D72E330();
            v162[0] = MEMORY[0x277D84F90];
            sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
            sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
            v107 = v122;
            v108 = v123;
            sub_22D72E6E0();
            MEMORY[0x2318CF7A0](0, v106, v107, v105);
            _Block_release(v105);
            v109 = v108;
            v8 = v160;
            (*v114)(v107, v109);
            (*v113)(v106, v121);
            v124(v97, v8);
            sub_22D6D5984(v154, &qword_27D9FF420, &qword_22D7302E0);
            v39 = v140;
            (*v141)(v140, v36);
          }
        }

        else
        {
          (*v141)(v44, v46);
          v36 = v46;
          v39 = v44;
          v8 = v41;
        }

        v38 = v156 + 1;
        if (v156 + 1 == v147)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
    }
  }
}

uint64_t sub_22D6C702C(void **a1)
{
  v1 = *a1;
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22D72DBE0();
  __swift_project_value_buffer(v2, qword_2814580B8);
  v3 = v1;
  v4 = sub_22D72DBB0();
  v5 = sub_22D72E580();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22D6B4000, v4, v5, "ActivityManager failed to subscribe to activity content stream: %{public}@", v6, 0xCu);
    sub_22D6D5984(v7, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v7, -1, -1);
    MEMORY[0x2318D0420](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3F0, &qword_22D7302A8);
  return sub_22D72DC50();
}

uint64_t sub_22D6C71B4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_22D72E300();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 216);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    v19 = v13;
    aBlock[4] = sub_22D6D5624;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6C0FD8;
    aBlock[3] = &block_descriptor_169;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    sub_22D72E330();
    v21 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    v18 = v7;
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v10, v6, v16);
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v10, v18);
  }

  return result;
}

uint64_t sub_22D6C74D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D72DA40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v30 - v8;
  v9 = sub_22D72DA20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 120);
  v31 = a1;
  v14 = __swift_project_boxed_opaque_existential_1((a1 + 96), v13);
  v15 = *v14;
  v16 = *(*v14 + 56);
  v42 = sub_22D6D562C;
  v43 = v15;
  os_unfair_lock_lock(v16 + 4);
  sub_22D6D5648(&v44);
  os_unfair_lock_unlock(v16 + 4);
  v32 = v44;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = v10 + 16;
    v37 = *(v10 + 16);
    v19 = v5;
    v20 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v36 = *MEMORY[0x277CB9610];
    v21 = (v19 + 8);
    v34 = (v18 - 8);
    v35 = (v19 + 104);
    v38 = v9;
    v39 = v18;
    v33 = *(v18 + 56);
    v37(v12, v20, v9);
    while (1)
    {
      v23 = v40;
      sub_22D72DA00();
      v24 = v41;
      (*v35)(v41, v36, v4);
      sub_22D6D5884(&unk_2814580A0, MEMORY[0x277CB9618], MEMORY[0x277CB9620]);
      v25 = sub_22D72E400();
      v26 = *v21;
      (*v21)(v24, v4);
      v27 = v26(v23, v4);
      if ((v25 & 1) == 0)
      {
        v28 = MEMORY[0x2318CFD00](v27);
        sub_22D6C780C(v12, v32, v31);
        objc_autoreleasePoolPop(v28);
      }

      v22 = v38;
      (*v34)(v12, v38);
      v20 += v33;
      if (!--v17)
      {
        break;
      }

      v37(v12, v20, v22);
    }
  }
}

void sub_22D6C780C(NSObject *a1, Class a2, uint64_t a3)
{
  v398 = a3;
  v383 = a2;
  v402 = sub_22D72DA20();
  v399 = *(v402 - 8);
  v4 = MEMORY[0x28223BE20](v402);
  v396 = (v352 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v375 = v352 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v367 = v352 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v365 = v352 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v360 = v352 - v13;
  MEMORY[0x28223BE20](v12);
  v358 = v352 - v14;
  v376 = sub_22D72DD20();
  v380 = *(v376 - 8);
  MEMORY[0x28223BE20](v376);
  v374 = v352 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72D9A0();
  MEMORY[0x28223BE20](v16 - 8);
  v381 = v352 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  MEMORY[0x28223BE20](v18 - 8);
  v377 = v352 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  MEMORY[0x28223BE20](v20 - 8);
  v378 = v352 - v21;
  v386 = sub_22D72D7A0();
  v382 = *(v386 - 8);
  MEMORY[0x28223BE20](v386);
  v372 = v352 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3E0, &qword_22D730290);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v357 = v352 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v364 = v352 - v26;
  v363 = sub_22D72D9B0();
  v362 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v361 = v352 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_22D72D910();
  v395 = *(v397 - 8);
  v28 = MEMORY[0x28223BE20](v397);
  v388 = v352 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v393 = v352 - v31;
  MEMORY[0x28223BE20](v30);
  v384 = v352 - v32;
  v33 = type metadata accessor for Alarm(0);
  v34 = *(v33 - 8);
  v391 = v33;
  v392 = v34;
  isa = v34[8].isa;
  v36 = MEMORY[0x28223BE20](v33);
  v369 = v352 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v370 = v352 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v368 = v352 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v359 = v352 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v387 = v352 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v356 = v352 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v355 = v352 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v354 = v352 - v50;
  MEMORY[0x28223BE20](v49);
  v371 = v352 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  MEMORY[0x28223BE20](v52 - 8);
  v390 = (v352 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v366 = v352 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v385 = v352 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v373 = v352 - v60;
  MEMORY[0x28223BE20](v59);
  v389 = v352 - v61;
  v400 = sub_22D72D850();
  v62 = *(v400 - 1);
  MEMORY[0x28223BE20](v400);
  v64 = v352 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22D72DF80();
  v394 = *(v65 - 8);
  v66 = MEMORY[0x28223BE20](v65);
  v379 = v352 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v69 = v352 - v68;
  sub_22D72D570();
  swift_allocObject();
  v70 = sub_22D72D560();
  v403 = a1;
  sub_22D72DA10();
  v71 = sub_22D72D830();
  v73 = v72;
  v74 = v64;
  v75 = v65;
  (*(v62 + 8))(v74, v400);
  sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20], MEMORY[0x277CB9A38]);
  v76 = v401;
  sub_22D72D550();
  if (!v76)
  {
    v95 = v390;
    v396 = isa;
    sub_22D6D5664(v71, v73);
    v96 = sub_22D72DF70();
    v98 = v398;
    v99 = v402;
    if (v97)
    {
      if (v96 == 0xD000000000000015 && v97 == 0x800000022D731F70)
      {

LABEL_13:
        (*(v394 + 8))(v69, v75);
        return;
      }

      v100 = sub_22D72E980();

      if (v100)
      {

        goto LABEL_13;
      }
    }

    v353 = v75;
    MEMORY[0x28223BE20](v96);
    v400 = v69;
    v352[-2] = v69;
    sub_22D6D5DB4(sub_22D6D56B8, &v352[-4], v383, v95);
    v401 = 0;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v102 = (*(*(v101 - 8) + 48))(v95, 1, v101);
    v352[1] = v70;
    if (v102 == 1)
    {
      sub_22D6D5984(v95, &qword_27D9FF9E0, &qword_22D730298);
      v103 = v389;
      v383 = v392[7].isa;
      (v383)(v389, 1, 1, v391);
    }

    else
    {
      v103 = v389;
      sub_22D6D3C4C(v95 + *(v101 + 48), v389);
      v383 = v392[7].isa;
      (v383)(v103, 0, 1, v391);
      (*(v382 + 8))(v95, v386);
    }

    v104 = v388;
    v105 = v384;
    v106 = v98[34];
    v107 = v98[35];
    __swift_project_boxed_opaque_existential_1(v98 + 31, v106);
    v108 = (*(v107 + 16))(v106, v107);
    v109 = v391;
    v110 = v392;
    if (v108)
    {
      goto LABEL_30;
    }

    v111 = v373;
    sub_22D6D5A4C(v103, v373, &qword_27D9FF550, &qword_22D730130);
    if ((v110[6].isa)(v111, 1, v109) == 1)
    {
      sub_22D6D5984(v111, &qword_27D9FF550, &qword_22D730130);
      goto LABEL_30;
    }

    v112 = v371;
    sub_22D6D3C4C(v111, v371);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3E8, &qword_22D7302A0);
    v113 = v380;
    v114 = *(v380 + 72);
    v115 = (*(v380 + 80) + 32) & ~*(v380 + 80);
    v116 = v109;
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_22D730030;
    v118 = v117 + v115;
    v119 = *(v113 + 104);
    v120 = v376;
    v119(v118, *MEMORY[0x277CB9918], v376);
    v119(v118 + v114, *MEMORY[0x277CB9908], v120);
    LOBYTE(v114) = sub_22D71E1AC(v112 + *(v116 + 44), v117);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v114 & 1) == 0)
    {
      sub_22D6D5740(v112, type metadata accessor for Alarm);
      v103 = v389;
      v109 = v391;
      v110 = v392;
      v104 = v388;
      v99 = v402;
      goto LABEL_30;
    }

    sub_22D72D9F0();
    v121 = sub_22D72D8F0();
    v122 = v395 + 1;
    v123 = v395[1].isa;
    v123(v105, v397);
    v124 = v362;
    v125 = v361;
    v126 = v363;
    (*(v362 + 104))(v361, *MEMORY[0x277CB94F8], v363);
    if (*(v121 + 16))
    {
      v390 = v122;
      v127 = sub_22D6CC640(v125);
      v128 = v364;
      if (v129)
      {
        v130 = v127;
        v384 = v123;
        v131 = v124;
        v132 = *(v121 + 56);
        v133 = v126;
        v134 = sub_22D72DAC0();
        v135 = v125;
        v136 = *(v134 - 8);
        sub_22D6D56D8(v132 + *(v136 + 72) * v130, v128, MEMORY[0x277CB9790]);
        (*(v131 + 8))(v135, v133);

        (*(v136 + 56))(v128, 0, 1, v134);
        v137 = v357;
        sub_22D6D591C(v128, v357, &qword_27D9FF3E0, &qword_22D730290);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22D6D5740(v371, type metadata accessor for Alarm);
          sub_22D6D5740(v137, MEMORY[0x277CB9790]);
LABEL_29:
          v99 = v402;
          v103 = v389;
          v109 = v391;
          v110 = v392;
          v104 = v388;
          goto LABEL_30;
        }

        if (qword_2814572B0 != -1)
        {
          swift_once();
        }

        v314 = sub_22D72DBE0();
        v315 = __swift_project_value_buffer(v314, qword_2814580B8);
        v316 = v354;
        sub_22D6D56D8(v371, v354, type metadata accessor for Alarm);
        v373 = v315;
        v317 = sub_22D72DBB0();
        v318 = sub_22D72E5A0();
        v319 = os_log_type_enabled(v317, v318);
        v320 = v384;
        if (v319)
        {
          v321 = swift_slowAlloc();
          v322 = swift_slowAlloc();
          v405 = v322;
          *v321 = 136446210;
          sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v323 = sub_22D72E960();
          v325 = v324;
          sub_22D6D5740(v316, type metadata accessor for Alarm);
          v326 = sub_22D72891C(v323, v325, &v405);

          *(v321 + 4) = v326;
          _os_log_impl(&dword_22D6B4000, v317, v318, "%{public}s: Cancelling activity with UI provided by the app's widget extension", v321, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v322);
          MEMORY[0x2318D0420](v322, -1, -1);
          MEMORY[0x2318D0420](v321, -1, -1);
        }

        else
        {

          sub_22D6D5740(v316, type metadata accessor for Alarm);
        }

        v327 = v372;
        v328 = v371;
        (*(v382 + 16))(v372, v371, v386);
        v329 = v398;
        swift_beginAccess();
        sub_22D6BB7CC(0, 0, v327);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1((v329 + 136), *(v329 + 160));
        v330 = v393;
        sub_22D72D9F0();
        sub_22D72D900();
        v320(v330, v397);
        v331 = sub_22D72D8E0();
        v332 = v378;
        (*(*(v331 - 8) + 56))(v378, 1, 1, v331);
        sub_22D72D990();
        v333 = v377;
        sub_22D72D930();
        v334 = sub_22D72D940();
        (*(*(v334 - 8) + 56))(v333, 0, 1, v334);
        sub_22D72D860();

        sub_22D6D5984(v333, &qword_27D9FF280, &qword_22D730120);
        sub_22D6D5984(v332, &qword_27D9FF288, &qword_22D730128);
        v335 = v328;
        v336 = v355;
        sub_22D6D56D8(v335, v355, type metadata accessor for Alarm);
        v337 = sub_22D72DBB0();
        v338 = sub_22D72E5A0();
        if (os_log_type_enabled(v337, v338))
        {
          v339 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          v405 = v340;
          *v339 = 136446210;
          sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v341 = sub_22D72E960();
          v343 = v342;
          sub_22D6D5740(v336, type metadata accessor for Alarm);
          v344 = sub_22D72891C(v341, v343, &v405);

          *(v339 + 4) = v344;
          _os_log_impl(&dword_22D6B4000, v337, v338, "%{public}s: Restarting activity with UI provided by our launch angel", v339, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v340);
          MEMORY[0x2318D0420](v340, -1, -1);
          MEMORY[0x2318D0420](v339, -1, -1);
        }

        else
        {

          sub_22D6D5740(v336, type metadata accessor for Alarm);
        }

        v345 = v402;
        v346 = v392;
        v347 = v356;
        v104 = v388;
        v348 = v371;
        sub_22D6D56D8(v371, v356, type metadata accessor for Alarm);
        v349 = (LOBYTE(v346[10].isa) + 16) & ~LOBYTE(v346[10].isa);
        v350 = swift_allocObject();
        sub_22D6D3C4C(v347, v350 + v349);
        sub_22D6BBE4C(v348, sub_22D6D57A0, v350);
        v110 = v392;

        sub_22D6D5740(v348, type metadata accessor for Alarm);
        v351 = sub_22D72DAD0();
        (*(*(v351 - 8) + 8))(v137, v351);
        v103 = v389;
        v109 = v391;
        v99 = v345;
LABEL_30:
        v142 = v385;
        sub_22D6D5A4C(v103, v385, &qword_27D9FF550, &qword_22D730130);
        if ((v110[6].isa)(v142, 1, v109) == 1)
        {
          v143 = v103;
          sub_22D6D5984(v142, &qword_27D9FF550, &qword_22D730130);
          if (qword_2814572B0 != -1)
          {
            swift_once();
          }

          v144 = sub_22D72DBE0();
          __swift_project_value_buffer(v144, qword_2814580B8);
          v145 = v399;
          v146 = v375;
          v147 = v99;
          (*(v399 + 16))(v375, v403, v99);
          v148 = v394;
          v149 = v379;
          v150 = v353;
          (*(v394 + 16))(v379, v400, v353);
          v151 = sub_22D72DBB0();
          v152 = sub_22D72E5A0();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v396 = swift_slowAlloc();
            v405 = v396;
            *v153 = 136446466;
            v154 = v393;
            v392 = v151;
            sub_22D72D9F0();
            v155 = sub_22D72D900();
            LODWORD(v391) = v152;
            v157 = v156;
            v158 = v395;
            (v395[1].isa)(v154, v397);
            (*(v145 + 8))(v146, v147);
            v159 = sub_22D72891C(v155, v157, &v405);

            *(v153 + 4) = v159;
            *(v153 + 12) = 2082;
            v160 = v372;
            v161 = v379;
            sub_22D72DF50();
            sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v162 = v150;
            v163 = v386;
            v164 = sub_22D72E960();
            v166 = v165;
            (*(v382 + 8))(v160, v163);
            (*(v394 + 8))(v161, v162);
            v167 = sub_22D72891C(v164, v166, &v405);
            v168 = v397;
            v169 = v389;

            *(v153 + 14) = v167;
            v170 = v154;
            v171 = v392;
            _os_log_impl(&dword_22D6B4000, v392, v391, "ActivityManager detected orphaned activity %{public}s for alarm with client ID %{public}s", v153, 0x16u);
            v172 = v396;
            swift_arrayDestroy();
            v173 = v172;
            v174 = v398;
            MEMORY[0x2318D0420](v173, -1, -1);
            MEMORY[0x2318D0420](v153, -1, -1);
          }

          else
          {

            (*(v148 + 8))(v149, v150);
            (*(v145 + 8))(v146, v147);
            v168 = v397;
            v174 = v398;
            v158 = v395;
            v170 = v393;
            v169 = v143;
          }

          __swift_project_boxed_opaque_existential_1((v174 + 136), *(v174 + 160));
          sub_22D72D9F0();
          sub_22D72D900();
          (v158[1].isa)(v170, v168);
          v195 = sub_22D72D8E0();
          v196 = v378;
          (*(*(v195 - 8) + 56))(v378, 1, 1, v195);
          sub_22D72D990();
          v197 = v377;
          sub_22D72D930();
          v198 = sub_22D72D940();
          (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
          sub_22D72D860();

          sub_22D6D5984(v197, &qword_27D9FF280, &qword_22D730120);
          sub_22D6D5984(v196, &qword_27D9FF288, &qword_22D730128);
        }

        else
        {
          v175 = v104;
          v176 = v387;
          sub_22D6D3C4C(v142, v387);
          v177 = v398;
          swift_beginAccess();
          v178 = *(v177 + 232);
          v179 = v380;
          v180 = v374;
          v181 = v99;
          if (*(v178 + 16))
          {

            v182 = sub_22D6CC49C(v176);
            if (v183)
            {
              v184 = (*(v178 + 56) + 16 * v182);
              v186 = *v184;
              v185 = v184[1];

              sub_22D72D9F0();
              v187 = sub_22D72D900();
              v189 = v188;
              v190 = v395[1].isa;
              v191 = v175;
              v192 = v397;
              ++v395;
              v190(v191, v397);
              v396 = v190;
              if (v186 == v187 && v185 == v189)
              {

                v193 = v353;
                v194 = v387;
              }

              else
              {
                v267 = sub_22D72E980();

                v193 = v353;
                v194 = v387;
                if ((v267 & 1) == 0)
                {
                  v287 = v192;
                  if (qword_2814572B0 != -1)
                  {
                    swift_once();
                  }

                  v288 = sub_22D72DBE0();
                  __swift_project_value_buffer(v288, qword_2814580B8);
                  v289 = v399;
                  v290 = v358;
                  v291 = v402;
                  (*(v399 + 16))(v358, v403, v402);
                  v292 = v359;
                  sub_22D6D56D8(v194, v359, type metadata accessor for Alarm);
                  v293 = sub_22D72DBB0();
                  v294 = sub_22D72E5A0();
                  if (os_log_type_enabled(v293, v294))
                  {
                    v295 = swift_slowAlloc();
                    v392 = swift_slowAlloc();
                    v404 = v392;
                    *v295 = 136446466;
                    v296 = v393;
                    LODWORD(v391) = v294;
                    sub_22D72D9F0();
                    v297 = sub_22D72D900();
                    v299 = v298;
                    (v396)(v296, v397);
                    (*(v289 + 8))(v290, v291);
                    v300 = sub_22D72891C(v297, v299, &v404);

                    *(v295 + 4) = v300;
                    *(v295 + 12) = 2082;
                    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v301 = v359;
                    v302 = sub_22D72E960();
                    v304 = v303;
                    sub_22D6D5740(v301, type metadata accessor for Alarm);
                    v305 = sub_22D72891C(v302, v304, &v404);
                    v306 = v389;

                    *(v295 + 14) = v305;
                    v307 = v296;
                    _os_log_impl(&dword_22D6B4000, v293, v391, "ActivityManager detected duplicate activity %{public}s for alarm %{public}s", v295, 0x16u);
                    v308 = v392;
                    swift_arrayDestroy();
                    v287 = v397;
                    v309 = v398;
                    MEMORY[0x2318D0420](v308, -1, -1);
                    MEMORY[0x2318D0420](v295, -1, -1);
                  }

                  else
                  {

                    sub_22D6D5740(v292, type metadata accessor for Alarm);
                    (*(v289 + 8))(v290, v291);
                    v307 = v393;
                    v306 = v389;
                    v309 = v398;
                  }

                  __swift_project_boxed_opaque_existential_1((v309 + 136), *(v309 + 160));
                  sub_22D72D9F0();
                  sub_22D72D900();
                  (v396)(v307, v287);
                  v310 = sub_22D72D8E0();
                  v311 = v378;
                  (*(*(v310 - 8) + 56))(v378, 1, 1, v310);
                  sub_22D72D990();
                  v312 = v377;
                  sub_22D72D930();
                  v313 = sub_22D72D940();
                  (*(*(v313 - 8) + 56))(v312, 0, 1, v313);
                  sub_22D72D860();

                  sub_22D6D5984(v312, &qword_27D9FF280, &qword_22D730120);
                  sub_22D6D5984(v311, &qword_27D9FF288, &qword_22D730128);
                  sub_22D6D5740(v387, type metadata accessor for Alarm);
                  sub_22D6D5984(v306, &qword_27D9FF550, &qword_22D730130);
                  v257 = v394;
                  goto LABEL_58;
                }
              }

              if (qword_2814572B0 != -1)
              {
                swift_once();
              }

              v268 = sub_22D72DBE0();
              __swift_project_value_buffer(v268, qword_2814580B8);
              v269 = v399;
              v270 = v360;
              (*(v399 + 16))(v360, v403, v99);
              v271 = v368;
              sub_22D6D56D8(v194, v368, type metadata accessor for Alarm);
              v272 = sub_22D72DBB0();
              v273 = sub_22D72E5A0();
              if (os_log_type_enabled(v272, v273))
              {
                v274 = swift_slowAlloc();
                v403 = swift_slowAlloc();
                v404 = v403;
                *v274 = 136446466;
                v275 = v99;
                v276 = v393;
                LODWORD(v398) = v273;
                sub_22D72D9F0();
                v277 = sub_22D72D900();
                v279 = v278;
                (v396)(v276, v397);
                (*(v269 + 8))(v270, v275);
                v280 = sub_22D72891C(v277, v279, &v404);

                *(v274 + 4) = v280;
                *(v274 + 12) = 2082;
                sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v281 = v368;
                v282 = sub_22D72E960();
                v284 = v283;
                sub_22D6D5740(v281, type metadata accessor for Alarm);
                v285 = sub_22D72891C(v282, v284, &v404);

                *(v274 + 14) = v285;
                _os_log_impl(&dword_22D6B4000, v272, v398, "ActivityManager ignoring valid activity %{public}s for alarm %{public}s", v274, 0x16u);
                v286 = v403;
                swift_arrayDestroy();
                MEMORY[0x2318D0420](v286, -1, -1);
                MEMORY[0x2318D0420](v274, -1, -1);

                sub_22D6D5740(v194, type metadata accessor for Alarm);
                sub_22D6D5984(v389, &qword_27D9FF550, &qword_22D730130);
                v258 = v353;
                v257 = v394;
              }

              else
              {

                sub_22D6D5740(v271, type metadata accessor for Alarm);
                (*(v269 + 8))(v270, v99);
                sub_22D6D5740(v194, type metadata accessor for Alarm);
                sub_22D6D5984(v389, &qword_27D9FF550, &qword_22D730130);
                v257 = v394;
                v258 = v193;
              }

              goto LABEL_59;
            }

            v176 = v387;
          }

          v199 = v176 + *(v109 + 44);
          v200 = v376;
          (*(v179 + 16))(v180, v199, v376);
          v201 = (*(v179 + 88))(v180, v200);
          if (v201 != *MEMORY[0x277CB9920])
          {
            if (v201 != *MEMORY[0x277CB9918] && v201 != *MEMORY[0x277CB9908] && v201 != *MEMORY[0x277CB9910])
            {
              sub_22D72E970();
              __break(1u);
              return;
            }

            v226 = v103;
            v227 = v365;
            if (qword_2814572B0 != -1)
            {
              swift_once();
            }

            v228 = sub_22D72DBE0();
            __swift_project_value_buffer(v228, qword_2814580B8);
            v229 = v399;
            (*(v399 + 16))(v227, v403, v99);
            v230 = v370;
            sub_22D6D56D8(v176, v370, type metadata accessor for Alarm);
            v231 = sub_22D72DBB0();
            v232 = sub_22D72E5A0();
            if (os_log_type_enabled(v231, v232))
            {
              v233 = swift_slowAlloc();
              v396 = swift_slowAlloc();
              v404 = v396;
              *v233 = 136446466;
              v390 = v231;
              v234 = v227;
              v235 = v393;
              LODWORD(v388) = v232;
              sub_22D72D9F0();
              v236 = sub_22D72D900();
              v238 = v237;
              v239 = v395;
              v240 = v397;
              (v395[1].isa)(v235, v397);
              (*(v229 + 8))(v234, v181);
              v241 = sub_22D72891C(v236, v238, &v404);

              *(v233 + 4) = v241;
              *(v233 + 12) = 2082;
              sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v242 = v370;
              v243 = v386;
              v244 = sub_22D72E960();
              v246 = v245;
              sub_22D6D5740(v242, type metadata accessor for Alarm);
              v247 = sub_22D72891C(v244, v246, &v404);
              v248 = v389;

              *(v233 + 14) = v247;
              v249 = v235;
              v250 = v390;
              _os_log_impl(&dword_22D6B4000, v390, v388, "ActivityManager detected unmapped activity %{public}s for alarm %{public}s", v233, 0x16u);
              v251 = v396;
              swift_arrayDestroy();
              v252 = v398;
              MEMORY[0x2318D0420](v251, -1, -1);
              MEMORY[0x2318D0420](v233, -1, -1);
            }

            else
            {

              sub_22D6D5740(v230, type metadata accessor for Alarm);
              (*(v229 + 8))(v227, v99);
              v240 = v397;
              v252 = v398;
              v239 = v395;
              v249 = v393;
              v243 = v386;
              v248 = v226;
            }

            sub_22D72D9F0();
            v259 = sub_22D72D900();
            v261 = v260;
            (v239[1].isa)(v249, v240);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v406 = *(v252 + 232);
            *(v252 + 232) = 0x8000000000000000;
            v263 = v261;
            v264 = v387;
            sub_22D6CEC5C(v259, v263, v387, isUniquelyReferenced_nonNull_native);
            *(v252 + 232) = v406;
            swift_endAccess();
            v265 = v372;
            (*(v382 + 16))(v372, v264, v243);
            v266 = v366;
            sub_22D6D56D8(v264, v366, type metadata accessor for Alarm);
            (v383)(v266, 0, 1, v391);
            swift_beginAccess();
            sub_22D6BB998(v266, v265);
            swift_endAccess();

            sub_22D6D5740(v264, type metadata accessor for Alarm);
            sub_22D6D5984(v248, &qword_27D9FF550, &qword_22D730130);
            v258 = v353;
            v257 = v394;
LABEL_59:
            (*(v257 + 8))(v400, v258);
            return;
          }

          v202 = v103;
          if (qword_2814572B0 != -1)
          {
            swift_once();
          }

          v203 = sub_22D72DBE0();
          __swift_project_value_buffer(v203, qword_2814580B8);
          v204 = v399;
          v205 = v367;
          (*(v399 + 16))(v367, v403, v99);
          v206 = v369;
          sub_22D6D56D8(v176, v369, type metadata accessor for Alarm);
          v207 = sub_22D72DBB0();
          v208 = sub_22D72E5A0();
          if (os_log_type_enabled(v207, v208))
          {
            v209 = swift_slowAlloc();
            v396 = swift_slowAlloc();
            v404 = v396;
            *v209 = 136446466;
            v210 = v393;
            LODWORD(v392) = v208;
            sub_22D72D9F0();
            v211 = sub_22D72D900();
            v213 = v212;
            v214 = v395;
            (v395[1].isa)(v210, v397);
            (*(v204 + 8))(v205, v181);
            v215 = sub_22D72891C(v211, v213, &v404);

            *(v209 + 4) = v215;
            *(v209 + 12) = 2082;
            sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v216 = v369;
            v217 = sub_22D72E960();
            v219 = v218;
            sub_22D6D5740(v216, type metadata accessor for Alarm);
            v220 = sub_22D72891C(v217, v219, &v404);
            v221 = v397;
            v169 = v389;

            *(v209 + 14) = v220;
            v222 = v210;
            _os_log_impl(&dword_22D6B4000, v207, v392, "ActivityManager detected activity %{public}s for ineligible alarm %{public}s", v209, 0x16u);
            v223 = v396;
            swift_arrayDestroy();
            v224 = v223;
            v225 = v398;
            MEMORY[0x2318D0420](v224, -1, -1);
            MEMORY[0x2318D0420](v209, -1, -1);
          }

          else
          {

            sub_22D6D5740(v206, type metadata accessor for Alarm);
            (*(v204 + 8))(v205, v99);
            v221 = v397;
            v225 = v398;
            v214 = v395;
            v222 = v393;
            v169 = v202;
          }

          __swift_project_boxed_opaque_existential_1((v225 + 136), *(v225 + 160));
          sub_22D72D9F0();
          sub_22D72D900();
          (v214[1].isa)(v222, v221);
          v253 = sub_22D72D8E0();
          v254 = v378;
          (*(*(v253 - 8) + 56))(v378, 1, 1, v253);
          sub_22D72D990();
          v255 = v377;
          sub_22D72D930();
          v256 = sub_22D72D940();
          (*(*(v256 - 8) + 56))(v255, 0, 1, v256);
          sub_22D72D860();

          sub_22D6D5984(v255, &qword_27D9FF280, &qword_22D730120);
          sub_22D6D5984(v254, &qword_27D9FF288, &qword_22D730128);
          sub_22D6D5740(v387, type metadata accessor for Alarm);
        }

        sub_22D6D5984(v169, &qword_27D9FF550, &qword_22D730130);
        v257 = v394;
LABEL_58:
        v258 = v353;
        goto LABEL_59;
      }

      (*(v124 + 8))(v125, v126);
      sub_22D6D5740(v112, type metadata accessor for Alarm);
      v141 = sub_22D72DAC0();
      (*(*(v141 - 8) + 56))(v128, 1, 1, v141);
      v140 = v128;
    }

    else
    {

      (*(v124 + 8))(v125, v126);
      sub_22D6D5740(v112, type metadata accessor for Alarm);
      v138 = sub_22D72DAC0();
      v139 = v364;
      (*(*(v138 - 8) + 56))(v364, 1, 1, v138);
      v140 = v139;
    }

    sub_22D6D5984(v140, &qword_27D9FF3E0, &qword_22D730290);
    goto LABEL_29;
  }

  sub_22D6D5664(v71, v73);
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v77 = sub_22D72DBE0();
  __swift_project_value_buffer(v77, qword_2814580B8);
  v78 = v399;
  v79 = v396;
  v80 = v402;
  (*(v399 + 16))(v396, v403, v402);
  v81 = v76;
  v82 = sub_22D72DBB0();
  v83 = sub_22D72E580();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    v403 = swift_slowAlloc();
    v405 = v403;
    *v84 = 136315394;
    v85 = v393;
    sub_22D72D9F0();
    v86 = sub_22D72D900();
    v401 = v76;
    v88 = v87;
    (v395[1].isa)(v85, v397);
    (*(v78 + 8))(v79, v80);
    v89 = sub_22D72891C(v86, v88, &v405);

    *(v84 + 4) = v89;
    *(v84 + 12) = 2114;
    v90 = v401;
    v91 = v401;
    v92 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v92;
    v93 = v400;
    *v400 = v92;
    _os_log_impl(&dword_22D6B4000, v82, v83, "ActivityManager failed to decode presentation state for activity ID %s: %{public}@", v84, 0x16u);
    sub_22D6D5984(v93, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v93, -1, -1);
    v94 = v403;
    __swift_destroy_boxed_opaque_existential_1Tm(v403);
    MEMORY[0x2318D0420](v94, -1, -1);
    MEMORY[0x2318D0420](v84, -1, -1);
  }

  else
  {

    (*(v78 + 8))(v79, v80);
  }
}

uint64_t sub_22D6CA8AC(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v3 = sub_22D72D7A0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_22D6D5A4C(a1, v18 - v12, &unk_27D9FF4A0, &qword_22D730510);
  v14 = &v13[*(v11 + 56)];
  v15 = type metadata accessor for Alarm(0);
  (*(v4 + 16))(v9, v14 + *(v15 + 20), v3);
  sub_22D6D5740(v14, type metadata accessor for Alarm);
  sub_22D72DF50();
  LOBYTE(v14) = sub_22D72D780();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  v16(v13, v3);
  return v14 & 1;
}

void sub_22D6CAAB4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  if (a3)
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v14 = sub_22D72DBE0();
    __swift_project_value_buffer(v14, qword_2814580B8);
    sub_22D6D56D8(a4, v11, type metadata accessor for Alarm);
    v15 = a1;
    v16 = sub_22D72DBB0();
    v17 = sub_22D72E5A0();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v18 = 136446466;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_22D72E960();
      v23 = v22;
      sub_22D6D5740(v11, type metadata accessor for Alarm);
      v24 = sub_22D72891C(v21, v23, &v38);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2114;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v26;
      *v19 = v26;
      _os_log_impl(&dword_22D6B4000, v16, v17, "Error restarting activity for alarm: %{public}s - %{public}@", v18, 0x16u);
      sub_22D6D5984(v19, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x2318D0420](v20, -1, -1);
      MEMORY[0x2318D0420](v18, -1, -1);

      return;
    }

    v36 = v11;
  }

  else
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v27 = sub_22D72DBE0();
    __swift_project_value_buffer(v27, qword_2814580B8);
    sub_22D6D56D8(a4, v13, type metadata accessor for Alarm);
    v28 = sub_22D72DBB0();
    v29 = sub_22D72E5A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_22D72E960();
      v34 = v33;
      sub_22D6D5740(v13, type metadata accessor for Alarm);
      v35 = sub_22D72891C(v32, v34, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_22D6B4000, v28, v29, "Successfully restarted activity for alarm: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318D0420](v31, -1, -1);
      MEMORY[0x2318D0420](v30, -1, -1);

      return;
    }

    v36 = v13;
  }

  sub_22D6D5740(v36, type metadata accessor for Alarm);
}

uint64_t sub_22D6CAF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_22D72E500();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_22D72E500();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_22D72E980();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_22D72E500();
      v7 = v9;
    }

    while (v9);
  }

  sub_22D72E500();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_22D6CB0C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  swift_beginAccess();

  v5 = sub_22D6D5084(v4, a1, sub_22D6D46AC, sub_22D6D46AC);

  v6 = sub_22D6CB2CC(v5);

  v8 = sub_22D6D5084(v7, a1, sub_22D6D4B98, sub_22D6D4B98);

  v9 = sub_22D6CB2CC(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D730030;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF340, &qword_22D7301E8);
  *(inited + 48) = v6;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6576697463616E69;
  *(inited + 120) = v11;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v9;
  v12 = sub_22D6D4390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
  result = swift_arrayDestroy();
  *a2 = v12;
  return result;
}

unint64_t sub_22D6CB2CC(uint64_t a1)
{
  v63 = type metadata accessor for Alarm(0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v55[1] = v1;
  v83 = MEMORY[0x277D84F90];
  sub_22D6D3320(0, v5, 0);
  v6 = v83;
  v7 = a1 + 64;
  v8 = sub_22D72E6F0();
  v61 = 0x800000022D731F90;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF358, &qword_22D730200);
  v60 = result;
  v10 = 0;
  v56 = a1 + 72;
  v59 = a1;
  v57 = v5;
  v58 = a1 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_29;
    }

    v66 = 1 << v8;
    v67 = v8 >> 6;
    v64 = v10;
    v68 = v6;
    v65 = *(a1 + 36);
    sub_22D6D56D8(*(a1 + 56) + *(v62 + 72) * v8, v4, type metadata accessor for Alarm);
    v71 = 25705;
    v72 = 0xE200000000000000;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v73 = sub_22D72E960();
    v74 = v13;
    v75 = 0xD000000000000017;
    v76 = v61;
    sub_22D72D730();
    sub_22D6D5884(&unk_27D9FF4F0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v77 = sub_22D72E960();
    v78 = v14;
    v79 = 0x6574617473;
    v80 = 0xE500000000000000;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_22D72DD20();
    v15 = v4;
    sub_22D72E850();
    v81 = v69;
    v82 = v70;
    v16 = sub_22D72E8A0();

    v18 = v71;
    v17 = v72;
    v19 = v73;
    v20 = v74;

    result = sub_22D6CC714(v18, v17);
    if (v21)
    {
      goto LABEL_26;
    }

    v22 = v16 + 8;
    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v23 = (v16[6] + 16 * result);
    *v23 = v18;
    v23[1] = v17;
    v24 = (v16[7] + 16 * result);
    *v24 = v19;
    v24[1] = v20;
    v25 = v16[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v16[2] = v27;
    v28 = v75;
    v29 = v76;
    v30 = v77;
    v31 = v78;

    result = sub_22D6CC714(v28, v29);
    if (v32)
    {
      goto LABEL_26;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v33 = (v16[6] + 16 * result);
    *v33 = v28;
    v33[1] = v29;
    v34 = (v16[7] + 16 * result);
    *v34 = v30;
    v34[1] = v31;
    v35 = v16[2];
    v26 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v16[2] = v36;
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v40 = v82;

    result = sub_22D6CC714(v37, v38);
    if (v41)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v42 = (v16[6] + 16 * result);
    *v42 = v37;
    v42[1] = v38;
    v43 = (v16[7] + 16 * result);
    *v43 = v39;
    v43[1] = v40;
    v44 = v16[2];
    v26 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v16[2] = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF360, &qword_22D730208);
    swift_arrayDestroy();
    v4 = v15;
    result = sub_22D6D5740(v15, type metadata accessor for Alarm);
    v6 = v68;
    v83 = v68;
    v47 = *(v68 + 16);
    v46 = *(v68 + 24);
    if (v47 >= v46 >> 1)
    {
      result = sub_22D6D3320((v46 > 1), v47 + 1, 1);
      v6 = v83;
    }

    *(v6 + 16) = v47 + 1;
    *(v6 + 8 * v47 + 32) = v16;
    a1 = v59;
    v11 = 1 << *(v59 + 32);
    v7 = v58;
    if (v8 >= v11)
    {
      goto LABEL_30;
    }

    v48 = *(v58 + 8 * v67);
    if ((v48 & v66) == 0)
    {
      goto LABEL_31;
    }

    if (v65 != *(v59 + 36))
    {
      goto LABEL_32;
    }

    v49 = v48 & (-2 << (v8 & 0x3F));
    if (v49)
    {
      v11 = __clz(__rbit64(v49)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v12 = v57;
    }

    else
    {
      v50 = v67 << 6;
      v51 = v67 + 1;
      v52 = (v56 + 8 * v67);
      v12 = v57;
      while (v51 < (v11 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          result = sub_22D6D5264(v8, v65, 0);
          v11 = __clz(__rbit64(v53)) + v50;
          goto LABEL_4;
        }
      }

      result = sub_22D6D5264(v8, v65, 0);
    }

LABEL_4:
    v10 = v64 + 1;
    v8 = v11;
    if (v64 + 1 == v12)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D6CB94C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
  sub_22D72E600();
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_22D6CBA4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF320, &qword_22D7301C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22D6CBB50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF388, &qword_22D730230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF390, &qword_22D730238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D6CBC98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF380, &qword_22D730228);
  v10 = *(sub_22D72DDC0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22D72DDC0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22D6CBE70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A8, &qword_22D730258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D6CBF7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF328, &qword_22D7301D0);
  v4 = *(type metadata accessor for Alarm(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6CC078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22D6CC49C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6CFC78();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22D72D7A0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Alarm(0);
    v20 = *(v13 - 8);
    sub_22D6D3C4C(v12 + *(v20 + 72) * v7, a2);
    sub_22D6CE40C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Alarm(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_22D6CC200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22D6CC714(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6D0100();
      v10 = v12;
    }

    sub_22D6D5254((*(v10 + 56) + 32 * v8), a3);
    sub_22D6CE750(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22D6CC2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22D6CC714(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6D02A4();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_22D72E100();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_22D6CE900(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_22D72E100();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_22D6CC414(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22D6CC78C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22D6D0524();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_22D6CEAEC(v8, v7);
  *v2 = v7;
  return v9;
}

unint64_t sub_22D6CC49C(uint64_t a1)
{
  sub_22D72D7A0();
  v2 = MEMORY[0x277CC95F0];
  sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22D72E3D0();
  return sub_22D6CC7D0(a1, v3, MEMORY[0x277CC95F0], &qword_27D9FF330, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_22D6CC570()
{
  result = qword_27D9FF290;
  if (!qword_27D9FF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF290);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22D6CC640(uint64_t a1)
{
  sub_22D72D9B0();
  v2 = MEMORY[0x277CB9500];
  sub_22D6D5884(&qword_27D9FF2F8, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
  v3 = sub_22D72E3D0();
  return sub_22D6CC7D0(a1, v3, MEMORY[0x277CB9500], &qword_27D9FF300, v2, MEMORY[0x277CB9518]);
}

unint64_t sub_22D6CC714(uint64_t a1, uint64_t a2)
{
  sub_22D72EA20();
  sub_22D72E4E0();
  v4 = sub_22D72EA40();

  return sub_22D6CC970(a1, a2, v4);
}

unint64_t sub_22D6CC78C(uint64_t a1)
{
  v2 = sub_22D72EA10();

  return sub_22D6CCA28(a1, v2);
}

unint64_t sub_22D6CC7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_22D6D5884(v23, v24, v25);
      v19 = sub_22D72E400();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_22D6CC970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22D72E980())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22D6CCA28(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22D6CCA94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2E0, &qword_22D730188);
  v44 = v4;
  result = sub_22D72E890();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22D72E3D0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22D6CCE7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Alarm(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  v43 = v4;
  result = sub_22D72E890();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22D6D3C4C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22D6D56D8(v29 + v28 * v24, v47, type metadata accessor for Alarm);
      }

      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22D72E3D0();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22D6D3C4C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22D6CD2F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF378, &qword_22D730220);
  v34 = v4;
  result = sub_22D72E890();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22D6CD59C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
  v33 = v4;
  result = sub_22D72E890();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22D6D5254(v24, v34);
      }

      else
      {
        sub_22D6D5270(v24, v34);
      }

      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22D6D5254(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22D6CD854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22D72E100();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  v42 = v4;
  result = sub_22D72E890();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22D6CDBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B8, &qword_22D730268);
  result = sub_22D72E890();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_22D72EA10();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22D6CDE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B0, &qword_22D730260);
  v34 = v4;
  result = sub_22D72E890();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_22D6CE0EC(int64_t a1, uint64_t a2)
{
  v40 = sub_22D72D7A0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_22D72E700();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22D72E3D0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_22D6CE40C(int64_t a1, uint64_t a2)
{
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_22D72E700();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_22D72E3D0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for Alarm(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CE750(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    do
    {
      sub_22D72EA20();

      sub_22D72E4E0();
      v10 = sub_22D72EA40();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22D6CE900(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    while (1)
    {
      sub_22D72EA20();

      sub_22D72E4E0();
      v9 = sub_22D72EA40();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_22D72E100() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CEAEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22D72EA10();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CEC5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_22D6CC49C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_22D6CF9EC();
      goto LABEL_9;
    }

    sub_22D6CCA94(v18, a4 & 1);
    v21 = sub_22D6CC49C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_22D6CF734(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_22D6CEE38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22D6CC49C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22D6CFC78();
      goto LABEL_7;
    }

    sub_22D6CCE7C(v17, a3 & 1);
    v24 = sub_22D6CC49C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22D6CF7F4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for Alarm(0) - 8) + 72) * v14;

  return sub_22D6D430C(a1, v22);
}

uint64_t sub_22D6CF020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D6CD2F4(v16, a4 & 1);
      v11 = sub_22D6CC714(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D6CFF90();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_22D6CF19C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22D6D0100();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22D6CD59C(v16, a4 & 1);
    v11 = sub_22D6CC714(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22D72E9A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_22D6D5254(a1, v22);
  }

  else
  {
    sub_22D6CF8D0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22D6CF2EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22D6CC714(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22D6D02A4();
      goto LABEL_7;
    }

    sub_22D6CD854(v15, a4 & 1);
    v26 = sub_22D6CC714(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D72E100();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22D6CF93C(v12, a2, a3, a1, v18);
}

unint64_t sub_22D6CF46C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D6CC78C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22D6CDBD4(v14, a3 & 1);
      result = sub_22D6CC78C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22D6D0524();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_22D6CF5B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D6CDE44(v16, a4 & 1);
      v11 = sub_22D6CC714(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D6D0680();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_22D6CF734(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22D72D7A0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_22D6CF7F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22D72D7A0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Alarm(0);
  result = sub_22D6D3C4C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_22D6CF8D0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22D6D5254(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22D6CF93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22D72E100();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_22D6CF9EC()
{
  v1 = v0;
  v35 = sub_22D72D7A0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2E0, &qword_22D730188);
  v3 = *v0;
  v4 = sub_22D72E880();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_22D6CFC78()
{
  v1 = v0;
  v2 = type metadata accessor for Alarm(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22D72D7A0();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  v5 = *v0;
  v6 = sub_22D72E880();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_22D6D56D8(*(v5 + 56) + v26, v35, type metadata accessor for Alarm);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_22D6D3C4C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22D6CFF90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF378, &qword_22D730220);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22D6D0100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22D6D5270(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22D6D5254(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22D6D02A4()
{
  v1 = v0;
  v35 = sub_22D72E100();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  v3 = *v0;
  v4 = sub_22D72E880();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_22D6D0524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B8, &qword_22D730268);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22D6D0680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B0, &qword_22D730260);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22D6D07F0(uint64_t *a1)
{
  v2 = *(type metadata accessor for Alarm(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22D6D39FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22D6D0898(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22D6D0898(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22D72E950();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Alarm(0);
        v6 = sub_22D72E540();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Alarm(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22D6D0BE4(v8, v9, a1, v4);
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
    return sub_22D6D09C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22D6D09C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for Alarm(0);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_22D6D56D8(v23, v17, type metadata accessor for Alarm);
      sub_22D6D56D8(v20, v13, type metadata accessor for Alarm);
      v24 = sub_22D717E28(v17, v13);
      sub_22D6D5740(v13, type metadata accessor for Alarm);
      result = sub_22D6D5740(v17, type metadata accessor for Alarm);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_22D6D3C4C(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22D6D3C4C(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D0BE4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v182 = a4;
  v183 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v193 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v192 = &v182 - v8;
  v9 = sub_22D72DCF0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v182 - v14;
  v16 = sub_22D72D730();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v187 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v182 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v211 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v214 = &v182 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v219 = &v182 - v28;
  MEMORY[0x28223BE20](v27);
  v218 = &v182 - v29;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF318, &qword_22D7301C0);
  MEMORY[0x28223BE20](v225);
  v233 = &v182 - v30;
  v229 = type metadata accessor for Alarm(0);
  v209 = *(v229 - 1);
  v31 = MEMORY[0x28223BE20](v229);
  v199 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v223 = &v182 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v228 = &v182 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v227 = &v182 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v208 = &v182 - v40;
  MEMORY[0x28223BE20](v39);
  v207 = &v182 - v41;
  v215 = a3;
  if (a3[1] < 1)
  {
    v44 = MEMORY[0x277D84F90];
    v48 = v186;
LABEL_146:
    v10 = *v183;
    if (!*v183)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v237 = v44;
      v177 = *(v44 + 2);
      if (v177 >= 2)
      {
        while (*v215)
        {
          v178 = *&v44[16 * v177];
          v179 = *&v44[16 * v177 + 24];
          sub_22D6D2424(*v215 + *(v209 + 72) * v178, *v215 + *(v209 + 72) * *&v44[16 * v177 + 16], *v215 + *(v209 + 72) * v179, v10);
          if (v48)
          {
          }

          if (v179 < v178)
          {
            goto LABEL_171;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_22D6D299C(v44);
          }

          if (v177 - 2 >= *(v44 + 2))
          {
            goto LABEL_172;
          }

          v180 = &v44[16 * v177];
          *v180 = v178;
          *(v180 + 1) = v179;
          v237 = v44;
          sub_22D6D2910(v177 - 1);
          v44 = v237;
          v177 = *(v237 + 2);
          if (v177 <= 1)
          {
          }
        }

        goto LABEL_182;
      }
    }

LABEL_178:
    v44 = sub_22D6D299C(v44);
    goto LABEL_148;
  }

  v42 = a3[1];
  v43 = 0;
  v224 = *MEMORY[0x277CB9910];
  v226 = *MEMORY[0x277CB9918];
  v216 = *MEMORY[0x277CB9908];
  v200 = (v10 + 48);
  v190 = (v10 + 32);
  v189 = (v10 + 8);
  v210 = (v17 + 48);
  v198 = (v17 + 32);
  v197 = (v17 + 8);
  v202 = *MEMORY[0x277CB9920];
  v191 = v9;
  v185 = v13;
  v184 = v15;
  v220 = v16;
  v206 = v21;
  v44 = MEMORY[0x277D84F90];
  v46 = v228;
  v45 = v229;
  v47 = v227;
  v48 = v186;
  while (1)
  {
    v49 = v43;
    v194 = v44;
    v188 = v43;
    if (v43 + 1 >= v42)
    {
      v60 = v43 + 1;
      v67 = v182;
    }

    else
    {
      v186 = v48;
      v217 = v42;
      v50 = *v215;
      v51 = *(v209 + 72);
      v10 = *v215 + v51 * (v43 + 1);
      v52 = v207;
      sub_22D6D56D8(v10, v207, type metadata accessor for Alarm);
      v53 = v208;
      sub_22D6D56D8(v50 + v51 * v43, v208, type metadata accessor for Alarm);
      v54 = sub_22D717E28(v52, v53);
      sub_22D6D5740(v53, type metadata accessor for Alarm);
      sub_22D6D5740(v52, type metadata accessor for Alarm);
      v55 = v43 + 2;
      v56 = v50 + v51 * (v43 + 2);
      while (v217 != v55)
      {
        v57 = v207;
        sub_22D6D56D8(v56, v207, type metadata accessor for Alarm);
        v58 = v208;
        sub_22D6D56D8(v10, v208, type metadata accessor for Alarm);
        v59 = sub_22D717E28(v57, v58) & 1;
        sub_22D6D5740(v58, type metadata accessor for Alarm);
        sub_22D6D5740(v57, type metadata accessor for Alarm);
        ++v55;
        v56 += v51;
        v10 += v51;
        if ((v54 & 1) != v59)
        {
          v217 = v55 - 1;
          break;
        }
      }

      v47 = v227;
      v46 = v228;
      v48 = v186;
      if (v54)
      {
        v60 = v217;
        v49 = v188;
        v44 = v194;
        if (v217 < v188)
        {
          goto LABEL_175;
        }

        if (v188 >= v217)
        {
          v67 = v182;
          v45 = v229;
        }

        else
        {
          v61 = v217;
          v62 = v51 * (v217 - 1);
          v63 = v217 * v51;
          v64 = v188;
          v65 = v188 * v51;
          do
          {
            if (v64 != --v61)
            {
              v66 = *v215;
              if (!*v215)
              {
                goto LABEL_181;
              }

              v10 = v66 + v65;
              sub_22D6D3C4C(v66 + v65, v199);
              if (v65 < v62 || v10 >= v66 + v63)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v65 != v62)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22D6D3C4C(v199, v66 + v62);
              v44 = v194;
            }

            ++v64;
            v62 -= v51;
            v63 -= v51;
            v65 += v51;
          }

          while (v64 < v61);
          v67 = v182;
          v46 = v228;
          v45 = v229;
          v47 = v227;
          v60 = v217;
          v49 = v188;
          v48 = v186;
        }
      }

      else
      {
        v67 = v182;
        v44 = v194;
        v45 = v229;
        v60 = v217;
        v49 = v188;
      }
    }

    v68 = v215[1];
    if (v60 >= v68)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v60, v49))
    {
      goto LABEL_174;
    }

    if (v60 - v49 >= v67)
    {
LABEL_35:
      v43 = v60;
      if (v60 < v49)
      {
        goto LABEL_173;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v49, v67))
    {
      goto LABEL_176;
    }

    if (v49 + v67 >= v68)
    {
      v69 = v215[1];
    }

    else
    {
      v69 = v49 + v67;
    }

    if (v69 < v49)
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v60 == v69)
    {
      goto LABEL_35;
    }

    v186 = v48;
    v116 = *v215;
    v117 = *(v209 + 72);
    v118 = *v215 + v117 * (v60 - 1);
    v221 = -v117;
    v222 = v116;
    v119 = v49 - v60;
    v195 = v117;
    v10 = v116 + v60 * v117;
    v196 = v69;
LABEL_89:
    v217 = v60;
    v203 = v10;
    v204 = v119;
    v120 = v119;
    v205 = v118;
LABEL_90:
    v231 = v120;
    v232 = v10;
    sub_22D6D56D8(v10, v47, type metadata accessor for Alarm);
    sub_22D6D56D8(v118, v46, type metadata accessor for Alarm);
    v121 = v45[11];
    v122 = *(v225 + 48);
    v123 = sub_22D72DD20();
    v124 = *(v123 - 8);
    v125 = *(v124 + 16);
    v126 = v233;
    v125(v233, v47 + v121, v123);
    v125(&v126[v122], v46 + v121, v123);
    v127 = v122;
    v230 = v124;
    v128 = *(v124 + 88);
    LODWORD(v121) = v128(v126, v123);
    v129 = v128(&v126[v122], v123);
    if (v121 == v224)
    {
      v45 = v229;
      v47 = v227;
      if (v129 != v224)
      {
        goto LABEL_118;
      }

      v46 = v228;
      v130 = sub_22D72D6C0();
      goto LABEL_132;
    }

    v131 = v226;
    if (v129 == v226)
    {
      v132 = v233;
      v133 = v128(v233, v123) == v131;
      v45 = v229;
      v47 = v227;
      if (v133)
      {
        v236 = 0;
        v234 = 0u;
        v235 = 0u;
        v212 = v229[14];
        v134 = v218;
        sub_22D713738(&v234, &v227[v212], v218);
        sub_22D6D5984(&v234, &qword_27D9FF500, &qword_22D730530);
        v236 = 0;
        v234 = 0u;
        v235 = 0u;
        v213 = v45[14];
        sub_22D713738(&v234, v228 + v213, v219);
        sub_22D6D5984(&v234, &qword_27D9FF500, &qword_22D730530);
        v135 = v214;
        sub_22D6D5A4C(v134, v214, &qword_27D9FFDD0, &qword_22D730140);
        v136 = *v210;
        v137 = (*v210)(v135, 1, v220);
        v138 = v135;
        v139 = v211;
        if (v137 != 1)
        {
          v140 = v220;
          v201 = *v198;
          v201(v206, v214, v220);
          sub_22D6D5A4C(v219, v139, &qword_27D9FFDD0, &qword_22D730140);
          if (v136(v139, 1, v140) != 1)
          {
            v157 = v187;
            v158 = v220;
            v201(v187, v211, v220);
            v159 = v206;
            v130 = sub_22D72D6D0();
            v160 = v157;
            v161 = *v197;
            (*v197)(v160, v158);
            v161(v159, v158);
            sub_22D6D5984(v218, &qword_27D9FFDD0, &qword_22D730140);
            sub_22D6D5984(v219, &qword_27D9FFDD0, &qword_22D730140);
            (*(v230 + 8))(&v233[v127], v123);
            v46 = v228;
            v45 = v229;
            goto LABEL_132;
          }

          (*v197)(v206, v220);
          v138 = v139;
          v134 = v218;
        }

        sub_22D6D5984(v138, &qword_27D9FFDD0, &qword_22D730140);
        v141 = v220;
        v142 = v136(v134, 1, v220);
        v143 = v219;
        if (v142 != 1 && v136(v219, 1, v141) == 1)
        {
          sub_22D6D5984(v218, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v143, &qword_27D9FFDD0, &qword_22D730140);
          v45 = v229;
LABEL_118:
          (*(v230 + 8))(&v233[v127], v123);
          v46 = v228;
          sub_22D6D5740(v228, type metadata accessor for Alarm);
          sub_22D6D5740(v47, type metadata accessor for Alarm);
          v156 = v232;
          goto LABEL_133;
        }

        if (v136(v143, 1, v141) != 1)
        {
          sub_22D6D5984(v218, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v143, &qword_27D9FFDD0, &qword_22D730140);
          (*(v230 + 8))(&v233[v127], v123);
          v46 = v228;
          v45 = v229;
          goto LABEL_87;
        }

        v46 = v228;
        v130 = sub_22D72D6C0();
        sub_22D6D5984(v218, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v143, &qword_27D9FFDD0, &qword_22D730140);
        (*(v230 + 8))(&v233[v127], v123);
        v45 = v229;
        goto LABEL_132;
      }
    }

    else
    {
      v132 = v233;
      v45 = v229;
      v47 = v227;
      if (v129 == v224)
      {
        goto LABEL_139;
      }
    }

    v144 = v128(v132, v123);
    if (v144 == v226)
    {
      goto LABEL_118;
    }

    v132 = v233;
    v145 = v128(&v233[v122], v123);
    if (v145 == v226)
    {
      goto LABEL_139;
    }

    v146 = v216;
    if (v145 == v216 && v128(v132, v123) == v146)
    {
      break;
    }

    v133 = v128(v132, v123) == v146;
    v45 = v229;
    if (v133)
    {
      goto LABEL_118;
    }

    v132 = v233;
    v151 = v128(&v233[v122], v123);
    if (v151 == v202)
    {
      v152 = v202;
      v133 = v128(v132, v123) == v152;
      v45 = v229;
      if (!v133)
      {
        goto LABEL_117;
      }

      v46 = v228;
      v153 = sub_22D72D6C0();
      v154 = v132;
      v130 = v153;
      (*(v230 + 8))(&v154[v122], v123);
      goto LABEL_132;
    }

    if (v151 == v216)
    {
LABEL_139:
      v174 = *(v230 + 8);
      v174(&v132[v127], v123);
      v174(v132, v123);
    }

    else
    {
LABEL_117:
      v155 = v128(v132, v123);
      if (v155 == v202)
      {
        goto LABEL_118;
      }

      v175 = v233;
      v176 = v128(&v233[v127], v123);
      if (v176 != v202)
      {
        goto LABEL_185;
      }

      (*(v230 + 8))(v175, v123);
    }

    v46 = v228;
LABEL_87:
    sub_22D6D5740(v46, type metadata accessor for Alarm);
    sub_22D6D5740(v47, type metadata accessor for Alarm);
LABEL_88:
    v60 = v217 + 1;
    v118 = v205 + v195;
    v119 = v204 - 1;
    v10 = v203 + v195;
    v43 = v196;
    if (v217 + 1 != v196)
    {
      goto LABEL_89;
    }

    v48 = v186;
    v44 = v194;
    if (v196 < v188)
    {
      goto LABEL_173;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_22D6CBA4C(0, *(v44 + 2) + 1, 1, v44);
    }

    v71 = *(v44 + 2);
    v70 = *(v44 + 3);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v44 = sub_22D6CBA4C((v70 > 1), v71 + 1, 1, v44);
    }

    *(v44 + 2) = v72;
    v73 = &v44[16 * v71];
    *(v73 + 4) = v188;
    *(v73 + 5) = v43;
    v10 = *v183;
    if (!*v183)
    {
      goto LABEL_183;
    }

    if (v71)
    {
      while (2)
      {
        v74 = v72 - 1;
        if (v72 >= 4)
        {
          v79 = &v44[16 * v72 + 32];
          v80 = *(v79 - 64);
          v81 = *(v79 - 56);
          v85 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          if (v85)
          {
            goto LABEL_160;
          }

          v84 = *(v79 - 48);
          v83 = *(v79 - 40);
          v85 = __OFSUB__(v83, v84);
          v77 = v83 - v84;
          v78 = v85;
          if (v85)
          {
            goto LABEL_161;
          }

          v86 = &v44[16 * v72];
          v88 = *v86;
          v87 = *(v86 + 1);
          v85 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v85)
          {
            goto LABEL_163;
          }

          v85 = __OFADD__(v77, v89);
          v90 = v77 + v89;
          if (v85)
          {
            goto LABEL_166;
          }

          if (v90 >= v82)
          {
            v108 = &v44[16 * v74 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v85 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v85)
            {
              goto LABEL_170;
            }

            if (v77 < v111)
            {
              v74 = v72 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v78)
            {
              goto LABEL_162;
            }

            v91 = &v44[16 * v72];
            v93 = *v91;
            v92 = *(v91 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_165;
            }

            v97 = &v44[16 * v74 + 32];
            v99 = *v97;
            v98 = *(v97 + 1);
            v85 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v85)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v95, v100))
            {
              goto LABEL_169;
            }

            if (v95 + v100 < v77)
            {
              goto LABEL_69;
            }

            if (v77 < v100)
            {
              v74 = v72 - 2;
            }
          }
        }

        else
        {
          if (v72 == 3)
          {
            v75 = *(v44 + 4);
            v76 = *(v44 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
            goto LABEL_55;
          }

          v101 = &v44[16 * v72];
          v103 = *v101;
          v102 = *(v101 + 1);
          v85 = __OFSUB__(v102, v103);
          v95 = v102 - v103;
          v96 = v85;
LABEL_69:
          if (v96)
          {
            goto LABEL_164;
          }

          v104 = &v44[16 * v74];
          v106 = *(v104 + 4);
          v105 = *(v104 + 5);
          v85 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v85)
          {
            goto LABEL_167;
          }

          if (v107 < v95)
          {
            break;
          }
        }

        v112 = v74 - 1;
        if (v74 - 1 >= v72)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
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
          goto LABEL_177;
        }

        if (!*v215)
        {
          goto LABEL_180;
        }

        v113 = *&v44[16 * v112 + 32];
        v114 = *&v44[16 * v74 + 40];
        sub_22D6D2424(*v215 + *(v209 + 72) * v113, *v215 + *(v209 + 72) * *&v44[16 * v74 + 32], *v215 + *(v209 + 72) * v114, v10);
        if (v48)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_22D6D299C(v44);
        }

        if (v112 >= *(v44 + 2))
        {
          goto LABEL_159;
        }

        v115 = &v44[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v237 = v44;
        sub_22D6D2910(v74);
        v44 = v237;
        v72 = *(v237 + 2);
        v45 = v229;
        v47 = v227;
        if (v72 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v42 = v215[1];
    if (v43 >= v42)
    {
      goto LABEL_146;
    }
  }

  v147 = v192;
  sub_22D6D5A4C(v47 + v229[9], v192, &qword_27D9FF310, &qword_22D7301B8);
  v148 = v191;
  v212 = *v200;
  if ((v212)(v147, 1, v191) == 1)
  {
    sub_22D6D5984(v147, &qword_27D9FF310, &qword_22D7301B8);
    LODWORD(v213) = 1;
    v149 = 0.0;
    v150 = v193;
  }

  else
  {
    v162 = v184;
    (*v190)(v184, v147, v148);
    if (*(v47 + v229[7]))
    {
      v163 = sub_22D72DCE0();
    }

    else
    {
      v163 = sub_22D72DCD0();
    }

    v165 = *&v163;
    LODWORD(v213) = v164;
    (*v189)(v162, v148);
    v149 = v165;
    v150 = v193;
  }

  v45 = v229;
  sub_22D6D5A4C(v228 + v229[9], v150, &qword_27D9FF310, &qword_22D7301B8);
  if ((v212)(v150, 1, v148) == 1)
  {
    sub_22D6D5984(v150, &qword_27D9FF310, &qword_22D7301B8);
    if ((v213 & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_131:
    v46 = v228;
    v130 = sub_22D72D6C0();
    (*(v230 + 8))(&v233[v127], v123);
    goto LABEL_132;
  }

  v166 = v185;
  (*v190)(v185, v150, v148);
  if (*(v228 + v45[7]))
  {
    *&v167 = COERCE_DOUBLE(sub_22D72DCE0());
  }

  else
  {
    *&v167 = COERCE_DOUBLE(sub_22D72DCD0());
  }

  v169 = *&v167;
  v170 = v168;
  (*v189)(v166, v148);
  if (v213)
  {
    goto LABEL_131;
  }

  if (v170)
  {
    goto LABEL_118;
  }

  v130 = v149 < v169;
  (*(v230 + 8))(&v233[v127], v123);
  v46 = v228;
LABEL_132:
  sub_22D6D5740(v46, type metadata accessor for Alarm);
  sub_22D6D5740(v47, type metadata accessor for Alarm);
  v156 = v232;
  if ((v130 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_133:
  v171 = v231;
  if (v222)
  {
    v172 = v223;
    sub_22D6D3C4C(v156, v223);
    swift_arrayInitWithTakeFrontToBack();
    sub_22D6D3C4C(v172, v118);
    v118 += v221;
    v10 = v156 + v221;
    v173 = __CFADD__(v171, 1);
    v120 = v171 + 1;
    if (v173)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
  result = sub_22D72E970();
  __break(1u);
  return result;
}