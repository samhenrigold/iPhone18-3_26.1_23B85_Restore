void sub_217441930(unint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v26 = a5;
  v27 = a3;
  v15 = sub_217751428();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
LABEL_6:
    v19 = a1;
    v20 = a6;
    v21 = a7;
    v22 = v9;
    goto LABEL_7;
  }

  if (a4 != 1)
  {
    if (a2 == 1)
    {
      sub_2177513F8();
      sub_21770B7A4();
      v23 = *(*v8 + 16);
      sub_21770BAD4(v23);
      v25 = v9;
      v24 = *v8;
      *(v24 + 16) = v23 + 1;
      (*(v16 + 16))(v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v18, v15);
      *v8 = v24;
      sub_217484530(a1, a6, a7, v25, v27, a4, v26 & 1);
      (*(v16 + 8))(v18, v15);
      return;
    }

    goto LABEL_6;
  }

  v19 = a1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_7:

  sub_217484530(v19, v20, v21, v22, 0, 0, 0);
}

uint64_t sub_217441D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1348();
  sub_217752AA8();

  OUTLINED_FUNCTION_1437();
  v13[0] = v6 | 0x6C2F656D00000000;
  v13[1] = 0xEF2F797261726269;
  v7 = OUTLINED_FUNCTION_13_2();
  MEMORY[0x21CEA23B0](v7);
  sub_2172CA838(a4, v13);
  sub_217751DE8();
  v8 = OUTLINED_FUNCTION_154();
  return sub_2173B6DA4(v8, v9, v4, 1, v10, v11);
}

uint64_t sub_217441DD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_217752AA8();

  OUTLINED_FUNCTION_1437();
  v19 = v10 | 0x7469646500000000;
  v20 = 0xEE002F6C6169726FLL;
  v11 = OUTLINED_FUNCTION_86();
  MEMORY[0x21CEA23B0](v11);
  v21 = v19;
  v22 = 0xEE002F6C6169726FLL;
  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v19 = 47;
    v20 = 0xE100000000000000;
    v13 = OUTLINED_FUNCTION_25_0();
    MEMORY[0x21CEA23B0](v13);
    MEMORY[0x21CEA23B0](47, 0xE100000000000000);
  }

  sub_2172CA838(a6, &v19);
  sub_217751DE8();
  v14 = OUTLINED_FUNCTION_177();
  return sub_2173B6DA4(v14, v15, a5, 1, v16, v17);
}

void sub_217441EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_1383();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  a15 = 44;
  a16 = 0xE100000000000000;
  a13 = &a15;
  sub_217751DE8();
  sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, v31, &a11, v35, v33, v42);
  v48 = v47;
  v49 = *(v47 + 16);
  if (v49)
  {
    v65 = v39;
    v66 = v37;
    a15 = MEMORY[0x277D84F90];
    sub_217275C90(0, v49, 0, v43, v44, v45, v46);
    v50 = 0;
    v51 = a15;
    v52 = v48 + 56;
    while (v50 < *(v48 + 16))
    {
      sub_217751DE8();
      OUTLINED_FUNCTION_82_4();
      v53 = MEMORY[0x21CEA2320]();
      v55 = v54;

      a15 = v51;
      v61 = *(v51 + 16);
      v60 = *(v51 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_217275C90(v60 > 1, v61 + 1, 1, v56, v57, v58, v59);
        v51 = a15;
      }

      ++v50;
      *(v51 + 16) = v61 + 1;
      v62 = v51 + 16 * v61;
      *(v62 + 32) = v53;
      *(v62 + 40) = v55;
      v52 += 32;
      if (v49 == v50)
      {

        v39 = v65;
        v37 = v66;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    sub_2172C3424();
    *v41 = v39;
    v41[1] = v37;
    v41[2] = v63;
    v41[3] = v64;
    v41[4] = 0;
    v41[5] = 0;
    v41[6] = 0x4000000000000000;
    sub_217751DE8();
    OUTLINED_FUNCTION_1381();
  }
}

uint64_t sub_217442084()
{
  switch(*(v0 + 48) >> 62)
  {
    case 2:
      sub_2172C3424();
      break;
    case 3:
      v1 = sub_217751DE8();
      sub_217442118(v1);
      break;
    default:

      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_217442118(uint64_t a1)
{
  v7[5] = a1;
  sub_217751DE8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27770, &qword_21776B1D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27778, &unk_21776B1E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v2 = sub_217751DE8();
    sub_217497D90(v2);
    OUTLINED_FUNCTION_44_1();

    v3 = OUTLINED_FUNCTION_11_19();
    sub_2172C9CEC(v1, 0, 1, v3);
    v4 = *(v1 + 16);

    if (v4 <= 0xF)
    {
    }
  }

  else
  {
    v7[0] = 0;
    v7[1] = MEMORY[0x277D84F90];
    sub_217497354(0, 0, sub_217545658, sub_2172C9C58, sub_2172CB704);
    v5 = OUTLINED_FUNCTION_11_7();
    sub_2174926AC(v5);
  }

  return OUTLINED_FUNCTION_727();
}

uint64_t sub_2174424E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217442504()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217283BAC(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&dword_21776B3A8);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_2174425E4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174426DC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D10, &qword_21776BAC8);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217442744()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D10, &qword_21776BAC8);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174427AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 161) = a3;
  *(v4 + 168) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174427C8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1356();
  sub_21729C6EC(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444C90(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v0, v18);
  OUTLINED_FUNCTION_9_14(&unk_21776B670);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v11;
  *v11 = v12;
  v11[1] = sub_2174428B4;
  OUTLINED_FUNCTION_413();

  return v13();
}

uint64_t sub_2174428B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174429AC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27A60, &qword_21776B678);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217442A14()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27A60, &qword_21776B678);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217442A80(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217442A9C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217283C68(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776BEC8);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217442B7C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217442C74()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27F90, &qword_21776BED0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217442CDC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27F90, &qword_21776BED0);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217442D44(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217442D60()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217283AFC(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&dword_21776B248);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217442E40()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217442F38()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB26A08, &qword_21776B250);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217442FA0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB26A08, &qword_21776B250);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217443008(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217443024()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_21725CF0C(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&dword_21776AFF8);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217443104()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174431FC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB26A10, &qword_21776B000);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217443264()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB26A10, &qword_21776B000);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174432CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174432E8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217284130(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776B978);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_2174433C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174434C0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27C50, &qword_21776B980);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217443528()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27C50, &qword_21776B980);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217443590(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 161) = a3;
  *(v4 + 168) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174435AC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1356();
  sub_217275710(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444C90(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v0, v18);
  OUTLINED_FUNCTION_9_14(&unk_21776BC10);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v11;
  *v11 = v12;
  v11[1] = sub_217443698;
  OUTLINED_FUNCTION_413();

  return v13();
}

uint64_t sub_217443698()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217443790()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27DD8, &qword_21776BC18);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174437F8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27DD8, &qword_21776BC18);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217443864(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217443880()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_21725CF68(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776B7A0);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217443960()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217443A58()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27B20, &qword_21776B7A8);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217443AC0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27B20, &qword_21776B7A8);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217443B28(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217443B44()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217284288(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776C128);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217443C24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217443D1C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28110, &qword_21776C130);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217443D84()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28110, &qword_21776C130);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217443DEC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217443E08()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217283D6C(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776BFF8);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217443EE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217443FE0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28050, &qword_21776C000);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217444048()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28050, &qword_21776C000);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174440B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 161) = a3;
  *(v4 + 168) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174440CC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1356();
  sub_21729C79C(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444C90(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v0, v18);
  OUTLINED_FUNCTION_9_14(&unk_21776BAE0);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v11;
  *v11 = v12;
  v11[1] = sub_2174441B8;
  OUTLINED_FUNCTION_413();

  return v13();
}

uint64_t sub_2174441B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174442B0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D18, &qword_21776BAE8);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217444318()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D18, &qword_21776BAE8);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217444384(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174443A0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217275858(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776B500);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217444480()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217444578()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27980, &qword_21776B508);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174445E0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27980, &qword_21776B508);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217444648(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217444664()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_2172757C0(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776C260);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217444744()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744483C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB281F8, &qword_21776C268);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174448A4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB281F8, &qword_21776C268);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_21744490C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 200) = a3;
  *(v4 + 160) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217444928()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_598();
  sub_217284338(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_190_6();
  sub_217444E78(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19, v0, v20);
  OUTLINED_FUNCTION_9_14(&unk_21776BD68);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_429(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_134_7(v12);

  return v15(v14);
}

uint64_t sub_217444A08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217444B00()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27EA0, &qword_21776BD70);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217444B68()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB27EA0, &qword_21776BD70);
  OUTLINED_FUNCTION_434();

  return v1();
}

void sub_217444C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  OUTLINED_FUNCTION_1383();
  OUTLINED_FUNCTION_1173();
  v20();
  v21 = v18 & 1;
  *(v14 + 57) = v18 & 1;
  *(v14 + 58) = v17;
  v22 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v23 = v13(v15);
  v31 = v16;
  if (!v23)
  {
    a12 = v22;
    v16 = v22;
LABEL_27:
    v31(a9);

    *(v14 + 64) = v16;
    *(v14 + 72) = a12;
    *(v14 + 80) = v22;
    OUTLINED_FUNCTION_1381();
    return;
  }

  v24 = v23;
  if (v23 >= 1)
  {
    OUTLINED_FUNCTION_1394();
    do
    {
      if (v14)
      {
        v25 = MEMORY[0x21CEA2E30](v18, v15);
      }

      else
      {
        v25 = *(a13 + 8 * v18);
      }

      v26 = *(*(v25 + 96) + 16);
      if (v21)
      {
        while (v26)
        {
          OUTLINED_FUNCTION_1474();
          if (v28)
          {
            goto LABEL_13;
          }
        }

        if (*(v25 + 64) < 2u || *(v25 + 48) ^ 1 | *(v25 + 56))
        {
LABEL_21:
          MEMORY[0x21CEA25D0]();
          OUTLINED_FUNCTION_861();
          if (v30)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_178_0();
          sub_217752378();
          v16 = v34;
        }

        else
        {
          MEMORY[0x21CEA25D0]();
          OUTLINED_FUNCTION_861();
          if (v30)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_178_0();
          sub_217752378();
          a12 = v33;
        }
      }

      else
      {
        while (v26)
        {
          OUTLINED_FUNCTION_1474();
          if ((v27 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_13:
        MEMORY[0x21CEA25D0]();
        OUTLINED_FUNCTION_861();
        if (v30)
        {
          OUTLINED_FUNCTION_1507(v29 > 1, v19 + 1);
        }

        OUTLINED_FUNCTION_178_0();
        sub_217752378();
        v22 = v32;
      }

      ++v18;
    }

    while (v18 != v24);
    goto LABEL_27;
  }

  __break(1u);
}

void sub_217444E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  OUTLINED_FUNCTION_1383();
  OUTLINED_FUNCTION_1173();
  v20();
  v21 = v18 & 1;
  *(v14 + 56) = v18 & 1;
  *(v14 + 57) = v17;
  v22 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v23 = v13(v15);
  v31 = v16;
  if (!v23)
  {
    a12 = v22;
    v16 = v22;
LABEL_27:
    v31(a9);

    *(v14 + 64) = v16;
    *(v14 + 72) = a12;
    *(v14 + 80) = v22;
    OUTLINED_FUNCTION_1381();
    return;
  }

  v24 = v23;
  if (v23 >= 1)
  {
    OUTLINED_FUNCTION_1394();
    do
    {
      if (v14)
      {
        v25 = MEMORY[0x21CEA2E30](v18, v15);
      }

      else
      {
        v25 = *(a13 + 8 * v18);
      }

      v26 = *(*(v25 + 96) + 16);
      if (v21)
      {
        while (v26)
        {
          OUTLINED_FUNCTION_1474();
          if (v28)
          {
            goto LABEL_13;
          }
        }

        if (*(v25 + 64) < 2u || *(v25 + 48) ^ 1 | *(v25 + 56))
        {
LABEL_21:
          MEMORY[0x21CEA25D0]();
          OUTLINED_FUNCTION_861();
          if (v30)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_178_0();
          sub_217752378();
          v16 = v34;
        }

        else
        {
          MEMORY[0x21CEA25D0]();
          OUTLINED_FUNCTION_861();
          if (v30)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_178_0();
          sub_217752378();
          a12 = v33;
        }
      }

      else
      {
        while (v26)
        {
          OUTLINED_FUNCTION_1474();
          if ((v27 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_13:
        MEMORY[0x21CEA25D0]();
        OUTLINED_FUNCTION_861();
        if (v30)
        {
          OUTLINED_FUNCTION_1507(v29 > 1, v19 + 1);
        }

        OUTLINED_FUNCTION_178_0();
        sub_217752378();
        v22 = v32;
      }

      ++v18;
    }

    while (v18 != v24);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_217445060(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2174452CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217445540()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_2174455B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174458A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_217445918(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return MEMORY[0x2822009F8](sub_21744593C, 0, 0);
}

uint64_t sub_21744593C()
{
  OUTLINED_FUNCTION_184_0();
  v2.n128_f64[0] = OUTLINED_FUNCTION_322();
  v3 = OUTLINED_FUNCTION_565(v2);
  if (sub_217204DD0(v3) || (v4 = OUTLINED_FUNCTION_1354(), sub_217204DD0(v4)))
  {
    OUTLINED_FUNCTION_1353();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 592) = v5;
    *v5 = v6;
    v5[1] = sub_217445EB8;
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_1242();

    return sub_217451CC8(v7, v8, v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_1010();
    if (!sub_217204DD0(v12))
    {
      v18 = OUTLINED_FUNCTION_1136();
      sub_21729C6EC(v18, v19);
      v20 = OUTLINED_FUNCTION_727();
      sub_2171F0688(v20, v21, v22, v23);
      OUTLINED_FUNCTION_1135();
      if (!v24)
      {
        OUTLINED_FUNCTION_564();
        sub_2174621F8(v25, v26);
      }

      sub_2171F0790(v0, &qword_27CB245B8, &qword_217758AE0);
      v27 = OUTLINED_FUNCTION_145_0();
      sub_2171F0688(v27, v28, v29, v30);
      OUTLINED_FUNCTION_1134();
      if (!v24)
      {
        OUTLINED_FUNCTION_697();
        v31 = sub_217751DE8();
        sub_217543FB4(v31);
        v40 = OUTLINED_FUNCTION_1003(v32, v33, v34, v35, v36, v37, v38, v39, v52, v53);
        sub_2174621F8(v40, v41);
      }

      v42 = OUTLINED_FUNCTION_345();
      sub_2171F0790(v42, v43, v44);
      v45 = OUTLINED_FUNCTION_93();
      sub_2171F0790(v45, v46, &qword_217758AE0);
      OUTLINED_FUNCTION_149_0();
      sub_2171F0790(v47, v48, v49);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_1242();

      __asm { BRAA            X1, X16 }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 568) = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_603(v13);
    OUTLINED_FUNCTION_1242();

    return sub_21745FDAC(v15, v16);
  }
}

uint64_t sub_217445BC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217445E3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217445EB8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174461AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217446228(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_217446248, 0, 0);
}

uint64_t sub_2174464A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217446714()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_21744678C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217446A74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_217446AEC(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217446D58()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217446FCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_217447044()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744732C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_2174473A4(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217447610()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217447884()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_2174478FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217447BE4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_217447C5C(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_217447C7C, 0, 0);
}

uint64_t sub_217447ED4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217448148()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_2174481C0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174484A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_217448520(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return MEMORY[0x2822009F8](sub_217448544, 0, 0);
}

uint64_t sub_217448544()
{
  OUTLINED_FUNCTION_184_0();
  v4.n128_f64[0] = OUTLINED_FUNCTION_322();
  v5 = OUTLINED_FUNCTION_565(v4);
  if (sub_217204DD0(v5) || (v6 = OUTLINED_FUNCTION_1354(), sub_217204DD0(v6)))
  {
    OUTLINED_FUNCTION_1353();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 592) = v7;
    *v7 = v8;
    v7[1] = sub_217448AC0;
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_1242();

    return sub_2174570B8(v9, v10, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_1010();
    if (!sub_217204DD0(v14))
    {
      v20 = OUTLINED_FUNCTION_1136();
      sub_217275710(v20, v21);
      v22 = OUTLINED_FUNCTION_727();
      sub_2171F0688(v22, v23, v24, v25);
      OUTLINED_FUNCTION_1135();
      if (v26)
      {
        sub_2171F0790(v0, &unk_27CB28AA0, &qword_21775A020);
      }

      else
      {
        OUTLINED_FUNCTION_564();
        sub_217462F4C(v27, v28, v29);
        sub_21727576C(v2);
        v30 = sub_21727576C(v3);
        v38 = OUTLINED_FUNCTION_732(v30, v31, v32, v33, v34, v35, v36, v37, v88, v91);
        OUTLINED_FUNCTION_1009(v38, v47, v39, v40, v41, v42, v43, v44, v45, v46, v89, v92, v93, v94, *(&v94 + 1), *v95, *&v95[16], v95[24]);
      }

      v48 = OUTLINED_FUNCTION_145_0();
      sub_2171F0688(v48, v49, v50, v51);
      OUTLINED_FUNCTION_1134();
      if (v26)
      {
        v78 = OUTLINED_FUNCTION_345();
        sub_2171F0790(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_93();
        sub_2171F0790(v81, v82, &qword_21775A020);
        OUTLINED_FUNCTION_149_0();
        sub_2171F0790(v83, v84, v85);
      }

      else
      {
        OUTLINED_FUNCTION_697();
        v52 = sub_217751DE8();
        sub_2175440F4(v52);
        v61 = OUTLINED_FUNCTION_1003(v53, v54, v55, v56, v57, v58, v59, v60, v88, v91);
        sub_217462F4C(v61, v62, v63);

        sub_21727576C(v3);
        sub_21727576C(v2);
        v64 = OUTLINED_FUNCTION_727();
        sub_2171F0790(v64, v65, &qword_21775A020);
        v66 = OUTLINED_FUNCTION_93();
        v68 = sub_2171F0790(v66, v67, &qword_21775A020);
        OUTLINED_FUNCTION_125_6(v68, v69, v70, v71, v72, v73, v74, v75, v76, v90, v91, v94, v77);
        *(v2 + 41) = *&v95[9];
      }

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_1242();

      __asm { BRAA            X1, X16 }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 568) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_603(v15);
    OUTLINED_FUNCTION_1242();

    return sub_217460A80(v17, v18);
  }
}

uint64_t sub_2174487C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217448A44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217448AC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217448DB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217448E30(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_217448E50, 0, 0);
}

uint64_t sub_2174490A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744931C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_217449394()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744967C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_2174496F4(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_217449714, 0, 0);
}

uint64_t sub_21744996C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217449BE0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_217449C58()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217449F40()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_217449FB8(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_217449FD8, 0, 0);
}

uint64_t sub_21744A230()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744A4A4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_21744A51C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744A804()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_21744A87C(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return MEMORY[0x2822009F8](sub_21744A8A0, 0, 0);
}

uint64_t sub_21744A8A0()
{
  OUTLINED_FUNCTION_184_0();
  v4.n128_f64[0] = OUTLINED_FUNCTION_322();
  v5 = OUTLINED_FUNCTION_565(v4);
  if (sub_217204DD0(v5) || (v6 = OUTLINED_FUNCTION_1354(), sub_217204DD0(v6)))
  {
    OUTLINED_FUNCTION_1353();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 592) = v7;
    *v7 = v8;
    v7[1] = sub_21744AE1C;
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_1242();

    return sub_21745B2D8(v9, v10, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_1010();
    if (!sub_217204DD0(v14))
    {
      v20 = OUTLINED_FUNCTION_1136();
      sub_21729C79C(v20, v21);
      v22 = OUTLINED_FUNCTION_727();
      sub_2171F0688(v22, v23, v24, v25);
      OUTLINED_FUNCTION_1135();
      if (v26)
      {
        sub_2171F0790(v0, &qword_27CB27D20, &qword_217758B80);
      }

      else
      {
        OUTLINED_FUNCTION_564();
        sub_217463AF4(v27, v28, v29);
        sub_21729C7F8(v2);
        v30 = sub_21729C7F8(v3);
        v38 = OUTLINED_FUNCTION_732(v30, v31, v32, v33, v34, v35, v36, v37, v88, v91);
        OUTLINED_FUNCTION_1009(v38, v47, v39, v40, v41, v42, v43, v44, v45, v46, v89, v92, v93, v94, *(&v94 + 1), *v95, *&v95[16], v95[24]);
      }

      v48 = OUTLINED_FUNCTION_145_0();
      sub_2171F0688(v48, v49, v50, v51);
      OUTLINED_FUNCTION_1134();
      if (v26)
      {
        v78 = OUTLINED_FUNCTION_345();
        sub_2171F0790(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_93();
        sub_2171F0790(v81, v82, &qword_217758B80);
        OUTLINED_FUNCTION_149_0();
        sub_2171F0790(v83, v84, v85);
      }

      else
      {
        OUTLINED_FUNCTION_697();
        v52 = sub_217751DE8();
        sub_2175441F4(v52);
        v61 = OUTLINED_FUNCTION_1003(v53, v54, v55, v56, v57, v58, v59, v60, v88, v91);
        sub_217463AF4(v61, v62, v63);

        sub_21729C7F8(v3);
        sub_21729C7F8(v2);
        v64 = OUTLINED_FUNCTION_727();
        sub_2171F0790(v64, v65, &qword_217758B80);
        v66 = OUTLINED_FUNCTION_93();
        v68 = sub_2171F0790(v66, v67, &qword_217758B80);
        OUTLINED_FUNCTION_125_6(v68, v69, v70, v71, v72, v73, v74, v75, v76, v90, v91, v94, v77);
        *(v2 + 41) = *&v95[9];
      }

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_1242();

      __asm { BRAA            X1, X16 }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 568) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_603(v15);
    OUTLINED_FUNCTION_1242();

    return sub_2174614C8(v17, v18);
  }
}

uint64_t sub_21744AB24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744ADA0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_21744AE1C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744B110()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_21744B18C(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_21744B1AC, 0, 0);
}

uint64_t sub_21744B404()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744B678()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_21744B6F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744B9D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_21744BA50(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_21744BA70, 0, 0);
}

uint64_t sub_21744BCC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744BF3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_21744BFB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744C29C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_21744C314(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](sub_21744C334, 0, 0);
}

uint64_t sub_21744C58C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744C800()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_592();

  return v6();
}

uint64_t sub_21744C878()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21744CB60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v0, v1, v2);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_591();

  return v6();
}

uint64_t sub_21744CBD8()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776C120);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CC6C()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BFF0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CD00()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BEC0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CD94()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&dword_21776AE10);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CE28()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BD60);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CEBC()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BC08);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CF50()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BAD8);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744CFE4()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776BAC0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D078()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776B970);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D10C()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776B798);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D1A0()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776B668);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D234()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776B4F8);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D2C8()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776B240);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

uint64_t sub_21744D35C()
{
  OUTLINED_FUNCTION_173_0();
  v7 = v0;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_9_14(&unk_21776AFF0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_131_8(v2);

  return v5(v4);
}

void sub_21744D3F0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = (a3 + 48);
  v9 = MEMORY[0x277D84F90];
  v22 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v10 = *v8;
    v11 = *(v8 - 1);
    v25 = *(v8 - 2);
    v26 = v11;
    v27 = v10;
    sub_217751DE8();
    v12 = v5(&v25);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v12)
    {
      v13 = v25;
      v14 = v26;
      v15 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172763CC(0, *(v9 + 16) + 1, 1);
        v9 = v28;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1222();
        sub_2172763CC(v19, v20, v21);
        v9 = v28;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 24 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      *(v18 + 48) = v15;
      v4 = a3;
      v7 = v22;
      v5 = a1;
    }

    else
    {
    }

    v8 += 24;
    ++v6;
  }

  __break(1u);
}

void sub_21744D578(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v4 >= *(v3 + 16))
  {
    *(a1 + 32) = 0;
    OUTLINED_FUNCTION_26_18();
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1[1];
  if (v4 >= *(v5 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5 + 24 * v4;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = *(v6 + 48);
  v10 = sub_217733524(v1[3], v3);
  v1[3] = v4 + 1;
  *a1 = v8;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;

  sub_217751DE8();
}

void sub_21744D630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB24550, &qword_217758A58);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276908(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276908(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_217733574(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492408();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &qword_27CB24550, &qword_217758A58);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744D7E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24560, &unk_2177A07F0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276928(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276928(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733588(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21749241C();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB24560, &unk_2177A07F0);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744D98C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB245B8, &qword_217758AE0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172769B4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172769B4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = (v14 + (v18 << 6));
    v20 = v27[0];
    v21 = v27[1];
    v22 = v28[0];
    *(v19 + 73) = *(v28 + 9);
    v19[3] = v21;
    v19[4] = v22;
    v19[2] = v20;
    *v13 = v14;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 56) = -2;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_21773359C(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492430();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + (v23 << 6) + 32, &qword_27CB245B8, &qword_217758AE0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744DB3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB245C8, &qword_217758AF0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172769D4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172769D4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 80 * v18 + 32), __src, 0x49uLL);
    *v13 = v14;
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 72) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_2177335B0(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492444();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 80 * v19 + 32, &qword_27CB245C8, &qword_217758AF0);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744DCE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB2AF60, &qword_217758C00);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172769F4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172769F4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_2177335C4(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492458();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB2AF60, &qword_217758C00);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744DE9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB246A8, &qword_217758C10);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276A14(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A14(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_21773360C(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21749246C();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB246A8, &qword_217758C10);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744E044(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB277F0, &unk_21775A2B0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276A34(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A34(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_217733654(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492480();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &qword_27CB277F0, &unk_21775A2B0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744E1F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB27880, &qword_21776B370);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276A54(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A54(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733668(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492494();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB27880, &qword_21776B370);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744E3A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB275E0, &qword_2177589D0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276A74(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A74(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_21773367C(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174924A8();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB275E0, &qword_2177589D0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744E554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_217498E14, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24508, &unk_2177589F0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276A94(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A94(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733690(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174924BC();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB24508, &unk_2177589F0);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744E6FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB27760, &unk_21775A2D0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276AB4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276AB4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_2177336A4(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174924D0();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB27760, &unk_21775A2D0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744E8B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24608, &qword_21776BA80);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276AD4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276AD4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_2177336B8(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174924E4();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB24608, &qword_21776BA80);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744EA58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB28AA0, &qword_21775A020);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276AF4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276AF4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = (v14 + (v18 << 6));
    v20 = v27[0];
    v21 = v27[1];
    v22 = v28[0];
    *(v19 + 73) = *(v28 + 9);
    v19[3] = v21;
    v19[4] = v22;
    v19[2] = v20;
    *v13 = v14;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 56) = -2;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_2177336CC(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174924F8();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + (v23 << 6) + 32, &unk_27CB28AA0, &qword_21775A020);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744EC08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24660, &qword_21776BD20);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276B14(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B14(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 80 * v18 + 32), __src, 0x49uLL);
    *v13 = v14;
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 72) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_21773371C(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21749250C();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 80 * v19 + 32, &qword_27CB24660, &qword_21776BD20);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744EDB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB2CD90, &unk_21775A2C0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276B34(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B34(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_217733764(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492520();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &qword_27CB2CD90, &unk_21775A2C0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744EF68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB245E8, &qword_21776B930);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276B54(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B54(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733778(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492534();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB245E8, &qword_21776B930);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744F110(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB246E8, &qword_21776C140);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276B74(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B74(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_21773378C(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492548();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &qword_27CB246E8, &qword_21776C140);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744F2C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB246F8, &qword_21776C210);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276B94(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B94(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_2177337A0(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21749255C();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB246F8, &qword_21776C210);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744F46C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB2AF80, &qword_217758C30);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276BB4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276BB4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_2177337B4(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492570();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB2AF80, &qword_217758C30);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744F620(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB246C8, &unk_217758C40);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276BD4(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276BD4(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_2177337C8(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492584();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB246C8, &unk_217758C40);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744F7C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB27D20, &qword_217758B80);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276C60(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276C60(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = (v14 + (v18 << 6));
    v20 = v27[0];
    v21 = v27[1];
    v22 = v28[0];
    *(v19 + 73) = *(v28 + 9);
    v19[3] = v21;
    v19[4] = v22;
    v19[2] = v20;
    *v13 = v14;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 56) = -2;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_2177337DC(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492598();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + (v23 << 6) + 32, &qword_27CB27D20, &qword_217758B80);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744F978(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB27DA0, &unk_217758B90);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276C80(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276C80(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 80 * v18 + 32), __src, 0x49uLL);
    *v13 = v14;
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 72) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_2177337F0(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174925AC();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 80 * v19 + 32, &qword_27CB27DA0, &unk_217758B90);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744FB24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB2ACC0, &qword_217758AA8);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276CA0(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276CA0(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_217733804(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174925C0();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB2ACC0, &qword_217758AA8);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_21744FCD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24598, &unk_2177A0800);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276CC0(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276CC0(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733818(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174925D4();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB24598, &unk_2177A0800);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21744FE80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &unk_27CB28A90, &qword_217758F90);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276CE0(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276CE0(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_21773382C(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174925E8();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &unk_27CB28A90, &qword_217758F90);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_217450034(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB28290, &qword_217758FA0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276D00(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276D00(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733840(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2174925FC();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB28290, &qword_217758FA0);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_2174501DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  v26[2] = v10;
  v26[3] = v9;
  v26[4] = v27;
  v11 = sub_2172CB6EC(sub_21749A890, v26, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, v27, &qword_27CB24678, &qword_217758BD0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276D20(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276D20(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 56 * v18;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    *(v19 + 80) = v28;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    *v13 = v14;
    *a4 = xmmword_2177586D0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  else
  {
    v23 = v11;
    v24 = v4[2];
    sub_217733854(v11, v24, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492610();
      v24 = v25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v24 + 16))
    {
      sub_21749A624(a1, v24 + 56 * v23 + 32, &qword_27CB24678, &qword_217758BD0);
      v4[2] = v24;
      return;
    }

    __break(1u);
  }
}

void sub_217450390(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __src[0] = a2;
  __src[1] = a3;
  v22[2] = v10;
  v22[3] = v9;
  v22[4] = __src;
  v11 = sub_2172CB6EC(sub_21749A890, v22, v9);
  if (v12)
  {
    sub_2172C98F0(a2, a3);
    sub_2171F0688(a1, __src, &qword_27CB24688, &qword_217758BE0);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217276D40(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276D40(v17 > 1, v18 + 1, 1);
      v14 = *v13;
    }

    *(v14 + 16) = v18 + 1;
    memcpy((v14 + 72 * v18 + 32), __src, 0x41uLL);
    *v13 = v14;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = -1;
  }

  else
  {
    v19 = v11;
    v20 = v4[2];
    sub_217733868(v11, v20, a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_217492624();
      v20 = v21;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *(v20 + 16))
    {
      sub_21749A624(a1, v20 + 72 * v19 + 32, &qword_27CB24688, &qword_217758BE0);
      v4[2] = v20;
      return;
    }

    __break(1u);
  }
}

void sub_21745055C()
{
  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  sub_217752D08();
  __break(1u);
}

void sub_2174505AC()
{
  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  sub_217752D08();
  __break(1u);
}

void sub_2174505FC()
{
  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  sub_217752D08();
  __break(1u);
}

void sub_2174506DC()
{
  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  sub_217752D08();
  __break(1u);
}

double sub_2174507E0()
{
  OUTLINED_FUNCTION_1095();
  if (v0)
  {
    v50 = v0;
    v51 = v1[5];
  }

  else
  {
    v7 = v1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v1[1];
    }

    if (v7 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v1;
    }

    v50 = v8;
    v51 = v9;
    sub_2171FB568(*v1, v7);
  }

  v10 = v1[2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v47 = v2;
    v48 = v4;
    *&v53 = MEMORY[0x277D84F90];
    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_1352();
    v46 = v6;
    (v6)(v12);
    v13 = v10 + 32;
    do
    {
      v5(v13, v57);
      HIBYTE(v58) = 0;
      OUTLINED_FUNCTION_1467();
      if (v22)
      {
        OUTLINED_FUNCTION_1222();
        v14 = v46();
      }

      v23 = OUTLINED_FUNCTION_1466(v14, v15, v16, v17, v18, v19, v20, v21, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, *v57);
      *(v24 + 74) = v58;
      *(v24 + 48) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = v23;
      v13 += 64;
      --v11;
    }

    while (v11);
    v2 = v47;
    v4 = v48;
  }

  else
  {
    sub_217751DE8();
  }

  sub_2171F0688(v3, &v53, &qword_27CB24188, &dword_217758930);
  if (v55)
  {

    sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
    v27 = sub_21733AB9C(v2);
    OUTLINED_FUNCTION_1396(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    sub_217450BF8(v2, v57);

    sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v2);
    if (v55)
    {
      sub_2171F0790(&v53, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v35 = sub_2171F0790(v1, v52, v4);
  *&result = OUTLINED_FUNCTION_1094(v35, v36, v37, v38, v39, v40, v41, v42, v43, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v44, *v57, v57[2]).n128_u64[0];
  return result;
}

double sub_2174509EC()
{
  OUTLINED_FUNCTION_1095();
  if (v0)
  {
    v50 = v0;
    v51 = v1[5];
  }

  else
  {
    v7 = v1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v1[1];
    }

    if (v7 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v1;
    }

    v50 = v8;
    v51 = v9;
    sub_2171FB568(*v1, v7);
  }

  v10 = v1[2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v47 = v2;
    v48 = v4;
    *&v53 = MEMORY[0x277D84F90];
    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_1352();
    v46 = v6;
    (v6)(v12);
    v13 = v10 + 32;
    do
    {
      v5(v13, v57);
      HIBYTE(v58) = 0;
      OUTLINED_FUNCTION_1467();
      if (v22)
      {
        OUTLINED_FUNCTION_1222();
        v14 = v46();
      }

      v23 = OUTLINED_FUNCTION_1466(v14, v15, v16, v17, v18, v19, v20, v21, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, *v57);
      *(v24 + 73) = v58;
      *(v24 + 48) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = v23;
      v13 += 56;
      --v11;
    }

    while (v11);
    v2 = v47;
    v4 = v48;
  }

  else
  {
    sub_217751DE8();
  }

  sub_2171F0688(v3, &v53, &qword_27CB24188, &dword_217758930);
  if (v55)
  {

    sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
    v27 = sub_21733AB9C(v2);
    OUTLINED_FUNCTION_1396(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    sub_217450BF8(v2, v57);

    sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v2);
    if (v55)
    {
      sub_2171F0790(&v53, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v35 = sub_2171F0790(v1, v52, v4);
  *&result = OUTLINED_FUNCTION_1094(v35, v36, v37, v38, v39, v40, v41, v42, v43, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v44, *v57, v57[2]).n128_u64[0];
  return result;
}

uint64_t sub_217450BF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = *(v2 + 56);
    sub_2172CA838(result, v19);
    *&v18 = v5;
    *(&v18 + 1) = v3;
    OUTLINED_FUNCTION_197();
    v6 = swift_allocObject();
    v14 = OUTLINED_FUNCTION_732(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    *(v15 + 16) = v14;
    *(v15 + 32) = v16;
    *(v15 + 48) = v19[1];
    *(v15 + 64) = v20;
    sub_217751DE8();
    result = sub_2171F0790(a2, &qword_27CB24188, &dword_217758930);
    *a2 = v6;
    *(a2 + 24) = &type metadata for MusicCatalogResourceIncrementalLoader;
    *(a2 + 32) = &off_2829650B8;
  }

  return result;
}

uint64_t sub_217450CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217450CE0, 0, 0);
}

uint64_t sub_217451494()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217451758()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB278E0, &qword_21776B428);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2174517E8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217451C38()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB278E0, &qword_21776B428);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217451CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[568] = v3;
  v4[567] = a3;
  v4[566] = a2;
  v4[565] = a1;
  return MEMORY[0x2822009F8](&sub_217451CF4, 0, 0);
}

uint64_t sub_2174527D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4560) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217452AF0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &qword_27CB27A80, &qword_21776B6B8);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217452B8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745309C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &qword_27CB27A80, &qword_21776B6B8);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217453138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217453164, 0, 0);
}

uint64_t sub_2174538B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217453B74()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB27FB0, &qword_21776BF10);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217453C04()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217454054()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB27FB0, &qword_21776BF10);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2174540E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217454110, 0, 0);
}

uint64_t sub_2174548C4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217454B88()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &qword_27CB27818, &qword_21776B2D0);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217454C18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217455068()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &qword_27CB27818, &qword_21776B2D0);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2174550F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217455124, 0, 0);
}

uint64_t sub_2174558D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217455B9C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB276A0, &qword_21776B108);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217455C2C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745607C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB276A0, &qword_21776B108);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217456138, 0, 0);
}

uint64_t sub_217456884()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217456B48()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &qword_27CB27C78, &qword_21776B9F8);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217456BD8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217457028()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &qword_27CB27C78, &qword_21776B9F8);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2174570B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[552] = v3;
  v4[551] = a3;
  v4[550] = a2;
  v4[549] = a1;
  return MEMORY[0x2822009F8](&sub_2174570E4, 0, 0);
}

uint64_t sub_217457AC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217457DD8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB27E00, &qword_21776BC90);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217457E74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4456) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217457F88()
{
  sub_21749A584(v2 + 3544, v2 + 2968, &unk_27CB28AA0, &qword_21775A020);
  sub_2171F0790(v2 + 2536, &unk_27CB27E00, &qword_21776BC90);
  if (*(v2 + 369))
  {
    if ((sub_217659BB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_1459();
      if (!v3)
      {
        sub_217275710(v2 + 2968, v2 + 3480);
        *(v2 + 3928) = &type metadata for Track;
        *(v2 + 3936) = &protocol witness table for Track;
        OUTLINED_FUNCTION_203_0();
        *(v2 + 3904) = swift_allocObject();
        v4 = OUTLINED_FUNCTION_1458();
        sub_217275710(v4, v5);
        __swift_project_boxed_opaque_existential_1((v2 + 3904), &type metadata for Track);
        Track.propertyProvider.getter();
        v1 = *(v2 + 3896);
        __swift_project_boxed_opaque_existential_1((v2 + 3864), *(v2 + 3888));
        v6 = OUTLINED_FUNCTION_115_6();
        v7(v6);
        sub_21727576C(v2 + 3480);
        v8 = sub_21729C644(v2 + 3864);
        OUTLINED_FUNCTION_962(v8, v9, v10, v11, v12, v13, v14, v15, v41, v43);
        __swift_destroy_boxed_opaque_existential_1((v2 + 3904));
        v0 = *(v2 + 2192);
        v16 = *(v2 + 2200);
        sub_217751DE8();
        sub_217269F50(v2 + 2176);
        if (v16)
        {
          v17 = *(v2 + 4408);
          OUTLINED_FUNCTION_733();
          OUTLINED_FUNCTION_742();
          sub_2173EB528(v18, v19, v20, v21, v22);
          sub_217751DE8();

          *(v2 + 2736) = v17;
          OUTLINED_FUNCTION_9_14(&unk_21776BC88);
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v2 + 4424) = v23;
          *v23 = v24;
          OUTLINED_FUNCTION_1393(v23);
          OUTLINED_FUNCTION_871();

          return v25();
        }
      }
    }
  }

  sub_2171F0688(v2 + 2968, v2 + 3160, &unk_27CB28AA0, &qword_21775A020);
  OUTLINED_FUNCTION_1281();
  if (v3)
  {
    v34 = v2 + 3160;
  }

  else
  {
    v0 = v2 + 3096;
    v1 = v2 + 3416;
    OUTLINED_FUNCTION_218_2();
    *(v2 + 3137) = *(v2 + 3201);
    v27 = OUTLINED_FUNCTION_20_6();
    sub_2171F0688(v27, v28, v29, v30);
    OUTLINED_FUNCTION_1280();
    if (!v3)
    {
      OUTLINED_FUNCTION_228_4();
      *(v2 + 3393) = *(v2 + 3457);
      OUTLINED_FUNCTION_892();
      sub_217462F4C(v31, v32, v33);
      sub_21727576C(v2 + 3352);
      sub_21727576C(v2 + 3096);
      sub_2171F0790(v2 + 3032, &unk_27CB28AA0, &qword_21775A020);
      goto LABEL_19;
    }

    sub_21727576C(v2 + 3096);
    v34 = v2 + 3416;
  }

  sub_2171F0790(v34, &unk_27CB28AA0, &qword_21775A020);
  OUTLINED_FUNCTION_1392();
  v35 = OUTLINED_FUNCTION_1163();
  sub_2171F0688(v35, v36, v37, v38);
  OUTLINED_FUNCTION_1038();
  if (v3)
  {
    OUTLINED_FUNCTION_1164();
    if (v3)
    {
      sub_217275710(*(v2 + 4416), v0);
      OUTLINED_FUNCTION_1038();
      if (!v3)
      {
        sub_2171F0790(v1, &unk_27CB28AA0, &qword_21775A020);
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_178_5();
    v39 = *(v2 + 3073);
  }

  else
  {
    sub_2171F0790(v2 + 3032, &unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_175_5();
    v39 = *(v1 + 41);
  }

  *(v0 + 41) = v39;
LABEL_18:
  OUTLINED_FUNCTION_223_3();
  OUTLINED_FUNCTION_1441();
LABEL_19:
  OUTLINED_FUNCTION_226_4(*(v2 + 4392), v41, v43, v45, v48, v51);
  OUTLINED_FUNCTION_1456(v40, v42, v44, v46, v47, v49, v50, v52, *(&v53 - 1));
  sub_2171F0790(v2 + 2968, &unk_27CB28AA0, &qword_21775A020);
  OUTLINED_FUNCTION_0_2();

  return v25();
}

uint64_t sub_217458338()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB27E00, &qword_21776BC90);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_2174583D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_217458400, 0, 0);
}

uint64_t sub_217458B4C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217458E10()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB27BB0, &qword_21776B890);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217458EA0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174592F0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB27BB0, &qword_21776B890);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217459380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_2174593AC, 0, 0);
}

uint64_t sub_217459AF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217459DBC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB28130, &qword_21776C170);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217459E4C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745A29C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB28130, &qword_21776C170);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_21745A358, 0, 0);
}

uint64_t sub_21745AAA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745AD68()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB28070, &qword_21776C040);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745ADF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745B248()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB28070, &qword_21776C040);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745B2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[559] = v3;
  v4[558] = a3;
  v4[557] = a2;
  v4[556] = a1;
  return MEMORY[0x2822009F8](&sub_21745B304, 0, 0);
}

uint64_t sub_21745BE0C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4488) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745C138()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &qword_27CB27D38, &qword_21776BB28);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21745C1D4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21745C2E8()
{
  OUTLINED_FUNCTION_886();
  sub_21749A584(v0 + 3608, v0 + 3032, &qword_27CB27D20, &qword_217758B80);
  sub_2171F0790(v0 + 2536, &qword_27CB27D38, &qword_21776BB28);
  if (*(v0 + 369))
  {
    if ((sub_217659BB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_1164();
      if (!v3)
      {
        sub_21729C79C(v0 + 3032, v0 + 3544);
        *(v0 + 3976) = &type metadata for Playlist.Entry.Item;
        *(v0 + 3984) = &protocol witness table for Playlist.Entry.Item;
        OUTLINED_FUNCTION_203_0();
        v4 = swift_allocObject();
        OUTLINED_FUNCTION_1502(v4);
        __swift_project_boxed_opaque_existential_1((v0 + 3952), &type metadata for Playlist.Entry.Item);
        Playlist.Entry.Item.propertyProvider.getter();
        __swift_project_boxed_opaque_existential_1((v0 + 3872), *(v0 + 3896));
        v5 = OUTLINED_FUNCTION_115_6();
        v6(v5);
        sub_21729C7F8(v0 + 3544);
        v7 = sub_21729C644(v0 + 3872);
        OUTLINED_FUNCTION_936(v7, v8, v9, v10, v11, v12, v13, v14, v58, v61);
        __swift_destroy_boxed_opaque_existential_1((v0 + 3952));
        OUTLINED_FUNCTION_1423();
        sub_217269F50(v0 + 1816);
        if (v1)
        {
          OUTLINED_FUNCTION_1455();
          *(v0 + 2728) = v15;
          *(v0 + 2744) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_542();
          v16 = OUTLINED_FUNCTION_1193();
          v2(v16);

          OUTLINED_FUNCTION_21_11((v0 + 3752));
          v17 = OUTLINED_FUNCTION_177();
          MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v17, v18, v19);
          __swift_destroy_boxed_opaque_existential_1((v0 + 3752));
          OUTLINED_FUNCTION_1035();
          v59 = v20;
          v21 = OUTLINED_FUNCTION_53_13();
          sub_2173ED1E8(v21, v22, v23, v24, v25, v26, v27, v28, v29);
          v38 = OUTLINED_FUNCTION_10_26(v30, v31, v32, v33, v34, v35, v36, v37, v59, v61, v63);
          OUTLINED_FUNCTION_44_13(v39, v38, v40, v41);
          OUTLINED_FUNCTION_230_2(&qword_21776BB20);
          OUTLINED_FUNCTION_1519();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v0 + 4480) = v42;
          *v42 = v43;
          OUTLINED_FUNCTION_888(v42);
          OUTLINED_FUNCTION_871();
          OUTLINED_FUNCTION_1374();

          __asm { BR              X1 }
        }
      }
    }
  }

  sub_2171F0688(v0 + 3032, v0 + 3224, &qword_27CB27D20, &qword_217758B80);
  if (*(v0 + 3280) == 255)
  {
    v53 = v0 + 3224;
  }

  else
  {
    OUTLINED_FUNCTION_218_2();
    *(v0 + 3201) = *(v0 + 3265);
    v46 = OUTLINED_FUNCTION_20_6();
    sub_2171F0688(v46, v47, v48, v49);
    if (*(v0 + 3536) != 255)
    {
      OUTLINED_FUNCTION_228_4();
      *(v0 + 3457) = *(v0 + 3521);
      OUTLINED_FUNCTION_892();
      sub_217463AF4(v50, v51, v52);
      sub_21729C7F8(v0 + 3416);
      sub_21729C7F8(v0 + 3160);
      sub_2171F0790(v0 + 3096, &qword_27CB27D20, &qword_217758B80);
      goto LABEL_19;
    }

    sub_21729C7F8(v0 + 3160);
    v53 = v0 + 3480;
  }

  sub_2171F0790(v53, &qword_27CB27D20, &qword_217758B80);
  sub_2171F0688(v0 + 3032, v0 + 3352, &qword_27CB27D20, &qword_217758B80);
  OUTLINED_FUNCTION_1278();
  if (v3)
  {
    if (*(v0 + 3152) == 255)
    {
      sub_21729C79C(*(v0 + 4472), v0 + 3288);
      OUTLINED_FUNCTION_1278();
      if (!v3)
      {
        sub_2171F0790(v0 + 3352, &qword_27CB27D20, &qword_217758B80);
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_178_5();
    v54 = *(v0 + 3137);
  }

  else
  {
    sub_2171F0790(v0 + 3096, &qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_175_5();
    v54 = *(v0 + 3393);
  }

  *(v0 + 3329) = v54;
LABEL_18:
  OUTLINED_FUNCTION_223_3();
  OUTLINED_FUNCTION_1441();
LABEL_19:
  OUTLINED_FUNCTION_226_4(*(v0 + 4448), v58, v61, v63, v66, v69);
  OUTLINED_FUNCTION_1456(v55, v60, v62, v64, v65, v67, v68, v70, *(&v71 - 1));
  sub_2171F0790(v0 + 3032, &qword_27CB27D20, &qword_217758B80);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1374();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_21745C6F8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &qword_27CB27D38, &qword_21776BB28);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21745C794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[547] = v3;
  v4[546] = a3;
  v4[545] = a2;
  v4[544] = a1;
  return MEMORY[0x2822009F8](&sub_21745C7C0, 0, 0);
}

uint64_t sub_21745D278()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4392) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745D5A8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB279C0, &qword_21776B598);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21745D644()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4416) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21745D758()
{
  OUTLINED_FUNCTION_886();
  sub_21749A584(v0 + 3520, v0 + 3016, &unk_27CB2ACC0, &qword_217758AA8);
  sub_2171F0790(v0 + 2536, &unk_27CB279C0, &qword_21776B598);
  if (*(v0 + 369))
  {
    if ((sub_217659BB8() & 1) == 0)
    {
      if (*(v0 + 3024))
      {
        sub_217275858(v0 + 3016, v0 + 3464);
        *(v0 + 3880) = &type metadata for Playlist.Entry;
        *(v0 + 3888) = &protocol witness table for Playlist.Entry;
        OUTLINED_FUNCTION_197();
        v3 = swift_allocObject();
        OUTLINED_FUNCTION_1503(v3);
        v4 = OUTLINED_FUNCTION_666((v0 + 3856));
        sub_21729C5E8(v4, v0 + 3776);
        __swift_project_boxed_opaque_existential_1((v0 + 3776), *(v0 + 3800));
        v5 = OUTLINED_FUNCTION_115_6();
        v6(v5);
        sub_2172758B4(v0 + 3464);
        v7 = sub_21729C644(v0 + 3776);
        OUTLINED_FUNCTION_936(v7, v8, v9, v10, v11, v12, v13, v14, v57, v58);
        __swift_destroy_boxed_opaque_existential_1((v0 + 3856));
        OUTLINED_FUNCTION_1423();
        sub_217269F50(v0 + 1816);
        if (v1)
        {
          OUTLINED_FUNCTION_1454();
          *(v0 + 2728) = v15;
          v16 = MEMORY[0x277D84F90];
          *(v0 + 2744) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_542();
          v17 = OUTLINED_FUNCTION_1193();
          v2(v17);

          OUTLINED_FUNCTION_21_11((v0 + 3656));
          v18 = OUTLINED_FUNCTION_177();
          MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v18, v19, v20);
          __swift_destroy_boxed_opaque_existential_1((v0 + 3656));
          *(v0 + 2888) = v16;
          *(v0 + 2896) = 0;
          v21 = OUTLINED_FUNCTION_53_13();
          sub_2173ED558(v21, v22, v23, v24, v25, v26, v27);
          v36 = OUTLINED_FUNCTION_10_26(v28, v29, v30, v31, v32, v33, v34, v35, v57, v58, v59);
          OUTLINED_FUNCTION_44_13(v37, v36, v38, v39);
          OUTLINED_FUNCTION_230_2(&qword_21776B590);
          OUTLINED_FUNCTION_1519();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v0 + 4384) = v40;
          *v40 = v41;
          OUTLINED_FUNCTION_888(v40);
          OUTLINED_FUNCTION_871();
          OUTLINED_FUNCTION_1374();

          __asm { BR              X1 }
        }
      }
    }
  }

  sub_2171F0688(v0 + 3016, v0 + 3184, &unk_27CB2ACC0, &qword_217758AA8);
  if (*(v0 + 3192))
  {
    OUTLINED_FUNCTION_137_6();
    *(v0 + 3176) = v44;
    v45 = OUTLINED_FUNCTION_20_6();
    sub_2171F0688(v45, v46, v47, v48);
    if (*(v0 + 3416))
    {
      OUTLINED_FUNCTION_228_4();
      *(v0 + 3400) = *(v0 + 3456);
      OUTLINED_FUNCTION_892();
      sub_217463DE4(v49, v50, v51);
      sub_2172758B4(v0 + 3352);
      sub_2172758B4(v0 + 3128);
      sub_2171F0790(v0 + 3072, &unk_27CB2ACC0, &qword_217758AA8);
      goto LABEL_19;
    }

    sub_2172758B4(v0 + 3128);
    v52 = v0 + 3408;
  }

  else
  {
    v52 = v0 + 3184;
  }

  sub_2171F0790(v52, &unk_27CB2ACC0, &qword_217758AA8);
  sub_2171F0688(v0 + 3016, v0 + 3296, &unk_27CB2ACC0, &qword_217758AA8);
  if (*(v0 + 3304))
  {
    sub_2171F0790(v0 + 3072, &unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_101_5();
  }

  else
  {
    if (!*(v0 + 3080))
    {
      sub_217275858(*(v0 + 4376), v0 + 3240);
      if (*(v0 + 3304))
      {
        sub_2171F0790(v0 + 3296, &unk_27CB2ACC0, &qword_217758AA8);
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_102_8();
  }

  *(v0 + 3288) = v53;
LABEL_18:
  OUTLINED_FUNCTION_85_9();
LABEL_19:
  OUTLINED_FUNCTION_226_4(*(v0 + 4352), v57, v58, v59, v60, v61);
  *(v54 + 48) = v62;
  sub_2171F0790(v0 + 3016, &unk_27CB2ACC0, &qword_217758AA8);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1374();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_21745DB2C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB279C0, &qword_21776B598);
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v4, v5, v6);
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21745DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_21745DBF4, 0, 0);
}

uint64_t sub_21745E340()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745E604()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &qword_27CB28228, &qword_21776C2E8);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745E694()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745EAE4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &qword_27CB28228, &qword_21776C2E8);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745EB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[535] = v3;
  v4[534] = a3;
  v4[533] = a2;
  v4[532] = a1;
  return MEMORY[0x2822009F8](&sub_21745EBA0, 0, 0);
}

uint64_t sub_21745F2EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745F5B0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2536, &unk_27CB27EC0, &qword_21776BDB0);
  OUTLINED_FUNCTION_692();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745F640()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4320) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745FA90()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_719();
  sub_2171F0790(v1, v2, v3);
  sub_2171F0790(v0 + 2720, &unk_27CB27EC0, &qword_21776BDB0);
  OUTLINED_FUNCTION_691();
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21745FB20(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_21745FB44, 0, 0);
}

uint64_t sub_21745FB44()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217283BAC(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_21746469C(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B3C8);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_21745FBE4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745FCDC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB278C0, &qword_21776B3D0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21745FD44()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB278C0, &qword_21776B3D0);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_21745FDAC(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_21745FDD0, 0, 0);
}

uint64_t sub_21745FDD0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1345();
  sub_21729C6EC(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_313();
  sub_2174649C0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_14(&unk_21776B698);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v7;
  *v7 = v8;
  v7[1] = sub_21745FE84;
  OUTLINED_FUNCTION_413();

  return v9();
}

uint64_t sub_21745FE84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21745FF7C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27A70, &qword_21776B6A0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21745FFE4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27A70, &qword_21776B6A0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217460050(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217460074, 0, 0);
}

uint64_t sub_217460074()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217283C68(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217464CE4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776BEF0);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217460114()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746020C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27FA0, &qword_21776BEF8);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217460274()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27FA0, &qword_21776BEF8);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174602DC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217460300, 0, 0);
}

uint64_t sub_217460300()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217283AFC(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217465008(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B270);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_2174603A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217460498()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB277F8, &qword_21776B278);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217460500()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB277F8, &qword_21776B278);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217460568(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_21746058C, 0, 0);
}

uint64_t sub_21746058C()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_21725CF0C(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_21746532C(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B028);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_21746062C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217460724()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB275F0, &qword_21776B030);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21746078C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB275F0, &qword_21776B030);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174607F4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217460818, 0, 0);
}

uint64_t sub_217460818()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217284130(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217465650(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B998);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_2174608B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174609B0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27C58, &qword_21776B9A0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217460A18()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27C58, &qword_21776B9A0);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217460A80(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_217460AA4, 0, 0);
}

uint64_t sub_217460AA4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1345();
  sub_217275710(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_313();
  sub_217465974(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_14(&unk_21776BC30);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v7;
  *v7 = v8;
  v7[1] = sub_217460B58;
  OUTLINED_FUNCTION_413();

  return v9();
}

uint64_t sub_217460B58()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217460C50()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27DE0, &qword_21776BC38);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217460CB8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27DE0, &qword_21776BC38);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217460D24(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217460D48, 0, 0);
}

uint64_t sub_217460D48()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_21725CF68(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217465C98(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B7C8);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217460DE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217460EE0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27B30, &qword_21776B7D0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217460F48()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27B30, &qword_21776B7D0);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217460FB0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217460FD4, 0, 0);
}

uint64_t sub_217460FD4()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217284288(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217465FBC(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776C150);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217461074()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746116C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB28120, &qword_21776C158);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174611D4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB28120, &qword_21776C158);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_21746123C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217461260, 0, 0);
}

uint64_t sub_217461260()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217283D6C(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_2174662E0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776C020);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217461300()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174613F8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB28060, &qword_21776C028);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217461460()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB28060, &qword_21776C028);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174614C8(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_2174614EC, 0, 0);
}

uint64_t sub_2174614EC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_1345();
  sub_21729C79C(v1, v2);
  sub_217751DE8();
  v3 = OUTLINED_FUNCTION_313();
  sub_217466604(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9_14(&unk_21776BB08);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 192) = v7;
  *v7 = v8;
  v7[1] = sub_2174615A0;
  OUTLINED_FUNCTION_413();

  return v9();
}

uint64_t sub_2174615A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217461698()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D28, &qword_21776BB10);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217461700()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27D28, &qword_21776BB10);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21746176C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217461790, 0, 0);
}

uint64_t sub_217461790()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217275858(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217466928(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776B528);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217461830()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217461928()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27990, &qword_21776B530);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217461990()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27990, &qword_21776B530);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_2174619F8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217461A1C, 0, 0);
}

uint64_t sub_217461A1C()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_2172757C0(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217466C4C(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776C280);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217461ABC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217461BB4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28200, &qword_21776C288);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217461C1C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &unk_27CB28200, &qword_21776C288);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217461C84(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_217461CA8, 0, 0);
}

uint64_t sub_217461CA8()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_583();
  sub_217284338(v0, v1);
  OUTLINED_FUNCTION_1313();
  v2 = OUTLINED_FUNCTION_313();
  sub_217466F70(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14(&unk_21776BD90);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_429(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_134_7(v7);

  return v10(v9);
}

uint64_t sub_217461D48()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217461E40()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27EB0, &qword_21776BD98);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217461EA8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 16, &qword_27CB27EB0, &qword_21776BD98);
  OUTLINED_FUNCTION_434();

  return v1();
}

uint64_t sub_217461F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for MusicVideo;
  v34[4] = &protocol witness table for MusicVideo;
  v34[0] = swift_allocObject();
  sub_217283BAC(v3, v34[0] + 16);
  v33[3] = &type metadata for MusicVideo;
  v33[4] = &protocol witness table for MusicVideo;
  v33[0] = swift_allocObject();
  sub_217283BAC(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for MusicVideo);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for MusicVideo);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for MusicVideo, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for MusicVideo;
  v29 = &protocol witness table for MusicVideo;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  MusicVideo.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &qword_27CB24550, &qword_217758A58);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

void sub_2174621F8(uint64_t a1, uint64_t a2)
{
  v21[3] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v21[4] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  v21[0] = swift_allocObject();
  sub_21729C6EC(v2, v21[0] + 16);
  v20[3] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v20[4] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  v20[0] = swift_allocObject();
  sub_21729C6EC(a2, v20[0] + 16);
  __swift_project_boxed_opaque_existential_1(v21, &type metadata for MusicPlayer.Queue.Entry.Item);
  MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v6 + 96))(v17, v5, v6);
  sub_21729C644(v14);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for MusicPlayer.Queue.Entry.Item);
  MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 96))(v14, v7, v8);
  sub_21729C644(v11);
  v9 = v18;
  v10 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  StaticPropertyProvider.merge<A>(_:with:)(a1, v14, v9, &type metadata for MusicPlayer.Queue.Entry.Item, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_217752D08();
  __break(1u);
}

uint64_t sub_2174623AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for RecordLabel;
  v34[4] = &protocol witness table for RecordLabel;
  v34[0] = swift_allocObject();
  sub_217283C68(v3, v34[0] + 16);
  v33[3] = &type metadata for RecordLabel;
  v33[4] = &protocol witness table for RecordLabel;
  v33[0] = swift_allocObject();
  sub_217283C68(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for RecordLabel);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for RecordLabel);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for RecordLabel, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for RecordLabel;
  v29 = &protocol witness table for RecordLabel;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  RecordLabel.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB2AF60, &qword_217758C00);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217462694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Song;
  v34[4] = &protocol witness table for Song;
  v34[0] = swift_allocObject();
  sub_217283AFC(v3, v34[0] + 16);
  v33[3] = &type metadata for Song;
  v33[4] = &protocol witness table for Song;
  v33[0] = swift_allocObject();
  sub_217283AFC(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Song);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Song);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Song, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Song;
  v29 = &protocol witness table for Song;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Song.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &qword_27CB277F0, &unk_21775A2B0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21746297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Album;
  v34[4] = &protocol witness table for Album;
  v34[0] = swift_allocObject();
  sub_21725CF0C(v3, v34[0] + 16);
  v33[3] = &type metadata for Album;
  v33[4] = &protocol witness table for Album;
  v33[0] = swift_allocObject();
  sub_21725CF0C(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Album);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Album);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Album, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Album;
  v29 = &protocol witness table for Album;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Album.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB275E0, &qword_2177589D0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217462C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Genre;
  v34[4] = &protocol witness table for Genre;
  v34[0] = swift_allocObject();
  sub_217284130(v3, v34[0] + 16);
  v33[3] = &type metadata for Genre;
  v33[4] = &protocol witness table for Genre;
  v33[0] = swift_allocObject();
  sub_217284130(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Genre);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Genre);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Genre, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Genre;
  v29 = &protocol witness table for Genre;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Genre.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB27760, &unk_21775A2D0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217462F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v31[3] = &type metadata for Track;
  v31[4] = &protocol witness table for Track;
  v31[0] = swift_allocObject();
  sub_217275710(v3, v31[0] + 16);
  v30[3] = &type metadata for Track;
  v30[4] = &protocol witness table for Track;
  v30[0] = swift_allocObject();
  sub_217275710(a2, v30[0] + 16);
  __swift_project_boxed_opaque_existential_1(v31, &type metadata for Track);
  Track.propertyProvider.getter();
  v7 = *(&v21 + 1);
  v8 = *v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v8 + 96))(v27, v7, v8);
  sub_21729C644(&v20);
  __swift_project_boxed_opaque_existential_1(v30, &type metadata for Track);
  Track.propertyProvider.getter();
  v9 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (v10[12])(&v20, v9, v10);
  sub_21729C644(v24);
  v11 = v28;
  v12 = v29;
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v20, v11, &type metadata for Track, v12);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v13 = v28;
  v14 = v29;
  v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
  *(&v21 + 1) = v13;
  *v22 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  v25 = &type metadata for Track;
  v26 = &protocol witness table for Track;
  v17 = __swift_allocate_boxed_opaque_existential_0(v24);
  Track.init(propertyProvider:)(&v20, v17);
  sub_21749A32C(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
    a3[2] = *v22;
    *(a3 + 41) = *&v22[9];
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v21 = 0u;
    memset(v22, 0, 24);
    v20 = 0u;
    v22[24] = -1;
    sub_2171F0790(&v20, &unk_27CB28AA0, &qword_21775A020);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21746323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Artist;
  v34[4] = &protocol witness table for Artist;
  v34[0] = swift_allocObject();
  sub_21725CF68(v3, v34[0] + 16);
  v33[3] = &type metadata for Artist;
  v33[4] = &protocol witness table for Artist;
  v33[0] = swift_allocObject();
  sub_21725CF68(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Artist);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Artist);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Artist, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Artist;
  v29 = &protocol witness table for Artist;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Artist.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &qword_27CB2CD90, &unk_21775A2C0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217463524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Curator;
  v34[4] = &protocol witness table for Curator;
  v34[0] = swift_allocObject();
  sub_217284288(v3, v34[0] + 16);
  v33[3] = &type metadata for Curator;
  v33[4] = &protocol witness table for Curator;
  v33[0] = swift_allocObject();
  sub_217284288(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Curator);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Curator);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Curator, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Curator;
  v29 = &protocol witness table for Curator;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Curator.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &qword_27CB246E8, &qword_21776C140);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21746380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Station;
  v34[4] = &protocol witness table for Station;
  v34[0] = swift_allocObject();
  sub_217283D6C(v3, v34[0] + 16);
  v33[3] = &type metadata for Station;
  v33[4] = &protocol witness table for Station;
  v33[0] = swift_allocObject();
  sub_217283D6C(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Station);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Station);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Station, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Station;
  v29 = &protocol witness table for Station;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Station.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB2AF80, &qword_217758C30);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217463AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v31[3] = &type metadata for Playlist.Entry.Item;
  v31[4] = &protocol witness table for Playlist.Entry.Item;
  v31[0] = swift_allocObject();
  sub_21729C79C(v3, v31[0] + 16);
  v30[3] = &type metadata for Playlist.Entry.Item;
  v30[4] = &protocol witness table for Playlist.Entry.Item;
  v30[0] = swift_allocObject();
  sub_21729C79C(a2, v30[0] + 16);
  __swift_project_boxed_opaque_existential_1(v31, &type metadata for Playlist.Entry.Item);
  Playlist.Entry.Item.propertyProvider.getter();
  v7 = *(&v21 + 1);
  v8 = *v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v8 + 96))(v27, v7, v8);
  sub_21729C644(&v20);
  __swift_project_boxed_opaque_existential_1(v30, &type metadata for Playlist.Entry.Item);
  Playlist.Entry.Item.propertyProvider.getter();
  v9 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (v10[12])(&v20, v9, v10);
  sub_21729C644(v24);
  v11 = v28;
  v12 = v29;
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v20, v11, &type metadata for Playlist.Entry.Item, v12);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v13 = v28;
  v14 = v29;
  v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
  *(&v21 + 1) = v13;
  *v22 = *(v14 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v15, v13);
  v25 = &type metadata for Playlist.Entry.Item;
  v26 = &protocol witness table for Playlist.Entry.Item;
  v17 = __swift_allocate_boxed_opaque_existential_0(v24);
  Playlist.Entry.Item.init(propertyProvider:)(&v20, v17);
  sub_21749A32C(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
    a3[2] = *v22;
    *(a3 + 41) = *&v22[9];
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v21 = 0u;
    memset(v22, 0, 24);
    v20 = 0u;
    v22[24] = -1;
    sub_2171F0790(&v20, &qword_27CB27D20, &qword_217758B80);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217463DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Playlist.Entry;
  v34[4] = &protocol witness table for Playlist.Entry;
  v34[0] = swift_allocObject();
  sub_217275858(v3, v34[0] + 16);
  v33[3] = &type metadata for Playlist.Entry;
  v33[4] = &protocol witness table for Playlist.Entry;
  v33[0] = swift_allocObject();
  sub_217275858(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Playlist.Entry);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Playlist.Entry);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Playlist.Entry, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Playlist.Entry;
  v29 = &protocol witness table for Playlist.Entry;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Playlist.Entry.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB2ACC0, &qword_217758AA8);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2174640CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for Playlist;
  v34[4] = &protocol witness table for Playlist;
  v34[0] = swift_allocObject();
  sub_2172757C0(v3, v34[0] + 16);
  v33[3] = &type metadata for Playlist;
  v33[4] = &protocol witness table for Playlist;
  v33[0] = swift_allocObject();
  sub_2172757C0(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for Playlist);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for Playlist);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for Playlist, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for Playlist;
  v29 = &protocol witness table for Playlist;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  Playlist.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &unk_27CB28A90, &qword_217758F90);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2174643B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[3] = &type metadata for RadioShow;
  v34[4] = &protocol witness table for RadioShow;
  v34[0] = swift_allocObject();
  sub_217284338(v3, v34[0] + 16);
  v33[3] = &type metadata for RadioShow;
  v33[4] = &protocol witness table for RadioShow;
  v33[0] = swift_allocObject();
  sub_217284338(a2, v33[0] + 16);
  v7 = __swift_project_boxed_opaque_existential_1(v34, &type metadata for RadioShow);
  sub_21729C5E8((v7 + 2), &v22);
  v8 = *(&v23 + 1);
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v9 + 96))(v30, v8, v9);
  sub_21729C644(&v22);
  v10 = __swift_project_boxed_opaque_existential_1(v33, &type metadata for RadioShow);
  sub_21729C5E8((v10 + 2), v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (v12[12])(&v22, v11, v12);
  sub_21729C644(v27);
  v13 = v31;
  v14 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  StaticPropertyProvider.merge<A>(_:with:)(a1, &v22, v13, &type metadata for RadioShow, v14);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v15 = v31;
  v16 = v32;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  *(&v23 + 1) = v15;
  *&v24 = *(v16 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v17, v15);
  v28 = &type metadata for RadioShow;
  v29 = &protocol witness table for RadioShow;
  v19 = __swift_allocate_boxed_opaque_existential_0(v27);
  RadioShow.init(propertyProvider:)(&v22, v19);
  sub_21749A32C(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_2171F0790(&v22, &qword_27CB24678, &qword_217758BD0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

void sub_21746469C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217283BAC(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217283C08(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_2174649C0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21729C6EC(a1, a4);
  v19 = a4;
  *(a4 + 57) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21729C748(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27A78, &qword_21776B6A8);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217464CE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217283C68(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217283CC4(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FA8, &qword_21776BF00);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217465008(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217283AFC(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217283B58(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_21746532C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21725CF0C(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21725CE44(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217465650(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217284130(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21728418C(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217465974(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217275710(a1, a4);
  v19 = a4;
  *(a4 + 57) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21727576C(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DF8, &qword_21776BC68);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217465C98(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21725CF68(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217284498(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217465FBC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217284288(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_2172842E4(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28128, &qword_21776C160);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_2174662E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217283D6C(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217283DC8(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28068, &qword_21776C030);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217466604(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21729C79C(a1, a4);
  v19 = a4;
  *(a4 + 57) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21729C7F8(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D30, &qword_21776BB18);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217466928(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217275858(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_2172758B4(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217466C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_2172757C0(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_21726B8C4(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

void sub_217466F70(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_217284338(a1, a4);
  v19 = a4;
  *(a4 + 56) = a3;
  v7 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v8 = sub_217204DD0(a2);
  v9 = 0;
  v20 = v7;
  v10 = v7;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (v8 == i)
    {
      sub_217284394(a1);

      v19[8] = v10;
      v19[9] = v20;
      v19[10] = v7;
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEA2E30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v12 + 64))
    {
      if (*(v12 + 64) != 1 && (v14 = *(v12 + 48), v15 = *(v12 + 56), v14 ^ 1 | v15))
      {
        if (v14 ^ 2 | v15)
        {
          goto LABEL_25;
        }

        MEMORY[0x21CEA25D0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v7 = v21;
      }

      else
      {

        MEMORY[0x21CEA25D0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v20 = v22;
      }

      goto LABEL_2;
    }

    MEMORY[0x21CEA25D0](v13);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    sub_217752378();

    v10 = v23;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EB8, &qword_21776BDA0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000069, 0x80000002177AE3C0);
  sub_217752D08();
  __break(1u);
}

uint64_t sub_217467294(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_2174672B8, 0, 0);
}

uint64_t sub_217467564()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21746765C()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for MusicVideo))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_217467768()
{
  OUTLINED_FUNCTION_10();

  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  OUTLINED_FUNCTION_398((v0 + 592));

  return v1();
}

uint64_t sub_2174677D0(uint64_t a1)
{
  *(v2 + 848) = v1;
  *(v2 + 840) = a1;
  return MEMORY[0x2822009F8](sub_2174677F4, 0, 0);
}

void sub_2174677F4()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v4 = v0[106];
  v0[66] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v0[67] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v5 = swift_allocObject();
  v0[63] = v5;
  sub_21729C6EC(v4, v5 + 16);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v6 = qword_280BE8C30;
  v0[71] = &type metadata for MusicPlayer.Queue.Entry.Item;
  v0[72] = &protocol witness table for MusicPlayer.Queue.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v0[68] = swift_allocObject();
  v7 = OUTLINED_FUNCTION_1162();
  sub_21729C6EC(v7, v8);
  OUTLINED_FUNCTION_160(v0 + 68, &type metadata for MusicPlayer.Queue.Entry.Item);

  MusicPlayer.Queue.Entry.Item.propertyProvider.getter();
  OUTLINED_FUNCTION_491(v0 + 73, v0[76]);
  v9 = OUTLINED_FUNCTION_85_3();
  v10(v9);
  v11 = sub_21729C644((v0 + 73));
  OUTLINED_FUNCTION_1125(v11, v12, v13, v14, v15, v16, v17, v18, v55, v56, v57);
  __swift_destroy_boxed_opaque_existential_1(v0 + 68);
  v19 = v0[19];
  v20 = v0[20];
  v22 = v0[21];
  v21 = v0[22];
  v23 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v23, v24, v25, v26);
  sub_217269F50((v0 + 2));
  if (!v20)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v27 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v27, v28);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v30 = v30 && v21 == v29;
  if (v30)
  {

LABEL_26:

    v21 = v20;
    goto LABEL_27;
  }

  v31 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v31, v32, v33);
  OUTLINED_FUNCTION_196_2();

  if ((v19 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v20 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v20))
    {
      OUTLINED_FUNCTION_864();
      if (v34 != v35)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v36 = OUTLINED_FUNCTION_205_0();
          v19 = MEMORY[0x21CEA2E30](v36);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v30 && v21 == v37)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v39 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v39, v40, v41);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v6;
          v6 = v20;
          v20 = v22;
          v22 = v0;
          if (!v30)
          {
            v6 = v19;
          }
        }

        ++v2;
      }

      while (v1 != v2);
      v0 = v60;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v42 = OUTLINED_FUNCTION_1453();
  sub_21729C6EC(v42, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v44, v45, v46, v44))
  {
    v47 = v0[106];
    sub_2171F3F0C(v21, (v0 + 83));
    __swift_project_boxed_opaque_existential_1(v0 + 83, v0[86]);
    OUTLINED_FUNCTION_359(*(v47 + 57));
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[108] = v48;
    *v48 = v49;
    OUTLINED_FUNCTION_1282(v48);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v21, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  sub_217752AA8();
  v0[103] = v58;
  v0[104] = v59;
  OUTLINED_FUNCTION_172_5();
  v52 = OUTLINED_FUNCTION_1014();
  MEMORY[0x21CEA23B0](v52);
  sub_217752C78();
  v53 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v53);
  OUTLINED_FUNCTION_1391();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v54);
  OUTLINED_FUNCTION_1052();
}